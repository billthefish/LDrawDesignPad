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
unit colordialog;

interface

uses
  gnugettext, Forms, StdCtrls, Buttons, ExtCtrls,Controls, ComCtrls, Classes,
  ActnList, Dialogs, Graphics, SysUtils, Math, JvExStdCtrls, JvCombobox,
  JvColorCombo, DATBase;

type
  TfrColorDialog = class(TForm)
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
  public
    procedure UpdateColorCombos;
  end;

var
  frColorDialog: TfrColorDialog;

implementation

{$R *.dfm}

uses
  main, options, DATUtils;

procedure TfrColorDialog.FormClose(Sender: TObject; var Action: TCloseAction);

var
  i, startline, endline: Integer;
  newcolor, oldcolor: Integer;
begin
  if ModalResult = mrOk then
    with frMain.editor do
    begin
      oldcolor := StrToInt(System.Copy(OldColorCombo.Text, 0, Pos(':', OldColorCombo.Text) - 1));
      newcolor := StrToInt(System.Copy(NewColorCombo.Text, 0, Pos(':', NewColorCombo.Text) - 1));

      ExpandSelection(startline, endline);

      if rgOptions.ItemIndex = 0 then
      begin
        SelectAll;
        startline := 0;
        endline := Lines.Count - 1;
      end;

      BeginUndoAction;
      for i := startline to endline do
        if (cbxReplaceEverything.Checked) or
           (GetLineColor(i) = oldcolor) then
          SetLineColor(i, newcolor);
      EndUndoAction;    
    end;
end;

procedure TfrColorDialog.FormCreate(Sender: TObject);
begin
  TranslateComponent(self);
end;

procedure TfrColorDialog.FormShow(Sender: TObject);

var
  startline, endline: Integer;
  line: TDATType;

begin
  UpdateColorCombos;

  rgOptions.Items.Clear;

  rgOptions.Items.Add(_('Replace All'));
  rgOptions.ItemIndex := 0;

  line := StrToDat(frMain.editor.Lines[frMain.editor.CaretY - 1]);

  if frMain.editor.SelLength > 0 then
  begin
    frMain.editor.ExpandSelection(startline, endline);
    rgOptions.ItemIndex := rgOptions.Items.Add(_('Replace For Selection'));
    rgOptions.ItemIndex := 1;
  end
  else if line is TDATElement then
  begin
    rgOptions.Items.Add(_('Replace Current Line Only'));
    rgOptions.ItemIndex := 1;
  end;

  if line is TDATElement then
    OldColorCombo.ItemIndex :=
      OldColorCombo.FindColor(ColourList[ColourList.IndexOfColourCode((line as TDATElement).Color)].MainColor);
end;

procedure TfrColorDialog.cbxReplaceEverythingClick(Sender: TObject);
begin
  OldColorCombo.Enabled := not cbxReplaceEverything.Checked;
  Label1.Enabled := not cbxReplaceEverything.Checked;
end;

procedure TfrColorDialog.UpdateColorCombos;
//Update the color combo boxs from ldconfig.ldr
var
  i: Integer;

begin
  ColourList := MakeStandardDATColourList;
  for i := 0 to ColourList.Count - 1 do
  begin
    OldColorCombo.AddColor(ColourList[i].MainColor, IntToStr(ColourList[i].Code) + ': ' + StringReplace(ColourList[i].Name, '_', ' ', [rfReplaceAll]));
    NewColorCombo.AddColor(ColourList[i].MainColor, IntToStr(ColourList[i].Code) + ': ' + StringReplace(ColourList[i].Name, '_', ' ', [rfReplaceAll]));
  end;
end;

end.









