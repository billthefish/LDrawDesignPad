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
unit editoptions;

interface

uses
  {$IFDEF MSWINDOWS}
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, JvPlacemnt, ActnList, StdActns,
  SynEditHighlighter, SynHighlighterLDraw, SynEdit, SynMemo,
  {$ENDIF}
  {$IFDEF LINUX}
  Types, Classes, Variants, QTypes, QGraphics, QControls, QForms,
  QDialogs, QStdCtrls, QSynEditHighlighter, QSynHighlighterLDraw, QButtons,
  QExtCtrls, QSynEdit, QSynMemo, QComCtrls,
  {$ENDIF}
  JvColorBox,
  SysUtils;

type
  TfrEditOptions = class(TForm)
    PageControl1: TPageControl;
    {$IFDEF MSWINDOWS}
    fstEditOptions: TJvFormStorage;
    clbForeground: TColorBox;
    clbBackground: TColorBox;
    {$ENDIF}

    TabSheet1: TTabSheet;
    lstElement: TListBox;
    Label1: TLabel;
    SynMemo1: TSynMemo;
    SynLDRSyn1: TSynLDRSyn;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    cbxBold: TCheckBox;
    cbxItalic: TCheckBox;
    cbxUnderline: TCheckBox;
    cbxStrikeOut: TCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure lstElementClick(Sender: TObject);
    procedure clbForegroundChange(Sender: TObject);
    procedure clbBackgroundChange(Sender: TObject);
    procedure cbxBoldClick(Sender: TObject);
    procedure cbxItalicClick(Sender: TObject);
    procedure cbxUnderlineClick(Sender: TObject);
    procedure cbxStrikeOutClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    SelectedElement: TSynHighlighterAttributes;
  end;

var
  frEditOptions: TfrEditOptions;

implementation

{$R *.dfm}

procedure TfrEditOptions.FormCreate(Sender: TObject);
begin
  SynMemo1.Lines.Text := SynLDRSyn1.SampleSource;
end;

procedure TfrEditOptions.lstElementClick(Sender: TObject);
begin
  case lstElement.ItemIndex of
    0: SelectedElement := SynLDRSyn1.IdentifierAttri;
    1: SelectedElement := SynLDRSyn1.ColorAttri;
    2: SelectedElement := SynLDRSyn1.CommentAttri;
    3: SelectedElement := SynLDRSyn1.FirstTriAttri;
    4: SelectedElement := SynLDRSyn1.SecondTriAttri;
    5: SelectedElement := SynLDRSyn1.ThirdTriAttri;
    6: SelectedElement := SynLDRSyn1.FourthTriAttri;
    7: SelectedElement := SynLDRSyn1.LineAttri;
    8: SelectedElement := SynLDRSyn1.TriangleAttri;
    9: SelectedElement := SynLDRSyn1.QuadAttri;
    10: SelectedElement := SynLDRSyn1.OpLineAttri;
    else SelectedElement := nil;
  end;
{$IFDEF MSWINDOWS}
  clbForeground.Selected := SelectedElement.Foreground;
  clbBackground.Selected := SelectedElement.Background;
{$ENDIF}
  if fsBold in SelectedElement.Style then cbxBold.Checked := True;
  if fsItalic in SelectedElement.Style then cbxItalic.Checked := True;
  if fsUnderline in SelectedElement.Style then cbxUnderline.Checked := True;
  if fsStrikeout in SelectedElement.Style then cbxStrikeout.Checked := True;
end;

procedure TfrEditOptions.clbForegroundChange(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  if SelectedElement <> nil then
  SelectedElement.Foreground := clbForeground.Selected;
{$ENDIF}
end;

procedure TfrEditOptions.clbBackgroundChange(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  if SelectedElement <> nil then
  SelectedElement.Background := clbBackground.Selected;
{$ENDIF}
end;

procedure TfrEditOptions.cbxBoldClick(Sender: TObject);
begin
  if SelectedElement <> nil then
    if cbxBold.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsBold]
    else
      SelectedElement.Style := SelectedElement.Style - [fsBold];
end;

procedure TfrEditOptions.cbxItalicClick(Sender: TObject);
begin
  if SelectedElement <> nil then
    if cbxItalic.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsItalic]
    else
      SelectedElement.Style := SelectedElement.Style - [fsItalic];
end;

procedure TfrEditOptions.cbxUnderlineClick(Sender: TObject);
begin
  if SelectedElement <> nil then
    if cbxUnderline.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsUnderline]
    else
      SelectedElement.Style := SelectedElement.Style - [fsUnderline];
end;

procedure TfrEditOptions.cbxStrikeOutClick(Sender: TObject);
begin
  if SelectedElement <> nil then
    if cbxStrikeout.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsStrikeout]
    else
      SelectedElement.Style := SelectedElement.Style - [fsStrikeout];
end;

procedure TfrEditOptions.Button1Click(Sender: TObject);

var
  NewHighlighter: TSynLDRSyn;

begin
  NewHighlighter := TSynLDRSyn.Create(nil);
  SynLDRSyn1.Assign(NewHighlighter);
  NewHighLighter.Free;
  lstElement.ItemIndex := -1;
  SelectedElement := nil;
  {$IFDEF MSWINDOWS}
  clbForeground.Selected := clNone;
  clbBackground.Selected := clNone;
  {$ENDIF}

end;

procedure TfrEditOptions.FormShow(Sender: TObject);

begin
  lstElement.ItemIndex := -1;
  SelectedElement := nil;
  {$IFDEF MSWINDOWS}
  clbForeground.Selected := clNone;
  clbBackground.Selected := clNone;
  {$ENDIF}

end;

end.
