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
  {$IFDEF MSWINDOWS}
  windowsspecific,
  {$ENDIF}
  QDialogs, QForms, QImgList, QExtCtrls, QStdCtrls, QCheckLst, QMask, QButtons,
  QControls, QComCtrls, QGraphics, Classes, SysUtils, IniFiles, QSynEdit,
  QSynMemo, QSynEditHighlighter, QSynHighlighterLDraw;
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
    seDet: TMaskEdit;
    seDist: TMaskEdit;
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
    sePntAcc: TMaskEdit;
    seRotAcc: TMaskEdit;
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
    seCollinear: TMaskEdit;
    Label6: TLabel;
    Memo3: TMemo;
    GroupBox7: TGroupBox;
    TabSheet6: TTabSheet;
    cboMarginNumbers: TCheckBox;
    GroupBox8: TGroupBox;
    speMarginWidth: TSpinEdit;
    Label7: TLabel;
    speRightLine: TSpinEdit;
    Label8: TLabel;
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
  private
    SelectedElement: TSynHighlighterAttributes;
  public
    IniFileName: string;
    IniSection: string;
    procedure UpdateCOntrols;
    procedure LoadFormValues;
    procedure SaveFormValues;
  end;

var
  frOptions: TfrOptions;

implementation

uses main;

{$R *.xfm}

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
  {$IFDEF MSWINDOWS}
  OpenDialog.Filter := 'Executibles (*.*)|*.exe';
  {$ELSE}
  OpenDialog.Filter := 'Executibles (*)|*';
  {$ENDIF}
  lstElement.ItemIndex := -1;
  SelectedElement := nil;
  shForeground.Color := clButton;
  shBackground.Color := clButton;
  UpdateCOntrols;
  PageControl1.ActivePage:=tsExternal;
end;

procedure TfrOptions.PageControl1Change(Sender: TObject);
begin
  UpdateCOntrols;
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
var strDir:Widestring;
begin
  strDir:=edLdrawDir.Text;
  if SelectDirectory('Choose LDraw Library Location','',strDir) then edLdrawDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btLDViewClick(Sender: TObject);
var strDir:Widestring;
begin
  strDir:=edLDViewDir.Text;
  if SelectDirectory('Choose LDView Location','',strDir) then edLDViewDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btMLCadClick(Sender: TObject);
var strDir:Widestring;
begin
  strDir:=edMLCadDir.Text;
  if SelectDirectory('Choose LDView Location','',strDir) then edMLCadDir.Text:=strDir;
  UpdateControls;
end;

procedure TfrOptions.btL3LabClick(Sender: TObject);
var strDir:Widestring;
begin
  strDir:=edL3LabDir.Text;
  if SelectDirectory('Choose LDView Location','',strDir) then edL3LabDir.Text:=strDir;
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
    shForeground.Color := SelectedElement.Foreground;
    shBackground.Color := SelectedElement.Background;
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
      shForeground.Color := ColorDialog1.Color;
    end;
end;

procedure TfrOptions.btnBackgroundClick(Sender: TObject);
begin
  if Assigned(SelectedElement) then
    if ColorDialog1.Execute then
    begin
      SelectedElement.Background := ColorDialog1.Color;
      shBackground.Color := ColorDialog1.Color;
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
  shForeground.Color := clButton;
  shBackground.Color := clButton;
end;

