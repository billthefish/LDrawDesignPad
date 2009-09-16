{These sources are copyright (C) 2003-2009 the LDDP project contributors.

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
unit commonprocs;

interface

uses
  DATModel, Menus, Classes;

type
  TGridSettings = record
    XStep, YStep, ZStep: Double;
    Angle: Double;
  end;

  TGridType = (gtCoarse, gtMedium, gtFine);

function CreateMenuItem(const Caption, Hint: string; ParentMenuItem: TMenuItem): TMenuItem;
function StripEndingCRLF(const str: string): string;
function IsBlankLine(const line: string): Boolean;
function GetTmpFileName: string;
function LDDPCreateDATModel: TDATModel;

implementation

uses
  main, options, SysUtils, DATUtils;

function CreateMenuItem(const Caption, Hint: string; ParentMenuItem: TMenuItem): TMenuItem;

var
  NewMenuItem: TMenuItem;

begin
  NewMenuItem := TMenuItem.Create(ParentMenuItem);
  NewMenuItem.Caption := Caption;
  NewMenuItem.Hint := Hint;
  Result := NewMenuItem;
end;

function StripEndingCRLF(const str: string): string;
begin
  Result := Copy(str, 0, Length(str)-2);
end;

function IsBlankLine(const line: string): Boolean;
begin
  Result := (line = '') or (line = #13#10) or (line = #10#13) or
            (line = #13) or (line = #10);
end;

function GetTmpFileName: string;
// Create a unique temporary filename
var
  Hour, Min, Sec, MSec, Year, Month, Day: Word;

begin
  Decodetime(Time, Hour, Min, Sec, MSec);
  DecodeDate(Date, Year, Month, Day);
  Result := IntToHex(Hour,2) + IntToHex(Min,2) + IntToHex(Sec,2) +
            IntToHex(Trunc(MSec/10),2);
end;

function LDDPCreateDATModel: TDATModel;
begin
  if frOptions.cboAutoRoundOnly.Checked then
    Result := TDATModel.Create
  else
    Result := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);
end;

end.
