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
  QControls, QComCtrls, QGraphics, Classes, SysUtils, IniFiles;
type
  TfrOptions = class(TForm)
    PageControl1: TPageControl;
    tsExternal: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    cboLDraw: TCheckBox;
    lbLdraw: TLabel;
    Label4: TLabel;
    cboLDView: TCheckBox;
    lbLDVIew: TLabel;
    TabSheet2: TTabSheet;
    cboDist: TCheckBox;
    Label6: TLabel;
    cboDet: TCheckBox;
    Bevel2: TBevel;
    Label2: TLabel;
    cboMLCad: TCheckBox;
    lbMLCAD: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    TabSheet3: TTabSheet;
    Bevel3: TBevel;
    Label8: TLabel;
    cblPlugins: TCheckListBox;
    Label9: TLabel;
    Button1: TBitBtn;
    ImageList1: TImageList;
    TabSheet1: TTabSheet;
    Label11: TLabel;
    cboExternal: TCheckBox;
    lbExternal: TLabel;
    Label10: TLabel;
    cboWaitForFinish: TCheckBox;
    cboShowCommand: TCheckBox;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Bevel5: TBevel;
    Label15: TLabel;
    edName: TEdit;
    edSig: TEdit;
    edEmail: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    lbL3Lab: TLabel;
    cboL3Lab: TCheckBox;
    rgStyle: TRadioGroup;
    edLdrawDir: TEdit;
    edLDViewDir: TEdit;
    edMLCadDir: TEdit;
    edL3LabDir: TEdit;
    seDist: TMaskEdit;
    seDet: TMaskEdit;
    edExternal: TEdit;
    Bevel4: TBevel;
    edParameters: TEdit;
    btLDraw: TBitBtn;
    btLDView: TBitBtn;
    btMLCad: TBitBtn;
    btL3Lab: TBitBtn;
    OpenDialog: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edParametersButtonClick(Sender: TObject);
    procedure cblPluginsClickCheck(Sender: TObject);
    procedure btLDrawClick(Sender: TObject);
    procedure btLDViewClick(Sender: TObject);
    procedure btMLCadClick(Sender: TObject);
    procedure btL3LabClick(Sender: TObject);
  private
    { Private declarations }
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
    cboLDraw.checked:=true;
    lbLDraw.font.Color:=clGreen;
    lbldraw.Caption:='Found!';
  end
    else begin
      cboLDraw.checked:=false;
      lbLDraw.font.Color:=clRed;
      lbldraw.Caption:='Not found!';
    end;

  if FileExists(frOptions.edLDViewDir.text+'\LDView.exe') then begin
    cboLDVIEW.checked:=true;
    lbLDView.font.Color:=clGreen;
    lbLDView.Caption:='Found!';
  end
    else begin
      cboLDView.checked:=false;
      lbLDView.font.Color:=clRed;
      lbLDView.Caption:='Not found!';
    end;

  if FileExists(frOptions.edMLCADDir.text+'\MLCAD.exe') then begin
    cboMLCAD.checked:=true;
    lbMLCAD.font.Color:=clGreen;
    lbMLCAD.Caption:='Found!';
  end
    else begin
      cboMLCAD.checked:=false;
      lbMLCAD.font.Color:=clRed;
      lbMLCAD.Caption:='Not found!';
    end;

  if FileExists(frOptions.edL3LabDir.text+'\L3Lab.exe') then begin
    cboL3Lab.checked:=true;
    lbL3Lab.font.Color:=clGreen;
    lbL3Lab.Caption:='Found!';
  end
    else begin
      cboL3Lab.checked:=false;
      lbL3Lab.font.Color:=clRed;
      lbL3Lab.Caption:='Not found!';
    end;


  if trim(frOptions.edExternal.text)='' then lbExternal.Caption:=''
    else
      if FileExists(frOptions.edExternal.text) then begin
        cboExternal.checked:=true;
        lbExternal.font.Color:=clGreen;
        lbExternal.Caption:='Found!';
      end
        else begin
          cboExternal.checked:=false;
          lbExternal.font.Color:=clRed;
          lbExternal.Caption:='Not found!';
        end;
end;

procedure TfrOptions.FormShow(Sender: TObject);
begin
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
  LDDPini.WriteString(IniSection, 'edDet_Text', seDet.Text);
  LDDPini.WriteString(IniSection, 'edDist_Text', seDist.Text);
  LDDPini.WriteBool(IniSection, 'cboDist_Checked', cboDist.Checked);
  LDDPini.WriteBool(IniSection, 'cboDet_Checked', cboDet.Checked);
  LDDPini.WriteBool(IniSection, 'cboWaitForFinish_Checked', cboWaitForFinish.Checked);
  LDDPini.WriteBool(IniSection, 'cboShowCommand_Checked', cboShowCommand.Checked);
  LDDPini.WriteInteger(IniSection, 'rgStyle_ItemIndex', rgStyle.ItemIndex);
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
  seDet.Text := LDDPini.ReadString(IniSection, 'edDet_Text', '');
  seDist.Text := LDDPini.ReadString(IniSection, 'edDist_Text', '');
  cboDist.Checked := LDDPini.ReadBool(IniSection, 'cboDist_Checked', false);
  cboDet.Checked := LDDPini.ReadBool(IniSection, 'cboDet_Checked', false);
  cboWaitForFinish.Checked := LDDPini.ReadBool(IniSection, 'cboWaitForFinish_Checked', false);
  cboShowCommand.Checked := LDDPini.ReadBool(IniSection, 'cboShowCommand_Checked', false);
  rgStyle.ItemIndex := LDDPini.ReadInteger(IniSection, 'rgStyle_ItemIndex', 0);
  LDDPini.Free;
end;

end.