procedure TfrOptions.SaveFormValues;
var
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
  LDDPini.EraseSection(IniSection);
  if frOptions.edLDrawDir.Text <> '' then
    LDDPini.WriteString('LDraw','BaseDirectory',frOptions.edLDrawDir.Text);
  LDDPini.WriteString(IniSection, 'edLDViewDir_Text', edLDViewDir.Text);
  LDDPini.WriteString(IniSection, 'edMLCadDir_Text', edMLCadDir.Text);
  LDDPini.WriteString(IniSection, 'edL3LabDir_Text', edL3LabDir.Text);
  LDDPini.WriteString(IniSection, 'edL3LabDir_Text', edL3LabDir.Text);
  LDDPini.WriteString(IniSection, 'edExternal_Text', edExternal.Text);
  LDDPini.WriteString(IniSection, 'edParameters_Text', edParameters.Text);
  LDDPini.WriteString(IniSection, 'edEmail_Text', edEMail.Text);
  LDDPini.WriteString(IniSection, 'edName_Text', edName.Text);
  LDDPini.WriteString(IniSection, 'edSig_Text', edSig.Text);
  LDDPini.WriteString(IniSection, 'seDet_Text', seDet.Text);
  LDDPini.WriteString(IniSection, 'seDist_Text', seDist.Text);
  LDDPini.WriteString(IniSection, 'seCollinear_Text', seCollinear.Text);
  LDDPini.WriteString(IniSection, 'sePntAcc_Text', sePntAcc.Text);
  LDDPini.WriteString(IniSection, 'seRotAcc_Text', seRotAcc.Text);
  LDDPini.WriteBool(IniSection, 'cboDist_Checked', cboDist.Checked);
  LDDPini.WriteBool(IniSection, 'cboDet_Checked', cboDet.Checked);
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
  LDDPini.WriteInteger(IniSection, 'speRightLine_Value', speRightLine.Value);
  LDDPini.WriteInteger(IniSection, 'speMarginWidth_Value', speMarginWidth.Value);
  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrOptions.LoadFormValues;
var
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
  edLDrawDir.Text := LDDPini.ReadString('LDraw','BaseDirectory', '');
  edLDViewDir.Text := LDDPini.ReadString(IniSection, 'edLDViewDir_Text', '');
  edMLCadDir.Text := LDDPini.ReadString(IniSection, 'edMLCadDir_Text', '');
  edL3LabDir.Text := LDDPini.ReadString(IniSection, 'edL3LabDir_Text', '');
  edL3LabDir.Text := LDDPini.ReadString(IniSection, 'edL3LabDir_Text', '');
  edExternal.Text := LDDPini.ReadString(IniSection, 'edExternal_Text', '');
  edParameters.Text := LDDPini.ReadString(IniSection, 'edParameters_Text', '');
  edEMail.Text := LDDPini.ReadString(IniSection, 'edEmail_Text', '');
  edName.Text := LDDPini.ReadString(IniSection, 'edName_Text', '');
  edSig.Text := LDDPini.ReadString(IniSection, 'edSig_Text', '');
  seDet.Text := LDDPini.ReadString(IniSection, 'seDet_Text', '0.1');
  if Trim(seDet.Text) = '' then seDet.Text := '0.1';
  seDist.Text := LDDPini.ReadString(IniSection, 'seDist_Text', '0.001');
  if Trim(seDist.Text) = '' then seDist.Text := '0.001';
  seCollinear.Text := LDDPini.ReadString(IniSection, 'seCollinear_Text', '0.0001');
  if Trim(seCollinear.Text) = '' then seCollinear.Text := '0.0001';
  sePntAcc.Text := LDDPini.ReadString(IniSection, 'sePntAcc_Text', '4');
  if Trim(sePntAcc.Text) = '' then sePntAcc.Text := '4';
  seRotAcc.Text := LDDPini.ReadString(IniSection, 'seRotAcc_Text', '4');
  if Trim(seRotAcc.Text) = '' then seRotAcc.Text := '4';
  cboDist.Checked := LDDPini.ReadBool(IniSection, 'cboDist_Checked', false);
  cboDet.Checked := LDDPini.ReadBool(IniSection, 'cboDet_Checked', false);
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
  speRightLine.Value := LDDPini.ReadInteger(IniSection, 'speRightLine_Value', 80);
  speMarginWidth.Value := LDDPini.ReadInteger(IniSection, 'speMarginWidth_Value', 30);
  LDDPini.Free;
end;

end.
