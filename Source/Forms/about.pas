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
unit about;

interface

uses
  Types, Classes, Variants, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, SysUtils, Buttons, ComCtrls;
  
type
  TLDDPAbout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo2: TMemo;
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  LDDPAbout: TLDDPAbout;

implementation

{$R *.dfm}

uses
  windowsspecific;

procedure TLDDPAbout.FormShow(Sender: TObject);

begin
  if GetAppVersion(Application.ExeName) <> '' then
    Version.Caption := Version.Caption + ': ' + GetAppVersion(Application.ExeName)
  else
    Version.Caption := 'Version information not available';
  PageControl1.ActivePageIndex := 0;
end;

end.

