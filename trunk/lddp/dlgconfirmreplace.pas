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
unit dlgConfirmReplace;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TfrConfirmReplaceDialog = class(TForm)
    btnReplace: TButton;
    lblConfirmation: TLabel;
    btnSkip: TButton;
    btnCancel: TButton;
    btnReplaceAll: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  public
    procedure PrepareShow(AEditorRect: TRect; X, Y1, Y2: integer;
      AReplaceText: string);
  end;

var
  frConfirmReplaceDialog: TfrConfirmReplaceDialog;

implementation

{$R *.DFM}

resourcestring
  SAskReplaceText = 'Replace this occurence of "%s"?';

{ TConfirmReplaceDialog }

procedure TfrConfirmReplaceDialog.FormCreate(Sender: TObject);
begin
  Image1.Picture.Icon.Handle := LoadIcon(0, IDI_QUESTION);
end;

procedure TfrConfirmReplaceDialog.FormDestroy(Sender: TObject);
begin
  frConfirmReplaceDialog := nil;
end;

procedure TfrConfirmReplaceDialog.PrepareShow(AEditorRect: TRect;
  X, Y1, Y2: integer; AReplaceText: string);
var
  nW, nH: integer;
begin
  lblConfirmation.Caption := Format(SAskReplaceText, [AReplaceText]);
  nW := AEditorRect.Right - AEditorRect.Left;
  nH := AEditorRect.Bottom - AEditorRect.Top;

  if nW <= Width then
    X := AEditorRect.Left - (Width - nW) div 2
  else begin
    if X + Width > AEditorRect.Right then
      X := AEditorRect.Right - Width;
  end;
  if Y2 > AEditorRect.Top + MulDiv(nH, 2, 3) then
    Y2 := Y1 - Height - 4
  else
    Inc(Y2, 4);
  SetBounds(X, Y2, Width, Height);
end;

end.

