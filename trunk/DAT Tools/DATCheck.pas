unit DATCheck;
(*
  Copyright (C) 2003-2009 Orion Pobursky

  This file is derived from:
    L3Input.cpp and L3Math.cpp
    Part of the L3 project for handling LDraw *.dat files
    Copyright (C) 1997-1999  Lars C. Hassing (lch@ccieurope.com)

  Plane normal check derived from code by:
    Philippe "Philo" Hurbain - 2007 - www.philohome.com

  This file is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This file is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*)

interface

uses
  Contnrs;

type
  TDATErrorType = (deRow1AllZeros, deRow2AllZeros, deRow3AllZeros,
                   deYColumnAllZeros, deSigularMatrix, deTriangleCollinear,
                   deQuadCollinear, deIdenticalVertices, deConcaveQuadSplit13,
                   deConcaveQuadSplit24, deBowtieQuad1423, deBowtieQuad1243,
                   deNonCoplanerVerticesNormAngle, deIdenticalLine,
                   deColor24Illegal, deBadSyntax, deNil);

  TDATError = class(TObject)
    FErrorType: TDATErrorType;
    FErrorValue: Double;
    constructor Create(EType: TDATErrorType; EVal: Double = 0);
    procedure Assign(AError: TDATError);
    property ErrorType: TDATErrorType read FErrorType write FErrorType;
    property ErrorValue: Double read FErrorValue write FErrorValue;
  end;

const
  strRow1AllZeros = 'Row 1 all zeros';
  strRow2AllZeros = 'Row 2 all zeros';
  strRow3AllZeros = 'Row 3 all zeros';
  strYColumnAllZeros = 'Y column all zeros';
  strSingularMatrix = 'Singular Matrix';
  strTriangleCollinear = 'Triangle collinear';
  strQuadCollinear = 'Quad collinear';
  strIdenticalVertices = 'Identical Vertices';
  strConcaveSplit13 = 'Concave quad, split on diagonal of points 1 and 3';
  strConcaveSplit24 = 'Concave quad, split on diagonal of points 2 and 4';
  strBowtie1423 = 'Bowtie quad, reorder points to sequence 1, 4, 2, 3';
  strBowtie1243 = 'Bowtie quad, reorder points to sequence 1, 2, 4, 3';
  strNonCoplanerVertices = 'Quad points not coplaner';
  strIdenticalLine = 'Identical to line';
  strColor24Illegal = 'Color 24 illegal for this linetype';
  strBadSyntax = 'Syntax Error';

var
  PlaneNormalAngleLimit: Double = 1;
  CollinearMaxAngle: Double = 179.9;
  CollinearMinAngle: Double = 0.025;

function L3CheckLine(const Line: string): TObjectList;
function GetErrorString(error: TDATError): string;

implementation

uses
  DATModel, DATBase, DATMath, DATUtils, SysUtils, Math;

{TDATError}
procedure TDATError.Assign(AError: TDATError);
begin
  ErrorType := AError.ErrorType;
  ErrorValue := AError.ErrorValue;
end;

constructor TDATError.Create(EType: TDATErrorType; EVal: Double);
begin
  inherited Create;
  ErrorType := EType;
  ErrorValue := EVal;
end;

function SubPartIsXZPrimitive(const Subp: string): Boolean;
begin
  Result :=  (Pos('disc', Subp) > 0) or
             (Pos('ndis', Subp) > 0) or
             (Pos('rect', Subp) > 0) or
             (Pos('rin', Subp) > 0) or
             (Pos('axleend', Subp) > 0) or
             (Pos('axlehol2', Subp) > 0) or
             (Pos('axlehol3', Subp) > 0) or
             (Pos('axlehol9', Subp) > 0) or
             (Pos('axleho10', Subp) > 0) or
             (Pos('edge', Subp) > 0) or
             (Pos('chrd', Subp) > 0) or
             (Pos('tang', Subp) > 0);
end;

function CheckPointsCollinear(const p1, p2, p3: TDATPoint): Double;

