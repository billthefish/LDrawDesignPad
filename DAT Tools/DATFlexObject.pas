{These sources are copyright (C) 2003-2009 Orion Pobursky.

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

  TDATFlexObject = class(TPersistent)
    private
      FModelText: TStringList;
      FObjectType: TDATFlexObjectType;
      FCont1, FCont2: TDATPoint;
      FStartPoint, FEndPoint: TDATMatrix;
      FPntAcc, FRotAcc: Byte;
      FLength: Extended;
      FColor: Integer;
      FUserControl: Boolean;
      FEpsilon: Extended;
      FMaxIterations: Integer;
      FPointsPerSegment: Integer;

      function B0(t: Extended): Extended;
      function B1(t: Extended): Extended;
      function B2(t: Extended): Extended;
      function B3(t: Extended): Extended;
      function GetBezierCoordinate(subp: TDATSubPart; Matrix: TDATMatrix; AssignMatrix: Boolean = False): TDATPoint;
      function EuclidDistance(Point1, Point2: TDATPoint): Extended;
      function BezierSum(u: Extended; Point1, Point2, Point3, Point4: TDATPoint): TDATPoint;
      function NormalizeVector(Vector: TDATPoint): TDATPoint;
      function BezMakeMatrix(Vector: TDATPoint): TDATRotationMatrix;


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
      property Length: Extended read FLength write FLength;
      property ModelText: string read GetModelText;
      property PositionDecimalPlaces: Byte read FPntAcc write FPntAcc;
      property RotationDecimalPlaces: Byte read FRotAcc write FRotAcc;
      property Epsilon: Extended read FEpsilon write FEpsilon;
      property MaxIterations: Integer read FMaxIterations write FMaxIterations;
      property PointsPerSegment: Integer read FPointsPerSegment write FPointsPerSegment;
  end;

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

function TDATFlexObject.B0(t: Extended): Extended;

begin
  Result := Sqr(1 - t) * (1 - t);
end;

function TDATFlexObject.B1(t: Extended): Extended;

begin
  Result := 3 * Sqr(1 - t) * t;
end;
function TDATFlexObject.B2(t: Extended): Extended;

begin
  Result := 3 * (1 - t) * Sqr(t);
end;
function TDATFlexObject.B3(t: Extended): Extended;

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

function TDATFlexObject.EuclidDistance(Point1, Point2: TDATPoint): Extended;

begin
  Result:= Sqrt( Sqr(Point1[1] - Point2[1]) +
                 Sqr(Point1[2] - Point2[2]) +
                 Sqr(Point1[3] - Point2[3]));
end;

function TDATFlexObject.BezierSum(u: Extended; Point1, Point2, Point3, Point4: TDATPoint): TDATPoint;

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
  sum: Extended;

begin
  sum := PointLength(Vector);
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

function TDATFlexObject.GetModelText: string;
var
  Line1, Line2, TempPart: TDATSubPart;
  BezBegin, BezEnd, BezCont1, BezCont2: TDATPoint;
  FileType: string;
  BezPoint1, BezPoint2, lastPoint, pntC1, pntC2: TDATPoint;
  BezIntLen: array of Extended;
  BezIntPos: array of TDATPoint;
  BezLength, Factor, Distance, CalculatedLength, rlCount: Extended;
  BezI, BezILast, I2: Extended;
  Segments, i, Iterations, intCount, BezSearch: Integer;
  Last, AddControlParts: Boolean;

begin
  AddControlParts := True;
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

  Segments := 0;
  BezLength := 0;

  case FObjectType of
    boHoseTabs:
    begin
      Line1.SubPart := '750.dat';
      Line2.SubPart := '750.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1));
      BezLength := 130;
      Segments := 50;
      FileType := '754.dat';
    end;
    boHoseNoTabs:
    begin
      Line1.SubPart := '752.dat';
      Line2.SubPart := '752.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -5,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -15,  0, 0, 1, 0,  0, 0, 0, 1));
      BezLength := 130;
      Segments := 50;
      FileType := '754.dat';
    end;
    boHose12:
    begin
      Line1.SubPart := '757.dat';
      Line2.SubPart := '760.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 30.855,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 45,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -22.25,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -37,  0, 0, 1, 0,  0, 0, 0, 1));
      BezLength := 225;
      Segments := 33;
      FileType := '758.dat';
    end;
    boRibbedHose:
    begin
      Line1.SubPart := '79.dat';
      Line2.SubPart := '79.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -3.2,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -3.2,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1));
      Segments := Round(FLength);
      BezLength := FLength * 6.2;
      FileType := '80.dat';
    end;
    boFlexAxle:
    begin
      Line1.SubPart := 'stud3a.dat';
      Line2.SubPart := 'stud3a.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 10,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, 0, 0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, 10,  0, 0, 1, 0,  0, 0, 0, 1));
      Segments := Trunc(Round(FLength)/4);
      BezLength := FLength;
      FileType := 'axlehol8.dat';
    end;
    boFlexHose:
    begin
      Line1.SubPart := '76.dat';
      Line2.SubPart := '76.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -10,  0, 0, 1, 0,  0, 0, 0, 1));
      Segments := Trunc(Round(FLength)/4);
      BezLength := FLength;
      FileType := '77.dat';
    end;
  end;

  if EuclidDistance(Line1.Position, Line2.Position) < BezLength then
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

    Factor := 1;
    Distance := 0.5;
    Last := True;
    Iterations := 0;
    CalculatedLength := 0;
    SetLength(BezIntLen, Segments * PointsPerSegment);
    SetLength(BezIntPos, Segments * PointsPerSegment);

    for i := 0 to System.Length(BezIntLen) - 1 do
    begin
      BezIntLen[i] := 0;
      BezIntPos[i] := FDATOriginPoint;
    end;
    while (Iterations < MaxIterations) and
          (abs(CalculatedLength - BezLength) > Epsilon) do
    begin
      rlCount := 0;
      CalculatedLength := 0;
      lastPoint := BezBegin;
      pntC1 := PointAdd(BezBegin, PointMultiply( PointAdd( PointMultiply( BezBegin, -1), BezCont1),Factor));
      pntC2 := PointAdd(BezEnd, PointMultiply( PointAdd( PointMultiply( BezEnd, -1), BezCont2),Factor));
      while rlCount < (Segments * PointsPerSegment) do
      begin
        intCount := Round(rlCount);
        BezIntPos[intCount] :=  BezierSum(((rlCount / Segments) / PointsPerSegment), BezBegin, pntC1, pntC2, BezEnd);
        CalculatedLength := CalculatedLength + EuclidDistance(BezIntPos[intCount], lastPoint);
        BezIntLen[intCount] := CalculatedLength;
        lastPoint := BezIntPos[intCount];
        rlCount := rlCount + 1;
      end;
      if CalculatedLength < BezLength then
      begin
        Factor := Factor + Distance;
        if not Last then Distance := (Distance / 2) * 1.4;
        Last := True;
      end
      else
      begin
        Factor := Factor - Distance;
        if Last then Distance := Distance / 2;
        Last := False;
      end;
      inc(Iterations);
    end;
    rlCount := 0;
    BezILast := 0;
    BezSearch := 0;
    while rlCount < Segments do
    begin
      if rlCount = (Segments -1) then BezI := 1
      else
      begin
        while (BezSearch < (Segments * PointsPerSegment)) and
              (BezIntLen[BezSearch] < ((CalculatedLength * (rlCount + 1)) / Segments)) do inc(BezSearch);
        i2 :=  ((CalculatedLength * ((rlCount + 1) / Segments)) - BezIntLen[BezSearch-1]) /(BezIntLen[BezSearch] - BezIntLen[BezSearch-1]);
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
          if rlCount = (Segments - 1) then
            TempPart.SubPart := '756.dat';
        end;
        boHose12:
          TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, 0, -1, 0,  0, -1, 0, 0,  -1, 0, 0, 0,  0, 0, 0, 1), True);
        boFlexAxle:
        begin
          if rlCount < 5 then
          begin
            TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, -1, 0, 0,  1, 0, 0, -2,  0, 0, 1, 0,  0, 0, 0, 1), True);
            TempPart.SubPart := 's\faxle' + IntToStr(Round(rlCount) + 1) + '.dat';
          end
          else if rlCount > (Segments - 6) then
          begin
            TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(0, 1, 0, 0,  -1, 0, 0, 2,  0, 0, 1, 0,  0, 0, 0, 1), True);
            TempPart.SubPart := 's\faxle' + IntToStr(Segments - Round(rlCount)) + '.dat';
          end
          else
            TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(1, 0, 0, 0,  0, 4.26, 0, -2.13,  0, 0, 1, 0,  0, 0, 0, 1), True);
        end;
        boFlexHose:
          TempPart.Position := GetBezierCoordinate(TempPart, DATMatrix(1, 0, 0, 0,  0, 4.4, 0, -2.2,  0, 0, 1, 0,  0, 0, 0, 1), True);
      end;

      FModelText.Add(TempPart.DATString);

      BezILast := BezI;
      rlCount := rlCount + 1;
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

    if AddControlParts then
    begin
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
    end;
  end;
  Result := FModelText.Text;
  Line1.Free;
  Line2.Free;
end;

end.
