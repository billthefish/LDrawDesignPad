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
  {$IFDEF MSWINDOWS}
  Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, version,
  {$ENDIF}
  {$IFDEF LINUX}
  Types, Classes, Variants, QTypes, QGraphics, QControls, QForms,
  QStdCtrls, QExtCtrls,
  {$ENDIF}
  main,
  SysUtils;
  
type
  TfrAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Memo1: TMemo;
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
   Version.Caption:='Version '+ main.LDDPLINUXVERSION;
  {$ENDIF}
end;

end.

