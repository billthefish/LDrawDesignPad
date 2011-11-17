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
unit OptionsFrm;

interface

uses
  Windows, Dialogs, Forms, SysUtils, Graphics,
  ImgList, Controls, Mask, Inifiles, StdCtrls,
  ExtCtrls, CheckLst, ComCtrls, Buttons, Classes,
  Menus, JvExMask, JvSpin, JvExStdCtrls, JvEdit, JvValidateEdit, JvCombobox,
  JvColorCombo, lddpoptions, JvToolEdit;

type
  TLDDPOptionsForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    MainPages: TPageControl;
    tsExternal: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    TabSheet1: TTabSheet;
    rgStyle: TRadioGroup;
    ColorDialog1: TColorDialog;
    GroupBox7: TGroupBox;
    Label12: TLabel;
    ColorBarSheet: TTabSheet;
    GroupBox9: TGroupBox;
    lbxColors: TListBox;
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
    edParameters: TEdit;
    Label10: TLabel;
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
    OptionImages: TImageList;
    TabSheet4: TTabSheet;
    ConfigPages: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Label6: TLabel;
    NormalAngleEdit: TJvValidateEdit;
    CollinearMaxAngleEdit: TJvValidateEdit;
    Memo3: TMemo;
    Memo4: TMemo;
    lbPntAcc: TLabel;
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
    Memo1: TMemo;
    CollinearMinAngleEdit: TJvValidateEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    ColorSortOption: TComboBox;
    LDrawPathEditIcon: TImage;
    LDViewPathEditIcon: TImage;
    MLCadPAthEditIcon: TImage;
    LSynthPathEditIcon: TImage;
    ExternalPathEditIcon: TImage;
    LDrawPathEdit: TJvDirectoryEdit;
    LDViewPathEdit: TJvDirectoryEdit;
    MLCadPathEdit: TJvDirectoryEdit;
    LSynthPathEdit: TJvDirectoryEdit;
    edSearchPath: TJvDirectoryEdit;
    edExternal: TJvFilenameEdit;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    Label17: TLabel;
    AttrList: TListBox;
    BackColor: TColorBox;
    GroupBox4: TGroupBox;
    cbItalic: TCheckBox;
    cbUnderline: TCheckBox;
    cbBold: TCheckBox;
    ForeColor: TColorBox;
    PositionAcc: TComboBox;
    RotationAcc: TComboBox;
    GroupBox6: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    seGridCustomX: TJvValidateEdit;
    seGridCustomY: TJvValidateEdit;
    seGridCustomZ: TJvValidateEdit;
    seGridCustomAngle: TJvValidateEdit;
    shpColor: TShape;
    GroupBox8: TGroupBox;
    FontDialog1: TFontDialog;
    FontBox: TJvFontComboBox;
    FontSize: TComboBox;
    Label35: TLabel;
    procedure MainPagesChange(Sender: TObject);
    procedure btnColorSelectClick(Sender: TObject);
    procedure lbxColorsClick(Sender: TObject);
    procedure edColorNameChange(Sender: TObject);
    procedure btnColorRestoreClick(Sender: TObject);
    procedure lbxExternalDblClick(Sender: TObject);
    procedure lbxExternalClick(Sender: TObject);
    procedure edExternalNameChange(Sender: TObject);
    procedure btnDelExternalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ColorBarSheetShow(Sender: TObject);
    procedure ColorBarComboChange(Sender: TObject);
    procedure btnMLCadPathImportClick(Sender: TObject);
    procedure SearchPathsListSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure edSearchPathChange(Sender: TObject);
    procedure btnAddPathClick(Sender: TObject);
    procedure btnReplacePathClick(Sender: TObject);
    procedure btnDeletePathClick(Sender: TObject);
    procedure btnDeleteInvalidPathsClick(Sender: TObject);
    procedure btnPathDownClick(Sender: TObject);
    procedure btnPathUpClick(Sender: TObject);
    procedure LDrawPathEditChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure LDViewPathEditChange(Sender: TObject);
    procedure MLCadPathEditChange(Sender: TObject);
    procedure LSynthPathEditChange(Sender: TObject);
    procedure edExternalBeforeDialog(Sender: TObject; var AName: string;
      var AAction: Boolean);
    procedure AttrListClick(Sender: TObject);
    procedure ValueChange(Sender: TObject);

  private
    FLDDPOptions: TLDDPOptions;
    procedure UpdateControls;
    procedure LoadFormValues;
    procedure UpdateSearchPathList;
    procedure UpdateOptions;
    procedure UpdatePathIcon(FileName: string; Icon: TImage);
    procedure AssignValuesFromHighligher(index: Integer);
    procedure AssignValuesToHighligher(index: Integer);

  public
    property LDDPOptions: TLDDPOptions read FLDDPOptions write FLDDPOptions;

  end;

