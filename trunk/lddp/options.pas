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
    PageControl1: TPageControl;
    tsExternal: TTabSheet;
    GroupBox1: TGroupBox;
    btL3Lab: TBitBtn;
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
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    cboDet: TCheckBox;
    cboDist: TCheckBox;
    Memo1: TMemo;
    Memo2: TMemo;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    edEmail: TEdit;
    edUsername: TEdit;
    edName: TEdit;
    Label16: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Button1: TBitBtn;
    cblPlugins: TCheckListBox;
    Label9: TLabel;
    rgStyle: TRadioGroup;
    GroupBox5: TGroupBox;
    lbPntAcc: TLabel;
    lbRotAcc: TLabel;
    ColorDialog1: TColorDialog;
    Label6: TLabel;
    Memo3: TMemo;
    GroupBox7: TGroupBox;
    Label12: TLabel;
    edLSynthDir: TEdit;
    btLSynth: TBitBtn;
    lbLSynth: TLabel;
    seDist: TJvValidateEdit;
    seDet: TJvValidateEdit;
    seCollinear: TJvValidateEdit;
    sePntAcc: TJvValidateEdit;
    seRotAcc: TJvValidateEdit;
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
    cboNormalAngle: TCheckBox;
    Memo4: TMemo;
    seNormalAngle: TJvValidateEdit;
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
    cboAutoRoundOnly: TCheckBox;
    ColorBarCombo: TJvColorComboBox;
    TabSheet5: TTabSheet;
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cblPluginsClickCheck(Sender: TObject);
    procedure btLDrawClick(Sender: TObject);
    procedure btLDViewClick(Sender: TObject);
    procedure btMLCadClick(Sender: TObject);
    procedure btL3LabClick(Sender: TObject);
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

  private
    ColorBarList: TStringList;
    procedure ColorButtonChange(ImageColor: TColor; ColorName, ColorNumber: string; ButtonIndex: Integer);
    procedure MakeExternalMenuItem(ProgIndex:Integer);
    procedure SetColorListToDefault;

  public
    ExternalProgramList: TStringList;
    procedure UpdateControls;
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure SetConfigurationConstants;
  end;

var
  frOptions: TfrOptions;

implementation

uses main, windowsspecific, DATBase, DATCheck, DATUtils;

{$R *.dfm}

procedure TfrOptions.UpdateControls;

var
  strFound, strNotFound: string;

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
    lbLDraw.font.Color:=clGreen;
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

  if trim(frOptions.edExternal.text)='' then lbExternal.Caption:=''
    else
      if FileExists(frOptions.edExternal.text) then begin
        lbExternal.font.Color:=clGreen;
        lbExternal.Caption:=strFound;
      end
        else begin
          lbExternal.font.Color:=clRed;
          lbExternal.Caption:=strNotFound;
        end;
end;

