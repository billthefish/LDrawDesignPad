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
  DATBase, DATModel;

type
  TDATFlexObjectType = (boHoseTabs, boHoseNoTabs, boHose12, boRibbedHose,
                            boFlexHose, boFlexAxle);

  TDATFlexObject = class(TDATCustomModel)
    private
      FObjectType: TDATFlexObjectType;
      FCont1, FCont2: TDATPoint;
      FStartPoint, FEndPoint: TDATMatrix;
      FLength: Extended;
      FColor: Integer;
      FUserControl: Boolean;

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
      function GetModelText: string; override;

    public
      constructor Create; override;
      property ObjectType: TDATFlexObjectType read FObjectType write FObjectType;
      property DefinedControlPoints: Boolean read FUserControl write FUserControl;
      property ControlPoint1: TDATPoint read FCont1 write FCont1;
      property ControlPoint2: TDATPoint read FCont2 write FCont2;
      property StartMatrix: TDATMatrix read FStartPoint write FStartPoint;
      property EndMatrix: TDATMatrix read FEndPoint write FEndPoint;
      property Color: Integer read FColor write FColor;
      property Length: Extended read FLength write FLength;
      property ModelText: string read GetModelText;

  end;

implementation

uses
  SysUtils, Math, DATMath, DATUtils;

{ TDATFlexObject Code }
constructor TDATFlexObject.Create;
begin
  inherited Create;
  FCont1 := FDATOriginPoint;
  FCont2 := FDATOriginPoint;
  FStartPoint := FDATIdentityMatrix;
  FEndPoint := FDATIdentityMatrix;
  FObjectType := boHoseTabs;
  FLength := 130;
end;

function TDATFlexObject.B0(t: Extended): Extended;

begin
  Result:=sqr(1-t)*(1-t);
end;

function TDATFlexObject.B1(t: Extended): Extended;

begin
  Result:=3*sqr(1-t)*t;
end;
function TDATFlexObject.B2(t: Extended): Extended;

begin
  Result:=3*(1-t)*sqr(t);
end;
function TDATFlexObject.B3(t: Extended): Extended;

begin
  Result:=sqr(t)*t;
end;

function TDATFlexObject.GetBezierCoordinate(subp: TDATSubPart; Matrix: TDATMatrix; AssignMatrix: Boolean = False): TDATPoint;

var
  TempSubPart: TDATSubPart;

begin
  TempSubPart := TDATSubPart.Create;

  try
    TempSubPart.DATString := subp.DATString;

    TempSubPart.Transform(Matrix, True);
    Result := TempSubPart.Position;

    if AssignMatrix then
      subp.Matrix := TempSubPart.Matrix;
  finally
    TempSubPart.Free;
  end;
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
  Line1, Line2: TDATSubPart;
  BezBegin, BezEnd, BezCont1, BezCont2: TDATPoint;
  Segments: Integer;
  strFileType: string;

  dummyPart: TDATSubPart;
  BezPoint1, BezPoint2, dummyPoint, lastPoint, pntC1, pntC2: TDATPoint;
  BezIntLen: array of Extended;
  BezIntPos: array of TDATPoint;
  BezLength, LengthMod, Factor, Distance, rlLength, rlCount: Extended;
  InteEpsilon, BezI, BezILast, I2: Extended;
  i, PointPerSegment, Iterations, MaxIterations: Byte;
  intCount,BezSearch: Word;
  PntDec, RotDec: Byte;
  Last: Boolean;