implementation

uses
  ActnList, DATBase, DATUtils, DATColour, StrUtils;

{$R *.dfm}

procedure TLDDPOptionsForm.UpdateControls;

var
  i: Integer;

begin
  for i := 0 to SearchPathsList.Items.Count - 1 do
    if DirectoryExists(SearchPathsList.Items[i].Caption) then
      SearchPathsList.Items[i].StateIndex := 0
    else
      SearchPathsList.Items[i].StateIndex := 1;

  UpdateOptions;
end;

procedure TLDDPOptionsForm.UpdateOptions;
begin
  LDDPOptions.LDrawPath := LDrawPathEdit.Text;
  LDDPOptions.LDViewPath := LDViewPathEdit.Text;
  LDDPOptions.LSynthPath := LSynthPathEdit.Text;
  LDDPOptions.MLCadPath := MLCadPathEdit.Text;
  LDDPOptions.ErrorCheckNormalAngle := NormalAngleEdit.Value;
  LDDPOptions.ErrorCheckCollinearMaxAngle := CollinearMaxAngleEdit.Value;
  LDDPOptions.ErrorCheckCollinearMinAngle := CollinearMinAngleEdit.Value;
  LDDPOptions.PositionDecAcc := PositionAcc.ItemIndex + 1;
  LDDPOptions.RotationDecAcc := RotationAcc.ItemIndex + 1;
  LDDPOptions.OnlyRoundDuringAutoRound := cboAutoRoundOnly.Checked;
  LDDPOptions.CustomPollInterval := seCustomPollInterval.Value;
  case ColorSortOption.ItemIndex of
    0: LDDPOptions.ColorComboSortTerm := csCode;
    1: LDDPOptions.ColorComboSortTerm := csColourName;
    2: LDDPOptions.ColorComboSortTerm := csMainColour;
    else LDDPOptions.ColorComboSortTerm := csCode;
  end;
  LDDPOptions.GridCoarseX := seGridCoarseX.Value;
  LDDPOptions.GridCoarseY := seGridCoarseY.Value;
  LDDPOptions.GridCoarseZ := seGridCoarseZ.Value;
  LDDPOptions.GridCoarseAngle := seGridCoarseAngle.Value;
  LDDPOptions.GridMedX := seGridMediumX.Value;
  LDDPOptions.GridMedY := seGridMediumY.Value;
  LDDPOptions.GridMedZ := seGridMediumZ.Value;
  LDDPOptions.GridMedAngle := seGridMediumAngle.Value;
  LDDPOptions.GridFineX := seGridFineX.Value;
  LDDPOptions.GridFineY := seGridFineY.Value;
  LDDPOptions.GridFineZ := seGridFineZ.Value;
  LDDPOptions.GridFineAngle := seGridFineAngle.Value;
  LDDPOptions.GridCustomX := seGridCustomX.Value;
  LDDPOptions.GridCustomY := seGridCustomY.Value;
  LDDPOptions.GridCustomZ := seGridCustomZ.Value;
  LDDPOptions.GridCustomAngle := seGridCustomAngle.Value;
  LDDPOptions.Username := edName.Text;
  LDDPOptions.UserPTName := edUsername.Text;
  LDDPOptions.UserEmail := edEmail.Text;
end;

procedure TLDDPOptionsForm.UpdatePathIcon(FileName: string; Icon: TImage);

var
  Bmp: TPicture;

begin
  Bmp := TPicture.Create;
  if FileExists(FileName) then
    OptionImages.GetBitmap(0,Bmp.Bitmap)
  else  
    OptionImages.GetBitmap(1,Bmp.Bitmap);
  Icon.Picture.Assign(Bmp);
end;

procedure TLDDPOptionsForm.MainPagesChange(Sender: TObject);
begin
  UpdateControls;
end;

procedure TLDDPOptionsForm.MLCadPathEditChange(Sender: TObject);
begin
  UpdatePathIcon(MLCadPathEdit.Text + PathDelim + 'MLCad.exe', MLCadPathEditIcon);
end;

