{-------------------------------------------------------------------------------

These sources are copyrighted (C) by Carsten Schmitz and the LDDP project contributors.

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
  version, Types, Classes, Variants, Graphics, Controls, Forms, Dialogs, StdCtrls,
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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAboutBox: TfrAboutBox;

implementation

{$R *.dfm}

procedure TfrAboutBox.FormShow(Sender: TObject);

 {$IFDEF MSWINDOWS}
var
 ver:Tversion;
 {$ENDIF}

begin
  {$IFDEF MSWINDOWS}
  ver:=TVersion.Create(Application.ExeName);
  Version.Caption:='Version '+ver.FileVersionStr;
  ver.free;
  {$ENDIF}
  {$IFDEF LINUX}
   Version.Caption:='Version '+ LDDPLINUXVERSION;
  {$ENDIF}
end;

end.

