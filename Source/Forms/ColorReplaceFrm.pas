{These sources are copyright (C) 2003-2011 Orion Pobursky.

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
unit ColorReplaceFrm;

interface

uses
  Forms, StdCtrls, Buttons, ExtCtrls,Controls, ComCtrls, Classes,
  ActnList, Dialogs, Graphics, SysUtils, Math, JvExStdCtrls, JvCombobox,
  JvColorCombo, DATColour, ScintillaLDDP;

type
  TLDDPColorReplaceForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rgOptions: TRadioGroup;
    cbxReplaceEverything: TCheckBox;
    OldColorCombo: TJvColorComboBox;
    NewColorCombo: TJvColorComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbxReplaceEverythingClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    ColourList: TDATColourList;
    FEditor: TScintillaLDDP;
    procedure SetEditor(const Value: TScintillaLDDP);

  public
    procedure UpdateColorCombos;
    property Editor: TScintillaLDDP read FEditor write SetEditor;
  end;

var
  LDDPColorReplaceForm: TLDDPColorReplaceForm;

implementation

{$R *.dfm}

uses
  DATBase, DATUtils, JclGraphUtils;

procedure TLDDPColorReplaceForm.FormClose(Sender: TObject; var Action: TCloseAction);

var
  i, startline, endline: Integer;
  newcolor, oldcolor: Integer;
begin
  if ModalResult = mrOk then
  begin
      oldcolor := StrToInt(System.Copy(OldColorCombo.Text, 0, Pos(':', OldColorCombo.Text) - 1));
      newcolor := StrToInt(System.Copy(NewColorCombo.Text, 0, Pos(':', NewColorCombo.Text) - 1));
      FEditor.ExpandSelection(startline, endline);

      if rgOptions.ItemIndex = 0 then
      begin
        FEditor.SelectAll;
        startline := 0;
        endline := FEditor.Lines.Count - 1;
      end;

      for i := startline to endline do
        if (cbxReplaceEverything.Checked) or
           (FEditor.GetLineColor(i) = oldcolor) then
          FEditor.SetLineColor(i, newcolor);
    end;
  ColourList.Free; 
end;

procedure TLDDPColorReplaceForm.FormCreate(Sender: TObject);
begin
//nothing
end;

procedure TLDDPColorReplaceForm.FormShow(Sender: TObject);

var
  startline, endline, c: Integer;
  line: TDATType;

begin
  UpdateColorCombos;

  rgOptions.Items.Clear;

  rgOptions.Items.Add('Replace All');
  rgOptions.ItemIndex := 0;

  line := StrToDat(FEditor.Lines[FEditor.CaretY - 1]);

  if FEditor.SelLength > 0 then
  begin
    FEditor.ExpandSelection(startline, endline);
    rgOptions.ItemIndex := rgOptions.Items.Add('Replace For Selection');
    rgOptions.ItemIndex := 1;
  end
  else if line is TDATElement then
  begin
    rgOptions.Items.Add('Replace Current Line Only');
    rgOptions.ItemIndex := 1;
    c := ColourList.IndexOfColourCode((line as TDATElement).Color);
    OldColorCombo.ItemIndex :=
      OldColorCombo.FindColor(ColourList[c].MainColour);
  end;
end;

procedure TLDDPColorReplaceForm.SetEditor(const Value: TScintillaLDDP);
begin
  FEditor := Value;
end;

procedure TLDDPColorReplaceForm.cbxReplaceEverythingClick(Sender: TObject);
begin
  OldColorCombo.Enabled := not cbxReplaceEverything.Checked;
  Label1.Enabled := not cbxReplaceEverything.Checked;
end;

procedure TLDDPColorReplaceForm.UpdateColorCombos;
//Update the color combo boxs from ldconfig.ldr
var
  i: Integer;
  color: TDATColour;

begin
  ColourList := MakeStandardDATColourList;
  ColourList.SortTerm := FEditor.LDDPOptions.ColorComboSortTerm;
  ColourList.Sort;

  for i := 0 to ColourList.Count - 1 do
  begin
    while OldColorCombo.FindColor(ColourList[i].MainColour) >= 0 do
      ColourList[i].MainColour := SetRGBValue(GetColorRed(ColourList[i].MainColour) + 1,
                                             GetColorGreen(ColourList[i].MainColour) + 1,
                                             GetColorBlue(ColourList[i].MainColour) + 1);
      OldColorCombo.AddColor(ColourList[i].MainColour, IntToStr(ColourList[i].Code) + ': ' + StringReplace(ColourList[i].ColourName, '_', ' ', [rfReplaceAll]));
      NewColorCombo.AddColor(ColourList[i].MainColour, IntToStr(ColourList[i].Code) + ': ' + StringReplace(ColourList[i].ColourName, '_', ' ', [rfReplaceAll]));
  end;

  // Add undefined colors for legacy color number support
  for i := 0 to 511 do
    if ColourList.IndexOfColourCode(i) < 0 then
    begin
      color := DATUtils.DATColour(i, 'Undefined_' + IntToStr(i), i, 0);
      ColourList.Add(color);
      while OldColorCombo.FindColor(ColourList[ColourList.IndexOfColourCode(i)].MainColour) >= 0 do
        ColourList[ColourList.IndexOfColourCode(i)].MainColour :=
          ColourList[ColourList.IndexOfColourCode(i)].MainColour + 1;
      OldColorCombo.AddColor(ColourList[ColourList.IndexOfColourCode(i)].MainColour, IntToStr(i) + ': Undefined');
      NewColorCombo.AddColor(ColourList[ColourList.IndexOfColourCode(i)].MainColour, IntToStr(i) + ': Undefined');
    end;
end;

end.









