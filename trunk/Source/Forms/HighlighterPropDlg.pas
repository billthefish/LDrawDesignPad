unit HighlighterPropDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SynEditHighlighter, SynHighlighterLDraw, ExtCtrls;

type
  TLDDPHighterEditorPropertiesDlg = class(TForm)
    AttrList: TListBox;
    BackColor: TColorBox;
    cbItalic: TCheckBox;
    cbStrike: TCheckBox;
    cbUnderline: TCheckBox;
    cbBold: TCheckBox;
    GroupBox1: TGroupBox;
    ForeColor: TColorBox;
    Label1: TLabel;
    Label2: TLabel;
    btnCancel: TButton;
    btnOk: TButton;
    Highlighter: TSynLDRSyn;
    procedure FormShow(Sender: TObject);
    procedure AttrListClick(Sender: TObject);
    procedure ValueChange(Sender: TObject);
  private
    procedure AssignValuesFromHighligher(index: Integer);
    procedure AssignValuesToHighligher(index: Integer);
  end;

implementation

{$R *.dfm}

procedure TLDDPHighterEditorPropertiesDlg.AssignValuesFromHighligher(index: Integer);
begin
  with Highlighter.Attribute[index] do
  begin
    ForeColor.Selected := Foreground;
    BackColor.Selected := Background;
    cbBold.Checked := fsBold in Style;
    cbItalic.Checked := fsItalic in Style;
    cbUnderline.Checked := fsUnderline in Style;
    cbStrike.Checked := fsStrikeOut in Style;
  end;
end;

procedure TLDDPHighterEditorPropertiesDlg.AssignValuesToHighligher(
  index: Integer);
var
  NewStyle: TFontStyles;

begin
  NewStyle := [];
  with Highlighter.Attribute[index] do
  begin
    Foreground := ForeColor.Selected;
    Background := BackColor.Selected;
    if cbBold.Checked then Include(NewStyle, fsBold);
    if cbItalic.Checked then Include(NewStyle, fsItalic);
    if cbUnderline.Checked then Include(NewStyle, fsUnderline);
    if cbStrike.Checked then Include(NewStyle, fsStrikeOut);
    Style := NewStyle;
  end;
end;

procedure TLDDPHighterEditorPropertiesDlg.AttrListClick(Sender: TObject);
begin
  AssignValuesFromHighligher(AttrList.ItemIndex);
end;

procedure TLDDPHighterEditorPropertiesDlg.ValueChange(Sender: TObject);
begin
  AssignValuesToHighligher(AttrList.ItemIndex)
end;

procedure TLDDPHighterEditorPropertiesDlg.FormShow(Sender: TObject);
var
  i: Integer;

begin
  for i := 0 to Highlighter.AttrCount - 1 do
    AttrList.Items.Add(Highlighter.Attribute[i].FriendlyName);
  AttrList.ItemIndex := 0;
  AssignValuesFromHighligher(0);
end;

end.
