{These sources are copyright (C) 2003-2005 the LDDP project contributors.

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
unit ErrorFix;

interface

uses
  DATBase;

procedure FixBowtieQuad0132(quad: TDATQuad);
procedure FixBowtieQuad0312(quad: TDATQuad);
procedure FixRowAllZeros(subp: TDATSubPart; Row: Integer);
procedure FixYColumnAllZeros(subp: TDATSubPart);

implementation

procedure FixBowtieQuad0132(quad: TDATQuad);

var
  tx,ty,tz: Extended;

begin
  with quad do
  begin
    tx := x4;
    ty := y4;
    tz := z4;
    x4 := x3;
    y4 := y3;
    z4 := z3;
    x3 := tx;
    y3 := ty;
    z3 := tz;
  end;
end;

procedure FixBowtieQuad0312(quad: TDATQuad);

var
  tx,ty,tz: Extended;

begin
  with quad do
  begin
    tx := x3;
    ty := y3;
    tz := z3;
    x3 := x2;
    y3 := y2;
    z3 := z2;
    x2 := x4;
    y2 := y4;
    z2 := z4;
    x4 := tx;
    y4 := ty;
    z4 := tz;
  end;
end;

procedure FixRowAllZeros(subp: TDATSubPart; Row: Integer);
begin
  subp.MatrixVals[Row,2] := 1;
end;

procedure FixYColumnAllZeros(subp: TDATSubPart);
begin
  subp.MatrixVals[2,2] := 1;
end;

end.