procedure TLDDPOptionsForm.btnReplacePathClick(Sender: TObject);
begin
  if Assigned(SearchPathsList.Selected) then
    SearchPathsList.Selected.Caption := edSearchPath.Text;
  UpdateControls;
end;

procedure TLDDPOptionsForm.LoadFormValues;

var
  i: Integer;
  CurrentItem: TStringList;
  SearchPath: TListItem;

begin
  LDrawPathEdit.Text := LDDPOptions.LDrawPath;
  LDViewPathEdit.Text := LDDPOptions.LDViewPath;
  LSynthPathEdit.Text := LDDPOptions.LSynthPath;
  MLCadPathEdit.Text := LDDPOptions.MLCadPath;
  NormalAngleEdit.Value := LDDPOptions.ErrorCheckNormalAngle;
  CollinearMaxAngleEdit.Value := LDDPOptions.ErrorCheckCollinearMaxAngle;
  CollinearMinAngleEdit.Value := LDDPOptions.ErrorCheckCollinearMinAngle;
  PositionAcc.ItemIndex := LDDPOptions.PositionDecAcc - 1;
  RotationAcc.ItemIndex := LDDPOptions.RotationDecAcc - 1;
  cboAutoRoundOnly.Checked := LDDPOptions.OnlyRoundDuringAutoRound;
  seCustomPollInterval.Value := LDDPOptions.CustomPollInterval;
  case LDDPOptions.ColorComboSortTerm of
    csCode: ColorSortOption.ItemIndex := 0;
    csColourName: ColorSortOption.ItemIndex := 1;
    csMainColour: ColorSortOption.ItemIndex := 2;
    else ColorSortOption.ItemIndex := 0;
  end;
  seGridCoarseX.Value := LDDPOptions.GridCoarseX;
  seGridCoarseY.Value := LDDPOptions.GridCoarseY;
  seGridCoarseZ.Value := LDDPOptions.GridCoarseZ;
  seGridCoarseAngle.Value := LDDPOptions.GridCoarseAngle;
  seGridMediumX.Value := LDDPOptions.GridMedX;
  seGridMediumY.Value := LDDPOptions.GridMedY;
  seGridMediumZ.Value := LDDPOptions.GridMedZ;
  seGridMediumAngle.Value := LDDPOptions.GridMedAngle;
  seGridFineX.Value := LDDPOptions.GridFineX;
  seGridFineY.Value := LDDPOptions.GridFineY;
  seGridFineZ.Value := LDDPOptions.GridFineZ;
  seGridFineAngle.Value := LDDPOptions.GridFineAngle;
  seGridCustomX.Value := LDDPOptions.GridCustomX;
  seGridCustomY.Value := LDDPOptions.GridCustomY;
  seGridCustomZ.Value := LDDPOptions.GridCustomZ;
  seGridCustomAngle.Value := LDDPOptions.GridCustomAngle;
  edName.Text := LDDPOptions.Username;
  edUsername.Text := LDDPOptions.UserPTName;
  edEmail.Text := LDDPOptions.UserEmail;

  if LDDPOptions.ColorBarList.Count <> 15 then
    LDDPOptions.SetColorListToDefault;

  CurrentItem := TStringList.Create;
  for i := 0 to 15 do
  begin
    CurrentItem.CommaText := LDDPOptions.ColorBarList[i];
    lbxColors.Items.Add(CurrentItem[0]);
  end;

  //Read and setup external program list
  for i := 0 to LDDPOptions.ExternalProgramList.Count - 1 do
  begin
    CurrentItem.CommaText := LDDPOptions.ExternalProgramList[LDDPOptions.ExternalProgramList.Count - 1];
    lbxExternal.Items.Add(CurrentItem[0]);
  end;

  //Read and setup seach paths list
  SearchPathsList.Clear;
  for i := 0 to LDDPOptions.SearchPaths.Count - 1 do
  begin
    SearchPath := SearchPathsList.Items.Add;
    SearchPath.Caption := LDDPOptions.SearchPaths[i];
  end;

  CurrentItem.Free;
end;

procedure TLDDPOptionsForm.LSynthPathEditChange(Sender: TObject);
begin
  UpdatePathIcon(LSynthPathEdit.Text + PathDelim + 'lsynthcp.exe', LSynthPathEditIcon);
end;

procedure TLDDPOptionsForm.btnColorSelectClick(Sender: TObject);
begin
  if lbxColors.ItemIndex >= 0 then
    if ColorDialog1.Execute then
      shpColor.Brush.Color := ColorDialog1.Color;
