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
  DATModel, DATBase, SysUtils;

function L3CheckLine(Line: string): string;

var
  DetThreshold: Extended = 0;
  DistThreshold: Extended = 0;
  CollinearPointsThreshold: Extended = 0.0001;

implementation


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
  Result[1] := p1[2] * p2[3] - p1[3] * p2[2];
  Result[2] := p1[3] * p2[1] - p1[1] * p2[3];
  Result[3] := p1[1] * p2[2] - p1[2] * p2[1];
end;

function PointDotProduct(p1,p2: TDATPoint): Extended;
begin
  Result := p1[1] * p2[1] + p1[2] * p2[2] + p1[3] * p2[3];
end;

function PointLength(p1: TDATPoint): Extended;
begin
  Result := Sqrt(p1[1] * p1[1] + p1[2] * p1[2] + p1[3] * p1[3]);
end;

function SubPartIsXZPrimitive(Subp: string): Boolean;
begin
  if (pos('DISC',Subp) > 0) or (pos('NDIS',Subp) > 0) or
     (pos('RECT',Subp) > 0) or (pos('RIN',Subp) > 0) or
     (pos('AXLEEND',Subp) > 0) or (pos('AXLEHOL2',Subp) > 0) or
     (pos('AXLEHOL3',Subp) > 0) or (pos('AXLEHOL9',Subp) > 0) or
     (pos('AXLEHO10',Subp) > 0) or (pos('EDGE',Subp) > 0) then
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
begin
  Result := PointDotProduct(PointCrossProduct(PointSubtract(p1,p2),
                                              PointSubtract(p2,p3)),
                            PointCrossProduct(PointSubtract(p1,p2),
                                              PointSubtract(p2,p3)));
  if Result < 0 then Result := -Result;
end;

function L3CheckLine(Line: string): string;

var
  DATModel1: TDATModel;
  det,dp, maxdist: Extended;
  i,j: Integer;
  A,B,C: Boolean;
  TempMatrix: TDATMatrix;
  TempPoint, TempPoint2: TDATPoint;
  dist: array[1..4] of Extended;

begin
  DATModel1 := TDATModel.Create;
  DATModel1.Add(Line);
  Result := '';

  case DATModel1[0].LineType of
    1: with DATModel1[0] as TDATSubPart do
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
                 RM[i,2] := 1;
                 det := MatrixDet(RotationMatrix);
                 if det <> 0 then
                 begin
                   Result := 'Y column all zeros';
                   Break;
                 end;
               end;
             if det = 0 then Result := 'Singular matrix (unfixable)';
         end
         else
           Result := 'Singular matrix';
       end;

    2: with DATModel1[0] as TDATLine do
         if CheckSamePoint(Point[1],Point[2]) then
           Result := 'Identical vertices';

    3: with DATModel1[0] as TDATTriangle do
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

    4: with DATModel1[0] as TDATQuad do
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
             A := PointDotProduct(PointCrossProduct(PointSubtract(Point[2],Point[1]),
                                                    PointSubtract(Point[3],Point[1])),
                                  PointCrossProduct(PointSubtract(Point[3],Point[1]),
                                                    PointSubtract(Point[4],Point[1]))) > 0;
             B := PointDotProduct(PointCrossProduct(PointSubtract(Point[3],Point[2]),
                                                    PointSubtract(Point[2],Point[1])),
                                  PointCrossProduct(PointSubtract(Point[2],Point[1]),
                                                    PointSubtract(Point[4],Point[2]))) > 0;
             C := -PointDotProduct(PointCrossProduct(PointSubtract(Point[3],Point[1]),
                                                     PointSubtract(Point[3],Point[2])),
                                   PointCrossProduct(PointSubtract(Point[3],Point[2]),
                                                     PointSubtract(Point[4],Point[3]))) > 0;
             if not A then
               if B then
                 if not C then Result := 'Bad vertex sequence, 0312 used'
               else
                 if C then Result := 'Bad vertex sequence, 0132 used';
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
               Result := 'Vertices not coplanar (' + FloatToStr(det) + ')';
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
               Result := 'Vertices not coplanar (' + FloatToStr(maxdist) + ')';
           end;
         end;
    5: with DATModel1[0] as TDATOpLine do
         if CheckSamePoint(Point[1],Point[2]) or CheckSamePoint(Point[3],Point[4]) then
           Result := 'Identical vertices';

  end;
end;

end.
