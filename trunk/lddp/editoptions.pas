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
  QForms, QSynEditHighlighter, QSynHighlighterLDraw, QStdCtrls,
  QButtons, QExtCtrls, QSynEdit, QSynMemo, QControls, QComCtrls, Classes,
  QActnList, QSyneditTypes, SysUtils, QDialogs, QGraphics, IniFiles;

type
  TfrEditOptions = class(TForm)
    PageControl1: TPageControl;
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
    SelectedElement: TSynHighlighterAttributes;
  public
    IniFileName, IniSection: string;
    procedure LoadFormValues;
    procedure SaveFormValues;
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

procedure TfrEditOptions.SaveFormValues;
var
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
  LDDPini.EraseSection(IniSection);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_ColorAttriBackground', SynLDRSyn1.ColorAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_ColorAttriForeground', SynLDRSyn1.ColorAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_CommentAttriBackground', SynLDRSyn1.CommentAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_CommentAttriForeground', SynLDRSyn1.CommentAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_FirstTriAttriBackground', SynLDRSyn1.FirstTriAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_FirstTriAttriForeground', SynLDRSyn1.FirstTriAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_SecondTriAttriBackground', SynLDRSyn1.SecondTriAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_SecondTriAttriForeground', SynLDRSyn1.SecondTriAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_ThirdTriAttriBackground', SynLDRSyn1.ThirdTriAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_ThirdTriAttriForeground', SynLDRSyn1.ThirdTriAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_FourthTriAttriBackground', SynLDRSyn1.FourthTriAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_FourthTriAttriForeground', SynLDRSyn1.FourthTriAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_LineAttriBackground', SynLDRSyn1.LineAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_LineAttriForeground', SynLDRSyn1.LineAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_TriangleAttriBackground', SynLDRSyn1.TriangleAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_TriangleAttriForeground', SynLDRSyn1.TriangleAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_QuadAttriBackground', SynLDRSyn1.QuadAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_QuadAttriForeground', SynLDRSyn1.QuadAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_OpLineAttriBackground', SynLDRSyn1.OpLineAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_OpLineAttriForeground', SynLDRSyn1.OpLineAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_IdentifierAttriBackground', SynLDRSyn1.IdentifierAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_IdentifierAttriForeground', SynLDRSyn1.IdentifierAttri.Foreground);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_KeyAttriBackground', SynLDRSyn1.KeyAttri.Background);
  LDDPini.WriteInteger(IniSection, 'SynLDRSyn1_KeyAttriForeground', SynLDRSyn1.KeyAttri.Foreground);
  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrEditOptions.LoadFormValues;
var
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
  SynLDRSyn1.ColorAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_ColorAttriBackground', SynLDRSyn1.ColorAttri.Foreground);
  SynLDRSyn1.ColorAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_ColorAttriForeground', SynLDRSyn1.ColorAttri.Foreground);
  SynLDRSyn1.CommentAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_CommentAttriBackground', SynLDRSyn1.CommentAttri.Background);
  SynLDRSyn1.CommentAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_CommentAttriForeground', SynLDRSyn1.CommentAttri.Foreground);
  SynLDRSyn1.FirstTriAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_FirstTriAttriBackground', SynLDRSyn1.FirstTriAttri.Background);
  SynLDRSyn1.FirstTriAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_FirstTriAttriForeground', SynLDRSyn1.FirstTriAttri.Foreground);
  SynLDRSyn1.SecondTriAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_SecondTriAttriBackground', SynLDRSyn1.SecondTriAttri.Background);
  SynLDRSyn1.SecondTriAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_SecondTriAttriForeground', SynLDRSyn1.SecondTriAttri.Foreground);
  SynLDRSyn1.ThirdTriAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_ThirdTriAttriBackground', SynLDRSyn1.ThirdTriAttri.Background);
  SynLDRSyn1.ThirdTriAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_ThirdTriAttriForeground', SynLDRSyn1.ThirdTriAttri.Foreground);
  SynLDRSyn1.FourthTriAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_FourthTriAttriBackground', SynLDRSyn1.FourthTriAttri.Background);
  SynLDRSyn1.FourthTriAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_FourthTriAttriForeground', SynLDRSyn1.FourthTriAttri.Foreground);
  SynLDRSyn1.LineAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_LineAttriBackground', SynLDRSyn1.LineAttri.Background);
  SynLDRSyn1.LineAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_LineAttriForeground', SynLDRSyn1.LineAttri.Foreground);
  SynLDRSyn1.TriangleAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_TriangleAttriBackground', SynLDRSyn1.TriangleAttri.Background);
  SynLDRSyn1.TriangleAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_TriangleAttriForeground', SynLDRSyn1.TriangleAttri.Foreground);
  SynLDRSyn1.QuadAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_QuadAttriBackground', SynLDRSyn1.QuadAttri.Background);
  SynLDRSyn1.QuadAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_QuadAttriForeground', SynLDRSyn1.QuadAttri.Foreground);
  SynLDRSyn1.OpLineAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_OpLineAttriBackground', SynLDRSyn1.OpLineAttri.Background);
  SynLDRSyn1.OpLineAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_OpLineAttriForeground', SynLDRSyn1.OpLineAttri.Foreground);
  SynLDRSyn1.IdentifierAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_IdentifierAttriBackground', SynLDRSyn1.IdentifierAttri.Background);
  SynLDRSyn1.IdentifierAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_IdentifierAttriForeground', SynLDRSyn1.IdentifierAttri.Foreground);
  SynLDRSyn1.KeyAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_KeyAttriBackground', SynLDRSyn1.KeyAttri.Background);
  SynLDRSyn1.KeyAttri.Foreground := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_KeyAttriForeground', SynLDRSyn1.KeyAttri.Foreground);
  LDDPini.Free;
end;

end.
