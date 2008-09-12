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

uses
  Contnrs;

type
  TDATErrorType = (deRowAllZeros, deYColumnAllZeros, deSigularMatrix,
                   deCollinearVertices, deIdenticalVertices, deConcaveQuad,
                   deBowtieQuad, deNonCoplanerVertices, deIdenticalLine,
                   deColor24Illegal, deNil);

  TDATCoplanerType = (ctDet, ctDist, ctNormalAngle);

  TDATError = class(TObject)
    ErrorType: TDATErrorType;
    Row: Byte;
    CollinearValue: Extended;
    CollinearVertices: array[1..3] of Integer;
    IsBowtieType1423: Boolean;
    CoplanerValue: Extended;
    CoplanerType: TDATCoplanerType;
    SplitOn24: Boolean;
    Line: Integer;
    procedure Assign(AError: TDATError);
  end;

const
  strRow1AllZeros = 'Row 1 all zeros';
  strRow2AllZeros = 'Row 2 all zeros';
  strRow3AllZeros = 'Row 3 all zeros';
  strYColumnAllZeros = 'Y column all zeros';
  strSingularMatrix = 'Singular Matrix';
  strCollinearVertices = 'Collinear Vertices';
  strIdenticalVertices = 'Identical Vertices';
  strConcaveSplit13 = 'Concave quad, split on diagonal of points 1 and 3';
  strConcaveSplit24 = 'Concave quad, split on diagonal of points 2 and 4';
  strBowtie1423 = 'Bowtie quad, reorder points to sequence 1, 4, 2, 3';
  strBowtie1243 = 'Bowtie quad, reorder points to sequence 1, 2, 4, 3';
  strNonCoplanerVertices = 'Quad points not coplaner';
  strIdenticalLine = 'Identical to line';
  strColor24Illegal = 'Color 24 illegal for this linetype';

var
  DetThreshold: Extended = 0;
  DistThreshold: Extended = 0;
  PlaneNormalAngleLimit: Extended = 0;
  CollinearPointsThreshold: Extended = 0.0001;

function L3CheckLine(const Line: string): TObjectList;
function GetErrorString(error: TDATError): string;

implementation

uses
  DATModel, DATBase, DATMath, DATUtils, SysUtils, Math;

procedure TDATError.Assign(AError: TDATError);
begin
  ErrorType := AError.ErrorType;
  Row := AError.Row;
  CollinearValue := AError.CollinearValue;
  CollinearVertices := AError.CollinearVertices;
  IsBowtieType1423 := AError.IsBowtieType1423;
  CoplanerValue := AError.CoplanerValue;
  CoplanerType := AError.CoplanerType;
  SplitOn24 := AError.SplitOn24;
  Line := AError.Line;
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
  Angle1 := 180/pi*arcsin(sqrt(PointDotProduct(temp, temp)));

  temp := PointCrossProduct(A, B);
  norm1 := PointMultiply(temp, 1 / sqrt(PointDotProduct(temp, temp)));
  temp := PointCrossProduct(D, C);
  norm2 := PointMultiply(temp, 1 / sqrt(PointDotProduct(temp, temp)));
  temp := PointCrossProduct(norm1, norm2);
  Angle2 := 180/pi*arcsin(sqrt(PointDotProduct(temp, temp)));

  if Angle1 > Angle2 then
    Result := Angle1
  else
    Result := Angle2;
end;

function CheckSubPart(datsubpart: TDATSubPart): TObjectList;

var
  det, tempval: Extended;
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
              error := TDATError.Create;
              error.ErrorType := deRowAllZeros;
              error.Row := i;
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
              error := TDATError.Create;
              error.ErrorType := deYColumnAllZeros;
              Result.Add(error);
              Break;
            end
            else
              MatrixVals[i,2] := tempval;
          end;
        if det = 0 then
        begin
          error := TDATError.Create;
          error.ErrorType := deSigularMatrix;
          Result.Add(error);
        end;
      end
      else
      begin
        error := TDATError.Create;
        error.ErrorType := deSigularMatrix;
        Result.Add(error);
      end;
    if Color = 24 then
    begin
      error := TDATError.Create;
      error.ErrorType := deColor24Illegal;
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
      error := TDATError.Create;
      error.ErrorType := deIdenticalVertices;
      Result.Add(error);
    end;
end;

function CheckTri(const tri: TDATTriangle): TObjectList;

var
  dp: Extended;
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
      error := TDATError.Create;
      error.ErrorType := deIdenticalVertices;
      Result.Add(error);
    end;

    dp := CheckLinearPoints(Point[1],Point[2],Point[3]);
    if dp < CollinearPointsThreshold then
    begin
      error := TDATError.Create;
      error.ErrorType := deCollinearVertices;
      error.CollinearValue := dp;
      Result.Add(error);
    end;
  end;
end;

function CheckQuad(const quad: TDATQuad): TObjectList;