begin
  Clear;
  Line1 := TDATSubPart.Create;
  Line2 := TDATSubPart.Create;
  Line1.Matrix := FStartPoint;
  Line2.Matrix := FEndPoint;
  Line1.Color := FColor;
  Line2.Color := FColor;

  Segments := 0;
  BezLength := 0;
  LengthMod := 0;

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
      strFileType := '754.dat';
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
      strFileType := '754.dat';
    end;
    boHose12:
    begin
      Line1.SubPart := '757.dat';
      Line2.SubPart := '760.dat';
      BezBegin := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 30.855,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont1 := GetBezierCoordinate(Line1, DATMatrix(1, 0, 0, 0,  0, 1, 0, 45,  0, 0, 1, 0,  0, 0, 0, 1));
      BezEnd := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -22.25,  0, 0, 1, 0,  0, 0, 0, 1));
      BezCont2 := GetBezierCoordinate(Line2, DATMatrix(1, 0, 0, 0,  0, 1, 0, -37,  0, 0, 1, 0,  0, 0, 0, 1));
      LengthMod := 53.5;
      BezLength := 171.5;
      Segments := 33;
      strFileType := '758.dat';
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
      strFileType := '80.dat';
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
      strFileType := 'axlehol8.dat';
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
      strFileType := '77.dat';
    end;
  end;

  if EuclidDistance(Line1.Position, Line2.Position) < (BezLength + LengthMod) then
  begin
    PointPerSegment := 12;
    MaxIterations := 100;
    InteEpsilon := 0.07;

    Factor := 1;
    Distance := 0.5;
    Last := True;
    Iterations := 0;
    rlLength := 0;
    SetLength(BezIntLen,Segments*PointPerSegment);
    SetLength(BezIntPos,Segments*PointPerSegment);

    if FUserControl then
    begin
      BezCont1 := FCont1;
      BezCont2 := FCont2;
    end;

    dummyPart := TDATSubPart.Create;
    dummyPart.Color := FColor;

    Add('0 Begin Bezier Curve ');
    Add(Line1.DATString);
    Add(Line2.DATString);

    if strFileType = '754.dat' then
    begin
      dummyPart.SubPart := '755.dat';

      dummyPart.Matrix := Line1.Matrix;
      dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(-1, 0, 0, 0,  0, -1, 0, 0,  0, 0, -1, 0,  0, 0, 0, 1), True);
      dummyPart.Position := Line1.Position;
      Add(dummyPart.DATString);

      dummyPart.Matrix := Line2.Matrix;
      dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(-1, 0, 0, 0,  0, -1, 0, 0,  0, 0, -1, 0,  0, 0, 0, 1), True);
      dummyPart.Position := Line2.Position;
      Add(dummyPart.DATString);
    end
    else if strFileType = '758.dat' then
    begin
      dummyPart.SubPart := '759.dat';

      dummyPart.Matrix := Line1.Matrix;
      dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(1, 0, 0, 0,  0, 1, 0, 16,  0, 0, 1, 0,  0, 0, 0, 1), True);
      Add(dummyPart.DATString);

      dummyPart.Matrix := Line2.Matrix;
      dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(-1, 0, 0, 0,  0, -1, 0, 0,  0, 0, -1, 0,  0, 0, 0, 1), True);
      dummyPart.Position := Line2.Position;
      Add(dummyPart.DATString);
    end;

    dummyPoint := FDATOriginPoint;

    for i := 0 to System.Length(BezIntLen) - 1 do
    begin
      BezIntLen[i] := 0;
      BezIntPos[i] := dummyPoint;
    end;
    while (Iterations < MaxIterations) and (abs(rlLength - BezLength) > InteEpsilon) do
    begin
      rlCount := 0;
      rlLength := 0;
      lastPoint := BezBegin;
      pntC1 := PointAdd(BezBegin, PointMultiply( PointAdd( PointMultiply( BezBegin, -1), BezCont1),Factor));
      pntC2 := PointAdd(BezEnd, PointMultiply( PointAdd( PointMultiply( BezEnd, -1), BezCont2),Factor));
      while rlCount < (Segments * PointPerSegment) do
      begin
        intCount := Round(rlCount);
        BezIntPos[intCount] :=  BezierSum(((rlCount/Segments)/PointPerSegment),BezBegin,pntC1,pntC2,BezEnd);
        rlLength:= rlLength + EuclidDistance(BezIntPos[intCount], lastPoint);
        BezIntLen[intCount] := rlLength;
        lastPoint := BezIntPos[intCount];
        rlCount := rlCount + 1;
      end;
      if rlLength < BezLength then
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
        while (BezSearch < (Segments * PointPerSegment)) and
              (BezIntLen[BezSearch] < ((rlLength * (rlCount + 1)) / Segments)) do inc(BezSearch);
        i2 :=  ((rlLength * ((rlCount + 1) / Segments)) - BezIntLen[BezSearch-1]) /(BezIntLen[BezSearch] - BezIntLen[BezSearch-1]);
        BezI := ((i2 + BezSearch-1) / Segments) / PointPerSegment;
      end;

      BezPoint1 := BezierSum(BezILast, BezBegin, pntC1, pntC2, BezEnd);
      BezPoint2 := BezierSum(BezI, BezBegin, pntC1, pntC2, BezEnd);

      dummyPart.SubPart := strFileType;
      dummyPart.Position := PointMultiply(PointAdd(BezPoint1,BezPoint2), 0.5);
      dummyPart.RotationMatrix := BezMakeMatrix(PointAdd(BezPoint1,PointMultiply(BezPoint2,-1.0)));

      case ObjectType of
        boHoseTabs, boHoseNoTabs:
        begin
          dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(0, 0, 1, 0,  1.1, 0, 0, 0,  0, 1, 0, 0,  0, 0, 0, 1));
          if rlCount = (Segments - 1) then
            dummyPart.SubPart := '756.dat';
        end;
        boHose12:
          dummypart.Position := GetBezierCoordinate(dummyPart, DATMatrix(0, 0, -1, 0,  0, -1, 0, 0,  -1, 0, 0, 0,  0, 0, 0, 1), True);
        boFlexAxle:
        begin
          if rlCount < 5 then
          begin
            dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(0, -1, 0, 0,  1, 0, 0, -2,  0, 0, 1, 0,  0, 0, 0, 1), True);
            dummyPart.SubPart := 's\faxle' + IntToStr(Round(rlCount) + 1) + '.dat';
          end
          else if rlCount > (Segments - 6) then
          begin
            dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(0, 1, 0, 0,  -1, 0, 0, 2,  0, 0, 1, 0,  0, 0, 0, 1), True);
            dummyPart.SubPart := 's\faxle' + IntToStr(Segments - Round(rlCount)) + '.dat';
          end
          else
            dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(1, 0, 0, 0,  0, 4.26, 0, -2.13,  0, 0, 1, 0,  0, 0, 0, 1), True);
        end;
        boFlexHose:
          dummyPart.Position := GetBezierCoordinate(dummyPart, DATMatrix(1, 0, 0, 0,  0, 4.4, 0, -2.2,  0, 0, 1, 0,  0, 0, 0, 1), True);
      end;

      Add(dummyPart.DATString);

      BezILast := BezI;
      rlCount := rlCount + 1;
    end;

    Add('0 Start Point (' +
        FloatToStr(RoundTo(BezBegin[1],-4)) + ' ' +
        FloatToStr(RoundTo(BezBegin[2],-4)) + ' ' +
        FloatToStr(RoundTo(BezBegin[3],-4)) + ') ' +
        'Control Point 1 (' +
        FloatToStr(RoundTo(pntC1[1], -4)) + ' ' +
        FloatToStr(RoundTo(pntC1[2], -4)) + ' ' +
        FloatToStr(RoundTo(pntC1[3], -4)) + ')');
    Add('0 Control Point 2 (' +
        FloatToStr(RoundTo(pntC2[1], -4)) + ' ' +
        FloatToStr(RoundTo(pntC2[2], -4)) + ' ' +
        FloatToStr(RoundTo(pntC2[3], -4)) + ') ' +
        'End Point (' +
        FloatToStr(RoundTo(BezEnd[1], -4)) + ' ' +
        FloatToStr(RoundTo(BezEnd[2], -4)) + ' ' +
        FloatToStr(RoundTo(BezEnd[3], -4)) + ') ');
    Add('0 Number Of Segments: ' + IntToStr(Segments) + ' ' +
        'Curve Length: ' + FloatToStr(RoundTo(FLength, -4)));
    Add('0 End Bezier Curve');
  end;

  Result := inherited GetModelText;
  Line1.Free;
  Line2.Free;
end;

end.
