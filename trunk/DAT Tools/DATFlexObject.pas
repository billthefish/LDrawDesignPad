{These sources are copyright (C) 2003-2010 Orion Pobursky.

This source is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This source is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

-------------------------------------------------------------------------------}

unit DATFlexObject;

interface

uses
  DATBase, DATModel, Classes;

type
  TDATFlexObjectType = (boHoseTabs, boHoseNoTabs, boHose12, boRibbedHose,
                            boFlexHose, boFlexAxle);

  TDATFlexObjectData = record
    StartFile, EndFile, MiddleFile: string;
    StartMatrix, EndMatrix: TDATMatrix;
    Cont1Matrix, Cont2Matrix: TDATMatrix;
    TotalLength: Double;
    Segments: Integer;
  end;

  TDATFlexObject = class(TPersistent)
    private
      FModelText: TStringList;
      FObjectType: TDATFlexObjectType;
      FCont1, FCont2: TDATPoint;
      FStartPoint, FEndPoint: TDATMatrix;
      FPntAcc, FRotAcc: Byte;
      FLength: Double;
      FColor: Integer;
      FUserControl: Boolean;
      FEpsilon: Double;
      FMaxIterations: Integer;
      FPointsPerSegment: Integer;

      function B0(t: Double): Double;
      function B1(t: Double): Double;
      function B2(t: Double): Double;
      function B3(t: Double): Double;
      function GetBezierCoordinate(subp: TDATSubPart; Matrix: TDATMatrix; AssignMatrix: Boolean = False): TDATPoint;
      function EuclidDistance(Point1, Point2: TDATPoint): Double;
      function BezierSum(u: Double; Point1, Point2, Point3, Point4: TDATPoint): TDATPoint;
      function NormalizeVector(Vector: TDATPoint): TDATPoint;
      function BezMakeMatrix(Vector: TDATPoint): TDATRotationMatrix;
      function MakeBezControlPoint(point1, point2: TDATPoint; Factor: Double): TDATPoint;

    protected
      function GetModelText: string;

    public
      constructor Create; virtual;
      destructor Destroy; override;
      property ObjectType: TDATFlexObjectType read FObjectType write FObjectType;
      property DefinedControlPoints: Boolean read FUserControl write FUserControl;
      property ControlPoint1: TDATPoint read FCont1 write FCont1;
      property ControlPoint2: TDATPoint read FCont2 write FCont2;
      property StartMatrix: TDATMatrix read FStartPoint write FStartPoint;
      property EndMatrix: TDATMatrix read FEndPoint write FEndPoint;
      property Color: Integer read FColor write FColor;
      property Length: Double read FLength write FLength;
      property ModelText: string read GetModelText;
      property PositionDecimalPlaces: Byte read FPntAcc write FPntAcc;
      property RotationDecimalPlaces: Byte read FRotAcc write FRotAcc;
      property Epsilon: Double read FEpsilon write FEpsilon;
      property MaxIterations: Integer read FMaxIterations write FMaxIterations;
      property PointsPerSegment: Integer read FPointsPerSegment write FPointsPerSegment;
  end;

  function GetFlexObjectData(const L: Double; const FType: TDATFlexObjectType): TDATFlexObjectData;

implementation

uses
  SysUtils, Math, DATMath, DATUtils;

{ TDATFlexObject Code }
constructor TDATFlexObject.Create;
begin
  inherited Create;
  FModelText := TStringList.Create;
  FCont1 := FDATOriginPoint;
  FCont2 := FDATOriginPoint;
  FStartPoint := FDATIdentityMatrix;
  FEndPoint := FDATIdentityMatrix;
  FObjectType := boHoseTabs;
  FLength := 130;
  FPntAcc := 15;
  FRotAcc := 15;
  FPointsPerSegment := 12;
  FMaxIterations := 100;
  FEpsilon := 0.07;
end;

