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
unit about;

interface

uses
  Windows, Types, Classes, Variants, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, SysUtils, Buttons;
  
type
  TfrAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    function GetFileVersion(const FileName: TFileName;
                            var Major, Minor, Release, Build: word): Boolean;
  public
    { Public declarations }
  end;

var
  frAboutBox: TfrAboutBox;

implementation

{$R *.dfm}

function TfrAboutBox.GetFileVersion(const FileName: TFileName;
                                    var Major, Minor, Release, Build: word): Boolean;
var
  size, len: LongWord;
  handle: THandle;
  buffer: PChar;
  pinfo: ^VS_FIXEDFILEINFO;

begin
  Result := False;
  size := GetFileVersionInfoSize(Pointer(FileName), handle);

  if size > 0 then begin
    GetMem(buffer, size);
  if GetFileVersionInfo(Pointer(FileName), 0, size, buffer) then
    if VerQueryValue(buffer, '\', pointer(pinfo), len) then
    begin
      Major   := HiWord(pinfo.dwFileVersionMS);
      Minor   := LoWord(pinfo.dwFileVersionMS);
      Release := HiWord(pinfo.dwFileVersionLS);
      Build   := LoWord(pinfo.dwFileVersionLS);
      Result  := True;
    end;

    FreeMem(buffer);
  end;
end;

procedure TfrAboutBox.FormShow(Sender: TObject);

var
  Major, Minor, Release, Build: word;

begin
  if GetFileVersion(Application.ExeName, Major, Minor, Release, Build) then
    Version.Caption := Format('Version %d.%d.%d.%d', [Major, Minor, Release, Build])
  else
    Version.Caption := 'Version information not available';
end;

end.