var
  a, b: TDATPoint;
  n, t: Double;

begin

  a := PointSubtract(p2, p1);
  b := PointSubtract(p2, p3);
  n := 1 / PointNorm(a);
  a := PointMultiply(a, n);
  n := 1 / PointNorm(b);
  b := PointMultiply(b, n);
  t := PointNorm(PointCrossProduct(a, b));
  if t >= 1 then
    Result := 90
  else
    if (PointDotProduct(a, b) < 0) then
      Result := 180-(180/Pi * ArcSin(t))
    else
      Result := 180/Pi * ArcSin(t);
end;

function CoPlanerCheckNormalAngle(const m: TDATMatrix): Double;

var
  A, B, C, D, norm1, norm2: TDATPoint;
  Angle1, Angle2, temp: Double;

begin
  A := PointSubtract(DATPoint(m[1,1], m[1,2], m[1,3]), DATPoint(m[2,1], m[2,2], m[2,3]));
  B := PointSubtract(DATPoint(m[2,1], m[2,2], m[2,3]), DATPoint(m[3,1], m[3,2], m[3,3]));
  C := PointSubtract(DATPoint(m[3,1], m[3,2], m[3,3]), DATPoint(m[4,1], m[4,2], m[4,3]));
  D := PointSubtract(DATPoint(m[4,1], m[4,2], m[4,3]), DATPoint(m[1,1], m[1,2], m[1,3]));

  norm1 := PointMultiply(PointCrossProduct(A, D), 1 / PointNorm(PointCrossProduct(A, D)));
  norm2 := PointMultiply(PointCrossProduct(B, C), 1 / PointNorm(PointCrossProduct(B, C)));
  temp := PointNorm(PointCrossProduct(norm1, norm2));
  if temp >= 1 then
    Angle1 := Pi/2
  else
    Angle1 := 180/Pi*ArcSin(temp);

  norm1 := PointMultiply(PointCrossProduct(A, B), 1 / PointNorm(PointCrossProduct(A, B)));
  norm2 := PointMultiply(PointCrossProduct(D, C), 1 / PointNorm(PointCrossProduct(D, C)));
  temp := PointNorm(PointCrossProduct(norm1, norm2));
  if temp >= 1 then
    Angle2 := Pi/2
  else
    Angle2 := 180/Pi*ArcSin(temp);

  if Angle1 > Angle2 then
    Result := Angle1
  else
    Result := Angle2;
end;

function CheckSubPart(datsubpart: TDATSubPart): TObjectList;

var
  det, tempval: Double;
  i: Integer;
  error: TDATError;

begin
  Result := TObjectList.Create;
  Result.Clear;
  with datsubpart do
  begin
    det := MatrixDet(Matrix);
    if (det = 0) then
      if SubPartIsXZPrimitive(SubPart) then
      begin
        for i := 1 to 3 do
          if (MatrixVals[i,1] = 0) and (MatrixVals[i,2] = 0) and (MatrixVals[i,3] = 0) then
          begin
            MatrixVals[i,2] := 1;
            det := MatrixDet(Matrix);
            if det <> 0 then
            begin
              case i of
                1: error := TDATError.Create(deRow1AllZeros);
                2: error := TDATError.Create(deRow2AllZeros);
                3: error := TDATError.Create(deRow3AllZeros);
                else error := TDATError.Create(deNil);
              end;
              Result.Add(error);
              Break;
            end;
          end;
        if (det = 0) and (MatrixVals[1,2] = 0) and (MatrixVals[2,2] = 0) and (MatrixVals[3,2] = 0) then
          for i := 1 to 3 do
          begin
            tempval := MatrixVals[i,2];
            MatrixVals[i,2] := 1;
            det := MatrixDet(Matrix);
            if det <> 0 then
            begin
              error := TDATError.Create(deYColumnAllZeros);
              Result.Add(error);
              Break;
            end
            else
              MatrixVals[i,2] := tempval;
          end;
        if det = 0 then
        begin
          error := TDATError.Create(deSigularMatrix);
          Result.Add(error);
        end;
      end
      else
      begin
        error := TDATError.Create(deSigularMatrix);
        Result.Add(error);
      end;
    if Color = 24 then
    begin
      error := TDATError.Create(deColor24Illegal);
      Result.Add(error);
    end;
  end;
