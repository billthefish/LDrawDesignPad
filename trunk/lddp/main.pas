
{These sources are copyrighted (C) by Carsten Schmitz and the LDDP project contributors.

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
unit main;

interface

uses
  {$IFDEF MSWINDOWS}
  windowsspecific, registry,
  {$ELSEIF LINUX}
  linuxspecific,
  {$IFEND}
  QDialogs, QSynEditPrint, QSynEditHighlighter, QForms, SysUtils, QSynedit,
  QSynHighlighterLDraw, QExtCtrls, QMenus, QImgList, QStdActns, Types,
  QSynHighlighterCpp, QSynHighlighterPas, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Classes, QActnList, QTypes,
  QComCtrls, QControls, Inifiles, splash, QSyneditTypes, QGraphics,
  QSyneditKeyCmds, l3check, DATModel, DATBase;


type TLDrawArray= record
  typ:integer;
  color:integer;
  xyz:array[1..4,1..3] of Extended;
  partname:string;
end;

type
  TfrMain = class(TForm)
    acCommentBlock: TAction;
    acCommentBlock1: TMenuItem;
    acDecIndent: TAction;
    acEditCopy: TEditCopy;
    acEditCut: TEditCut;
    acEditingToolbar: TAction;
    acEditOptions: TAction;
    acEditPaste: TEditPaste;
    acExternalsToolbar: TAction;
    acFileClose: TWindowClose;
    acFileExit: TAction;
    acFileNew: TAction;
    acFileRevert: TAction;
    acFileSave: TAction;
    acFileToolbar: TAction;
    acFind: TAction;
    acFindNext: TAction;
    acHighlightCpp: TAction;
    acHighlightLdraw: TAction;
    acHighlightPascal: TAction;
    acHomepage: TAction;
    acincIndent: TAction;
    acInline: TAction;
    acInsertBFC: TAction;
    acInsertPartHeader: TAction;
    acInsertUpdateLine: TAction;
    acL3Lab: TAction;
    acL3PCheck: TAction;
    acLDView: TAction;
    acMLCad: TAction;
    acMRUList: TAction;
    acOptions: TAction;
    acRedo: TAction;
    acReplace: TAction;
    acReplaceColor: TAction;
    acSearchToolbar: TAction;
    acSelectAll: TAction;
    ActionList1: TActionList;
    acTrimLines: TAction;
    acUncommentBlock: TAction;
    acUncommentBlock1: TMenuItem;
    acUndo: TAction;
    acUserDefined: TAction;
    acWindowsToolbar: TAction;
    BFCStatement1: TMenuItem;
    btPolling: TToolButton;
    C1: TMenuItem;
    ChangeColor1: TMenuItem;
    ControlBar1: TControlBar;
    Cut1: TMenuItem;
    Editing1: TMenuItem;
    ExternalPrograms2: TMenuItem;
    Files1: TMenuItem;
    Fixallerrors1: TMenuItem;
    Fixerror1: TMenuItem;
    HelpAbout: TAction;
    Highlighting1: TMenuItem;
    ilToolBarColor: TImageList;
    InlinePart1: TMenuItem;
    Insert2: TMenuItem;
    Ldraw1: TMenuItem;
    MenuItem2: TMenuItem;
    mnPollL3Lab: TMenuItem;
    mnPollToSelected: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    Pascal1: TMenuItem;
    Paste1: TMenuItem;
    Plugins3: TMenuItem;
    pmL3P: TPopupMenu;
    pmMemo: TPopupMenu;
    pmPolling: TPopupMenu;
    pmToolbars: TPopupMenu;
    Pollevery30secs1: TMenuItem;
    Pollevery3sec1: TMenuItem;
    Pollevery5sec1: TMenuItem;
    SearchandReplace1: TMenuItem;
    StandardPartHeader2: TMenuItem;
    StatusBar: TStatusBar;
    SynEditPrint: TSynEditPrint;
    SynLDRSyn: TSynLDRSyn;
    tmPoll: TTimer;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton3: TToolButton;
    ToolButton30: TToolButton;
    ToolButton32: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    TrimLines2: TMenuItem;
    UpdateHeader2: TMenuItem;
    acWindowCascade: TWindowCascade;
    Windows1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    acFileOpen: TAction;
    acFileSaveAs: TAction;
    acFilePrint: TAction;
    acFileCloseAll: TAction;
    acWindowTile: TAction;
    http: TIdHTTP;
    acCheckUpdate: TAction;
    SynPasSyn: TSynPasSyn;
    SynCppSyn: TSynCppSyn;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    CloseAll1: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    Print1: TMenuItem;
    Revert1: TMenuItem;
    N2: TMenuItem;
    LastOpen1: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    Redo1: TMenuItem;
    N4: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    SelectAll1: TMenuItem;
    N13: TMenuItem;
    Comment1: TMenuItem;
    Uncomment1: TMenuItem;
    N12: TMenuItem;
    Toolbars: TMenuItem;
    FilesToolbar: TMenuItem;
    Edit2: TMenuItem;
    SearchReplace1: TMenuItem;
    Windows2: TMenuItem;
    ExternalPrograms3: TMenuItem;
    N3: TMenuItem;
    miMiscOptions: TMenuItem;
    miEditorOptions: TMenuItem;
    Search1: TMenuItem;
    Find1: TMenuItem;
    FindNext1: TMenuItem;
    Replace1: TMenuItem;
    ChangeColor2: TMenuItem;
    Tools1: TMenuItem;
    Plugins1: TMenuItem;
    Nonefound1: TMenuItem;
    Insert1: TMenuItem;
    StandardPartHeader1: TMenuItem;
    UpdateHeader1: TMenuItem;
    ExternalPrograms1: TMenuItem;
    L3PCheck1: TMenuItem;
    acLDView1: TMenuItem;
    acMLCad1: TMenuItem;
    acL3Lab1: TMenuItem;
    UserDefinedProgram1: TMenuItem;
    SyntaxHighlighting1: TMenuItem;
    Ldraw2: TMenuItem;
    C2: TMenuItem;
    Pascal2: TMenuItem;
    N6: TMenuItem;
    TrimLines1: TMenuItem;
    InlinePart2: TMenuItem;
    Window1: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    LDDPHomepage1: TMenuItem;
    CheckforUpdate1: TMenuItem;
    N7: TMenuItem;
    ToolButton7: TToolButton;
    ReverseWinding1: TMenuItem;
    acReverseWinding: TAction;

    procedure acHomepageExecute(Sender: TObject);
    procedure acL3LabExecute(Sender: TObject);
    procedure acLDViewExecute(Sender: TObject);
    procedure acMLCadExecute(Sender: TObject);
    procedure acUserDefinedExecute(Sender: TObject);
    procedure acFilePrintExecute(Sender: TObject);
    procedure PluginClick(Sender: TObject);
    procedure acEditOptionsExecute(Sender: TObject);
    procedure acOptionsExecute(Sender: TObject);

    procedure acInlineExecute(Sender: TObject);
    procedure acCommentBlockExecute(Sender: TObject);
    procedure acDecIndentExecute(Sender: TObject);
    procedure acEditCopyExecute(Sender: TObject);
    procedure acEditCutExecute(Sender: TObject);
    procedure acEditingToolbarExecute(Sender: TObject);
    procedure acEditPasteExecute(Sender: TObject);
    procedure acExternalsToolbarExecute(Sender: TObject);
    procedure acFileExitExecute(Sender: TObject);
    procedure acFileNewExecute(Sender: TObject);
    procedure acFileRevertExecute(Sender: TObject);
    procedure acFileSaveExecute(Sender: TObject);
    procedure acFileToolbarExecute(Sender: TObject);
    procedure acFindExecute(Sender: TObject);
    procedure acFindNextExecute(Sender: TObject);
    procedure acFindNextUpdate(Sender: TObject);
    procedure acHighlightCppExecute(Sender: TObject);
    procedure acHighlightLdrawExecute(Sender: TObject);
    procedure acHighlightPascalExecute(Sender: TObject);
    procedure acincIndentExecute(Sender: TObject);
    procedure acInsertBFCExecute(Sender: TObject);
    procedure acInsertPartHeaderExecute(Sender: TObject);
    procedure acInsertUpdateLineExecute(Sender: TObject);
    procedure acL3PCheckExecute(Sender: TObject);
    procedure acMRUListExecute(Sender: TObject);
    procedure acRedoExecute(Sender: TObject);
    procedure acReplaceColorExecute(Sender: TObject);
    procedure acReplaceExecute(Sender: TObject);
    procedure acSearchToolbarExecute(Sender: TObject);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acToolbarUpdate(Sender: TObject);
    procedure acTrimLinesExecute(Sender: TObject);
    procedure acUncommentBlockExecute(Sender: TObject);
    procedure acUndoExecute(Sender: TObject);
    procedure acWindowsToolbarExecute(Sender: TObject);
    procedure btPollingClick(Sender: TObject);
    procedure Fixallerrors1Click(Sender: TObject);
    procedure Fixerror1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HelpAboutExecute(Sender: TObject);
    procedure mnPollL3LabClick(Sender: TObject);
    procedure mnPollToSelectedClick(Sender: TObject);
    procedure pmL3PPopup(Sender: TObject);
    procedure Pollevery30secs1Click(Sender: TObject);
    procedure Pollevery3sec1Click(Sender: TObject);
    procedure Pollevery5sec1Click(Sender: TObject);
    procedure tmPollTimer(Sender: TObject);
    procedure acFileSaveAsExecute(Sender: TObject);
    procedure acFileOpenExecute(Sender: TObject);
    procedure acFileCloseAllExecute(Sender: TObject);
    procedure acWindowCascadeExecute(Sender: TObject);
    procedure acWindowTileExecute(Sender: TObject);
    procedure acReverseWindingExecute(Sender: TObject);

  private
    { Private declarations }
    initialized:boolean;
    fSearchFromCaret: boolean;
    procedure AppInitialize;
    procedure CreateMDIChild(const CaptionName: string;new:boolean);


  public
    { Public declarations }
    strChangedCompleteText:string;
    strChangedSelText:string;
    slPlugins:TStringList;
    lastfind:integer;
    strIniName: string;
    LDDPini: TMemIniFile;


    procedure LoadPlugins(AppInit:Boolean = false);

    procedure DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
    function  GetTmpFileName: String;
    procedure LoadFile(fname:string);
    procedure ShowSearchReplaceDialog(AReplace: boolean);
    procedure UpdateCOntrols(closing:boolean);
    procedure UpdateMRU(NewFileName: TFileName= '');
  end;


var
  frMain: TfrMain;
  splashscreen: TfrSplash;

const
  LDDPLINUXVERSION = '1.0.4'; //hard-coded Linux version, for now

implementation

{$R *.xfm}

uses
  childwin,
  about, options, editoptions, colordialog,
  dlgconfirmreplace, dlgsearchtext, dlgreplacetext;

var
  gbSearchBackwards: boolean;
  gbSearchCaseSensitive: boolean;
  gbSearchFromCaret: boolean;
  gbSearchSelectionOnly: boolean;
  gbSearchTextAtCaret: boolean;
  gbSearchWholeWords: boolean;

  gsSearchText: string;
  gsSearchTextHistory: string;
  gsReplaceText: string;
  gsReplaceTextHistory: string;

resourcestring
  STextNotFound = 'Text not found';

procedure TfrMain.UpdateControls(closing:boolean);
{---------------------------------------------------------------------
Description: Updated the action controls depending on the EditorCHilds
Parameter: none
Return value: none
----------------------------------------------------------------------}
var mdicount:integer;
begin
  mdicount:=mdiChildcount;
  if closing then mdicount:=mdicount-1;
  acFileCloseAll.Enabled := mdicount>0;
  acFileSaveAs.Enabled:=mdicount>0;
  acFilePrint.Enabled:=mdicount>0;
  acFileSave.Enabled:=mdicount>0;
  acFileRevert.Enabled:=mdicount>0;
  acl3pcheck.Enabled:=mdicount>0;
  acldview.Enabled:=mdicount>0;
  acl3Lab.Enabled:=mdicount>0;
  acmlcad.Enabled:=mdicount>0;
  acEditCut.Enabled:=mdicount>0;
  acEditCopy.Enabled:=mdicount>0;
  acEditPaste.Enabled:=mdicount>0;
  btPolling.Enabled:=mdicount>0;
  acSelectAll.Enabled:=mdicount>0;
  acFind.Enabled:=mdicount>0;
  acReplace.Enabled:=mdicount>0;
  Plugins1.Enabled:=mdicount>0;
  Insert1.Enabled:=mdicount>0;
  Search1.Enabled := mdicount>0;
  Tools1.Enabled := mdicount>0;
  Window1.Enabled := mdicount>0;
  acCommentBlock.Enabled:=mdicount>0;
  acUnCommentBlock.Enabled:=mdicount>0;
  acIncIndent.Enabled:=mdicount>0;
  acDecIndent.Enabled:=mdicount>0;
  acTrimLines.Enabled:=mdicount>0;
  acReverseWinding.Enabled := mdicount>0;
  acUndo.Enabled:=(mdicount>0) and (activeMDICHild as TfrEditorChild).Memo.CanUndo;
  acRedo.Enabled:=(mdicount>0) and (activeMDICHild as TfrEditorChild).Memo.CanRedo;
  acUserDefined.Enabled:=mdicount>0;
  if mdicount=0 then acInline.enabled:=false;
  acReplaceColor.enabled:=mdicount>0;
  acWindowTile.enabled:=mdicount>0;
end;

procedure tfrMain.LoadFile(fname:string);
{---------------------------------------------------------------------
Description: Loads given Filename into the active MDI editor child
Parameter: fname: Filename
Return value: none
----------------------------------------------------------------------}
var
  sr:TsearchRec;

begin
  if FileExists(fName) then
    with (activeMDICHild as TfrEditorChild) do
    begin
      FindFirst(fname, faAnyFile, SR);
      filedatetime:=FileDateToDateTime(SR.time);
      FindClose(sr);
      Memo.Lines.LoadFromFile(fName);
      Memo.modified:=false;
      updatecontrols;
    end
  else
     MessageDlg('File '''+fname+''' not found!', mtError, [mbOK], 0);
end;

procedure TfrMain.CreateMDIChild(const CaptionName: string; new:boolean);
{---------------------------------------------------------------------
Description: Creates a new MDI child
Parameter: new: if new is false, then File 'name' is loaded automatically
           name: name of the child - if you load an existing file 'name' MUST
                 be the path and filename of  that file
Return value: none
----------------------------------------------------------------------}
var
  Child: TfrEditorChild;
  FileExt: string;

begin
  { create a new MDI child window }
  Child := TfrEditorChild.Create(Application);
  with Child do
  begin
    Caption := CaptionName;
    Tag := 1;
    pnInfo.height:=1;
    if not new then
    begin
      Tag := 0;
      FileExt := LowerCase(ExtractFileExt(name));
      if (FileExt = '.c') or (FileExt = '.cpp') or
         (FileExt = '.h') or (FileExt = '.hpp') then
        Memo.Highlighter:=SynCppSyn
      else if (FileExt = '.pas') or (FileExt = '.dpr') then
        Memo.Highlighter:=SynPasSyn;
      LoadFile(CaptionName);
    end;
  end;
  UpdateControls(false);
end;

procedure TfrMain.FormDblClick(Sender: TObject);
begin
  acFileOpen.Execute;
end;

procedure TfrMain.acFileNewExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Creates a new untitled Editor child window
Parameter: Standard
Return value: none
----------------------------------------------------------------------}
begin
  CreateMDIChild('Untitled' + IntToStr(MDIChildCount + 1),true);
end;

procedure TfrMain.acFileOpenExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Opens chosen existing filenames in a new editor child windows
Parameter: Standard
Return value: none
----------------------------------------------------------------------}

var
  i: Integer;

begin
  if OpenDialog1.Execute then
  begin
    for i:=0 to OpenDialog1.Files.Count - 1 do
    begin
      CreateMDIChild(OpenDialog1.Files[i], false);
      UpdateMRU(OpenDialog1.Files[i]);
    end;
  end;
end;

procedure TfrMain.HelpAboutExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Show 'About' Box
Parameter: Standard
Return value: none
----------------------------------------------------------------------}
begin
  frAboutBox.ShowModal;
end;

procedure TfrMain.acFileExitExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Close application
Parameter: fname: Standard
Return value: none
----------------------------------------------------------------------}
begin
  Close;
end;

procedure TfrMain.acMRUListExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Opens a file from the MRU Manager
Parameter: Standard
Return value: none
----------------------------------------------------------------------}
begin
  if FileExists((Sender as TMenuItem).Caption) then
  begin
    CreateMDIChild((Sender as TMenuItem).Caption , false);
    ActiveMDIChild.Tag := 0;
  end
  else
    MessageDlg('File '''+ (Sender as TMenuItem).Caption +''' not found!', mtError, [mbOK], 0);
end;


procedure TfrMain.acFileSaveExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Saves a file to disk. If window is untitled it executes 'SaveAs' procedure
             else it saves last savetime to check for changes outside editor
Parameter: FileTime : Standard
Return value: None
----------------------------------------------------------------------}
var sr:TsearchRec;
begin
  if ActiveMDIChild.Tag > 0 then acFileSaveAs.Execute
    else
    begin
      (activeMDICHild as TfrEditorChild).memo.lines.SaveToFile(activeMDICHild.caption);
      (activeMDICHild as TfrEditorChild).memo.Modified:=false;
      FindFirst(activeMDICHild.caption, faAnyFile, SR);
      (activeMDICHild as TfrEditorChild).filedatetime:=FileDateToDateTime(SR.Time);
      FindClose(sr);
    end;
end;

procedure TfrMain.acFileSaveAsExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Saves a file to disk after asking for filename
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  SaveDialog1.FileName := ActiveMDIChild.Caption;
  if SaveDialog1.Execute then
  begin
    ActiveMDIChild.caption := SaveDialog1.FileName;
    if ActiveMDIChild.Tag > 0 then UpdateMRU(SaveDialog1.FileName);
    ActiveMDIChild.Tag := 0;
    acFileSaveExecute(Sender);
  end;
end;

procedure TfrMain.FormShow(Sender: TObject);
{---------------------------------------------------------------------
Description: if app starts for first time this initializes application
             and updates controls
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  if not initialized then
  begin
    AppInitialize;
    initialized:=true;
  end;
  UpdateControls( false);
end;

Procedure TfrMain.AppInitialize;
{---------------------------------------------------------------------
Description: Initializes Application:
             1.) Show Splash
             2.) Save Installdir (for plugins)
             3.) Save no. of items in empty plugin list in pmmemo.tag
             4.) Loads plugins
             5.) assumes any params are files to load and loads them
Parameter: None
Return value: None
----------------------------------------------------------------------}
var
  i:integer;
  {$IFDEF MSWINDOWS}
  regT:TRegistry;
  {$ENDIF}
begin
  SplashScreen := TfrSplash.Create(Application);
  try
    SplashScreen.lbState.Caption:='Initializing plugins...';
    SplashScreen.show;
    SplashScreen.update;
    screen.cursor:=-11;

    {$IFDEF MSWINDOWS}
      strIniName := WindowsDir + '\LDraw.ini';
    {$ELSE}
      strIniName := ExtractFilePath(Application.ExeName) + 'LDraw.ini';
    {$ENDIF}

    LDDPini := TMemIniFile.Create(strIniName);
    frOptions.edLDrawDir.Text := LDDPini.ReadString('LDraw','BaseDirectory','');
    LDDPini.Free;

    frOptions.IniFileName := strIniName;
    frEditOptions.IniFileName := strIniName;
    frOptions.IniSection := 'LDDP Options';
    frEditOptions.IniSection := 'LDDP Edit Options';
    frOptions.LoadFormValues;
    frEditOptions.LoadFormValues;

    {$IFDEF MSWINDOWS}
      regT:=Tregistry.create;
      regt.OpenKey('Software\Waterproof Productions\LDDesignPad',true);
      regt.WriteString('InstallDir', application.ExeName);
      regt.free;
      slPlugins:=TStringlist.create;
      LoadPlugins(true);
    {$ENDIF}

    UpdateMRU;

    // Set initial directory to that of the last opened file
    // (but only if a previous file is listed)
    if LastOpen1.count > 0 then
    OpenDialog1.InitialDir := ExtractFileDir(LastOpen1[0].Caption);


    SynLDRSyn.Assign(frEditOptions.SynLDRSyn1);
    pmMemo.tag:=pmMemo.items.count;
    if paramcount>0 then
      for i:=1 to paramcount do CreateMDIChild(paramstr(i),false);
  finally
    sleep(1500);
    screen.cursor:=0;
    SplashScreen.free;
  end;
end;

procedure TfrMain.acFileRevertExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Reloads active MDI child loosing any changes
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  if MessageDlg('Reload last saved version?'+#13+#10+'All changes will be lost!', mtConfirmation, [mbYes, mbNo], 0)=mrYes
    then LoadFile(activeMDICHild.caption);
end;

procedure TfrMain.FormCreate(Sender: TObject);
{---------------------------------------------------------------------
Description: -Setting standard Separators for other OS languages than english
             -creates Drag and Drop handle
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  DecimalSeparator:='.';
  ThousandSeparator:=',';
end;

procedure TfrMain.acEditCutExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Cut text from actual editor window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

begin
 (activeMDICHild as TfrEditorChild).memo.CutToClipboard;
end;

procedure TfrMain.acEditCopyExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Copy text from actual editor window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 (activeMDICHild as TfrEditorChild).memo.CopyToClipboard;
end;

procedure TfrMain.acEditPasteExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Paste text into actual editor window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).memo.PasteFromClipboard;
end;

procedure TfrMain.acFindExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute Find Dialogue
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  ShowSearchReplaceDialog(FALSE);
end;


procedure TfrMain.acReplaceExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: ExeCute Replace Dialogue
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  ShowSearchReplaceDialog(TRUE);
end;


Function TfrMain.GetTmpFileName: String;
{---------------------------------------------------------------------
Description: Create a unique temporal filename
Parameter: None
Return value: temp file name
----------------------------------------------------------------------}
var
  Hour, Min, Sec, MSec : Word;
      Year, Month, Day : Word;
begin
  Decodetime(Time, Hour, Min, Sec, MSec);
  DecodeDate(Date, Year, Month, Day);
  Result:=inttohex(hour,2)+inttohex(Min,2)+inttohex(Sec,2)+inttohex(trunc(MSec/10),2);
end;


procedure TfrMain.acL3PCheckExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Perform L3P Check
Parameter: None
Return value: None
----------------------------------------------------------------------}

var
  s:string;
  i:integer;

begin
  if frOptions.cboDet.Checked then
    DetThreshold := StrToFloat(Trim(frOptions.seDet.Text));
  if frOptions.cboDist.Checked then
    DistThreshold := StrToFloat(Trim(frOptions.seDist.Text));

  with ActiveMDIChild as TfrEditorChild do
  begin
    lbInfo.Items.Clear;
    for i := 0 to memo.Lines.Count - 1 do
    begin
      s := L3CheckLine(memo.Lines[i]);
      if s <> '' then
        lbInfo.Items.Add('[L3P-Warning] Line ' + IntToStr(i+1) + ': ' +
                         s + ': ' + memo.Lines[i]);
    end;
    if lbInfo.Items.Count > 0 then
    begin
      if pnInfo.Height < 30 then
        pnInfo.Height := 91;
    end
    else
      pnInfo.Height := 1;
  end;
end;

procedure TfrMain.acOptionsExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Show modal option window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frOptions.LoadFormValues;

  if frOptions.showmodal=mrOK then
  begin
    LDDPini := TMemIniFile.Create(strIniName);
    if frOptions.edLDrawDir.Text <> '' then
      LDDPini.WriteString('LDraw','BaseDirectory',frOptions.edLDrawDir.Text);
    LDDPini.UpdateFile;
    LDDPini.Free;
    frOptions.SaveFormValues;
  end
  else frOptions.LoadFormValues;
end;



procedure TfrMain.acEditOptionsExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Show modal edit option window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frEditOptions.LoadFormValues;
  if frEditOptions.showmodal=mrOK then
  begin
    frEditOptions.SaveFormValues;
    SynLDRSyn.Assign(frEditOptions.SynLDRSyn1);
  end
  else frEditOptions.LoadFormValues;
end;


procedure TfrMain.acUndoExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Undo in avtive editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).memo.undo;
end;

procedure TfrMain.acRedoExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Redo in active editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).memo.Redo;
end;


procedure TfrMain.acLDViewExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute LDView
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

begin
{$IFDEF MSWINDOWS} //NOT IN KYLIX YET
  if (not FileExists(frOptions.edLDVIEWDir.text+'\LDVIEW.exe')) then begin
    MessageDlg('You have to specify a valid path to LDView.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  (activeMDICHild as TfrEditorChild).memo.Lines.SaveToFile((activeMDICHild as TfrEditorChild).tempFileName);
  {$IFDEF MSWINDOWS}
  DOCommand(frOptions.edLDVIEWDir.text+'\LDVIEW.exe -Poll=3 "'+(activeMDICHild as TfrEditorChild).tempFileName+'"',SW_SHOWNA,false);
  {$ELSEIF LINUX}

  {$IFEND}

{$ENDIF}  //NOT IN KYLIX YET
end;

procedure TfrMain.acMLCadExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute ML-Cad with active MDI-Child file
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

begin
  if (activeMDICHild as TfrEditorChild).memo.modified then
    if MessageDlg('File has been modified. '+#13+#10+'Do you want to save and view the file in LDView '+#13+#10+'or cancel the operation?', mtWarning, [mbOK, mbCancel], 0) =mrcancel then exit;
  acFileSaveExecute(Sender);
  if (not FIleExists(frOptions.edMLCADDir.text+'\MLCAD.exe')) then begin
    MessageDlg('You have to specify a valid path to MLCad.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  {$IFDEF MSWINDOWS}
  DOCommand(frOptions.edMLCadDir.text+'\MLCAD.exe "'+(activeMDICHild as TfrEditorChild).caption+'"',SW_SHOWNA,false);
  {$ELSEIF LINUX}

  {$IFEND}
end;


procedure TfrMain.acHomepageExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Open LDDP project homepage
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
{$IFDEF MSWINDOWS} //NOT IN KYLIX YET
  OpenInBrowser('http://www.sourceforge.net/projects/lddp');
{$ENDIF}
end;

procedure TfrMain.acUserDefinedExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute user defined program
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
{$IFDEF MSWINDOWS}  //NOT IN KYLIX YET
var opt:byte;

    function ParseString(toparse:string):string;
    var short,long:string;
    // %0 will be replaced by the path and filename of the exported file LDDP has generated,
    // %1 is replaced by the path only,
    // %2 will be replaced by the file-name only (without extension),
    // %3 is used a place holder for the path and the filename without extension.
    // %4, %5, %6, %7 are the same as %0 to %3 except they use the short form for paths and file-names that means the 8.3 notation of MS-DOS.
    begin
      long:=(activeMDICHild as TfrEditorChild).tempFileName;
      short:=GetShortFileName(long);
      toparse:=StringReplace(toparse,'%0',long,[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%1',ExtractFilePath(long),[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%2',ChangeFileExt(ExtractFileName(long),''),[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%3',ChangeFileExt(long,''),[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%4',short,[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%5',ExtractFilePath(short),[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%6',ChangeFileExt(ExtractFileName(short),''),[rfReplaceAll]);
      toparse:=StringReplace(toparse,'%7',ChangeFileExt(short,''),[rfReplaceAll]);
      Result:=toParse;
    end;

{$ENDIF}     //NOT IN KYLIX YET

begin
{$IFDEF MSWINDOWS}  //NOT IN KYLIX YET
  with frOptions do begin
    if not FileExists(edExternal.text) then
    begin
      MessageDlg('You have to specify a valid external program first!', mtError, [mbOK], 0);
      acOptionsExecute(Sender);
      exit;
    end;
    case rgStyle.ItemIndex of
      1: opt:=SW_HIDE;
      2: opt:=SW_SHOWNOACTIVATE;
      3: opt:=SW_MAXIMIZE;
      else
         opt:=SW_SHOWNORMAL;
    end;
    if cboShowCommand.checked then ShowMessage(edExternal.text+' '+ParseString(edParameters.text));
    (activeMDICHild as TfrEditorChild).memo.lines.savetofile((activeMDICHild as TfrEditorChild).tempFileName);
    {$IFDEF MSWINDOWS}
      DoCommand(edExternal.text+' '+ParseString(edParameters.text),opt,cboWaitforFinish.checked);
    {$ELSEIF LINUX}

    {$IFEND}

  end;

{$ENDIF}  //NOT IN KYLIX YET
end;

procedure Tfrmain.LoadPlugins(AppInit:Boolean = false);
{---------------------------------------------------------------------
Description: Load all plugins and create menu entries, add names to a stringlist and enumerate entries by tag
Parameter: AppInit:  specified if app is initailizing, default is false
Return value: None
----------------------------------------------------------------------}
var sr:TSearchRec;
    i, imgix:integer;
    newitem:TMenuItem;
    PluginPath, PluginFile: string;
    plgBitmap: TBitMap;

begin
{$IFDEF MSWINDOWS}  //NOT IN KYLIX YET
  PluginPath := ExtractFilePath(Application.ExeName) + 'Plugins' + PathDelim;
  i:=Findfirst(PluginPath + '*.dl*',faAnyFile,sr);
  frOptions.cblPlugins.clear;
  slPlugins.clear;
  frOptions.cblPlugins.sorted:=false;
  while Plugins1.Count>0 do plugins1.items[Plugins1.Count-1].free;
  while plugins3.Count>0 do
  begin
    if plugins3.items[Plugins3.Count-1].ImageIndex <> -1 then
      ilToolBarColor.Delete(plugins3.items[Plugins3.Count-1].ImageIndex);
    plugins3.items[Plugins3.Count-1].free;
  end;

  while i=0 do
  begin
    PluginFile := PluginPath + sr.Name;
    if AppInit then
    begin
      splashscreen.lbState.Caption:='Initializing plugin: '+sr.name;
      splashscreen.update;
    end;
    frOptions.cblPlugins.Items.Add(ChangeFileExt(sr.Name,'') +
                                   ' - ' + PLuginInfo(PluginFile,3));
    slplugins.Add(PLuginInfo(PluginFile,6)+','+PluginFile);

    if ExtractfileExt(lowercase(sr.name))='.dll' then
    begin
      imgix := -1;
      if FileExists(ChangeFileExt(PluginFile, '.bmp')) then
        try
          plgBitmap := TBitMap.Create;
          plgBitmap.LoadFromFile(ChangeFileExt(PluginFile, '.bmp'));
          imgix := ilToolBarColor.AddMasked(plgBitmap, clFuchsia);
          plgBitmap.Free;
        except
          imgix := -1;
        end;
      NewItem := TMenuItem.Create(Plugins3);
      Newitem.tag:=slplugins.count-1;
      NewItem.caption:=PLuginInfo(PluginFile,1);
      NewItem.hint:=PLuginInfo(PluginFile,3);
      newItem.onclick:=PluginClick;
      NewItem.ImageIndex := imgix;
      plugins3.Insert(plugins3.count,Newitem);

      NewItem := TMenuItem.Create(Plugins1);
      Newitem.tag:=slplugins.count-1;
      NewItem.caption:=PluginInfo(PluginFile,1);
      NewItem.hint:=PluginInfo(PluginFile,3);
      newItem.onclick:=PluginClick;
      NewItem.ImageIndex := imgix;
      plugins1.Insert(plugins1.count,Newitem);
    end;
    frOptions.cblPlugins.checked[frOptions.cblPlugins.Items.count-1] :=
      (ExtractfileExt(lowercase(sr.name))='.dll');
    i:=FindNext(sr);
  end;
  if (Plugins1.Count = 0) and (Plugins3.Count = 0) then
  begin
    NewItem := TMenuItem.Create(Plugins3);
    NewItem.caption:='None Found';
    NewItem.Enabled := false;
    plugins3.Insert(plugins3.count,Newitem);

    NewItem := TMenuItem.Create(Plugins1);
    NewItem.caption:='None Found';
    NewItem.Enabled := false;
    plugins1.Insert(plugins1.count,Newitem);
  end;
  Findclose(sr);
  frOptions.cblPlugins.sorted:=true;

  {$ENDIF} //NOT IN KYLIX YET
end;


procedure TfrMain.PluginClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Start Plugin related to the tag of the menu entry
Parameter: Fname: path and filename of dll, nr: no. of Info to get
Return value: None
----------------------------------------------------------------------}
var
 st,libname:string;
 s1,s2,s3,s4:longword;

begin
{$IFDEF MSWINDOWS}  //NOT IN KYLIX YET

  with (activeMDICHild as TfrEditorChild) do
  begin
     s1:=memo.selstart;
     s2:=memo.selend-memo.selstart;
     s3:=memo.caretY;
     s4:=memo.caretX;
     if memo.seltext<>'' then
     begin
       CallPlugin(libname, PChar(memo.Text),PChar(memo.seltext),s1,s2,s3,s4);
       if strChangedSelText<>'' then memo.SelText:=frMain.strChangedSelText
          else
          begin
            memo.SelectAll;
            memo.SelText:=frMain.strChangedCompleteText;
          end;
     end
        else
        begin
           st:=memo.text;
           CallPlugin(libname, PChar(memo.Text),PChar(memo.seltext),s1,s2,s3,s4);

           if strChangedSelText<>'' then memo.SelText:=frMain.strChangedSelText
            else
            begin
              memo.SelectAll;
              memo.SelText:=frMain.strChangedCompleteText;
            end;
        end;
     if (s1=0) and (S2=0) then
     begin
         memo.CaretX:=s4;
         memo.CaretY:=s3;
     end
       else
       begin
         memo.selstart:=s1;
         memo.selend:=s1+s2;
       end;
  end;

{$ENDIF}  //NOT IN KYLIX YET 
end;

procedure TfrMain.acL3LabExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute L3Lab
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  if (not FileExists(frOptions.edL3LabDir.text+'\L3Lab.exe')) then
  begin
    MessageDlg('You have to specify a valid path to L3Lab.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  (activeMDICHild as TfrEditorChild).memo.lines.savetofile((activeMDICHild as TfrEditorChild).tempFileName);
  {$IFDEF MSWINDOWS}
  DOCommand(frOptions.edL3LabDir.text+'\L3Lab.exe -PollSilent -NoCache -DontAddToMRU -NotReusable -FromLDAO -A.707,0,.707,.354,.866,-.354,-.612,.5,.612 "'+(activeMDICHild as TfrEditorChild).tempFileName+'"',SW_SHOWNA,false);
  {$ELSEIF LINUX}

  {$IFEND}
end;

procedure TfrMain.acincIndentExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Insert indent based on tabWidth
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).memo.ExecuteCommand(ecBlockIndent,' ',nil);
end;


procedure TfrMain.acInsertPartHeaderExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Insert standard part header
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 with (activeMDICHild as TfrEditorChild).memo do
 begin
   seltext:='0 Part name'+#13#10+
            '0 Name: ' + ExtractFileName(ActiveMDIChild.Caption) + #13#10 +
            '0 Author: ' + frOptions.edName.text;
   if frOptions.edEmail.text <> '' then
   seltext := seltext + ' <'+frOptions.edEmail.text+'>';

   seltext := seltext + #13#10 + '0 Unofficial Element'+#13#10+
                                   '0 KEYWORDS your keywords'+#13#10;
 end;

end;


procedure TfrMain.acInsertUpdateLineExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Insert update line
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 with (activeMDICHild as TfrEditorChild).memo do
 begin
   seltext:='0 '+FOrmatDatetime('yyyy-mm-dd',now)+' '+frOptions.edSIG.text+' Update description'+#13#10;
 end;
end;

procedure TfrMain.acCommentBlockExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Comment a block using zero's
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  j:integer;
  startcol,endcol: Integer;
  tmpPoint: TPoint;

begin
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then
     begin
       startcol := CharIndexToRowCol(SelStart).Y - 1;
       endcol := CharIndexToRowCol(SelEnd).Y - 1;
       for j := startcol to endcol do
         Lines[j] := '0 ' + Lines[j];

       tmpPoint.X := 1;
       tmpPoint.Y := startcol+1;
       SelStart := RowColToCharIndex(tmpPoint);
       tmpPoint.Y := endcol+2;
       SelEnd := RowColToCharIndex(tmpPoint) - 1;
     end;
   end;
end;


procedure TfrMain.acUncommentBlockExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Uncomment a zero'ed block
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var j:integer;
    tmp:string;
begin
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then
     begin
        j:=selstart;
        tmp:=copy(StringReplace(#13#10+seltext,#13#10+'0 ',#13#10, [rfReplaceAll]),3,selend-selstart);
        seltext:=tmp;
        selstart:=j;
        selend:=j+length(tmp);
     end;
   end;
end;


procedure TfrMain.acDecIndentExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: remove indent
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).memo.ExecuteCommand(ecBlockUnIndent,' ',nil);
end;


procedure TfrMain.acTrimLinesExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Trim empty Lines
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var i,j,k:integer;
    tmp:string;
    st:TStringlist;
    bCR:boolean;
begin
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then begin
        st:=TStringlist.create;
        j:=selstart;
        bCR:=seltext[length(seltext)]=#10;
        st.text:=seltext;
        for i:=st.count-1 downto 0 do
          if trim(st[i])='' then st.delete(i);
        if not bCR then tmp:=copy(st.text,1,length(st.text)-2)
          else tmp:=st.text;
        k:=length(StringReplace(tmp,#13,'',[rfReplaceAll]));
        seltext:=tmp;
        selstart:=j+k;
        selend:=selstart-k;
     end;
   end;
end;


procedure TfrMain.acInlineExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inline - Transform a sub-file command into an expanded list of the sub-files contents
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  k, m: Integer;
  DATModel1: TDATModel;

begin
 DATModel1 := TDATModel.Create;

 with (activeMDICHild as TfrEditorChild).memo do
 begin
   LDrawBasePath := frOptions.edLdrawDir.Text + PathDelim;

   DATModel1.FilePath := ExtractFilePath((activeMDICHild as TfrEditorChild).Caption);
   DATModel1.Add(Lines[carety-1]);

   DATModel1.InlinePart(0);

   DATModel1.Insert(0,'');
   DATModel1.Insert(0,'0 Original Line: '+lines[carety-1]);
   DATModel1.Insert(0,'0 Inlined by LDDesignPad');
   DATModel1.Add('0 End of Inlined Part');
   DATModel1.Add('');

   k:=carety;
   lines.Delete(carety-1);

   for m := DATModel1.Count - 1 downto 0 do
     lines.Insert(carety-1,DATModel1[m].DATString);

   carety:=k;
   Modified := true;
 end;
 DATModel1.Free;
end;

procedure TfrMain.acReplaceColorExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Replace Colors using a color dialogue
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  i, lengthsel, startsel, endsel:integer;
  cname,tmp,nr:string;
  cvalue:integer;
  EditCh: TfrEditorChild;
  clr: TDATModel;

begin
  EditCh := ActiveMDIChild as TfrEditorChild;

  with frColorDialog do
  begin
    slColors.LoadFromFile(ExtractFilePath(Application.ExeName)+'colors.pal');

    rgOptions.Items.Clear;

    rgOptions.Items.Add('Replace All');
    rgOptions.ItemIndex := 0;

    clr := TDATModel.Create;

    if EditCh.memo.lines[EditCh.memo.CaretY-1] <> '' then
      clr.Add(Trim(EditCh.memo.lines[EditCh.memo.CaretY-1]));

    if ((clr[0] is TDATElement) and (EditCh.memo.SelLength = 0)) then
    begin
      rgOptions.Items.Add('Replace Current Line Only');
      rgOptions.ItemIndex := 1;
    end
    else if EditCh.memo.SelLength <> 0 then
    begin
      rgOptions.ItemIndex := rgOptions.Items.Add('Replace For Selection');
      rgOptions.ItemIndex := 1;
    end;

    if clr[0] is TDATElement then
      try
        tmp:=slColors[slColors.IndexOfName(IntToStr((clr[0] as TDATElement).Color))];
        nr:=copy(tmp,1,pos('=',tmp)-1);
        tmp:=copy(tmp,pos('=',tmp)+1,20);
        cname:=copy(tmp,1,pos(' ',tmp)-1);
        tmp:=copy(tmp,pos(' ',tmp)+1,20);
        cvalue:=strtoint('$'+copy(tmp,5,2)+copy(tmp,3,2)+copy(tmp,1,2));
        btOldColor.color:=cvalue;
        btOldColor.tag:=strtoint(nr);
        btOldColor.caption:=nr+' - '+cname;

        if cvalue>$00999999 then
          btOldColor.Font.Color:=0
        else
          btOldColor.Font.Color:=$FFFFFF;
      except
        MessageDlg('Invalid colornumber!', mtError, [mbOK], 0);
        exit;
      end;

    if ShowModal=mrOK then
    begin
      if rgOptions.ItemIndex = 0 then
      begin
        for i:=0 to EditCh.memo.lines.count-1 do
        begin
          clr.Clear;
          clr.Add(EditCh.memo.lines[i]);
          if (clr[0] is TDATElement) then
            if ((clr[0] as TDATElement).Color = btOldColor.tag) then
            begin
              (clr[0] as TDATElement).Color := btNewColor.Tag;
              EditCh.memo.lines[i]:=clr[0].DATString;;
              EditCh.memo.Modified:=true;
            end;
        end;
      end
      else if rgOptions.Items[rgOptions.ItemIndex] = 'Replace Current Line Only' then
      begin
        (clr[0] as TDATElement).Color := btNewColor.Tag;
        EditCh.memo.lines[EditCh.memo.CaretY-1]:=clr[0].DATString;;
        EditCh.memo.Modified:=true;
      end
      // Replace colors in selection
      else if rgOptions.Items[rgOptions.ItemIndex] = 'Replace For Selection' then
      with EditCh.memo do
      begin
        clr.Clear;

        startsel := selstart;
        endsel := selend;

        while Text[startsel] <> #10 do
          dec(startsel);
        while Text[endsel] <> #10 do
          inc(endsel);

        SelStart := startsel;
        SelEnd := endsel;

        lengthsel := SelLength;

        clr.ModelText := SelText;

        for i := 0 to clr.Count-1 do
          if clr[i] is TDATElement then
            if (clr[i] as TDATElement).Color = btOldColor.Tag then
            begin
              (clr[i] as TDATElement).Color := btNewColor.Tag;
              Modified := true;
            end;

        SelText := clr.ModelText;

        SelStart := startsel;
        SelEnd := endsel + (Length(clr.ModelText) - lengthsel) - clr.Count;
      end;
    end;
  end;
  clr.Free;
end;


procedure TfrMain.acSelectAllExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Select all text in active editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).memo.SelectAll;
end;


procedure TfrMain.acFilePrintExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: print active editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
{$IFDEF MSWINDOWS} //NOT IN KYLIX YET
  SynEditPrint.SynEdit := (activeMDICHild as TfrEditorChild).memo;
  SynEditPrint.Title := activeMDICHild.caption;
  SynEditPrint.Print;
{$ENDIF}
end;


procedure TfrMain.acFindNextExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Find Next occurence of a previous find procedure
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  DoSearchReplaceText(FALSE, FALSE);
end;

procedure TfrMain.btPollingClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Does nothing.. but needed so the polling button isn't deactivated
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 // do nothing
end;

procedure TfrMain.Pollevery3sec1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set polling interval to 3 secs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 tmPoll.Enabled:=false;
 tmPoll.Interval:=1000;
 tmPoll.Enabled:=true;
end;


procedure TfrMain.Pollevery5sec1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set polling interval to 5 secs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 tmPoll.Enabled:=false;
 tmPoll.Interval:=2000;
 tmPoll.Enabled:=true;

end;

procedure TfrMain.Pollevery30secs1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set polling interval to 5 secs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 tmPoll.Enabled:=false;
 tmPoll.Interval:=5000;
 tmPoll.Enabled:=true;
end;


procedure TfrMain.tmPollTimer(Sender: TObject);
{---------------------------------------------------------------------
Description: if polling time triggers the actual editor window is written to its firm assigned temp filename
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

var st:Tstringlist;
begin
  if mnPollL3Lab.Checked and (activeMDICHild<>nil) then
   if mnPolltoSelected.checked then
   begin
     st:=Tstringlist.Create;
     st.Text:=(activeMDICHild as TfrEditorChild).memo.Text;
     while st.count>(activeMDICHild as TfrEditorChild).memo.carety do st.delete(st.Count-1);
     st.savetofile((activeMDICHild as TfrEditorChild).tempFileName);
   end
     else (activeMDICHild as TfrEditorChild).memo.lines.savetofile((activeMDICHild as TfrEditorChild).tempFileName);
end;


procedure TfrMain.mnPollL3LabClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Activate Polling
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  mnPollL3Lab.checked:= not mnPollL3Lab.checked;
end;


procedure TfrMain.Fixerror1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Fix an L3P Error depdning on the error
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

var
  tx,ty,tz: Extended;
  strTemp: string;
  DATElem: TDATElement;

begin
 with (activeMDICHild as TfrEditorChild) do
 begin
   // Set postion to line with error
   lbInfoDblClick(Sender);

   // Get the Dat code from the L3P error
   strTemp:=copy(lbInfo.Items[lbInfo.ItemIndex],pos(':',lbInfo.Items[lbInfo.ItemIndex])+1, length(lbInfo.Items[lbInfo.ItemIndex]));
   strTemp:=copy(strTemp,pos(':',strTemp)+2, length(strTemp));

   // Fix the error
   if pos(strTemp,lbInfo.Items[lbInfo.ItemIndex])>0 then
   begin
     if pos('Bad vertex sequence, 0132',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       DATElem := TDATQuad.Create;
       with DATElem as TDATQuad do
       begin
         DATString := memo.lines[memo.CaretY-1];
         tx := x4;
         ty := y4;
         tz := z4;
         x4 := x3;
         y4 := y3;
         z4 := z3;
         x3 := tx;
         y3 := ty;
         z3 := tz;
         memo.lines[memo.CaretY-1] := DATString;
       end;
       DATElem.Free;
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end
     else if pos('Identical to line',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       memo.lines[memo.CaretY-1]:='';
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end
     else if pos('Row 0 all zeros',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       DATElem := TDATSubPart.Create;
       (DATElem as TDATSubPart).DATString := memo.lines[memo.CaretY-1];
       (DATElem as TDATSubPart).RM[1,2] := 1;
       memo.lines[memo.CaretY-1] := (DATElem as TDATSubPart).DATString;
       DATElem.Free;
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end
     else if pos('Row 1 all zeros',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       DATElem := TDATSubPart.Create;
       (DATElem as TDATSubPart).DATString := memo.lines[memo.CaretY-1];
       (DATElem as TDATSubPart).RM[2,2] := 1;
       memo.lines[memo.CaretY-1] := (DATElem as TDATSubPart).DATString;
       DATElem.Free;
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end
     else if pos('Row 2 all zeros',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       DATElem := TDATSubPart.Create;
       (DATElem as TDATSubPart).DATString := memo.lines[memo.CaretY-1];
       (DATElem as TDATSubPart).RM[3,2] := 1;
       memo.lines[memo.CaretY-1] := (DATElem as TDATSubPart).DATString;
       DATElem.Free;
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end
     else if pos('Bad vertex sequence, 0312',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       DATElem := TDATQuad.Create;
       with DATElem as TDATQuad do
       begin
         DATString := memo.lines[memo.CaretY-1];
         tx := x3;
         ty := y3;
         tz := z3;
         x2 := x4;
         y2 := y4;
         z2 := z4;
         x3 := x2;
         y3 := y2;
         z3 := z2;
         x4 := tx;
         y4 := ty;
         z4 := tz;
         memo.lines[memo.CaretY-1] := DATString;
       end;
       DATElem.Free;
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end;
   end;
 end;
end;


procedure TfrMain.pmL3PPopup(Sender: TObject);
{---------------------------------------------------------------------
Description: updates the fix-error-popupmenu depending if there is an error to fix
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

begin
  with (activeMDICHild as TfrEditorChild) do
  begin
    FixError1.Enabled:=lbInfo.ItemIndex>-1;
  end;
end;


procedure TfrMain.Fixallerrors1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Fix all errors in L3P error list
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

var i:integer;
begin
 with (activeMDICHild as TfrEditorChild) do
 begin
   if lbInfo.items.count>0 then
     for I:=lbInfo.items.count-1 downto 0 do
     begin
       lbInfo.ItemIndex:=i;
       Fixerror1Click(Sender);
     end;
 end;
end;

procedure TfrMain.acInsertBFCExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Insert BFC line
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 with (activeMDICHild as TfrEditorChild).memo do
 begin
   seltext:='0 BFC CERTIFY|NOCERTIFY CLIP|NOCLIP CW|CCW INVERTNEXT'+#13#10;
 end;
end;


procedure TfrMain.mnPollToSelectedClick(Sender: TObject);
{---------------------------------------------------------------------
Description: switch polling to selected line
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  mnPollToSelected.Checked:=not mnPollToSelected.Checked;
end;


procedure TfrMain.ShowSearchReplaceDialog(AReplace: boolean);
{---------------------------------------------------------------------
Description: Show Search and Replace dialogue
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  dlg: TfrTextSearchDialog;
begin
  Statusbar.SimpleText := '';
  if AReplace then
    dlg := TfrTextReplaceDialog.Create(Self)
  else
    dlg := TfrTextSearchDialog.Create(Self);
  with dlg do try
    // assign search options
    SearchBackwards := gbSearchBackwards;
    SearchCaseSensitive := gbSearchCaseSensitive;
    SearchFromCursor := gbSearchFromCaret;
    SearchInSelectionOnly := gbSearchSelectionOnly;
    // start with last search text
    SearchText := gsSearchText;
    if gbSearchTextAtCaret then
    begin
      // if something is selected search for that text
      if (activeMDICHild as TfrEditorChild).memo.SelAvail and ((activeMDICHild as TfrEditorChild).memo.BlockBegin.Y = (activeMDICHild as TfrEditorChild).memo.BlockEnd.Y)
      then
        SearchText := (activeMDICHild as TfrEditorChild).memo.SelText
      else
        SearchText := (activeMDICHild as TfrEditorChild).memo.GetWordAtRowCol((activeMDICHild as TfrEditorChild).memo.CaretXY);
    end;
    SearchTextHistory := gsSearchTextHistory;
    if AReplace then with dlg as TfrTextReplaceDialog do
    begin
      ReplaceText := gsReplaceText;
      ReplaceTextHistory := gsReplaceTextHistory;
    end;
    SearchWholeWords := gbSearchWholeWords;
    if ShowModal = mrOK then
    begin
      gbSearchBackwards := SearchBackwards;
      gbSearchCaseSensitive := SearchCaseSensitive;
      gbSearchFromCaret := SearchFromCursor;
      gbSearchSelectionOnly := SearchInSelectionOnly;
      gbSearchWholeWords := SearchWholeWords;
      gsSearchText := SearchText;
      gsSearchTextHistory := SearchTextHistory;
      if AReplace then with dlg as TfrTextReplaceDialog do
      begin
        gsReplaceText := ReplaceText;
        gsReplaceTextHistory := ReplaceTextHistory;
      end;
      fSearchFromCaret := gbSearchFromCaret;
      if gsSearchText <> '' then
      begin
        DoSearchReplaceText(AReplace, gbSearchBackwards);
        fSearchFromCaret := TRUE;
      end;
    end;
  finally
    dlg.Free;
  end;
end;


procedure TfrMain.DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
{---------------------------------------------------------------------
Description: Do the actual Search and replace
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  Options: TSynSearchOptions;
begin
  Statusbar.SimpleText := '';
  if AReplace then
    Options := [ssoPrompt, ssoReplace, ssoReplaceAll]
  else
    Options := [];
  if ABackwards then
    Include(Options, ssoBackwards);
  if gbSearchCaseSensitive then
    Include(Options, ssoMatchCase);
  if not fSearchFromCaret then
    Include(Options, ssoEntireScope);
  if gbSearchSelectionOnly then
    Include(Options, ssoSelectedOnly);
  if gbSearchWholeWords then
    Include(Options, ssoWholeWord);
//  (activeMDICHild as TfrEditorChild).memo.SearchEngine :=
  if (activeMDICHild as TfrEditorChild).memo.SearchReplace(gsSearchText, gsReplaceText, Options) = 0 then
  begin
    Statusbar.SimpleText := STextNotFound;
    if ssoBackwards in Options then
      (activeMDICHild as TfrEditorChild).memo.BlockEnd := (activeMDICHild as TfrEditorChild).memo.BlockBegin
    else
      (activeMDICHild as TfrEditorChild).memo.BlockBegin := (activeMDICHild as TfrEditorChild).memo.BlockEnd;
    (activeMDICHild as TfrEditorChild).memo.CaretXY := (activeMDICHild as TfrEditorChild).memo.BlockBegin;
  end;

  if frConfirmReplaceDialog <> nil then
    frConfirmReplaceDialog.Free;
end;


procedure TfrMain.acFindNextUpdate(Sender: TObject);
{---------------------------------------------------------------------
Description: Updates the FindNext button
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (Sender as TAction).Enabled := gsSearchText <> '';
end;

{---------------------------------------------------------------------
Description: These toggle the toolbars on and off
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
procedure TfrMain.acFileToolbarExecute(Sender: TObject);
begin
  Toolbar1.visible := not(Toolbar1.visible);
end;
{---------------------------------------------------------------------}
procedure TfrMain.acEditingToolbarExecute(Sender: TObject);
begin
  Toolbar5.visible := not(Toolbar5.visible);
end;
{---------------------------------------------------------------------}
procedure TfrMain.acSearchToolbarExecute(Sender: TObject);
begin
  Toolbar3.visible := not(Toolbar3.visible);
end;
{---------------------------------------------------------------------}
procedure TfrMain.acWindowsToolbarExecute(Sender: TObject);
begin
  Toolbar4.visible := not(Toolbar4.visible);
end;
{---------------------------------------------------------------------}
procedure TfrMain.acExternalsToolbarExecute(Sender: TObject);
begin
  Toolbar2.visible := not(Toolbar2.visible);
end;
{---------------------------------------------------------------------}
procedure TfrMain.acToolbarUpdate(Sender: TObject);
begin
  acFileToolBar.Checked := Toolbar1.visible;
  acEditingToolBar.Checked := Toolbar5.visible;
  acSearchToolBar.Checked := Toolbar3.visible;
  acWindowsToolBar.Checked := Toolbar4.visible;
  acExternalsToolBar.Checked := Toolbar2.visible;
end;
{---------------------------------------------------------------------}


procedure TfrMain.acHighlightLdrawExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Set highlighting to LDraw
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).Memo.Highlighter:=SynLDRSyn;
end;


procedure TfrMain.acHighlightPascalExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Set highlighting to Pascal
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).Memo.Highlighter:=SynPasSyn;
end;


procedure TfrMain.acHighlightCppExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Set highlighting to Pascal
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).Memo.Highlighter:=SynCPPSyn;
end;


procedure TfrMain.UpdateMRU(NewFileName: TFileName = '');
{---------------------------------------------------------------------
Description: Update the Most Recently Used list
Parameter: NewFileName: Full Path and Filename to add, if supplied
Return value: None
----------------------------------------------------------------------}
var
  MRUSectionList: TStringList;
  i: integer;
  mnuNewItem: TMenuItem;

begin
  LDDPini := TMemIniFile.Create(strIniName);
  MRUSectionList := TStringList.Create;

  LDDPini.ReadSection('LDDP MRU', MRUSectionList);
  if ((NewFileName <> '') and (MRUSectionList.Indexof(NewFileName) < 0)) then
  begin
    if MRUSectionList.Count >= 10 then
      MRUSectionList.Delete(9);
    MRUSectionList.Insert(0, NewFileName);
  end;
  while LastOpen1.Count>0 do LastOpen1.items[LastOpen1.Count-1].free;

  LDDPini.EraseSection('LDDP MRU');

  for i := 0 to MRUsectionList.Count - 1 do
  begin
    mnuNewItem := TMenuItem.Create(LastOpen1);
    mnuNewItem.caption:=MRUSectionList[i];
    mnuNewItem.OnClick := acMRUListExecute;
    LastOpen1.Insert(LastOpen1.Count, mnuNewItem);
    LDDPini.WriteString('LDDP MRU', MRUSectionList[i], '');
  end;

  if LastOpen1.Count > 0 then LastOpen1.Enabled := True;

  LDDPini.UpdateFile;
  LDDPini.Free;
  MRUSectionList.Free;
end;


procedure TfrMain.acFileCloseAllExecute(Sender: TObject);

var
  i: Integer;

begin
   for i:= MDIChildCount-1 downto 0 do
     MDIChildren[i].Close;
end;


procedure TfrMain.acWindowCascadeExecute(Sender: TObject);
begin
  frMain.Cascade;
end;


procedure TfrMain.acWindowTileExecute(Sender: TObject);
begin
  frMain.Tile;
end;




procedure TfrMain.acReverseWindingExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Reverse the winding of a block
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  startsel, endsel, lengthsel, i : Integer;
  DATModel1: TDATModel;

begin
  with (ActiveMDIChild as TfrEditorChild).memo do
  begin
    DATModel1 := TDATModel.Create;

    startsel := selstart;
    endsel := selend;

    while Text[startsel] <> #10 do
      dec(startsel);
    while Text[endsel] <> #10 do
      inc(endsel);

    SelStart := startsel;
    SelEnd := endsel;

    lengthsel := SelLength;

    DATModel1.ModelText := SelText;

    for i := 0 to DATModel1.Count-1 do
      if DATModel1[i] is TDATPolygon then
        (DATModel1[i] as TDATPolygon).ReverseWinding;

    SelText := DATModel1.ModelText;

    SelStart := startsel;
    SelEnd := endsel + (Length(DATModel1.ModelText) - lengthsel) - DATModel1.Count;

    DATModel1.Free;
  end;
end;



end.
