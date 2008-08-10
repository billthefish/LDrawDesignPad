unit DATCheck;
(*
  Copyright (C) 2003-2008 Orion Pobursky

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

function L3CheckLine(const Line: string): string;

var
  DetThreshold: Extended = 0;
  DistThreshold: Extended = 0;
  PlaneNormalAngleLimit: Extended = 0;
  CollinearPointsThreshold: Extended = 0.0001;

implementation

uses
  DATModel, DATBase, DATMath, DATUtils, SysUtils, Math;
  
function SubPartIsXZPrimitive(const Subp: string): Boolean;
begin
  Result :=  (pos('disc',Subp) > 0) or
             (pos('ndis',Subp) > 0) or
             (pos('rect',Subp) > 0) or
             (pos('rin',Subp) > 0) or
             (pos('axleend',Subp) > 0) or
             (pos('axlehol2',Subp) > 0) or
             (pos('axlehol3',Subp) > 0) or
             (pos('axlehol9',Subp) > 0) or
             (pos('axleho10',Subp) > 0) or
             (pos('edge',Subp) > 0) or
             (pos('chrd',Subp) > 0) or
             (pos('tang',Subp) > 0);
end;

function CheckLinearPoints(const p1,p2,p3: TDATPoint): Extended;

var
  cp1: TDATPoint;

begin
  cp1 := PointCrossProduct(PointSubtract(p1,p2),PointSubtract(p2,p3));
  Result := abs(PointDotProduct(cp1,cp1));
end;

function CoPlanarCheckDet(const m: TDATMatrix): Extended;

var
  i: Integer;
  TempMatrix: TDATMatrix;

begin
  for i := 1 to 3 do
  begin
    TempMatrix[i,1] := m[i,1] - m[4,1];
    TempMatrix[i,2] := m[i,2] - m[4,2];
    TempMatrix[i,3] := m[i,3] - m[4,3];
  end;
  Result := abs(MatrixDet(TempMatrix));
end;

function CoPlanerCheckDist(const m: TDATMatrix): Extended;

var
  det, maxdist, dist: Extended;
  i,j: Integer;
  TempMatrix: TDATMatrix;
  TempPoint, TempPoint2: TDATPoint;

begin
  det := CoPlanarCheckDet(m);

  for i := 1 to 4 do
  begin
    j := (i and 3) + 1;
    TempMatrix[i,1] := m[i,1] - m[j,1];
    TempMatrix[i,2] := m[i,2] - m[j,2];
    TempMatrix[i,3] := m[i,3] - m[j,3];
  end;

  maxdist := 0;

  for i := 1 to 4 do
  begin
    j := ((i+2) and 3) + 1;
    TempPoint[1] := TempMatrix[i,1];
    TempPoint[2] := TempMatrix[i,2];
    TempPoint[3] := TempMatrix[i,3];
    TempPoint2[1] := TempMatrix[j,1];
    TempPoint2[2] := TempMatrix[j,2];
    TempPoint2[3] := TempMatrix[j,3];
    dist := PointLength(PointCrossProduct(TempPoint, TempPoint2));
    if (dist <> 0) and ((det / dist) > maxdist) then
      maxdist := det / dist;
  end;

  Result := maxdist;
end;

function CoPlanerCheckNormalAngle(const m: TDATMatrix): Extended;

var
  A,B,C,D, norm1, norm2, temp: TDATPoint;
  Angle1, Angle2: Extended;

begin
  A := PointSubtract(DATPoint(m[1,1], m[1,2], m[1,3]), DATPoint(m[2,1], m[2,2], m[2,3]));
  B := PointSubtract(DATPoint(m[2,1], m[2,2], m[2,3]), DATPoint(m[3,1], m[3,2], m[3,3]));
  C := PointSubtract(DATPoint(m[3,1], m[3,2], m[3,3]), DATPoint(m[4,1], m[4,2], m[4,3]));
  D := PointSubtract(DATPoint(m[4,1], m[4,2], m[4,3]), DATPoint(m[1,1], m[1,2], m[1,3]));

  temp := PointCrossProduct(A, D);
  norm1 := PointMultiply(temp, 1 / sqrt(PointDotProduct(temp, temp)));
  temp := PointCrossProduct(B, C);
  norm2 := PointMultiply(temp, 1 / sqrt(PointDotProduct(temp, temp)));
  temp := PointCrossProduct(norm1, norm2);
  Angle1 := 180*pi*arcsin(sqrt(PointDotProduct(temp, temp)));

  temp := PointCrossProduct(A, B);
  norm1 := PointMultiply(temp, 1 / sqrt(PointDotProduct(temp, temp)));
  temp := PointCrossProduct(D, C);
  norm2 := PointMultiply(temp, 1 / sqrt(PointDotProduct(temp, temp)));
  temp := PointCrossProduct(norm1, norm2);
  Angle2 := 180*pi*arcsin(sqrt(PointDotProduct(temp, temp)));

  if Angle1 > Angle2 then
    Result := Angle1
  else
    Result := Angle2;
end;

function CheckSubPart(datsubpart: TDATSubPart): string;

var
  det, tempval: Extended;
  i: Integer;

begin
  Result := '';
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
              Result := 'Row ' + IntToStr(i-1) + ' all zeros';
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
              Result := 'Y column all zeros';
              Break;
            end
            else
              MatrixVals[i,2] := tempval;
          end;
        if det = 0 then Result := 'Singular matrix (unfixable)';
      end
      else
        Result := 'Singular matrix';
  end;
end;

function CheckLine2(const line: TDATLine): string;
begin
  Result := '';
  with line do
    if CheckSamePoint(Point[1],Point[2]) then
      Result := 'Identical vertices';
end;

function CheckTri(const tri: TDATTriangle): string;

var
  dp: Extended;

begin
  Result := '';
  with tri do
    if CheckSamePoint(Point[1],Point[2]) or
       CheckSamePoint(Point[2],Point[3]) or
       CheckSamePoint(Point[3],Point[1]) then
      Result := 'Identical vertices'
    else
    begin
      dp := CheckLinearPoints(Point[1],Point[2],Point[3]);
      if dp < CollinearPointsThreshold then
        Result := 'Collinear vertices (' + FloatToStr(dp) + ')';
    end;
end;

function CheckQuad(const quad: TDATQuad): string;

var
  det, maxdist, maxangle: Extended;
  A,B,C: Boolean;
  v01, v02, v03, v12, v13, v23: TDATPoint;

begin
  with quad do
  begin
    if CheckSamePoint(Point[1],Point[2]) or
       CheckSamePoint(Point[2],Point[3]) or
       CheckSamePoint(Point[3],Point[4]) or
       CheckSamePoint(Point[4],Point[1]) or
       CheckSamePoint(Point[1],Point[3]) or
       CheckSamePoint(Point[4],Point[2]) then
    begin
      Result := 'Identical vertices';
      Exit;
    end;

    if CheckLinearPoints(Point[1],Point[2],Point[3]) < CollinearPointsThreshold then
    begin
      Result := 'Collinear vertices 012 (' + FloatToStr(CheckLinearPoints(Point[1],Point[2],Point[3])) + ')';
      Exit;
    end;

    if CheckLinearPoints(Point[1],Point[2],Point[4]) < CollinearPointsThreshold then
    begin
      Result := 'Collinear vertices 013 (' + FloatToStr(CheckLinearPoints(Point[1],Point[2],Point[4])) + ')';
      Exit;
    end;

    if CheckLinearPoints(Point[1],Point[3],Point[4]) < CollinearPointsThreshold then
    begin
      Result := 'Collinear vertices 023 (' + FloatToStr(CheckLinearPoints(Point[1],Point[3],Point[4])) + ')';
      Exit;
    end;

    if CheckLinearPoints(Point[2],Point[3],Point[4]) < CollinearPointsThreshold then
    begin
      Result := 'Collinear vertices 123(' + FloatToStr(CheckLinearPoints(Point[2],Point[3],Point[4])) + ')';
      Exit;
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

    if (not A) and (not B) and C then
    begin
      Result := 'Bad vertex sequence, 0132 used';
      Exit;
    end;

    if (not A) and B and (not C) then
    begin
      Result := 'Bad vertex sequence, 0312 used';
      Exit;
    end;

    if (DetThreshold > 0) then
    begin
      det := CoPlanarCheckDet(Matrix);
      if det > DetThreshold then
      begin
        Result := 'Vertices not coplaner (' + FloatToStr(det) + ')';
        Exit;
      end;
    end;

    if (DistThreshold > 0)  then
    begin
      maxdist := CoPlanerCheckDist(Matrix);
      if maxdist > DistThreshold then
      begin
        Result := 'Vertices not coplaner (' + FloatToStr(maxdist) + ')';
        Exit;
      end;
    end;

    if (PlaneNormalAngleLimit > 0)  then
    begin
      maxangle := CoPlanerCheckNormalAngle(Matrix);
      if maxangle > PlaneNormalAngleLimit then
      begin
        Result := 'Vertices not coplaner (angle ' + FloatToStr(maxangle) + ')';
        Exit;
      end;
    end;

  end;

  Result := '';
end;

function CheckOpLine(const opline: TDATOpline): string;
begin
  with opline do
    if CheckSamePoint(Point[1],Point[2]) or CheckSamePoint(Point[3],Point[4]) then
      Result := 'Identical vertices';
end;

function L3CheckLine(const Line: string): string;

var
  DLine: TDATType;

begin
  DLine := StrToDAT(Line);

  case DLine.LineType of
    1: Result := CheckSubPart(DLine as TDATSubPart);
    2: Result := CheckLine2(DLine as TDATLine);
    3: Result := CheckTri(DLine as TDATTriangle);
    4: Result := CheckQuad(DLine as TDATQuad);
    5: Result := CheckOpLine(DLine as TDATOpline);
    else
      Result := '';
  end;

  DLine.Free;
end;

end.
