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

unit DATMath;

interface

uses
  DATBase;

function M4Multiply(M1,M2:TDATMatrix): TDATMatrix;
function MatrixDet(const m: TDATMatrix): Extended;
function PointSubtract(const p1,p2: TDATPoint): TDATPoint;
function PointAdd(const p1,p2: TDATPoint): TDATPoint;
function PointMultiply(const p1: TDATPoint; const factor: Extended): TDATPoint;
function PointCrossProduct(const p1,p2: TDATPoint): TDATPoint;
function PointDotProduct(const p1,p2: TDATPoint): Extended;
function PointLength(const p1: TDATPoint): Extended;

implementation

function M4Multiply(M1,M2:TDATMatrix): TDATMatrix;

var
  i,j: Byte;

begin
  for i:= 1 to 4 do
    for j:= 1 to 4 do
      Result[i,j] := M1[i,1] * M2[1,j] +
                     M1[i,2] * M2[2,j] +
                     M1[i,3] * M2[3,j] +
                     M1[i,4] * M2[4,j];
end;

function MatrixDet(const m: TDATMatrix): Extended;
begin
  Result := m[1,1] * (m[2,2] * m[3,3] - m[3,2] * m[2,3]) +
            m[2,1] * (m[3,2] * m[1,3] - m[1,2] * m[3,3]) +
            m[3,1] * (m[1,2] * m[2,3] - m[2,2] * m[1,3]);
end;

function PointSubtract(const p1,p2: TDATPoint): TDATPoint;
begin
  Result[1] := p1[1] - p2[1];
  Result[2] := p1[2] - p2[2];
  Result[3] := p1[3] - p2[3];
end;

function PointAdd(const p1,p2: TDATPoint): TDATPoint;
begin
  Result[1] := p1[1] + p2[1];
  Result[2] := p1[2] + p2[2];
  Result[3] := p1[3] + p2[3];
end;

function PointMultiply(const p1: TDATPoint; const factor: Extended): TDATPoint;
begin
  Result[1] := factor * p1[1];
  Result[2] := factor * p1[2];
  Result[3] := factor * p1[3];
end;

function PointCrossProduct(const p1,p2: TDATPoint): TDATPoint;
begin
  Result[1] := (p1[2] * p2[3]) - (p1[3] * p2[2]);
  Result[2] := (p1[3] * p2[1]) - (p1[1] * p2[3]);
  Result[3] := (p1[1] * p2[2]) - (p1[2] * p2[1]);
end;

function PointDotProduct(const p1,p2: TDATPoint): Extended;
begin
  Result := (p1[1] * p2[1]) + (p1[2] * p2[2]) + (p1[3] * p2[3]);
end;

function PointLength(const p1: TDATPoint): Extended;
begin
  Result := Sqrt((p1[1] * p1[1]) + (p1[2] * p1[2]) + (p1[3] * p1[3]));
end;

end.