end;

procedure TLDDPOptionsForm.lbxColorsClick(Sender: TObject);

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
      SelectedColor.CommaText := LDDPOptions.ColorBarList[lbxColors.ItemIndex];
      shpColor.Brush.Color := StrToInt(SelectedColor[2]);
      edColorName.Text := SelectedColor[0];
      edColorNumber.Value := StrToInt(SelectedColor[1]);
      if ColorBarCombo.FindColor(shpColor.Brush.Color) >= 0 then
        ColorBarCombo.ItemIndex := ColorBarCombo.FindColor(shpColor.Brush.Color);
      SelectedColor.Free;
    end;
end;

procedure TLDDPOptionsForm.edColorNameChange(Sender: TObject);
begin
  if lbxColors.ItemIndex >= 0 then
  begin
    LDDPOptions.ColorBarList[lbxColors.ItemIndex] := '"' + edColorName.Text + '",' +
                                         IntToStr(edColorNumber.Value) + ',' +
                                         IntToStr(shpColor.Brush.Color);
    lbxColors.Items[lbxColors.ItemIndex] := edColorName.Text
  end;
end;

procedure TLDDPOptionsForm.ColorBarComboChange(Sender: TObject);
var
  newcolornumber: Integer;
  newcolorname: string;

begin
  newcolornumber := StrToInt(Copy(ColorBarCombo.Text, 0, Pos(':', ColorBarCombo.Text) - 1));
  newcolorname := Copy(ColorBarCombo.Text, Pos(':', ColorBarCombo.Text) + 2, Length(ColorBarCombo.Text) - Pos(':', ColorBarCombo.Text) - 1);
  edColorName.Text := newcolorname;
  edColorNumber.Value := newcolornumber;
  shpColor.Brush.Color := ColorBarCombo.ColorValue;
  LDDPOptions.ColorBarList[lbxColors.ItemIndex] := '"' + edColorName.Text + '",' +
                                       IntToStr(edColorNumber.Value) + ',' +
                                       IntToStr(shpColor.Brush.Color);
end;

procedure TLDDPOptionsForm.ColorBarSheetShow(Sender: TObject);
var
  i: Integer;
  ColourList: TDATColourList;
begin
  ColourList := MakeStandardDATColourList;
  for i := 0 to ColourList.Count - 1 do
    ColorBarCombo.AddColor(ColourList[i].MainColour, IntToStr(ColourList[i].Code) + ': ' + StringReplace(ColourList[i].ColourName, '_', ' ', [rfReplaceAll]));
  ColourList.Free;
end;

procedure TLDDPOptionsForm.AssignValuesFromHighligher(index: Integer);

var
  Styles: TStringList;

begin
  Styles := TStringList.Create;
  try
    Styles.CommaText := LDDPOptions.EditorStyles[index];
    FontBox.Font.Name := Styles[0];
    if FontSize.Items.IndexOf(Styles[1]) >= 0 then
      FontSize.ItemIndex := FontSize.Items.IndexOf(Styles[1])
    else
      FontSize.Text := Styles[1];
    ForeColor.Selected := StrToInt(Styles[2]);
    BackColor.Selected := StrToInt(Styles[3]);
    cbBold.Checked := StrToBool(Styles[4]);
    cbItalic.Checked := StrToBool(Styles[5]);
    cbUnderline.Checked := StrToBool(Styles[6]);
  finally
    Styles.Free;
  end;
end;

procedure TLDDPOptionsForm.AssignValuesToHighligher(index: Integer);

var
  StoreValue: string;

begin
  StoreValue := '"' + FontBox.Font.Name;
  if FontSize.ItemIndex > 0 then
    StoreValue := StoreValue + '",' + FontSize.Items[FontSize.ItemIndex]
  else
    StoreValue := StoreValue + '",' + FontSize.Text;
  StoreValue := StoreValue + ',' + IntToStr(ForeColor.Selected);
  StoreValue := StoreValue + ',' + IntToStr(BackColor.Selected);
  StoreValue := StoreValue + ',' + BoolToStr(cbBold.Checked);
  StoreValue := StoreValue + ',' + BoolToStr(cbItalic.Checked);
  StoreValue := StoreValue + ',' + BoolToStr(cbUnderline.Checked);
  LDDPOptions.EditorStyles[index] := StoreValue;
end;

procedure TLDDPOptionsForm.AttrListClick(Sender: TObject);
begin
  AssignValuesFromHighligher(AttrList.ItemIndex);
