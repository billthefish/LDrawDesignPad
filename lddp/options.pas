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
unit options;

interface

uses
  Dialogs, Forms, sysutils, graphics, windowsspecific, SynEditHighlighter, SynHighlighterLDraw,
  ImgList, Controls, Mask, JvMaskEdit, JvSpin, SynEdit, SynMemo, StdCtrls, Inifiles,
  ExtCtrls, CheckLst, JvEdit, ComCtrls, Buttons, Classes , FileCtrl,
  JvExMask, JvExStdCtrls, JvValidateEdit;

type
  TfrOptions = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
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
    Label11: TLabel;
    lbExternal: TLabel;
    Label10: TLabel;
    cboWaitForFinish: TCheckBox;
    cboShowCommand: TCheckBox;
    edExternal: TEdit;
    edParameters: TEdit;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    cboDet: TCheckBox;
    cboDist: TCheckBox;
    Memo1: TMemo;
    Memo2: TMemo;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    edEmail: TEdit;
    edSig: TEdit;
    edName: TEdit;
    Label16: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Button1: TBitBtn;
    cblPlugins: TCheckListBox;
    Label9: TLabel;
    btExternal: TBitBtn;
    rgStyle: TRadioGroup;
    GroupBox5: TGroupBox;
    lbPntAcc: TLabel;
    lbRotAcc: TLabel;
    TabSheet5: TTabSheet;
    lstElement: TListBox;
    Label1: TLabel;
    shForeground: TShape;
    btnForeground: TButton;
    shBackground: TShape;
    btnBackground: TButton;
    Label3: TLabel;
    SynLDRSyn1: TSynLDRSyn;
    ColorDialog1: TColorDialog;
    btnReset: TBitBtn;
    SynMemo1: TSynMemo;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Memo3: TMemo;
    GroupBox7: TGroupBox;
    TabSheet6: TTabSheet;
    cboMarginNumbers: TCheckBox;
    GroupBox8: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    speMarginWidth: TJvSpinEdit;
    speRightLine: TJvSpinEdit;
    Label12: TLabel;
    edLSynthDir: TEdit;
    btLSynth: TBitBtn;
    lbLSynth: TLabel;
    cboUnitDet: TCheckBox;
    Memo4: TMemo;
    seDist: TJvValidateEdit;
    seDet: TJvValidateEdit;
    seUnitDet: TJvValidateEdit;
    seCollinear: TJvValidateEdit;
    sePntAcc: TJvValidateEdit;
    seRotAcc: TJvValidateEdit;
    TabSheet7: TTabSheet;
    GroupBox9: TGroupBox;
    lbxColors: TListBox;
    shpColor: TShape;
    Label15: TLabel;
    btnColorSelect: TButton;
    edColorName: TLabeledEdit;
    edColorNumber: TJvValidateEdit;
    Label18: TLabel;
    btnColorRestore: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edParametersButtonClick(Sender: TObject);
    procedure cblPluginsClickCheck(Sender: TObject);
    procedure btLDrawClick(Sender: TObject);
    procedure btLDViewClick(Sender: TObject);
    procedure btMLCadClick(Sender: TObject);
    procedure btL3LabClick(Sender: TObject);
    procedure btExternalClick(Sender: TObject);
    procedure lstElementClick(Sender: TObject);
    procedure btnForegroundClick(Sender: TObject);
    procedure btnBackgroundClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btLSynthClick(Sender: TObject);
    procedure btnColorSelectClick(Sender: TObject);
    procedure lbxColorsClick(Sender: TObject);
    procedure edColorNameChange(Sender: TObject);
  private
    SelectedElement: TSynHighlighterAttributes;
    ColorBarList: TStringList;
    procedure ColorButtonChange(ImageColor: TColor; Name, Number: string; Index: Integer);

  public
    IniFileName: string;
    IniSection: string;
    procedure UpdateControls;
    procedure LoadFormValues;
    procedure SaveFormValues;
  end;

var
  frOptions: TfrOptions;

implementation