end;

function CheckLine2(const line: TDATLine): TObjectList;

var
  error: TDATError;

begin
  Result := TObjectList.Create;
  Result.Clear;
  with line do
    if CheckSamePoint(Point[1],Point[2]) then
    begin
      error := TDATError.Create(deIdenticalVertices);
      Result.Add(error);
    end;
end;

function CheckTri(const tri: TDATTriangle): TObjectList;

var
  angle1, angle2, angle3: Double;
  error: TDATError;

begin
  Result := TObjectList.Create;
  Result.Clear;
  with tri do
  begin
    if CheckSamePoint(Point[1],Point[2]) or
       CheckSamePoint(Point[2],Point[3]) or
       CheckSamePoint(Point[3],Point[1]) then
    begin
      error := TDATError.Create(deIdenticalVertices);
      Result.Add(error);
    end;

    angle1 := CheckPointsCollinear(Point[1],Point[2],Point[3]);
    angle2 := CheckPointsCollinear(Point[2],Point[3],Point[1]);
    angle3 := CheckPointsCollinear(Point[3],Point[1],Point[2]);

    if (MinValue([angle1, angle2, angle3]) < CollinearMinAngle) or
       (MaxValue([angle1, angle2, angle3]) > CollinearMaxAngle) then
    begin
      if MaxValue([angle1, angle2, angle3]) > CollinearMaxAngle then
        error := TDATError.Create(deTriangleCollinear, MaxValue([angle1, angle2, angle3]))
      else
        error := TDATError.Create(deTriangleCollinear, MinValue([angle1, angle2, angle3]));
      Result.Add(error);
    end;
  end;
end;

function CheckQuad(const quad: TDATQuad): TObjectList;

var
  maxangle, angle1, angle2, angle3, angle4: Double;
  A,B,C: Boolean;
  v01, v02, v03, v12, v13, v23: TDATPoint;
  error: TDATError;
begin
  Result := TObjectList.Create;
  Result.Clear;
  with quad do
  begin
    if CheckSamePoint(Point[1],Point[2]) or
       CheckSamePoint(Point[2],Point[3]) or
       CheckSamePoint(Point[3],Point[4]) or
       CheckSamePoint(Point[4],Point[1]) or
       CheckSamePoint(Point[1],Point[3]) or
       CheckSamePoint(Point[4],Point[2]) then
    begin
      error := TDATError.Create(deIdenticalVertices);
      Result.Add(error);
      Exit;
    end;

    angle1 := CheckPointsCollinear(Point[1],Point[2],Point[3]);
    angle2 := CheckPointsCollinear(Point[2],Point[3],Point[4]);
    angle3 := CheckPointsCollinear(Point[3],Point[4],Point[1]);
    angle4 := CheckPointsCollinear(Point[4],Point[1],Point[2]);

    if (MinValue([angle1, angle2, angle3, angle4]) < CollinearMinAngle) or
       (MaxValue([angle1, angle2, angle3, angle4]) > CollinearMaxAngle) then
    begin
      if MaxValue([angle1, angle2, angle3, angle4]) > CollinearMaxAngle then
        error := TDATError.Create(deQuadCollinear, MaxValue([angle1, angle2, angle3, angle4]))
      else
        error := TDATError.Create(deQuadCollinear, MinValue([angle1, angle2, angle3, angle4]));
      Result.Add(error);
    end;

    v01 := PointSubtract(Point[2], Point[1]);
    v02 := PointSubtract(Point[3], Point[1]);
    v03 := PointSubtract(Point[4], Point[1]);
    v12 := PointSubtract(Point[3], Point[2]);
    v13 := PointSubtract(Point[4], Point[2]);
    v23 := PointSubtract(Point[4], Point[3]);

    A := PointDotProduct(PointCrossProduct(v01, v02), PointCrossProduct(v02, v03)) > 0;
    B := PointDotProduct(PointCrossProduct(v12, v01), PointCrossProduct(v01, v13)) > 0;
    C := -PointDotProduct(PointCrossProduct(v02, v12), PointCrossProduct(v12, v23)) > 0;

    if A then
    begin
      if (B and (not C)) or (C and (not B)) then
      begin
        error := TDATError.Create(deConcaveQuadSplit13);
        Result.Add(error);
      end;
    end
    else
      if B then
        if C then
        begin
          error := TDATError.Create(deConcaveQuadSplit24);
          Result.Add(error);
        end
        else
        begin
          error := TDATError.Create(deBowtieQuad1423);
          Result.Add(error);
        end
      else
        if C then
        begin
          error := TDATError.Create(deBowtieQuad1243);
          Result.Add(error);
        end
        else
        begin
          error := TDATError.Create(deConcaveQuadSplit24);
          Result.Add(error);
        end;

    maxangle := CoPlanerCheckNormalAngle(Matrix);
    if maxangle > PlaneNormalAngleLimit then
    begin
      error := TDATError.Create(deNonCoplanerVerticesNormAngle, maxangle);
      Result.Add(error);
    end;

  end;
