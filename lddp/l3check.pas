unit l3check;
(*
  Copyright 2003 Orion Pobursky

  This file is derived from:
    L3Input.cpp and L3Math.cpp
    Part of the L3 project for handling LDraw *.dat files
    Copyright (C) 1997-1999  Lars C. Hassing (lch@ccieurope.com)

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
  DATModel, DATBase, SysUtils, Dialogs;

function CheckSamePoint(p1,p2: TDATPoint): Boolean;
function L3CheckLine(Line: string): string;

var
  DetThreshold: Extended = 0;
  UnitDetThreshold: Extended = 0.1;
  DistThreshold: Extended = 0;
  CollinearPointsThreshold: Extended = 0.0001;

implementation

uses
  Math;
  
var
  Debug: Boolean = False;

function MatrixDet(m: TDATMatrix): Extended;
begin
  Result := m[1,1] * (m[2,2] * m[3,3] - m[3,2] * m[2,3]) +
            m[2,1] * (m[3,2] * m[1,3] - m[1,2] * m[3,3]) +
            m[3,1] * (m[1,2] * m[2,3] - m[2,2] * m[1,3]);
end;

function PointSubtract(p1,p2: TDATPoint): TDATPoint;
begin
  Result[1] := p1[1] - p2[1];
  Result[2] := p1[2] - p2[2];
  Result[3] := p1[3] - p2[3];
end;

function PointCrossProduct(p1,p2: TDATPoint): TDATPoint;
begin
  Result[1] := (p1[2] * p2[3]) - (p1[3] * p2[2]);
  Result[2] := (p1[3] * p2[1]) - (p1[1] * p2[3]);
  Result[3] := (p1[1] * p2[2]) - (p1[2] * p2[1]);
end;

function PointDotProduct(p1,p2: TDATPoint): Extended;
begin
  Result := (p1[1] * p2[1]) + (p1[2] * p2[2]) + (p1[3] * p2[3]);
end;

function PointLength(p1: TDATPoint): Extended;
begin
  Result := Sqrt((p1[1] * p1[1]) + (p1[2] * p1[2]) + (p1[3] * p1[3]));
end;

function SubPartIsXZPrimitive(Subp: string): Boolean;
begin
  if (pos('disc',Subp) > 0) or (pos('ndis',Subp) > 0) or
     (pos('rect',Subp) > 0) or (pos('rin',Subp) > 0) or
     (pos('axleend',Subp) > 0) or (pos('axlehol2',Subp) > 0) or
     (pos('axlehol3',Subp) > 0) or (pos('axlehol9',Subp) > 0) or
     (pos('axleho10',Subp) > 0) or (pos('edge',Subp) > 0) then
    Result := true
  else
    Result := false;
end;

function CheckSamePoint(p1,p2: TDATPoint): Boolean;
begin
  if (p1[1] = p2[1]) and (p1[2] = p2[2]) and (p1[3] = p2[3]) then
    Result := true
  else
    Result := false;
end;

function CheckLinearPoints(p1,p2,p3: TDATPoint): Extended;

var
  sp1, sp2, cp1: TDATPoint;

begin
  sp1 := PointSubtract(p1,p2);
  sp2 := PointSubtract(p2,p3);
  cp1 := PointCrossProduct(sp1,sp2);

  Result := PointDotProduct(cp1,cp1);
  if Result < 0 then Result := -Result;
end;

function L3CheckLine(Line: string): string;

var
  DLine: TDATType;
  det, dp, maxdist, tempval: Extended;
  i,j: Integer;
  A,B,C: Boolean;
  TempMatrix, OriginalQuad: TDATMatrix;
  TempPoint, TempPoint2: TDATPoint;
  v01, v02, v03, v12, v13, v23, cp1, cp2: TDATPoint;
  dist: array[1..4] of Extended;

begin
  DLine := StrToDAT(Line);
  Result := '';

  case DLine.LineType of
    1: with DLine as TDATSubPart do
       begin
         det := MatrixDet(RotationMatrix);
         if (det = 0) then
           if SubPartIsXZPrimitive(SubPart) then
           begin
             for i := 1 to 3 do
               if (RM[i,1] = 0) and (RM[i,2] = 0) and (RM[i,3] = 0) then
               begin
                 RM[i,2] := 1;
                 det := MatrixDet(RotationMatrix);
                 if det <> 0 then
                 begin
                   Result := 'Row ' + IntToStr(i-1) + ' all zeros';
                   Break;
                 end;
               end;
             if (det = 0) and (RM[1,2] = 0) and (RM[2,2] = 0) and (RM[3,2] = 0) then
               for i := 1 to 3 do
               begin
                 tempval := RM[i,2];
                 RM[i,2] := 1;
                 det := MatrixDet(RotationMatrix);
                 if det <> 0 then
                 begin
                   Result := 'Y column all zeros';
                   Break;
                 end
                 else
                   RM[i,2] := tempval;
               end;
             if det = 0 then Result := 'Singular matrix (unfixable)';
         end
         else
           Result := 'Singular matrix';
       end;

    2: with DLine as TDATLine do
         if CheckSamePoint(Point[1],Point[2]) then
           Result := 'Identical vertices';

    3: with DLine as TDATTriangle do
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

    4: with DLine as TDATQuad do
         if CheckSamePoint(Point[1],Point[2]) or
            CheckSamePoint(Point[2],Point[3]) or
            CheckSamePoint(Point[3],Point[4]) or
            CheckSamePoint(Point[4],Point[1]) or
            CheckSamePoint(Point[1],Point[3]) or
            CheckSamePoint(Point[4],Point[2]) then
           Result := 'Identical vertices'
         else
         begin
           dp := CheckLinearPoints(Point[1],Point[2],Point[3]);
           if dp < CollinearPointsThreshold then
             Result := 'Collinear vertices 012 (' + FloatToStr(dp) + ')'
           else
           begin
             dp := CheckLinearPoints(Point[1],Point[2],Point[4]);
             if dp < CollinearPointsThreshold then
               Result := 'Collinear vertices 013 (' + FloatToStr(dp) + ')'
             else
             begin
               dp := CheckLinearPoints(Point[1],Point[3],Point[4]);
               if dp < CollinearPointsThreshold then
                 Result := 'Collinear vertices 023 (' + FloatToStr(dp) + ')'
               else
               begin
                 dp := CheckLinearPoints(Point[2],Point[3],Point[4]);
                 if dp < CollinearPointsThreshold then
                   Result := 'Collinear vertices 123(' + FloatToStr(dp) + ')'
               end;
             end;
           end;
           if Result = '' then
           begin
             v01 := PointSubtract(Point[2], Point[1]);
             v02 := PointSubtract(Point[3], Point[1]);
             v03 := PointSubtract(Point[4], Point[1]);
             v12 := PointSubtract(Point[3], Point[2]);
             v13 := PointSubtract(Point[4], Point[2]);
             v23 := PointSubtract(Point[4], Point[3]);
             cp1 := PointCrossProduct(v01, v02);
             cp2 := PointCrossProduct(v02, v03);
             A := PointDotProduct(cp1, cp2) > 0.0;
             cp1 := PointCrossProduct(v12, v01);
             cp2 := PointCrossProduct(v01, v13);
             B := PointDotProduct(cp1, cp2) > 0.0;
             cp1 := PointCrossProduct(v02, v12);
             cp2 := PointCrossProduct(v12, v23);
             C := -PointDotProduct(cp1, cp2) > 0.0;

             if A = False then
             begin
               if B then
               begin
                 if C = False then
                   Result := 'Bad vertex sequence, 0312 used';
               end
               else
               begin
                 if C then
                   Result := 'Bad vertex sequence, 0132 used';
               end;
             end;
           end;
           if (Result = '') and (DetThreshold > 0)  then
           begin
             for i := 1 to 3 do
             begin
               TempPoint := PointSubtract(Point[i], Point[4]);
               TempMatrix[i,1] := TempPoint[1];
               TempMatrix[i,2] := TempPoint[2];
               TempMatrix[i,3] := TempPoint[3];
             end;
             det := MatrixDet(TempMatrix);
             if det < 0 then det := -det;
             if det > DetThreshold then
               Result := 'Vertices not coplaner (' + FloatToStr(det) + ')';
           end;
           if (Result = '') and (DistThreshold > 0)  then
           begin
             for i := 1 to 3 do
             begin
               TempPoint := PointSubtract(Point[i], Point[4]);
               TempMatrix[i,1] := TempPoint[1];
               TempMatrix[i,2] := TempPoint[2];
               TempMatrix[i,3] := TempPoint[3];
             end;
             det := MatrixDet(TempMatrix);
             if det < 0 then det := -det;

             for i := 1 to 4 do
             begin
               TempPoint := PointSubtract(Point[i], Point[(i and 3) + 1]);
               TempMatrix[i,1] := TempPoint[1];
               TempMatrix[i,2] := TempPoint[2];
               TempMatrix[i,3] := TempPoint[3];
             end;

             for i := 1 to 4 do
             begin
               j := ((i+2) and 3) + 1;
               TempPoint[1] := TempMatrix[i,1];
               TempPoint[2] := TempMatrix[i,2];
               TempPoint[3] := TempMatrix[i,3];
               TempPoint2[1] := TempMatrix[j,1];
               TempPoint2[2] := TempMatrix[j,2];
               TempPoint2[3] := TempMatrix[j,3];
               dist[i] := PointLength(PointCrossProduct(TempPoint, TempPoint2));
             end;

             maxdist := 0;
             for i := 1 to 4 do
               if (dist[i] <> 0) and ((det / dist[i]) > maxdist) then
                 maxdist := det / dist[i];
             if maxdist > DistThreshold then
               Result := 'Vertices not coplaner (' + FloatToStr(maxdist) + ')';
           end;
           if (Result = '') and (UnitDetThreshold > 0)  then
           begin
             OriginalQuad := RotationMatrix;

             Translate(-RotationMatrix[1,1],-RotationMatrix[1,2],-RotationMatrix[1,3]);

             ShowMessage('1 ' + DatString);

             tempval := ArcTan2(RotationMatrix[2,2], RotationMatrix[2,1]);
             Rotate(-RadToDeg(tempval),0,0,1);
             tempval := ArcTan2(RotationMatrix[2,3], RotationMatrix[2,1]);
             Rotate(-RadToDeg(tempval),0,1,0);

             ShowMessage('2 ' + DatString);

             TempMatrix := FDATIdentityMatrix;
             TempMatrix[1,1] := 1 / abs(RotationMatrix[2,1]);
             TempMatrix[2,2] := 1 / abs(RotationMatrix[2,1]);
             TempMatrix[3,3] := 1 / abs(RotationMatrix[2,1]);
             Transform(TempMatrix);

             ShowMessage('3 ' + DatString);

             tempval := ArcTan2(RotationMatrix[3,3], RotationMatrix[3,2]);
             Rotate(-RadToDeg(tempval),1,0,0);

             OriginalQuad := RotationMatrix;

             RM[4,3] := 0;

             tempval := RotationMatrix[1,1];
             for i := 1 to 4 do
             begin
               if abs(RotationMatrix[i,1]) > abs(tempval) then tempval := RotationMatrix[i,1];
               if abs(RotationMatrix[i,2]) > abs(tempval) then tempval := RotationMatrix[i,2];
               if abs(RotationMatrix[i,3]) > abs(tempval) then tempval := RotationMatrix[i,3];
             end;
             TempMatrix := FDATIdentityMatrix;
             TempMatrix[1,1] := 1 / abs(tempval);
             TempMatrix[2,2] := 1 / abs(tempval);
             TempMatrix[3,3] := 1 / abs(tempval);

             RotationMatrix := OriginalQuad;
//             Translate(-RotationMatrix[1,1],-RotationMatrix[1,2],-RotationMatrix[1,3]);
             Transform(TempMatrix);
             for i := 1 to 3 do
             begin
               TempPoint := PointSubtract(Point[i], Point[4]);
               TempMatrix[i,1] := TempPoint[1];
               TempMatrix[i,2] := TempPoint[2];
               TempMatrix[i,3] := TempPoint[3];
             end;
             det := MatrixDet(TempMatrix);
             if det < 0 then det := -det;
             if det > UnitDetThreshold then
               Result := 'Vertices not coplaner (' + FloatToStr(det) + ')';
           end;
         end;
    5: with DLine as TDATOpLine do
         if CheckSamePoint(Point[1],Point[2]) or CheckSamePoint(Point[3],Point[4]) then
           Result := 'Identical vertices';

  end;
  DLine.Free;
end;

end.