end;

procedure TLDDPOptionsForm.btnAddPathClick(Sender: TObject);

var
  SearchPath: TListItem;

begin
  SearchPath := SearchPathsList.Items.Add;
  SearchPath.Caption := edSearchPath.Text;
  SearchPathsList.Selected := SearchPath;
  UpdateControls;
end;

procedure TLDDPOptionsForm.btnColorRestoreClick(Sender: TObject);

var
  i: Integer;
  SelectedColor: TStringList;

begin
  LDDPOptions.SetColorListToDefault;
  SelectedColor := TStringList.Create;
  for i := 0 to 15 do
  begin
    SelectedColor.CommaText := LDDPOptions.ColorBarList[i];
    lbxColors.Items[i] := SelectedColor[0];
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

procedure TLDDPOptionsForm.lbxExternalDblClick(Sender: TObject);

begin
  lbxExternal.ItemIndex := -1;
  edExternalName.Text := 'New Program';
  edParameters.Text := '';
  edExternal.Text := '';
  cboShowCommand.Checked := False;
  cboWaitForFinish.Checked := False;
  rgStyle.ItemIndex := -1;
  lbxExternal.ItemIndex := lbxExternal.Items.Add('New Program');
  UpdateControls;
end;

procedure TLDDPOptionsForm.lbxExternalClick(Sender: TObject);

var
  ExProgram: TStringList;

begin
  ExProgram := TStringList.Create;
  ExProgram.CommaText := LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex];
  edExternalName.Text := ExProgram[0];
  edExternal.Text := ExProgram[1];
  edParameters.Text := ExProgram[2];
  cboWaitForFinish.Checked := StrToBool(ExProgram[3]);
  cboShowCommand.Checked := StrToBool(ExProgram[4]);
  rgStyle.ItemIndex := StrToInt(ExProgram[5]);
  UpdateControls;
  ExProgram.Free;
end;

procedure TLDDPOptionsForm.edExternalBeforeDialog(Sender: TObject;
  var AName: string; var AAction: Boolean);
begin
  edExternal.Dialog.InitialDir := ExtractFileDir(edExternal.Text);
end;

procedure TLDDPOptionsForm.edExternalNameChange(Sender: TObject);
begin
  if lbxExternal.ItemIndex >= 0 then
  begin
    if edExternalName.Text = '' then
      ShowMessage('Program Name cannot be blank')
    else
    begin
      LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] := '"' + edExternalName.Text + '",';

      if edExternal.Text <> '' then
        LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] := LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] +
                                                      '"' + edExternal.Text + ' ",'
      else
        LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] := LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] +
                                                      ',';
      if edParameters.Text <> '' then
        LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] := LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] +
                                                      '"' + edParameters.Text + ' ",'
      else
        LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] := LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] +
                                                      ',';
      LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] := LDDPOptions.ExternalProgramList[lbxExternal.ItemIndex] +
                                                    BoolToStr(cboWaitForFinish.Checked) + ',' +
                                                    BoolToStr(cboShowCommand.Checked) + ',' +
                                                    IntToStr(rgStyle.ItemIndex);
      if (Sender as TComponent).Name = 'edExternalName' then
        lbxExternal.Items[lbxExternal.ItemIndex] := edExternalName.Text;
    end;
  end;
  UpdatePathIcon(edExternal.Text, ExternalPathEditIcon);
end;

procedure TLDDPOptionsForm.LDrawPathEditChange(Sender: TObject);

var
  SearchPath: TListItem;
  
begin
  SearchPath := SearchPathsList.FindCaption(0, LDrawPathEdit.Text + '\p', False, True, True);
  if not Assigned(SearchPath) and
     DirectoryExists(LDrawPathEdit.Text + PathDelim + 'p') then
  begin
    SearchPath := TListItem.Create(SearchPathsList.Items);
    SearchPathsList.Items.AddItem(SearchPath, 0);
    SearchPath.Caption := LDrawPathEdit.Text +  PathDelim + 'p';
  end;
  SearchPath := SearchPathsList.FindCaption(0, LDrawPathEdit.Text + PathDelim + 'parts', False, True, True);
  if not Assigned(SearchPath) and
     DirectoryExists(LDrawPathEdit.Text + PathDelim + 'parts') then
  begin
    SearchPath := TListItem.Create(SearchPathsList.Items);
    SearchPathsList.Items.AddItem(SearchPath, 0);
    SearchPath.Caption := LDrawPathEdit.Text + PathDelim + 'parts';
  end;
  if DirectoryExists(LDrawPathEdit.Text) then
    LDrawBasePath := LDrawPathEdit.Text;

  UpdatePathIcon(LDrawPathEdit.Text + PathDelim + 'ldconfig.ldr', LDrawPathEditIcon);