end;

function CheckOpLine(const opline: TDATOpline): TObjectList;

var
  error: TDATError;

begin
  Result := TObjectList.Create;
  Result.Clear;
  with opline do
    if CheckSamePoint(Point[1],Point[2]) or CheckSamePoint(Point[3],Point[4]) then
    begin
      error := TDATError.Create(deIdenticalVertices);
      Result.Add(error);
    end;
end;

function L3CheckLine(const Line: string): TObjectList;

var
  DLine: TDATType;
  error: TDATError;

begin
  DLine := StrToDAT(Line);
  case DLine.LineType of
    ltSubPart: Result := CheckSubPart(DLine as TDATSubPart);
    ltLine: Result := CheckLine2(DLine as TDATLine);
    ltTriangle: Result := CheckTri(DLine as TDATTriangle);
    ltQuad: Result := CheckQuad(DLine as TDATQuad);
    ltOpLine: Result := CheckOpLine(DLine as TDATOpline);
    else
    begin
      if DLine is TDATInvalidLine then
      begin
        Result := TObjectList.Create;
        Result.Clear;
        error := TDATError.Create(deBadSyntax);
        Result.Add(error);
      end
      else
        Result := TObjectList.Create;
    end;
  end;

  DLine.Free;
end;

function GetErrorString(error: TDATError): string;
begin
  case error.ErrorType of
    deRow1AllZeros: Result := strRow1AllZeros;
    deRow2AllZeros: Result := strRow2AllZeros;
    deRow3AllZeros: Result := strRow3AllZeros;
    deYColumnAllZeros: Result := strYColumnAllZeros;
    deSigularMatrix: Result := strSingularMatrix;
    deIdenticalVertices: Result := strIdenticalVertices;
    deTriangleCollinear: Result := strTriangleCollinear + ' (angle = ' +
                                   FloatToStr(error.ErrorValue) + ')';
    deQuadCollinear: Result := strQuadCollinear + ' (angle = ' +
                               FloatToStr(error.ErrorValue) + ')';
    deConcaveQuadSplit24: Result := strConcaveSplit24;
    deConcaveQuadSplit13: Result := strConcaveSplit13;
    deBowtieQuad1423: Result := strBowtie1423;
    deBowtieQuad1243: Result := strBowtie1243;
    deNonCoplanerVerticesNormAngle: Result := strNonCoplanerVertices +
                              ' (angle = ' + FloatToStr(error.ErrorValue) + ')';
    deIdenticalLine: Result := strIdenticalLine + ' ' + IntToStr(Trunc(error.ErrorValue));
    deColor24Illegal: Result := strColor24Illegal;
    deBadSyntax: Result := strBadSyntax;
    else Result := '';
  end;
end;

end.