uses main;

{$R *.dfm}

procedure TfrOptions.UpdateCOntrols;

begin
  if FileExists(frOptions.edLDrawDir.text+'\parts.lst') then begin
    lbLDraw.font.Color:=clGreen;
    lbldraw.Caption:='Found!';
  end
    else begin
      lbLDraw.font.Color:=clRed;
      lbldraw.Caption:='Not found!';
    end;

  if FileExists(frOptions.edLDViewDir.text+'\LDView.exe') then begin
    lbLDView.font.Color:=clGreen;
    lbLDView.Caption:='Found!';
  end
    else begin
      lbLDView.font.Color:=clRed;
      lbLDView.Caption:='Not found!';
    end;

  if FileExists(frOptions.edMLCADDir.text+'\MLCAD.exe') then begin
    lbMLCAD.font.Color:=clGreen;
    lbMLCAD.Caption:='Found!';
  end
    else begin
      lbMLCAD.font.Color:=clRed;
      lbMLCAD.Caption:='Not found!';
    end;

  if FileExists(frOptions.edL3LabDir.text+'\L3Lab.exe') then begin
    lbL3Lab.font.Color:=clGreen;
    lbL3Lab.Caption:='Found!';
  end
    else begin
      lbL3Lab.font.Color:=clRed;
      lbL3Lab.Caption:='Not found!';
    end;

  if FileExists(frOptions.edLSynthDir.text+'\lsynthcp.exe') then begin
    lbLSynth.font.Color:=clGreen;
    lbLSynth.Caption:='Found!';
  end
    else begin
      lbLSynth.font.Color:=clRed;
      lbLSynth.Caption:='Not found!';
    end;


  if trim(frOptions.edExternal.text)='' then lbExternal.Caption:=''
    else
      if FileExists(frOptions.edExternal.text) then begin
        lbExternal.font.Color:=clGreen;
        lbExternal.Caption:='Found!';
      end
        else begin
          lbExternal.font.Color:=clRed;
          lbExternal.Caption:='Not found!';
        end;
end;

procedure TfrOptions.FormShow(Sender: TObject);
begin
  OpenDialog.Filter := 'Executibles (*.*)|*.exe';
  lstElement.ItemIndex := -1;
  SelectedElement := nil;
  shForeground.Brush.Color := clBtnFace;
  shBackground.Brush.Color := clBtnFace;
  UpdateControls;
  PageControl1.ActivePage:=tsExternal;
end;