end;

procedure TLDDPOptionsForm.LDViewPathEditChange(Sender: TObject);
begin
  UpdatePathIcon(LDViewPathEdit.Text + PathDelim + 'LDView.exe', LDViewPathEditIcon);
end;

procedure TLDDPOptionsForm.edSearchPathChange(Sender: TObject);
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

procedure TLDDPOptionsForm.btnDeleteInvalidPathsClick(Sender: TObject);

var
 i: Integer;

begin
  for i := SearchPathsList.Items.Count - 1 downto 0  do
    if not DirectoryExists(SearchPathsList.Items[i].Caption) then
      SearchPathsList.Items[i].Free;
end;

procedure TLDDPOptionsForm.btnDeletePathClick(Sender: TObject);
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

procedure TLDDPOptionsForm.btnDelExternalClick(Sender: TObject);

begin
  if lbxExternal.ItemIndex >= 0 then
  begin
    LDDPOptions.ExternalProgramList.Delete(lbxExternal.ItemIndex);
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

procedure TLDDPOptionsForm.btnMLCadPathImportClick(Sender: TObject);
// Construct the meta command menu from the ini file
var
  MLCadIni: TIniFile;
  ScanPathSection: TStringList;
  scanpath: string;
  i: Integer;
  SearchPath: TListItem;

begin
  if FileExists(MLCadPathEdit.Text + PathDelim + 'MLCad.ini') then
  begin
    ScanPathSection := TStringList.Create;
    ScanPathSection.Duplicates := dupIgnore;
    ScanPathSection.Sorted := True;
    ScanPathSection.CaseSensitive := False;

    MLCadIni := TIniFile.Create(MLCadPathEdit.Text + PathDelim + 'MLCad.ini');

    MLCadIni.ReadSection('SCAN_ORDER', ScanPathSection);

    for i := 0 to ScanPathSection.Count - 1 do
    begin
      scanpath := MLCadIni.ReadString('SCAN_ORDER', ScanPathSection[i], '');
      // strip out the SHOW or HIDE command
      scanpath := RightStr(scanpath, Length(scanpath) - 5);
      SearchPath := SearchPathsList.FindCaption(0, scanpath, False, True, True);
      if not Assigned(SearchPath) and
         (Pos('<LDRAWDIR>', scanpath) = 0) and
         (scanpath <> LDrawBasePath + PathDelim + 'parts') and
         (scanpath <> LDrawBasePath + PathDelim + 'parts' + PathDelim + 's') and
         (scanpath <> LDrawBasePath + PathDelim + 'p') and
         (scanpath <> LDrawBasePath + PathDelim + 'p' + PathDelim + '48') and
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

procedure TLDDPOptionsForm.btnPathDownClick(Sender: TObject);

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

procedure TLDDPOptionsForm.btnPathUpClick(Sender: TObject);

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

procedure TLDDPOptionsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UpdateOptions;
end;

procedure TLDDPOptionsForm.FormCreate(Sender: TObject);
begin
  FLDDPOptions := TLDDPOptions.Create;
end;

procedure TLDDPOptionsForm.FormDestroy(Sender: TObject);
begin
  LDDPOptions.Free;
end;

procedure TLDDPOptionsForm.FormShow(Sender: TObject);
begin
  LoadFormValues;
  if SearchPathsList.Items.Count > 0 then
    SearchPathsList.Selected := SearchPathsList.Items[0];
  UpdateControls;
  UpdateSearchPathList;
  MainPages.ActivePage := tsExternal;
end;

procedure TLDDPOptionsForm.SearchPathsListSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  edSearchPath.Text := Item.Caption;
end;

procedure TLDDPOptionsForm.UpdateSearchPathList;

var
  i: Integer;
  
begin
  LDDPOptions.SearchPaths.Clear;
      
  for i := 0 to SearchPathsList.Items.Count - 1 do
    LDDPOptions.SearchPaths.Add(SearchPathsList.Items[i].Caption);
end;

procedure TLDDPOptionsForm.ValueChange(Sender: TObject);
begin
  AssignValuesToHighligher(AttrList.ItemIndex)
end;

end.
