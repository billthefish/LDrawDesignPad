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
  QForms, QSynEditHighlighter, QSynHighlighterLDraw, JvPlacemnt, QStdCtrls,
  QButtons, QExtCtrls, QSynEdit, QSynMemo, QControls, QComCtrls, Classes,
  QActnList, QSyneditTypes, SysUtils, QDialogs, QGraphics;

type
  TfrEditOptions = class(TForm)
    PageControl1: TPageControl;
    {$IFDEF MSWINDOWS}
      fstEditOptions: TJvFormStorage;
    {$ENDIF}
    TabSheet1: TTabSheet;
    lstElement: TListBox;
    Label1: TLabel;
    SynMemo1: TSynMemo;
    SynLDRSyn1: TSynLDRSyn;
    Label2: TLabel;
    Label3: TLabel;
    gbStyleOptions: TGroupBox;
    cbxBold: TCheckBox;
    cbxItalic: TCheckBox;
    cbxUnderline: TCheckBox;
    cbxStrikeOut: TCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ColorDialog1: TColorDialog;
    shForeground: TShape;
    shBackground: TShape;
    btnForeground: TButton;
    btnBackground: TButton;
    procedure FormCreate(Sender: TObject);
    procedure lstElementClick(Sender: TObject);
    procedure btnForegroundClick(Sender: TObject);
    procedure btnBackgroundClick(Sender: TObject);
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

{$R *.xfm}

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
  if Assigned(SelectedElement) then
  begin
    shForeground.Color := SelectedElement.Foreground;
    shBackground.Color := SelectedElement.Background;
    btnForeGround.Enabled := True;
    btnBackground.Enabled := True;
    gbStyleOptions.Enabled := True;
    if fsBold in SelectedElement.Style then cbxBold.Checked := True;
    if fsItalic in SelectedElement.Style then cbxItalic.Checked := True;
    if fsUnderline in SelectedElement.Style then cbxUnderline.Checked := True;
    if fsStrikeout in SelectedElement.Style then cbxStrikeout.Checked := True;
  end;
end;

procedure TfrEditOptions.btnForegroundClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if ColorDialog1.Execute then
    begin
      SelectedElement.Foreground := ColorDialog1.Color;
      shForeground.Color := ColorDialog1.Color;
    end;
end;

procedure TfrEditOptions.btnBackgroundClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if ColorDialog1.Execute then
    begin
      SelectedElement.Background := ColorDialog1.Color;
      shBackground.Color := ColorDialog1.Color;
    end;
end;

procedure TfrEditOptions.cbxBoldClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if cbxBold.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsBold]
    else
      SelectedElement.Style := SelectedElement.Style - [fsBold];
end;

procedure TfrEditOptions.cbxItalicClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if cbxItalic.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsItalic]
    else
      SelectedElement.Style := SelectedElement.Style - [fsItalic];
end;

procedure TfrEditOptions.cbxUnderlineClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if cbxUnderline.Checked then
      SelectedElement.Style := SelectedElement.Style + [fsUnderline]
    else
      SelectedElement.Style := SelectedElement.Style - [fsUnderline];
end;

procedure TfrEditOptions.cbxStrikeOutClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
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
  shForeground.Color := clNone;
  shBackground.Color := clNone;
end;

procedure TfrEditOptions.FormShow(Sender: TObject);

begin
  lstElement.ItemIndex := -1;
  SelectedElement := nil;
  shForeground.Color := clNone;
  shBackground.Color := clNone;

end;

end.