destructor TDATFlexObject.Destroy;
begin
  FModelText.Free;
  inherited;
end;

function TDATFlexObject.B0(t: Double): Double;

begin
  Result := Sqr(1 - t) * (1 - t);
end;

function TDATFlexObject.B1(t: Double): Double;

begin
  Result := 3 * Sqr(1 - t) * t;
end;
function TDATFlexObject.B2(t: Double): Double;

begin
  Result := 3 * (1 - t) * Sqr(t);
end;
function TDATFlexObject.B3(t: Double): Double;

begin
  Result := Sqr(t) * t;
end;

function TDATFlexObject.GetBezierCoordinate(subp: TDATSubPart; Matrix: TDATMatrix; AssignMatrix: Boolean = False): TDATPoint;
begin
  Matrix := M4Multiply(subp.Matrix, Matrix);
  Result := PositionFromMatrix(Matrix);

  if AssignMatrix then
    subp.Matrix := Matrix;
end;

function TDATFlexObject.EuclidDistance(Point1, Point2: TDATPoint): Double;

begin
  Result:= Sqrt( Sqr(Point1[1] - Point2[1]) +
                 Sqr(Point1[2] - Point2[2]) +
                 Sqr(Point1[3] - Point2[3]));
end;

function TDATFlexObject.BezierSum(u: Double; Point1, Point2, Point3, Point4: TDATPoint): TDATPoint;

begin
  Result := PointAdd(
              PointAdd(
                PointMultiply(Point1, B0(u)),
                PointMultiply(Point2, B1(u))),
              PointAdd(
                PointMultiply(Point3, B2(u)),
                PointMultiply(Point4, B3(u))));
end;

function TDATFlexObject.NormalizeVector(Vector: TDATPoint):TDATPoint;

var
  sum: Double;

begin
  sum := PointNorm(Vector);
  Result[1] := Vector[1] / sum;
  Result[2] := Vector[2] / sum;
  Result[3] := Vector[3] / sum;
end;

function TDATFlexObject.BezMakeMatrix(Vector: TDATPoint): TDATRotationMatrix;

var
  v1, v2, v3: TDATPoint;

begin
  v2 := NormalizeVector(Vector);
  v1 := NormalizeVector(PointCrossProduct(v2, DATPoint(0,1,0)));
  v3 := NormalizeVector(PointCrossProduct(v1, v2));
  Result := DATRotationMatrix(v1[1], v2[1], v3[1],
                              v1[2], v2[2], v3[2],
                              v1[3], v2[3], v3[3]);
end;

function TDATFlexObject.MakeBezControlPoint(point1, point2: TDATPoint; Factor: Double): TDATPoint;
begin
  Result :=
    PointAdd(point1, PointMultiply(PointAdd(PointMultiply(point1, -1), point2), Factor));
end;

function TDATFlexObject.GetModelText: string;
var
  Line1, Line2, TempPart: TDATSubPart;
  BezBegin, BezEnd, BezCont1, BezCont2: TDATPoint;
  FileType: string;
  BezPoint1, BezPoint2, LastPoint, pntC1, pntC2: TDATPoint;
  BezIntLen: array of Double;
  BezIntPos: array of TDATPoint;
  BezLength, Factor, Distance, CalculatedLength, PointCount: Double;
  BezI, BezILast, I2: Double;
  Segments, i, Iterations, ArrayPos, BezSearch: Integer;
  Last: Boolean;
  FlexObjData: TDATFlexObjectData;