procedure TfrOptions.PageControl1Change(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrOptions.Button1Click(Sender: TObject);
begin
  frMain.LoadPlugins;
end;

procedure TfrOptions.cblPluginsClickCheck(Sender: TObject);

var
  PluginName, PluginPath: string;

begin
  PluginName := frOptions.cblPlugins.Items[frOptions.cblplugins.Itemindex];
  PluginName := Copy(PluginName, 1, Pos(' -', PluginName) - 1);
  PluginPath := ExtractFilePath(Application.ExeName) + 'Plugins\';

  if frOptions.cblPlugins.State[frOptions.cblPlugins.Itemindex] = cbChecked then
    RenameFile(PluginPath + PluginName + '.dld', ChangeFileExt(PluginPath + PluginName + '.dld', '.dll'))
  else
    RenameFile(PluginPath + PluginName + '.dll', ChangeFileExt(PluginPath + PluginName + '.dll', '.dld'));
  frMain.LoadPlugins;
end;

procedure TfrOptions.btLDrawClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edLdrawDir.Text;
  if SelectDirectory(_('Choose LDraw Library Location'),'',strDir) then edLdrawDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btLDViewClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edLDViewDir.Text;
  if SelectDirectory(_('Choose LDView Location'),'',strDir) then edLDViewDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btMLCadClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edMLCadDir.Text;
  if SelectDirectory(_('Choose MLCad Location'),'',strDir) then edMLCadDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btL3LabClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edL3LabDir.Text;
  if SelectDirectory(_('Choose L3Lab Location'),'',strDir) then edL3LabDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btLSynthClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edLSynthDir.Text;
  if SelectDirectory(_('Choose lynthcp Location'),'',strDir) then edLSynthDir.Text:=strDir;
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

  if frOptions.edLDrawDir.Text <> '' then
    LDDPini.WriteString('LDraw','BaseDirectory',frOptions.edLDrawDir.Text);
  LDDPini.WriteString(IniSection, 'edLDViewDir_Text', edLDViewDir.Text);
  LDDPini.WriteString(IniSection, 'edMLCadDir_Text', edMLCadDir.Text);
  LDDPini.WriteString(IniSection, 'edL3LabDir_Text', edL3LabDir.Text);
  LDDPini.WriteString(IniSection, 'edL3LabDir_Text', edL3LabDir.Text);
  LDDPini.WriteString(IniSection, 'edLSynthDir_Text', edLSynthDir.Text);
  LDDPini.WriteString(IniSection, 'edExternal_Text', edExternal.Text);
  LDDPini.WriteString(IniSection, 'edParameters_Text', edParameters.Text);
  LDDPini.WriteString(IniSection, 'edEmail_Text', edEMail.Text);
  LDDPini.WriteString(IniSection, 'edName_Text', edName.Text);
  LDDPini.WriteString(IniSection, 'edUsername_Text', edUsername.Text);
  LDDPini.WriteFloat(IniSection, 'seDet_Value', seDet.Value);
  LDDPini.WriteFloat(IniSection, 'seDist_Value', seDist.Value);
  LDDPini.WriteFloat(IniSection, 'seNormalAngle_Value', seNormalAngle.Value);
  LDDPini.WriteFloat(IniSection, 'seCollinear_Value', seCollinear.Value);
  LDDPini.WriteInteger(IniSection, 'sePntAcc_Value', sePntAcc.Value);
  LDDPini.WriteInteger(IniSection, 'seRotAcc_Value', seRotAcc.Value);
  LDDPini.WriteBool(IniSection, 'cboDist_Checked', cboDist.Checked);
  LDDPini.WriteBool(IniSection, 'cboDet_Checked', cboDet.Checked);
  LDDPini.WriteBool(IniSection, 'cboNormalAngle_Checked', cboNormalAngle.Checked);
  LDDPini.WriteBool(IniSection, 'cboAutoRoundOnly_Checked', cboAutoRoundOnly.Checked);
  LDDPini.WriteInteger(IniSection, 'rgStyle_ItemIndex', rgStyle.ItemIndex);

  for i := 0 to 15 do
    LDDPini.WriteString(IniSection, 'lbxColors_Item' + IntToStr(i), ColorBarList[i]);

  for i := 0 to ExternalProgramList.Count - 1 do
    LDDPini.WriteString(IniSection, 'lbxExternal_Item' + IntToStr(i), ExternalProgramList[i]);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrOptions.LoadFormValues;

var
  i: Integer;
  CurrentItem: TStringList;
  LDDPini: TMemIniFile;
  IniSection: string;

begin
  ColorBarList := TStringList.Create;
  ExternalProgramList := TStringList.Create;
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  IniSection := 'LDDP Options';

  //Restore various option parameters
  edLDrawDir.Text := LDDPini.ReadString('LDraw','BaseDirectory', '');
  edLDViewDir.Text := LDDPini.ReadString(IniSection, 'edLDViewDir_Text', '');
  edMLCadDir.Text := LDDPini.ReadString(IniSection, 'edMLCadDir_Text', '');
  edL3LabDir.Text := LDDPini.ReadString(IniSection, 'edL3LabDir_Text', '');
  edL3LabDir.Text := LDDPini.ReadString(IniSection, 'edL3LabDir_Text', '');
  edLSynthDir.Text := LDDPini.ReadString(IniSection, 'edLSynthDir_Text', '');
  edEMail.Text := LDDPini.ReadString(IniSection, 'edEmail_Text', '');
  edName.Text := LDDPini.ReadString(IniSection, 'edName_Text', '');
  edUsername.Text := LDDPini.ReadString(IniSection, 'edUsername_Text', '');
  seDet.Value := LDDPini.ReadFloat(IniSection, 'seDet_Value', 0.01);
  if seDet.Value = 0 then seDet.Value := 0.01;
  seDist.Value := LDDPini.ReadFloat(IniSection, 'seDist_Value', 0.1);
  if seDist.Value = 0 then seDist.Value := 0.1;
  seNormalAngle.Value := LDDPini.ReadFloat(IniSection, 'seNormalAngle_Value', 1);
  if seNormalAngle.Value = 0 then seNormalAngle.Value := 1;
  seCollinear.Value := LDDPini.ReadFloat(IniSection, 'seCollinear_Value', 0.0001);
  if seCollinear.Value = 0 then seCollinear.Value := 0.0001;
  sePntAcc.Value := LDDPini.ReadInteger(IniSection, 'sePntAcc_Value', 4);
  if sePntAcc.Value = 0 then sePntAcc.Value := 4;
  seRotAcc.Value := LDDPini.ReadInteger(IniSection, 'seRotAcc_Value', 4);
  if seRotAcc.Value = 0 then seRotAcc.Value := 4;
  cboDist.Checked := LDDPini.ReadBool(IniSection, 'cboDist_Checked', false);
  cboDet.Checked := LDDPini.ReadBool(IniSection, 'cboDet_Checked', false);
  cboNormalAngle.Checked := LDDPini.ReadBool(IniSection, 'cboNormalAngle_Checked', false);
  cboAutoRoundOnly.Checked := LDDPini.ReadBool(IniSection, 'cboAutoRoundOnly_Checked', false);

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
    ImageIndex := frMain.ilToolBarColor.AddMasked(ColorButtonBitmap, clFuchsia);
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

procedure TfrOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrOK then
  begin
    SaveFormValues;
    SetConfigurationConstants;
  end
  else
    LoadFormValues;
end;

procedure TfrOptions.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
  LoadFormValues;
  OpenDialog.Filter := _('Executibles') + '(*.*)|*.exe';
  UpdateControls;
  SetConfigurationConstants;
  PageControl1.ActivePage:=tsExternal;
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
