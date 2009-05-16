{These sources are copyright (C) 2003-2008 the LDDP project contributors.

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
unit options;

interface

uses
  gnugettext, Windows, Dialogs, Forms, SysUtils, Graphics,
  ImgList, Controls, Mask, Inifiles, StdCtrls,
  ExtCtrls, CheckLst, ComCtrls, Buttons, Classes, FileCtrl,
  Menus, JvExMask, JvSpin, JvExStdCtrls, JvEdit, JvValidateEdit, JvCombobox,
  JvColorCombo;

type
  TfrOptions = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    OpenDialog: TOpenDialog;
    MainPages: TPageControl;
    tsExternal: TTabSheet;
    GroupBox1: TGroupBox;
    c: TBitBtn;
    btMLCad: TBitBtn;
    btLDView: TBitBtn;
    btLDraw: TBitBtn;
    edL3LabDir: TEdit;
    edMLCadDir: TEdit;
    edLDViewDir: TEdit;
    edLdrawDir: TEdit;
    lbL3Lab: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    lbMLCAD: TLabel;
    Label2: TLabel;
    lbLDVIew: TLabel;
    Label4: TLabel;
    lbLdraw: TLabel;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    btnRescanPlugins: TBitBtn;
    cblPlugins: TCheckListBox;
    Label9: TLabel;
    rgStyle: TRadioGroup;
    ColorDialog1: TColorDialog;
    GroupBox7: TGroupBox;
    Label12: TLabel;
    edLSynthDir: TEdit;
    btLSynth: TBitBtn;
    lbLSynth: TLabel;
    ColorBarSheet: TTabSheet;
    GroupBox9: TGroupBox;
    lbxColors: TListBox;
    shpColor: TShape;
    Label15: TLabel;
    btnColorSelect: TButton;
    edColorName: TLabeledEdit;
    edColorNumber: TJvValidateEdit;
    lbColorNumber: TLabel;
    btnColorRestore: TBitBtn;
    lbxExternal: TListBox;
    Panel2: TPanel;
    Memo5: TMemo;
    Panel3: TPanel;
    Label19: TLabel;
    edExternalName: TEdit;
    Label11: TLabel;
    edExternal: TEdit;
    edParameters: TEdit;
    Label10: TLabel;
    btExternal: TBitBtn;
    lbExternal: TLabel;
    cboWaitForFinish: TCheckBox;
    cboShowCommand: TCheckBox;
    Panel4: TPanel;
    btnAddExternal: TButton;
    btnDelExternal: TButton;
    ColorBarCombo: TJvColorComboBox;
    TabSheet5: TTabSheet;
    SearchPathsList: TListView;
    Panel5: TPanel;
    btnPathUp: TBitBtn;
    btnPathDown: TBitBtn;
    btnMLCadPathImport: TButton;
    btnDeleteInvalidPaths: TButton;
    btnDeletePath: TButton;
    btnReplacePath: TButton;
    btnAddPath: TButton;
    edSearchPath: TEdit;
    btnPathOpen: TBitBtn;
    OptionImages: TImageList;
    TabSheet4: TTabSheet;
    ConfigPages: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    cboDist: TCheckBox;
    cboDet: TCheckBox;
    cboNormalAngle: TCheckBox;
    Label6: TLabel;
    seDist: TJvValidateEdit;
    seDet: TJvValidateEdit;
    seNormalAngle: TJvValidateEdit;
    seCollinear: TJvValidateEdit;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo2: TMemo;
    Memo1: TMemo;
    lbPntAcc: TLabel;
    sePntAcc: TJvValidateEdit;
    seRotAcc: TJvValidateEdit;
    lbRotAcc: TLabel;
    cboAutoRoundOnly: TCheckBox;
    edName: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    edUserName: TEdit;
    edEmail: TEdit;
    Label8: TLabel;
    Label1: TLabel;
    seCustomPollInterval: TJvValidateEdit;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    seGridFineX: TJvValidateEdit;
    Label14: TLabel;
    seGridFineY: TJvValidateEdit;
    Label16: TLabel;
    seGridFineZ: TJvValidateEdit;
    Label18: TLabel;
    seGridFineAngle: TJvValidateEdit;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    seGridMediumX: TJvValidateEdit;
    seGridMediumY: TJvValidateEdit;
    seGridMediumZ: TJvValidateEdit;
    seGridMediumAngle: TJvValidateEdit;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    seGridCoarseX: TJvValidateEdit;
    seGridCoarseY: TJvValidateEdit;
    seGridCoarseZ: TJvValidateEdit;
    seGridCoarseAngle: TJvValidateEdit;
    procedure MainPagesChange(Sender: TObject);
    procedure btnRescanPluginsClick(Sender: TObject);
    procedure cblPluginsClickCheck(Sender: TObject);
    procedure btLDrawClick(Sender: TObject);
    procedure btLDViewClick(Sender: TObject);
    procedure btMLCadClick(Sender: TObject);
    procedure cClick(Sender: TObject);
    procedure btExternalClick(Sender: TObject);
    procedure btLSynthClick(Sender: TObject);
    procedure btnColorSelectClick(Sender: TObject);
    procedure lbxColorsClick(Sender: TObject);
    procedure edColorNameChange(Sender: TObject);
    procedure btnColorRestoreClick(Sender: TObject);
    procedure lbxExternalDblClick(Sender: TObject);
    procedure lbxExternalClick(Sender: TObject);
    procedure edExternalNameChange(Sender: TObject);
    procedure btnDelExternalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorBarSheetShow(Sender: TObject);
    procedure ColorBarComboChange(Sender: TObject);
    procedure btnMLCadPathImportClick(Sender: TObject);
    procedure SearchPathsListSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure edSearchPathChange(Sender: TObject);
    procedure btnPathOpenClick(Sender: TObject);
    procedure btnAddPathClick(Sender: TObject);
    procedure btnReplacePathClick(Sender: TObject);
    procedure btnDeletePathClick(Sender: TObject);
    procedure btnDeleteInvalidPathsClick(Sender: TObject);
    procedure btnPathDownClick(Sender: TObject);
    procedure btnPathUpClick(Sender: TObject);
    procedure edLdrawDirChange(Sender: TObject);

  protected
    ColorBarList: TStringList;
    procedure ColorButtonChange(ImageColor: TColor; ColorName, ColorNumber: string; ButtonIndex: Integer);
    procedure MakeExternalMenuItem(ProgIndex:Integer);
    procedure SetColorListToDefault;
    procedure SetDirectory(DCaption: string; EditControl: TEdit);
    procedure UpdateSearchPathList;

  public
    ExternalProgramList: TStringList;
    SearchPaths: TStringList;
    procedure UpdateControls;
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure SetConfigurationConstants;
  end;

var
  frOptions: TfrOptions;

implementation

uses
  main, windowsspecific, ActnList, DATBase, DATCheck, DATUtils, DATColour,
  StrUtils;

{$R *.dfm}

procedure TfrOptions.UpdateControls;

var
  strFound, strNotFound: string;
  i: Integer;

begin
  strFound := _('Found!');
  strNotFound := _('Not found!');

  lbLDraw.font.Color:=clRed;
  lbldraw.Caption:= strNotFound;
  lbLDView.font.Color:=clRed;
  lbLDView.Caption:=strNotFound;
  lbMLCAD.font.Color:=clRed;
  lbMLCAD.Caption:=strNotFound;
  lbL3Lab.font.Color:=clRed;
  lbL3Lab.Caption:=strNotFound;
  lbLSynth.font.Color:=clRed;
  lbLSynth.Caption:=strNotFound;

  if FileExists(frOptions.edLDrawDir.text+'\parts.lst') then begin
    lbLDraw.font.Color := clGreen;
    lbldraw.Caption:= strFound;
  end;

  if FileExists(frOptions.edLDViewDir.text+'\LDView.exe') then begin
    lbLDView.font.Color:=clGreen;
    lbLDView.Caption:=strFound;
  end;

  if FileExists(frOptions.edMLCADDir.text+'\MLCAD.exe') then begin
    lbMLCAD.font.Color:=clGreen;
    lbMLCAD.Caption:=strFound;
  end;

  if FileExists(frOptions.edL3LabDir.text+'\L3Lab.exe') then begin
    lbL3Lab.font.Color:=clGreen;
    lbL3Lab.Caption:=strFound;
  end;

  if FileExists(frOptions.edLSynthDir.text+'\lsynthcp.exe') then begin
    lbLSynth.font.Color:=clGreen;
    lbLSynth.Caption:=strFound;
  end;

  if trim(frOptions.edExternal.text)='' then
    lbExternal.Caption:=''
  else
    if FileExists(frOptions.edExternal.text) then begin
      lbExternal.font.Color:=clGreen;
      lbExternal.Caption:=strFound;
    end
    else
    begin
      lbExternal.font.Color:=clRed;
      lbExternal.Caption:=strNotFound;
    end;

  for i := 0 to SearchPathsList.Items.Count - 1 do
    if DirectoryExists(SearchPathsList.Items[i].Caption) then
      SearchPathsList.Items[i].StateIndex := 0
    else
      SearchPathsList.Items[i].StateIndex := 1;

end;

procedure TfrOptions.MainPagesChange(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrOptions.btnReplacePathClick(Sender: TObject);
begin
  if Assigned(SearchPathsList.Selected) then
    SearchPathsList.Selected.Caption := edSearchPath.Text;
  UpdateControls;
end;

procedure TfrOptions.btnRescanPluginsClick(Sender: TObject);
begin
  frMain.LoadPlugins;
end;

procedure TfrOptions.cblPluginsClickCheck(Sender: TObject);

var
  PluginName: string;
  EnablePlugin: Boolean;

begin
  PluginName := frOptions.cblPlugins.Items[frOptions.cblplugins.Itemindex];
  PluginName := Copy(PluginName, 1, Pos(' -', PluginName) - 1);
  EnablePlugin := frOptions.cblPlugins.State[frOptions.cblPlugins.Itemindex] = cbChecked;
  (frMain.PluginActionList.FindComponent(PluginName) as TAction).Enabled := EnablePlugin;
end;

procedure TfrOptions.btLDrawClick(Sender: TObject);
begin
  SetDirectory(_('Choose LDraw Library Location'),edLdrawDir);
  UpdateControls;
end;

procedure TfrOptions.btLDViewClick(Sender: TObject);
begin
  SetDirectory(_('Choose LDView Location'),edLDViewDir);
  UpdateControls;
end;

procedure TfrOptions.btMLCadClick(Sender: TObject);
begin
  SetDirectory(_('Choose MLCad Location'),edMLCadDir);
  UpdateControls;
end;

procedure TfrOptions.cClick(Sender: TObject);
begin
  SetDirectory(_('Choose L3Lab Location'),edL3LabDir);
  UpdateControls;
end;

procedure TfrOptions.btLSynthClick(Sender: TObject);
begin
  SetDirectory(_('Choose lynthcp Location'),edLSynthDir);
  UpdateControls;
end;

procedure TfrOptions.SetDirectory(DCaption: string; EditControl: TEdit);
var
  strDir: string;

begin
  strDir := EditControl.Text;
  if SelectDirectory(DCaption,'',strDir) then
    EditControl.Text := strDir;
  UpdateControls;
end;

procedure TfrOptions.btExternalClick(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFileDir(edExternal.Text);
  OpenDialog.Title := _('Select Program Location');
  if OpenDialog.Execute then edExternal.Text:=OpenDialog.FileName;
  UpdateControls;
end;

procedure TfrOptions.SaveFormValues;

var
  LDDPini: TMemIniFile;
  IniSection: string;
  i: Integer;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  IniSection := 'LDDP Options';
  LDDPini.EraseSection(IniSection);

  for i := 0 to ComponentCount - 1 do
    if Components[i] is TJvValidateEdit then
    begin
      case (Components[i] as TJvValidateEdit).DisplayFormat of
        dfFloat: LDDPini.WriteFloat(IniSection, Components[i].Name + '_Value', (Components[i] as TJvValidateEdit).Value);
        dfInteger: LDDPini.WriteInteger(IniSection, Components[i].Name + '_Value', (Components[i] as TJvValidateEdit).Value);
      end;
    end
    else if Components[i] is TEdit then
      LDDPini.WriteString(IniSection, Components[i].Name + '_Text', (Components[i] as TEdit).Text)
    else if Components[i] is TCheckBox then
      LDDPini.WriteBool(IniSection, Components[i].Name + '_Checked', (Components[i] as TCheckbox).Checked);
  LDDPini.WriteString('LDraw','BaseDirectory',frOptions.edLDrawDir.Text);

  for i := 0 to 15 do
    LDDPini.WriteString(IniSection, 'lbxColors_Item' + IntToStr(i), ColorBarList[i]);

  for i := 0 to ExternalProgramList.Count - 1 do
    LDDPini.WriteString(IniSection, 'lbxExternal_Item' + IntToStr(i), ExternalProgramList[i]);

  for i := 0 to SearchPathsList.Items.Count - 1 do
    LDDPini.WriteString(IniSection, 'SearchPathsList_Item' + IntToStr(i), SearchPathsList.Items[i].Caption);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrOptions.LoadFormValues;

var
  i: Integer;
  CurrentItem: TStringList;
  LDDPini: TMemIniFile;
  IniSection: string;
  SearchPath: TListItem;

begin
  ColorBarList := TStringList.Create;
  ExternalProgramList := TStringList.Create;
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  IniSection := 'LDDP Options';

  //Restore various option parameters
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TJvValidateEdit then
    begin
      case (Components[i] as TJvValidateEdit).DisplayFormat of
        dfFloat: (Components[i] as TJvValidateEdit).Value := 
                   LDDPini.ReadFloat(IniSection, Components[i].Name + '_Value', (Components[i] as TJvValidateEdit).Value);
        dfInteger: (Components[i] as TJvValidateEdit).Value :=
                     LDDPini.ReadInteger(IniSection, Components[i].Name + '_Value', (Components[i] as TJvValidateEdit).Value);
      end;
    end
    else if Components[i] is TEdit then
      (Components[i] as TEdit).Text := LDDPini.ReadString(IniSection, Components[i].Name + '_Text', (Components[i] as TEdit).Text)
    else if Components[i] is TCheckBox then
      (Components[i] as TCheckbox).Checked := LDDPini.ReadBool(IniSection, Components[i].Name + '_Checked', (Components[i] as TCheckbox).Checked);

  //Read and set up color bar settings
  if LDDPini.ReadString(IniSection, 'lbxColors_Item0', 'none') = 'none' then
    SetColorListToDefault
  else
    for i := 0 to 15 do
      ColorBarList.Add(LDDPini.ReadString(IniSection, 'lbxColors_Item' + IntToStr(i), 'none'));

  CurrentItem := TStringList.Create;
  for i := 0 to 15 do
  begin
    CurrentItem.CommaText := ColorBarList[i];
    if lbxColors.Items.Count < 16 then
      lbxColors.Items.Add(  CurrentItem[0]);
    ColorButtonChange(StrToInt(CurrentItem[2]),
                      CurrentItem[0],
                      CurrentItem[1], i);
  end;

  //Read and setup external program list
  i := 0;
  while LDDPini.ReadString(IniSection, 'lbxExternal_Item' + IntToStr(i), 'none') <> 'none' do
  begin
    MakeExternalMenuItem(ExternalProgramList.Add(LDDPini.ReadString(IniSection, 'lbxExternal_Item' + IntToStr(i), 'none')));
    CurrentItem.CommaText := ExternalProgramList[ExternalProgramList.Count - 1];
    lbxExternal.Items.Add(CurrentItem[0]);
    Inc(i);
  end;

  //Read and setup seach paths list
  SearchPathsList.Clear;
  i := 0;
  while LDDPini.ReadString(IniSection, 'SearchPathsList_Item' + IntToStr(i), 'none') <> 'none' do
  begin
    SearchPath := SearchPathsList.Items.Add;
    SearchPath.Caption := LDDPini.ReadString(IniSection, 'SearchPathsList_Item' + IntToStr(i), '');
    Inc(i);
  end;

  CurrentItem.Free;
  LDDPini.Free;
end;

procedure TfrOptions.btnColorSelectClick(Sender: TObject);
begin
  if lbxColors.ItemIndex >= 0 then
    if ColorDialog1.Execute then
    begin
      shpColor.Brush.Color := ColorDialog1.Color;
      ColorButtonChange(shpColor.Brush.Color, edColorName.Text,
                        IntToStr(edColorNumber.Value), lbxColors.ItemIndex);
    end;
end;

procedure TfrOptions.lbxColorsClick(Sender: TObject);

var
  SelectedColor: TStringList;

begin
  if lbxColors.ItemIndex >= 0 then
    begin
      edColorName.Enabled := true;
      edColorNumber.Enabled := true;
      lbColorNumber.Enabled := true;
      btnColorSelect.Enabled := true;
      ColorBarCombo.Enabled := true;
      SelectedColor := TStringList.Create;
      SelectedColor.CommaText := ColorBarList[lbxColors.ItemIndex];
      shpColor.Brush.Color := StrToInt(SelectedColor[2]);
      edColorName.Text := SelectedColor[0];
      edColorNumber.Value := StrToInt(SelectedColor[1]);
      if ColorBarCombo.FindColor(shpColor.Brush.Color) >= 0 then
        ColorBarCombo.ItemIndex := ColorBarCombo.FindColor(shpColor.Brush.Color);
      SelectedColor.Free;
    end;
end;

procedure TfrOptions.ColorButtonChange(ImageColor: TColor; ColorName, ColorNumber: string; ButtonIndex: Integer);

var
  ColorButtonBitmap: TBitmap;

begin
  ColorButtonBitmap := TBitmap.Create;
  ColorButtonBitmap.Width := 16;
  ColorButtonBitmap.Height := 16;
  ColorButtonBitmap.PixelFormat := pf24bit;

  with ColorButtonBitmap.Canvas do
  begin
    Pen.Color := $00000000;
    Brush.Color := clFuchsia;
    FillRect(Rect(0,0,16,16));
    Brush.Color := ImageColor;
    FillRect(Rect(2,2,14,14));
    Polygon([Point(1,1), Point(1,14), Point (14,14), Point(14,1)]);
  end;

  with frMain.tbrColorReplace.Buttons[ButtonIndex] do
  begin
    ImageIndex := frMain.ilProgramIcons.AddMasked(ColorButtonBitmap, clFuchsia);
    Hint := ColorName + ' ' + ColorNumber;
    Caption := ColorName + ' ' + ColorNumber;
    Tag := StrToInt(ColorNumber);
  end;
  ColorButtonBitmap.Free;
end;

procedure TfrOptions.edColorNameChange(Sender: TObject);
begin
  if lbxColors.ItemIndex >= 0 then
  begin
    ColorBarList[lbxColors.ItemIndex] := '"' + edColorName.Text + '",' +
                                         IntToStr(edColorNumber.Value) + ',' +
                                         IntToStr(shpColor.Brush.Color);
    ColorButtonChange(shpColor.Brush.Color, edColorName.Text,
                      IntToStr(edColorNumber.Value), lbxColors.ItemIndex);
    lbxColors.Items[lbxColors.ItemIndex] := edColorName.Text
  end;
end;

procedure TfrOptions.ColorBarComboChange(Sender: TObject);
var
  newcolornumber: Integer;
  newcolorname: string;

begin
  newcolornumber := StrToInt(Copy(ColorBarCombo.Text, 0, Pos(':', ColorBarCombo.Text) - 1));
  newcolorname := Copy(ColorBarCombo.Text, Pos(':', ColorBarCombo.Text) + 2, Length(ColorBarCombo.Text) - Pos(':', ColorBarCombo.Text) - 1);
  edColorName.Text := newcolorname;
  edColorNumber.Value := newcolornumber;
  shpColor.Brush.Color := ColorBarCombo.ColorValue;
  ColorBarList[lbxColors.ItemIndex] := '"' + edColorName.Text + '",' +
                                       IntToStr(edColorNumber.Value) + ',' +
                                       IntToStr(shpColor.Brush.Color);
  ColorButtonChange(shpColor.Brush.Color, edColorName.Text,
                    IntToStr(edColorNumber.Value), lbxColors.ItemIndex);
end;

procedure TfrOptions.ColorBarSheetShow(Sender: TObject);
var
  i: Integer;
  ColourList: TDATColourList;
begin
  ColourList := MakeStandardDATColourList;
  for i := 0 to ColourList.Count - 1 do
    ColorBarCombo.AddColor(ColourList[i].MainColor, IntToStr(ColourList[i].Code) + ': ' + StringReplace(ColourList[i].Name, '_', ' ', [rfReplaceAll]));
  ColourList.Free;
end;

procedure TfrOptions.btnAddPathClick(Sender: TObject);

var
  SearchPath: TListItem;

begin
  SearchPath := SearchPathsList.Items.Add;
  SearchPath.Caption := edSearchPath.Text;
  SearchPathsList.Selected := SearchPath;
  UpdateControls;
end;

procedure TfrOptions.btnColorRestoreClick(Sender: TObject);

var
  i: Integer;
  SelectedColor: TStringList;

begin
  SetColorListToDefault;
  SelectedColor := TStringList.Create;
  for i := 0 to 15 do
  begin
    SelectedColor.CommaText := ColorBarList[i];
    lbxColors.Items[i] := SelectedColor[0];
    ColorButtonChange(StrToInt(SelectedColor[2]),
                      SelectedColor[0],
                      SelectedColor[1], i);
  end;
  SelectedColor.Free;

  lbxColors.ItemIndex := -1;
  ColorBarCombo.ItemIndex := 0;
  shpColor.Brush.Color := clBtnFace;
  edColorName.Text := '';
  edColorNumber.Value := 0;

  edColorName.Enabled := false;
  edColorNumber.Enabled := false;
  lbColorNumber.Enabled := false;
  btnColorSelect.Enabled := false;
  ColorBarCombo.Enabled := false;
end;

procedure TfrOptions.lbxExternalDblClick(Sender: TObject);

begin
  lbxExternal.ItemIndex := -1;
  edExternalName.Text := _('New Program');
  edParameters.Text := '';
  edExternal.Text := '';
  cboShowCommand.Checked := False;
  cboWaitForFinish.Checked := False;
  rgStyle.ItemIndex := -1;
  MakeExternalMenuItem(ExternalProgramList.Add('"' + _('New Program') + '",,,0,0,0'));
  lbxExternal.ItemIndex := lbxExternal.Items.Add(_('New Program'));
  UpdateControls;
end;

procedure TfrOptions.MakeExternalMenuItem(ProgIndex:Integer);

var
  ExProgram: TStringList;
  MenuItem, MenuItem2: TMenuItem;

begin
  ExProgram := TStringList.Create;
  ExProgram.CommaText := ExternalProgramList[ProgIndex];
  MenuItem := TMenuItem.Create(frMain.mnuUserDefined);
  MenuItem.Action := frMain.acUserDefined;
  MenuItem.Caption := ExProgram[0];
  MenuItem.Tag := ProgIndex;
  MenuItem2 := TMenuItem.Create(frMain.pmExternal);
  MenuItem2.Action := frMain.acUserDefined;
  MenuItem2.Caption := ExProgram[0];
  MenuItem2.Tag := ProgIndex;
  frMain.mnuUserDefined.Add(MenuItem);
  frMAin.pmExternal.Items.Add(MenuItem2);
  ExProgram.Free;
end;

procedure TfrOptions.lbxExternalClick(Sender: TObject);

var
  ExProgram: TStringList;

begin
  ExProgram := TStringList.Create;
  ExProgram.CommaText := ExternalProgramList[lbxExternal.ItemIndex];
  edExternalName.Text := ExProgram[0];
  edExternal.Text := ExProgram[1];
  edParameters.Text := ExProgram[2];
  cboWaitForFinish.Checked := StrToBool(ExProgram[3]);
  cboShowCommand.Checked := StrToBool(ExProgram[4]);
  rgStyle.ItemIndex := StrToInt(ExProgram[5]);
  UpdateControls;
  ExProgram.Free;
end;

procedure TfrOptions.edExternalNameChange(Sender: TObject);
begin
  if lbxExternal.ItemIndex >= 0 then
  begin
    if edExternalName.Text = '' then
    begin
      ShowMessage(_('Program Name cannot be blank'));
      edExternalName.Text := frMain.mnuUserDefined.Items[lbxExternal.ItemIndex].Caption;
    end
    else
    begin
      ExternalProgramList[lbxExternal.ItemIndex] := '"' + edExternalName.Text + '",';

      if edExternal.Text <> '' then
        ExternalProgramList[lbxExternal.ItemIndex] := ExternalProgramList[lbxExternal.ItemIndex] +
                                                      '"' + edExternal.Text + ' ",'
      else
        ExternalProgramList[lbxExternal.ItemIndex] := ExternalProgramList[lbxExternal.ItemIndex] +
                                                      ',';
      if edParameters.Text <> '' then
        ExternalProgramList[lbxExternal.ItemIndex] := ExternalProgramList[lbxExternal.ItemIndex] +
                                                      '"' + edParameters.Text + ' ",'
      else
        ExternalProgramList[lbxExternal.ItemIndex] := ExternalProgramList[lbxExternal.ItemIndex] +
                                                      ',';
      ExternalProgramList[lbxExternal.ItemIndex] := ExternalProgramList[lbxExternal.ItemIndex] +
                                                    BoolToStr(cboWaitForFinish.Checked) + ',' +
                                                    BoolToStr(cboShowCommand.Checked) + ',' +
                                                    IntToStr(rgStyle.ItemIndex);
      if (Sender as TComponent).Name = 'edExternalName' then
      begin
        lbxExternal.Items[lbxExternal.ItemIndex] := edExternalName.Text;
        frMain.pmExternal.Items[lbxExternal.ItemIndex].Caption := edExternalName.Text;
        frMain.mnuUserDefined.Items[lbxExternal.ItemIndex].Caption := edExternalName.Text;
      end;
    end;
  end;
end;

procedure TfrOptions.edLdrawDirChange(Sender: TObject);

var
  SearchPath: TListItem;
  
begin
  SearchPath := SearchPathsList.FindCaption(0, edLDrawDir.Text + '\p', False, True, True);
  if not Assigned(SearchPath) and
     DirectoryExists(edLDrawDir.Text + '\p') then
  begin
    SearchPath := TListItem.Create(SearchPathsList.Items);
    SearchPathsList.Items.AddItem(SearchPath, 0);
    SearchPath.Caption := edLDrawDir.Text + '\p';
  end;
  SearchPath := SearchPathsList.FindCaption(0, edLDrawDir.Text + '\parts', False, True, True);
  if not Assigned(SearchPath) and
     DirectoryExists(edLDrawDir.Text + '\parts') then
  begin
    SearchPath := TListItem.Create(SearchPathsList.Items);
    SearchPathsList.Items.AddItem(SearchPath, 0);
    SearchPath.Caption := edLDrawDir.Text + '\parts';
  end;
  UpdateControls;
end;

procedure TfrOptions.edSearchPathChange(Sender: TObject);
var
  SearchPath: TListItem;

begin
  SearchPath := SearchPathsList.FindCaption(0, edSearchPath.Text, False, True, True);
  if DirectoryExists(edSearchPath.Text) then
  begin
    if not Assigned(SearchPath) then
    begin
      btnAddPath.Enabled := True;
      btnReplacePath.Enabled := Assigned(SearchPathsList.Selected);
      btnDeletePath.Enabled := False;
    end
    else
    begin
      btnAddPath.Enabled := False;
      btnReplacePath.Enabled := False;
      btnDeletePath.Enabled := True;
    end;
  end
  else
  begin
    btnAddPath.Enabled := False;
    btnReplacePath.Enabled := False;
    btnDeletePath.Enabled := Assigned(SearchPath);
  end;

end;

procedure TfrOptions.btnDeleteInvalidPathsClick(Sender: TObject);

var
 i: Integer;

begin
  for i := SearchPathsList.Items.Count - 1 downto 0  do
    if not DirectoryExists(SearchPathsList.Items[i].Caption) then
      SearchPathsList.Items[i].Free;
end;

procedure TfrOptions.btnDeletePathClick(Sender: TObject);
var
  SearchPath: TListItem;

begin
  SearchPath := SearchPathsList.FindCaption(0, edSearchPath.Text, False, True, True);
  if Assigned(SearchPath) then
  begin
    SearchPath.Free;
    edSearchPath.Text := '';
  end;
end;

procedure TfrOptions.btnDelExternalClick(Sender: TObject);

var
  i: Integer;

begin
  if lbxExternal.ItemIndex >= 0 then
  begin
    if lbxExternal.ItemIndex + 1 < lbxExternal.Items.Count then
      for i := lbxExternal.ItemIndex + 1 to lbxExternal.Items.Count - 1 do
      begin
        frMain.pmExternal.Items[i].Tag := frMain.pmExternal.Items[i].Tag - 1;
        frMain.mnuUserDefined.Items[i].Tag := frMain.mnuUserDefined.Items[i].Tag - 1;
      end;
    frMain.pmExternal.Items.Delete(lbxExternal.ItemIndex);
    frMain.mnuUserDefined.Delete(lbxExternal.ItemIndex);
    ExternalProgramList.Delete(lbxExternal.ItemIndex);
    lbxExternal.Items.Delete(lbxExternal.ItemIndex);
    lbxExternal.ItemIndex := -1;
    edExternalName.Text := '';
    edExternal.Text := '';
    edParameters.Text := '';
    cboWaitForFinish.Checked := False;
    cboShowCommand.Checked := False;
    rgStyle.ItemIndex := -1;
    UpdateControls;
  end;
end;

procedure TfrOptions.btnMLCadPathImportClick(Sender: TObject);
// Construct the meta command menu from the ini file
var
  MLCadIni: TIniFile;
  ScanPathSection: TStringList;
  scanpath: string;
  i: Integer;
  SearchPath: TListItem;

begin
  if FileExists(edMLCadDir.Text + '\MLCad.ini') then
  begin
    ScanPathSection := TStringList.Create;
    ScanPathSection.Duplicates := dupIgnore;
    ScanPathSection.Sorted := True;
    ScanPathSection.CaseSensitive := False;

    MLCadIni := TIniFile.Create(edMLCadDir.Text + '\MLCad.ini');

    MLCadIni.ReadSection('SCAN_ORDER', ScanPathSection);

    for i := 0 to ScanPathSection.Count - 1 do
    begin
      scanpath := MLCadIni.ReadString('SCAN_ORDER', ScanPathSection[i], '');
      // strip out the SHOW or HIDE command
      scanpath := RightStr(scanpath, Length(scanpath) - 5);
      SearchPath := SearchPathsList.FindCaption(0, scanpath, False, True, True);
      if not Assigned(SearchPath) and
         (Pos('<LDRAWDIR>', scanpath) = 0) and
         (scanpath <> LDrawBasePath + '\parts') and
         (scanpath <> LDrawBasePath + '\parts\s') and
         (scanpath <> LDrawBasePath + '\p') and
         (scanpath <> LDrawBasePath + '\p\48') and
         DirectoryExists(scanpath) then
      begin
        SearchPath := SearchPathsList.Items.Add;
        SearchPath.Caption := scanpath;
      end;
    end;
    ScanPathSection.Free;
    MLCadIni.Free;
  end;
  UpdateControls;
end;

procedure TfrOptions.btnPathDownClick(Sender: TObject);

var
  SearchPath: TListItem;

begin
  if Assigned(SearchPathsList.Selected) and
     (SearchPathsList.Selected.Index < SearchPathsList.Items.Count - 1) then
  begin
    SearchPath := SearchPathsList.Items.Insert(SearchPathsList.Selected.Index + 2);
    SearchPath.Caption := SearchPathsList.Selected.Caption;
    SearchPathsList.Selected.Free;
    SearchPathsList.Selected := SearchPath;
  end;
  UpdateControls;
end;

procedure TfrOptions.btnPathOpenClick(Sender: TObject);
begin
  SetDirectory(_('Choose Directory'),edSearchPath);
end;

procedure TfrOptions.btnPathUpClick(Sender: TObject);

var
  SearchPath: TListItem;

begin
  if Assigned(SearchPathsList.Selected) and
     (SearchPathsList.Selected.Index > 0) then
  begin
    SearchPath := SearchPathsList.Items.Insert(SearchPathsList.Selected.Index - 1);
    SearchPath.Caption := SearchPathsList.Selected.Caption;
    SearchPathsList.Selected.Free;
    SearchPathsList.Selected := SearchPath;
  end;
  UpdateControls;
end;

procedure TfrOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrOK then
    SaveFormValues
  else
    LoadFormValues;
  SetConfigurationConstants;
  UpdateSearchPathList;
end;

procedure TfrOptions.FormCreate(Sender: TObject);
begin
  TranslateComponent(Self);
  LoadFormValues;
  OpenDialog.Filter := _('Executibles') + '(*.*)|*.exe';
  if SearchPathsList.Items.Count > 0 then
    SearchPathsList.Selected := SearchPathsList.Items[0];
  UpdateControls;
  SetConfigurationConstants;
  UpdateSearchPathList;
  MainPages.ActivePage:=tsExternal;
end;

procedure TfrOptions.SearchPathsListSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  edSearchPath.Text := Item.Caption;
end;

procedure TfrOptions.SetColorListToDefault;
var
  i: Integer;
  ColorList: TDATColourList;

begin
  ColorList := MakeStandardDATColourList;

  ColorBarList.Text := 'Black,0,$00212121' + #13#10 +
                       'Blue,1,$00B23300' + #13#10 +
                       'Green,2,$00148C00' + #13#10 +
                       'Teal,3,$009F9900' + #13#10 +
                       'Red,4,$002600C4' + #13#10 +
                       '"Dark Pink",5,$009566DF' + #13#10 +
                       'Brown,6,$0000205C' + #13#10 +
                       'Gray,7,$00C1C2C1' + #13#10 +
                       '"Dark Gray",8,$00525F63' + #13#10 +
                       '"Light Blue",9,$00DCAB6B' + #13#10 +
                       '"Bright Green",10,$0090EE6B' + #13#10 +
                       'Turquiose,11,$00A7A633' + #13#10 +
                       '"Light Red",12,$007A85FF' + #13#10 +
                       'Pink,13,$00C6A4F9' + #13#10 +
                       'Yellow,14,$0000DCFF' + #13#10 +
                       'White,15,$00FFFFFF';

  for i := 0 to ColorBarList.Count - 1 do
    if ColorList.IndexOfColourCode(i) >= 0 then
      ColorBarList[i] := '"' + StringReplace(ColorList[ColorList.IndexOfColourCode(i)].Name, '_', ' ', [rfReplaceAll]) + '",' +
                         IntToStr(ColorList[ColorList.IndexOfColourCode(i)].Code) + ',' +
                         IntToStr(ColorList[ColorList.IndexOfColourCode(i)].MainColor);
end;

procedure TfrOptions.UpdateSearchPathList;

var
  i: Integer;
  
begin
  if not Assigned(SearchPaths) then
    SearchPaths := TStringList.Create
  else
    SearchPaths.Text := '';
      
  for i := 0 to SearchPathsList.Items.Count - 1 do
    SearchPaths.Add(SearchPathsList.Items[i].Caption);
end;

procedure TfrOptions.SetConfigurationConstants;
begin
  LDrawBasePath := edLdrawDir.Text + PathDelim;

  DetThreshold := 0;
  DistThreshold := 0;
  PlaneNormalAngleLimit := 0;
  CollinearPointsThreshold := 0.0001;

  if (cboDet.Checked) then
    DetThreshold := seDet.Value;
  if cboDist.Checked then
    DistThreshold := seDist.Value;
  if cboNormalAngle.Checked then
    PlaneNormalAngleLimit := seNormalAngle.Value;
  if (seCollinear.Value > 0) or
     (seCollinear.Text <> '') then
    CollinearPointsThreshold := seCollinear.Value;
end;

end.