begin
  FModelText.Clear;
  Line1 := TDATSubPart.Create;
  Line2 := TDATSubPart.Create;
  Line1.Matrix := FStartPoint;
  Line2.Matrix := FEndPoint;
  Line1.Color := FColor;
  Line2.Color := FColor;
  Line1.PositionDecimalPlaces := FPntAcc;
  Line1.RotationDecimalPlaces := FRotAcc;
  Line2.PositionDecimalPlaces := FPntAcc;
  Line2.RotationDecimalPlaces := FRotAcc;

  FlexObjData := GetFlexObjectData(FLength, FObjectType);

  Line1.SubPart := FlexObjData.StartFile;
  Line2.SubPart := FlexObjData.EndFile;
  BezBegin := GetBezierCoordinate(Line1, FlexObjData.StartMatrix);
  BezCont1 := GetBezierCoordinate(Line1, FlexObjData.EndMatrix);
  BezEnd := GetBezierCoordinate(Line2, FlexObjData.Cont1Matrix);
  BezCont2 := GetBezierCoordinate(Line2, FlexObjData.Cont2Matrix);
  BezLength := FlexObjData.TotalLength;
  Segments := FlexObjData.Segments;
  FileType := FlexObjData.MiddleFile;


  if EuclidDistance(BezBegin, BezEnd) < BezLength then
  begin
    if FUserControl then
    begin
      BezCont1 := FCont1;
      BezCont2 := FCont2;
    end;

    TempPart := TDATSubPart.Create;
    TempPart.Color := FColor;
    TempPart.PositionDecimalPlaces := FPntAcc;
    TempPart.RotationDecimalPlaces := FRotAcc;

    FModelText.Add('0 Begin Flex Object');
    FModelText.Add(Line1.DATString);
    FModelText.Add(Line2.DATString);

    case ObjectType of
      boHoseTabs,boHoseNoTabs:
      begin
        TempPart.SubPart := '755.dat';

        TempPart.Matrix := Line1.Matrix;
        TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(-1, 0, 0, 0,  0, -1, 0, 0,  0, 0, -1, 0,  0, 0, 0, 1), True);
        TempPart.Position := Line1.Position;
        FModelText.Add(TempPart.DATString);

        TempPart.Matrix := Line2.Matrix;
        TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(-1, 0, 0, 0,  0, -1, 0, 0,  0, 0, -1, 0,  0, 0, 0, 1), True);
        TempPart.Position := Line2.Position;
        FModelText.Add(TempPart.DATString);
      end;
      boHose12:
      begin
        TempPart.SubPart := '759.dat';

        TempPart.Matrix := Line1.Matrix;
        TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(1, 0, 0, 0,  0, 1, 0, 16,  0, 0, 1, 0,  0, 0, 0, 1), True);
        FModelText.Add(TempPart.DATString);

        TempPart.Matrix := Line2.Matrix;
        TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(-1, 0, 0, 0,  0, -1, 0, 0,  0, 0, -1, 0,  0, 0, 0, 1), True);
        TempPart.Position := Line2.Position;
        FModelText.Add(TempPart.DATString);
      end;
    end;

    SetLength(BezIntLen, Segments * PointsPerSegment);
    SetLength(BezIntPos, Segments * PointsPerSegment);

    for i := 0 to System.Length(BezIntLen) - 1 do
    begin
      BezIntLen[i] := 0;
      BezIntPos[i] := FDATOriginPoint;
    end;

    Factor := 1;
    Distance := 0.5;
    Last := True;
    Iterations := 0;
    CalculatedLength := 0;

    while (Iterations < MaxIterations) and
          (Abs(CalculatedLength - BezLength) > Epsilon) do
    begin
      pntC1 := MakeBezControlPoint(BezBegin, BezCont1, Factor);
      pntC2 := MakeBezControlPoint(BezEnd, BezCont2, Factor);

      PointCount := 0;
      CalculatedLength := 0;
      LastPoint := BezBegin;

      while PointCount < (Segments * PointsPerSegment) do
      begin
        ArrayPos := Round(PointCount);
        BezIntPos[ArrayPos] :=  BezierSum(((PointCount / Segments) / PointsPerSegment), BezBegin, pntC1, pntC2, BezEnd);
        CalculatedLength := CalculatedLength + EuclidDistance(BezIntPos[ArrayPos], LastPoint);
        BezIntLen[ArrayPos] := CalculatedLength;
        LastPoint := BezIntPos[ArrayPos];
        PointCount := PointCount + 1;
      end;

      if CalculatedLength < BezLength then
      begin
        Factor := Factor + Distance;
        if not Last then Distance := Distance * 0.7;
        Last := True;
      end
      else
      begin
        Factor := Factor - Distance;
        if Last then Distance := Distance * 0.5;
        Last := False;
      end;
      Inc(Iterations);
    end;

    PointCount := 0;
    BezILast := 0;
    BezSearch := 0;
    while PointCount < Segments do
    begin
      if PointCount = (Segments - 1) then BezI := 1
      else
      begin
        while (BezSearch < (Segments * PointsPerSegment)) and
              (BezIntLen[BezSearch] < ((CalculatedLength * (PointCount + 1)) / Segments)) do inc(BezSearch);
        i2 :=  ((CalculatedLength * ((PointCount + 1) / Segments)) - BezIntLen[BezSearch-1]) /(BezIntLen[BezSearch] - BezIntLen[BezSearch-1]);
        BezI := ((i2 + BezSearch-1) / Segments) / PointsPerSegment;
      end;

      BezPoint1 := BezierSum(BezILast, BezBegin, pntC1, pntC2, BezEnd);
      BezPoint2 := BezierSum(BezI, BezBegin, pntC1, pntC2, BezEnd);

      TempPart.SubPart := FileType;
      TempPart.Position := PointMultiply(PointAdd(BezPoint1,BezPoint2), 0.5);
      TempPart.RotationMatrix := BezMakeMatrix(PointAdd(BezPoint1,PointMultiply(BezPoint2,-1.0)));

      case ObjectType of
        boHoseTabs, boHoseNoTabs:
        begin
          TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, 0, 1, 0,  1.1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 0, 1));
          if PointCount = (Segments - 1) then
            TempPart.SubPart := '756.dat';
        end;
        boHose12:
          TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, 0, -1, 0,  0, -1, 0, 0,  -1, 0, 0, 0,  0, 0, 0, 1), True);
        boFlexAxle:
        begin
          if PointCount < 5 then
          begin
            TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, -1, 0, 0,  1, 0, 0, -2,  0, 0, 1, 0,  0, 0, 0, 1), True);
            TempPart.SubPart := 's\faxle' + IntToStr(Round(PointCount) + 1) + '.dat';
          end
          else if PointCount > (Segments - 6) then
          begin
            TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, 1, 0, 0,  -1, 0, 0, 2,  0, 0, 1, 0,  0, 0, 0, 1), True);
            TempPart.SubPart := 's\faxle' + IntToStr(Segments - Round(PointCount)) + '.dat';
          end
          else
            TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(1, 0, 0, 0,  0, 4.26, 0, -2.13,  0, 0, 1, 0,  0, 0, 0, 1), True);
        end;
        boFlexHose:
          TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(1, 0, 0, 0,  0, 4.4, 0, -2.2,  0, 0, 1, 0,  0, 0, 0, 1), True);
      end;

      FModelText.Add(TempPart.DATString);

      BezILast := BezI;
      PointCount := PointCount + 1;
    end;

    FModelText.Add('0 Start Point (' +
        FloatToStr(RoundTo(BezBegin[1],-4)) + ' ' +
        FloatToStr(RoundTo(BezBegin[2],-4)) + ' ' +
        FloatToStr(RoundTo(BezBegin[3],-4)) + ') ' +
        'Control Point 1 (' +
        FloatToStr(RoundTo(pntC1[1], -4)) + ' ' +
        FloatToStr(RoundTo(pntC1[2], -4)) + ' ' +
        FloatToStr(RoundTo(pntC1[3], -4)) + ')');
    FModelText.Add('0 Control Point 2 (' +
        FloatToStr(RoundTo(pntC2[1], -4)) + ' ' +
        FloatToStr(RoundTo(pntC2[2], -4)) + ' ' +
        FloatToStr(RoundTo(pntC2[3], -4)) + ') ' +
        'End Point (' +
        FloatToStr(RoundTo(BezEnd[1], -4)) + ' ' +
        FloatToStr(RoundTo(BezEnd[2], -4)) + ' ' +
        FloatToStr(RoundTo(BezEnd[3], -4)) + ') ');
    FModelText.Add('0 Number Of Segments: ' + IntToStr(Segments) + ' ' +
        'Curve Length: ' + FloatToStr(RoundTo(CalculatedLength, -4)));
    FModelText.Add('0 End Bezier Curve');

