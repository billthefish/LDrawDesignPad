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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 ImgList, JvEdit, JvFloatEdit, JvPlacemnt, ExtCtrls, StdCtrls, Buttons,
  CheckLst, JvToolEdit, ComCtrls, Mask;

type
  TfrOptions = class(TForm)
    PageControl1: TPageControl;
    tsExternal: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edL3PDir: TJvDirectoryEdit;
    Label1: TLabel;
    cboL3P: TCheckBox;
    fstOptions: TJvFormStorage;
    Bevel1: TBevel;
    lbL3P: TLabel;
    Label3: TLabel;
    edLDrawDir: TJvDirectoryEdit;
    cboLDraw: TCheckBox;
    lbLdraw: TLabel;
    Label4: TLabel;
    edLDViewDir: TJvDirectoryEdit;
    cboLDView: TCheckBox;
    lbLDVIew: TLabel;
    TabSheet2: TTabSheet;
    cboDist: TCheckBox;
    Label6: TLabel;
    cboDet: TCheckBox;
    Bevel2: TBevel;
    Label2: TLabel;
    edMLCadDir: TJvDirectoryEdit;
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
    Bevel4: TBevel;
    Label11: TLabel;
    cboExternal: TCheckBox;
    lbExternal: TLabel;
    edExternal: TJvFilenameEdit;
    Label10: TLabel;
    cboWaitForFinish: TCheckBox;
    edParameters: TJvComboEdit;
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
    edL3LabDir: TJvDirectoryEdit;
    lbL3Lab: TLabel;
    cboL3Lab: TCheckBox;
    seDist: TJvFloatEdit;
    seDet: TJvFloatEdit;
    rgStyle: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure edL3PDirExit(Sender: TObject);
    procedure edLDrawDirAfterDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure cboL3PClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edParametersButtonClick(Sender: TObject);
    procedure cblPluginsClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateCOntrols;
  end;

var
  frOptions: TfrOptions;

implementation

uses main;

{$R *.dfm}

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

  if FileExists(frOptions.edL3PDir.text+'\L3P.exe') then begin
    cboL3P.checked:=true;
    lbL3P.font.Color:=clGreen;
    lbL3P.Caption:='Found!';
  end
    else begin
      cboL3P.checked:=false;
      lbL3P.font.Color:=clRed;
      lbL3P.Caption:='Not found!';
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

procedure TfrOptions.edL3PDirExit(Sender: TObject);
begin
  UpdateCOntrols;
end;

procedure TfrOptions.edLDrawDirAfterDialog(Sender: TObject;
  var Name: String; var Action: Boolean);
begin
   UpdateCOntrols;
end;

procedure TfrOptions.cboL3PClick(Sender: TObject);
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

end.
