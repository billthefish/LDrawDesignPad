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
  Types, Classes, Variants, Graphics, Controls, Forms, Dialogs, StdCtrls,
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

  public
    { Public declarations }
  end;

var
  frAboutBox: TfrAboutBox;

implementation

{$R *.dfm}

uses
  windowsspecific;

procedure TfrAboutBox.FormShow(Sender: TObject);

begin
  if GetAppVersion(Application.ExeName) <> '' then
    Version.Caption := 'Version ' + GetAppVersion(Application.ExeName)
  else
    Version.Caption := 'Version information not available';
end;

end.