var
  det, maxdist, maxangle, cp: Extended;
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
      error := TDATError.Create;;
      error.ErrorType := deIdenticalVertices;
      Result.Add(error);
      Exit;
    end;

    cp := CheckLinearPoints(Point[1],Point[2],Point[3]);
    if cp < CollinearPointsThreshold then
    begin
      error := TDATError.Create;;
      error.ErrorType := deCollinearVertices;
      error.CollinearValue := cp;
      error.CollinearVertices[1] := 1;
      error.CollinearVertices[2] := 2;
      error.CollinearVertices[3] := 3;
      Result.Add(error);
      Exit;
    end;

    cp := CheckLinearPoints(Point[1],Point[2],Point[4]);
    if cp < CollinearPointsThreshold then
    begin
      error := TDATError.Create;;
      error.ErrorType := deCollinearVertices;
      error.CollinearValue := cp;
      error.CollinearVertices[1] := 1;
      error.CollinearVertices[2] := 2;
      error.CollinearVertices[3] := 4;
      Result.Add(error);
      Exit;
    end;

    cp := CheckLinearPoints(Point[1],Point[3],Point[4]);
    if cp < CollinearPointsThreshold then
    begin
      error := TDATError.Create;;
      error.ErrorType := deCollinearVertices;
      error.CollinearValue := cp;
      error.CollinearVertices[1] := 1;
      error.CollinearVertices[2] := 3;
      error.CollinearVertices[3] := 4;
      Result.Add(error);
      Exit;
    end;

    cp := CheckLinearPoints(Point[2],Point[3],Point[4]);
    if cp < CollinearPointsThreshold then
    begin
      error := TDATError.Create;;
      error.ErrorType := deCollinearVertices;
      error.CollinearValue := cp;
      error.CollinearVertices[1] := 2;
      error.CollinearVertices[2] := 3;
      error.CollinearVertices[3] := 4;
      Result.Add(error);
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

    if A then
    begin
      if (B and (not C)) or (C and (not B)) then
      begin
        error := TDATError.Create;;
        error.ErrorType := deConcaveQuad;
        error.SplitOn24 := False;
        Result.Add(error);
      end;
    end
    else
      if B then
        if C then
        begin
          error := TDATError.Create;;
          error.ErrorType := deConcaveQuad;
          error.SplitOn24 := True;
          Result.Add(error);
        end
        else
        begin
          error := TDATError.Create;;
          error.ErrorType := deBowtieQuad;
          error.IsBowtieType1423 := True;
          Result.Add(error);
        end
      else
        if C then
        begin
          error := TDATError.Create;;
          error.ErrorType := deBowtieQuad;
          error.IsBowtieType1423 := False;
          Result.Add(error);
        end
        else
        begin
          error := TDATError.Create;;
          error.ErrorType := deConcaveQuad;
          error.SplitOn24 := True;
          Result.Add(error);
        end;

    if (DetThreshold > 0) then
    begin
      det := CoPlanarCheckDet(Matrix);
      if det > DetThreshold then
      begin
        error := TDATError.Create;;
        error.ErrorType := deNonCoplanerVertices;
        error.CoplanerType := ctDet;
        error.CoplanerValue := det;
        Result.Add(error);
      end;
    end;

    if (DistThreshold > 0)  then
    begin
      maxdist := CoPlanerCheckDist(Matrix);
      if maxdist > DistThreshold then
      begin
        error := TDATError.Create;;
        error.ErrorType := deNonCoplanerVertices;
        error.CoplanerType := ctDist;
        error.CoplanerValue := maxdist;
        Result.Add(error);
      end;
    end;

    if (PlaneNormalAngleLimit > 0)  then
    begin
      maxangle := CoPlanerCheckNormalAngle(Matrix);
      if maxangle > PlaneNormalAngleLimit then
      begin
        error := TDATError.Create;;
        error.ErrorType := deNonCoplanerVertices;
        error.CoplanerType := ctNormalAngle;
        error.CoplanerValue := maxangle;
        Result.Add(error);
      end;
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
      error := TDATError.Create;;
      error.ErrorType := deIdenticalVertices;
      Result.Add(error);
    end;
end;

function L3CheckLine(const Line: string): TObjectList;

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
    else Result := nil;
  end;

  DLine.Free;
end;

function GetErrorString(error: TDATError): string;
begin
  case error.ErrorType of
    deRowAllZeros:
      case error.Row of
        1: Result := strRow1AllZeros;
        2: Result := strRow2AllZeros;
        3: Result := strRow3AllZeros;
        else Result := '';
      end;
    deYColumnAllZeros: Result := strYColumnAllZeros;
    deSigularMatrix: Result := strSingularMatrix;
    deIdenticalVertices: Result := strIdenticalVertices;
    deCollinearVertices:
      if (error.CollinearVertices[1] > 0) and
         (error.CollinearVertices[2] > 0) and
         (error.CollinearVertices[3] > 0) then
        Result := 'Points ' + IntToStr(error.CollinearVertices[1]) + ', ' +
                   IntToStr(error.CollinearVertices[2]) + ', and ' +
                   IntToStr(error.CollinearVertices[3]) + ' have ' +
                   strCollinearVertices + ' (' +
                   FloatToStr(error.CollinearValue) + ')'
      else
        Result := strCollinearVertices + ' (' +
                  FloatToStr(error.CollinearValue) + ')';
    deConcaveQuad:
      if error.SplitOn24 then
        Result := strConcaveSplit24
      else
        Result := strConcaveSplit13;
    deBowtieQuad:
      if error.IsBowtieType1423 then
        Result := strBowtie1423
      else
        Result := strBowtie1243;
    deNonCoplanerVertices:
      case error.CoplanerType of
        ctDet: Result := strNonCoplanerVertices +
                         ' (det = ' + FloatToStr(error.CoplanerValue) + ')';
        ctDist: Result := strNonCoplanerVertices +
                          ' (dist = ' + FloatToStr(error.CoplanerValue) + ')';
        ctNormalAngle: Result := strNonCoplanerVertices +
                       ' (angle = ' + FloatToStr(error.CoplanerValue) + ')';
        else Result := '';
      end;
    deIdenticalLine: Result := strIdenticalLine + ' ' + IntToStr(error.Line);
    deColor24Illegal: Result := strColor24Illegal;
    else Result := '';
  end;
end;

end.