(*
      Line1.Matrix := FDATIdentityMatrix;
      Line1.SubPart := 'axis.ldr';

      Line1.Position := BezBegin;
      Line1.Color := 1;
      FModelText.Add(Line1.DATString);
      Line1.Position := BezEnd;
      Line1.Color := 2;
      FModelText.Add(Line1.DATString);
      Line1.Position := pntC1;
      Line1.Color := 3;
      FModelText.Add(Line1.DATString);
      Line1.Position := pntC2;
      Line1.Color := 4;
      FModelText.Add(Line1.DATString);
      Line1.Position := BezCont1;
      Line1.Color := 5;
      FModelText.Add(Line1.DATString);
      Line1.Position := BezCont2;
      Line1.Color := 6;
      FModelText.Add(Line1.DATString);
*)

  end;
  Result := FModelText.Text;
  Line1.Free;
  Line2.Free;
end;

function GetFlexObjectData(const L: Double; const FType: TDATFlexObjectType): TDATFlexObjectData;
begin
  case FType of
    boHoseTabs:
      begin
        Result.StartFile := '750.dat';
        Result.EndFile := '750.dat';
        Result.MiddleFile := '754.dat';
        Result.StartMatrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.EndMatrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont1Matrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont2Matrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.TotalLength := 130;
        Result.Segments := 30;
      end;
    boHoseNoTabs:
      begin
        Result.StartFile := '752.dat';
        Result.EndFile := '752.dat';
        Result.MiddleFile := '754.dat';
        Result.StartMatrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.EndMatrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont1Matrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont2Matrix := DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.TotalLength := 130;
        Result.Segments := 30;
      end;
    boHose12:
      begin
        Result.StartFile := '757.dat';
        Result.EndFile := '760.dat';
        Result.MiddleFile := '758.dat';
        Result.StartMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 26.8387,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.EndMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 38,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont1Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -20,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont2Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -25,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.TotalLength := 177.2;
        Result.Segments := 33;
      end;
    boRibbedHose:
      begin
        Result.StartFile := '79.dat';
        Result.EndFile := '79.dat';
        Result.MiddleFile := '80.dat';
        Result.StartMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -3.2,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.EndMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont1Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -3.2,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont2Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.TotalLength := L * 6.2;
        Result.Segments := Round(L);
      end;
    boFlexHose:
      begin
        Result.StartFile := '76.dat';
        Result.EndFile := '76.dat';
        Result.MiddleFile := '77.dat';
        Result.StartMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.EndMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont1Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont2Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.TotalLength := L;
        Result.Segments := Trunc(Round(L)/4);
      end;
    boFlexAxle:
      begin
        Result.StartFile := 'stud3a.dat';
        Result.EndFile := 'stud3a.dat';
        Result.MiddleFile := 'axlehol8.dat';
        Result.StartMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.EndMatrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 10,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont1Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.Cont2Matrix :=  DATMatrix(1, 0, 0, 0,  0, 1, 0, 10,  0, 0, 1, 0,  0, 0, 0, 1);
        Result.TotalLength := L;
        Result.Segments := Trunc(Round(L)/4);
      end;
  end;
end;

end.