procedure TfrOptions.PageControl1Change(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrOptions.Button1Click(Sender: TObject);
begin
  frMain.LoadPlugins;
end;

procedure TfrOptions.edParametersButtonClick(Sender: TObject);
begin
  MessageDlg('You can use the following parameters:'+#13#10+
    '%0 will be replaced by the path and filename of the file you are '+#13+#10+
    'just editing,'+#13+#10+'%1 is replaced by the path only,'+#13+#10+
    '%2 will be replaced by the file-name only (without extension),'+#13+#10+
    '%3 is used a place holder for the path and the filename without '+#13+#10+
    'extension.'+#13+#10+'%4, %5, %6, %7 are the same as %0 to %3 except they use the short'+
    #13+#10+'form for paths and file-names that means the 8.3 notation of MS-DOS.',
    mtInformation, [mbOK], 0);
end;

procedure TfrOptions.cblPluginsClickCheck(Sender: TObject);

var pth:string;

begin
  if frOptions.cblPlugins.checked[frOptions.cblPlugins.Itemindex] then
    pth:=ExtractFilePath(Application.ExeName)+'Plugins\'+copy(frOptions.cblPlugins.items[frOptions.cblplugins.Itemindex],1,pos(' -',frOptions.cblPlugins.items[frOptions.cblPlugins.Itemindex])-1)+'.dld'
  else
    pth:=ExtractFIlePath(Application.ExeName)+'Plugins\'+copy(frOptions.cblPlugins.items[frOptions.cblplugins.Itemindex],1,pos(' -',frOptions.cblPlugins.items[frOptions.cblPlugins.Itemindex])-1)+'.dll';
  if (ExtractfileExt(pth)='.dll') then begin
    RenameFile(pth,copy(pth,1,length(pth)-length(extractFileExt(pth)))+'.dld');
    frOptions.cblPlugins.checked[frOptions.cblPlugins.Itemindex]:=false;
  end
    else begin
      RenameFile(pth,copy(pth,1,length(pth)-length(extractFileExt(pth)))+'.dll');
      frOptions.cblPlugins.checked[frOptions.cblPlugins.Itemindex]:=true;
    end;
end;

procedure TfrOptions.btLDrawClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edLdrawDir.Text;
  if SelectDirectory('Choose LDraw Library Location','',strDir) then edLdrawDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btLDViewClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edLDViewDir.Text;
  if SelectDirectory('Choose LDView Location','',strDir) then edLDViewDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btMLCadClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edMLCadDir.Text;
  if SelectDirectory('Choose LDView Location','',strDir) then edMLCadDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btL3LabClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edL3LabDir.Text;
  if SelectDirectory('Choose LDView Location','',strDir) then edL3LabDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btLSynthClick(Sender: TObject);
var strDir:string;
begin
  strDir:=edLSynthDir.Text;
  if SelectDirectory('Choose lynthcp Location','',strDir) then edLSynthDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btExternalClick(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFileDir(edExternal.Text);
  OpenDialog.Title := 'Select Program Location';
  if OpenDialog.Execute then edExternal.Text:=OpenDialog.FileName;
  UpdateControls;
end;

procedure TfrOptions.lstElementClick(Sender: TObject);
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
    shForeground.Brush.Color := SelectedElement.Foreground;
    shBackground.Brush.Color := SelectedElement.Background;
    btnForeGround.Enabled := True;
    btnBackground.Enabled := True;
  end;
end;

procedure TfrOptions.btnForegroundClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if ColorDialog1.Execute then
    begin
      SelectedElement.Foreground := ColorDialog1.Color;
      shForeground.Brush.Color := ColorDialog1.Color;
    end;
end;

procedure TfrOptions.btnBackgroundClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if ColorDialog1.Execute then
    begin
      SelectedElement.Background := ColorDialog1.Color;
      shBackground.Brush.Color := ColorDialog1.Color;
    end;
end;

procedure TfrOptions.btnResetClick(Sender: TObject);

var
  NewHighlighter: TSynLDRSyn;

begin
  NewHighlighter := TSynLDRSyn.Create(nil);
  SynLDRSyn1.Assign(NewHighlighter);
  NewHighLighter.Free;
  lstElement.ItemIndex := -1;
  SelectedElement := nil;
  shForeground.Brush.Color := clBtnFace;
  shBackground.Brush.Color := clBtnFace;
end;

procedure TfrOptions.SaveFormValues;

var
  LDDPini: TMemIniFile;
  i: Integer;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
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
  LDDPini.WriteString(IniSection, 'edSig_Text', edSig.Text);
  LDDPini.WriteFloat(IniSection, 'seDet_Value', seDet.Value);
  LDDPini.WriteFloat(IniSection, 'seUnitDet_Value', seUnitDet.Value);
  LDDPini.WriteFloat(IniSection, 'seDist_Value', seDist.Value);
  LDDPini.WriteFloat(IniSection, 'seCollinear_Value', seCollinear.Value);
  LDDPini.WriteInteger(IniSection, 'sePntAcc_Value', sePntAcc.Value);
  LDDPini.WriteInteger(IniSection, 'seRotAcc_Value', seRotAcc.Value);
  LDDPini.WriteBool(IniSection, 'cboDist_Checked', cboDist.Checked);
  LDDPini.WriteBool(IniSection, 'cboDet_Checked', cboDet.Checked);
  LDDPini.WriteBool(IniSection, 'cboUnitDet_Checked', cboUnitDet.Checked);
  LDDPini.WriteBool(IniSection, 'cboWaitForFinish_Checked', cboWaitForFinish.Checked);
  LDDPini.WriteBool(IniSection, 'cboShowCommand_Checked', cboShowCommand.Checked);
  LDDPini.WriteBool(IniSection, 'cboMarginNumbers_Checked', cboMarginNumbers.Checked);
  LDDPini.WriteInteger(IniSection, 'rgStyle_ItemIndex', rgStyle.ItemIndex);
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
  LDDPini.WriteInteger(IniSection, 'speRightLine_Value', speRightLine.AsInteger);
  LDDPini.WriteInteger(IniSection, 'speMarginWidth_Value', speMarginWidth.AsInteger);

  for i := 0 to 15 do
    LDDPini.WriteString(IniSection, 'lbxColors_Item' + IntToStr(i), ColorBarList[i]);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrOptions.LoadFormValues;
var
  i: Integer;
  SelectedColor: TStringList;
  LDDPini: TMemIniFile;

begin
  ColorBarList := TStringList.Create;
  LDDPini := TMemIniFile.Create(IniFileName);
  edLDrawDir.Text := LDDPini.ReadString('LDraw','BaseDirectory', '');
  edLDViewDir.Text := LDDPini.ReadString(IniSection, 'edLDViewDir_Text', '');
  edMLCadDir.Text := LDDPini.ReadString(IniSection, 'edMLCadDir_Text', '');
  edL3LabDir.Text := LDDPini.ReadString(IniSection, 'edL3LabDir_Text', '');
  edL3LabDir.Text := LDDPini.ReadString(IniSection, 'edL3LabDir_Text', '');
  edLSynthDir.Text := LDDPini.ReadString(IniSection, 'edLSynthDir_Text', '');
  edExternal.Text := LDDPini.ReadString(IniSection, 'edExternal_Text', '');
  edParameters.Text := LDDPini.ReadString(IniSection, 'edParameters_Text', '');
  edEMail.Text := LDDPini.ReadString(IniSection, 'edEmail_Text', '');
  edName.Text := LDDPini.ReadString(IniSection, 'edName_Text', '');
  edSig.Text := LDDPini.ReadString(IniSection, 'edSig_Text', '');
  seDet.Value := LDDPini.ReadFloat(IniSection, 'seDet_Value', 0.01);
  if seDet.Value = 0 then seDet.Value := 0.01;
  seUnitDet.Value := LDDPini.ReadFloat(IniSection, 'seUnitDet_Value', 0.01);
  if seUnitDet.Value = 0 then seUnitDet.Value := 0.01;
  seDist.Value := LDDPini.ReadFloat(IniSection, 'seDist_Value', 0.1);
  if seDist.Value = 0 then seDist.Value := 0.1;
  seCollinear.Value := LDDPini.ReadFloat(IniSection, 'seCollinear_Value', 0.0001);
  if seCollinear.Value = 0 then seCollinear.Value := 0.0001;
  sePntAcc.Value := LDDPini.ReadInteger(IniSection, 'sePntAcc_Value', 4);
  if sePntAcc.Value = 0 then sePntAcc.Value := 4;
  seRotAcc.Value := LDDPini.ReadInteger(IniSection, 'seRotAcc_Value', 4);
  if seRotAcc.Value = 0 then seRotAcc.Value := 4;
  cboDist.Checked := LDDPini.ReadBool(IniSection, 'cboDist_Checked', false);
  cboDet.Checked := LDDPini.ReadBool(IniSection, 'cboDet_Checked', false);
  cboUnitDet.Checked := LDDPini.ReadBool(IniSection, 'cboUnitDet_Checked', false);
  cboWaitForFinish.Checked := LDDPini.ReadBool(IniSection, 'cboWaitForFinish_Checked', false);
  cboShowCommand.Checked := LDDPini.ReadBool(IniSection, 'cboShowCommand_Checked', false);
  cboMarginNumbers.Checked := LDDPini.ReadBool(IniSection, 'cboMarginNumbers_Checked', false);
  rgStyle.ItemIndex := LDDPini.ReadInteger(IniSection, 'rgStyle_ItemIndex', 0);
  SynLDRSyn1.ColorAttri.Background := LDDPini.ReadInteger(IniSection, 'SynLDRSyn1_ColorAttriBackground', SynLDRSyn1.ColorAttri.Background);
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
  speRightLine.AsInteger  := LDDPini.ReadInteger(IniSection, 'speRightLine_Value', 80);
  speMarginWidth.AsInteger := LDDPini.ReadInteger(IniSection, 'speMarginWidth_Value', 30);

  if LDDPini.ReadString(IniSection, 'lbxColors_Item1', 'none') = 'none' then
    ColorBarList.Text := 'Black,0,$00212121' + #13#10 +
                         'Blue,1,$00B23300' + #13#10 +
                         'Green,2,$00148C00' + #13#10 +
                         'Teal,3,$009F9900' + #13#10 +
                         'Red,4,$002600C4' + #13#10 +
                         'Dark_Pink,5,$009566DF' + #13#10 +
                         'Brown,6,$0000205C' + #13#10 +
                         'Gray,7,$00C1C2C1' + #13#10 +
                         'Dark_Gray,8,$00525F63' + #13#10 +
                         'Light_Blue,9,$00DCAB6B' + #13#10 +
                         'Bright_Green,10,$0090EE6B' + #13#10 +
                         'Turquiose,11,$00A7A633' + #13#10 +
                         'Light_Red,12,$007A85FF' + #13#10 +
                         'Pink,13,$00C6A4F9' + #13#10 +
                         'Yellow,14,$0000DCFF' + #13#10 +
                         'White,15,$00FFFFFF'
  else
    for i := 0 to 15 do
      ColorBarList.Add(LDDPini.ReadString(IniSection, 'lbxColors_Item' + IntToStr(i), 'none'));

  SelectedColor := TStringList.Create;
  for i := 0 to 15 do
  begin
    SelectedColor.CommaText := StringReplace(ColorBarList[i], ' ', '_', [rfReplaceAll]);
    if lbxColors.Items.Count < 16 then
      lbxColors.Items.Add(StringReplace(SelectedColor[0], '_', ' ', [rfReplaceAll]));
    ColorButtonChange(StrToInt(SelectedColor[2]),
                      StringReplace(SelectedColor[0], '_', ' ', [rfReplaceAll]),
                      SelectedColor[1], i);
  end;
  SelectedColor.Free;

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
      SelectedColor := TStringList.Create;
      SelectedColor.CommaText := StringReplace(ColorBarList[lbxColors.ItemIndex], ' ', '_', [rfReplaceAll]);
      shpColor.Brush.Color := StrToInt(SelectedColor[2]);
      edColorName.Text := StringReplace(SelectedColor[0], '_', ' ', [rfReplaceAll]);
      edColorNumber.Value := StrToInt(SelectedColor[1]);
      SelectedColor.Free;
    end;
end;

procedure TfrOptions.ColorButtonChange(ImageColor: TColor; Name, Number: string; Index: Integer);

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

  with frMain.tbrColorReplace.Buttons[Index] do
  begin
    ImageIndex := frMain.ilToolBarColor.AddMasked(ColorButtonBitmap, clFuchsia);
    Hint := Name + ' ' + Number;
  end;
  ColorButtonBitmap.Free;
end;

procedure TfrOptions.edColorNameChange(Sender: TObject);
begin
  if lbxColors.ItemIndex >= 0 then
  begin
    ColorBarList[lbxColors.ItemIndex] := edColorName.Text + ',' +
                                         IntToStr(edColorNumber.Value) + ',' +
                                         IntToStr(shpColor.Brush.Color);
    ColorButtonChange(shpColor.Brush.Color, edColorName.Text,
                      IntToStr(edColorNumber.Value), lbxColors.ItemIndex);
    lbxColors.Items[lbxColors.ItemIndex] := edColorName.Text
  end;
end;

end.
