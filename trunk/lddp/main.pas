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
unit Main;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, JvMRUList, JvPlacemnt,  HttpProt,
  version, registry, splash, SynEdit, SynEditHighlighter, SynHighlighterLDraw,
  SynEditPrint, SynHighlighterPas,  SynHighlighterCpp, SynEditKeyCmds,
  jvStrUtils;

type TLDrawArray= record
  typ:integer;
  color:integer;
  xyz:array[1..4,1..3] of real;
  partname:string;
end;

type
  TLDDPCallBack = procedure(strCBText : PChar );


type
  TfrMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    Edit1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    acEditCut: TEditCut;
    acEditCopy: TEditCopy;
    acEditPaste: TEditPaste;
    acFileNew: TAction;
    acFileSave: TAction;
    acFileExit: TAction;
    acFileOpen: TAction;
    acFileSaveAs: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    HelpAbout1: TAction;
    acFileClose: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    MRUManager: TJvMRUManager;
    N2: TMenuItem;
    LastOpen1: TMenuItem;
    fstMain: TJvFormStorage;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ilToolBarColor: TImageList;
    acFileRevert: TAction;
    Revert1: TMenuItem;
    N3: TMenuItem;
    SaveDialog: TSaveDialog;
    acFind: TAction;
    acReplace: TAction;
    ToolBar1: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    miMiscOptions: TMenuItem;
    acL3PCheck: TAction;
    ToolBar3: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    acOptions: TAction;
    acLDView: TAction;
    ToolButton1: TToolButton;
    acUndo: TAction;
    acRedo: TAction;
    N4: TMenuItem;
    Redo1: TMenuItem;
    Undo1: TMenuItem;
    ToolButton4: TToolButton;
    acMLCad: TAction;
    Tools1: TMenuItem;
    pmMemo: TPopupMenu;
    Cut1: TMenuItem;
    MenuItem2: TMenuItem;
    Paste1: TMenuItem;
    N5: TMenuItem;
    Plugins1: TMenuItem;
    ToolBar4: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolBar5: TToolBar;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    acincIndent: TAction;
    acDecIndent: TAction;
    Insert1: TMenuItem;
    StandardPartHeader1: TMenuItem;
    acInsertPartHeader: TAction;
    acInsertUpdateLine: TAction;
    UpdateHeader1: TMenuItem;
    LDDPHomepage1: TMenuItem;
    HttpCLi1: THttpCli;
    CheckforUpdate1: TMenuItem;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    acCommentBlock: TAction;
    acUncommentBlock: TAction;
    ToolButton21: TToolButton;
    acTrimLines: TAction;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    N6: TMenuItem;
    TrimLines1: TMenuItem;
    acHomepage: TAction;
    Insert2: TMenuItem;
    StandardPartHeader2: TMenuItem;
    UpdateHeader2: TMenuItem;
    acCommentBlock1: TMenuItem;
    acUncommentBlock1: TMenuItem;
    TrimLines2: TMenuItem;
    Nonefound1: TMenuItem;
    acInline: TAction;
    InlinePart1: TMenuItem;
    Plugins3: TMenuItem;
    InlinePart2: TMenuItem;
    ToolButton24: TToolButton;
    acUserDefined: TAction;
    acReplaceColor: TAction;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ChangeColor1: TMenuItem;
    ToolButton27: TToolButton;
    acSelectAll: TAction;
    SelectAll1: TMenuItem;
    acPrint: TAction;
    ToolButton28: TToolButton;
    Print1: TMenuItem;
    acFindNext: TAction;
    N7: TMenuItem;
    Find1: TMenuItem;
    FindNext1: TMenuItem;
    Replace1: TMenuItem;
    ChangeColor2: TMenuItem;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    acL3Lab: TAction;
    btPolling: TToolButton;
    ToolButton32: TToolButton;
    pmPolling: TPopupMenu;
    mnPollL3Lab: TMenuItem;
    tmPoll: TTimer;
    N8: TMenuItem;
    Pollevery3sec1: TMenuItem;
    Pollevery5sec1: TMenuItem;
    Pollevery30secs1: TMenuItem;
    N9: TMenuItem;
    Highlighting1: TMenuItem;
    Ldraw1: TMenuItem;
    C1: TMenuItem;
    Pascal1: TMenuItem;
    N10: TMenuItem;
    pmL3P: TPopupMenu;
    Fixerror1: TMenuItem;
    Fixallerrors1: TMenuItem;
    N11: TMenuItem;
    acInsertBFC: TAction;
    BFCStatement1: TMenuItem;
    mnPollToSelected: TMenuItem;
    ExternalPrograms1: TMenuItem;
    L3PCheck1: TMenuItem;
    acLDView1: TMenuItem;
    acMLCad1: TMenuItem;
    acL3Lab1: TMenuItem;
    UserDefinedProgram1: TMenuItem;
    SynLDRSyn: TSynLDRSyn;
    PrinterSetupDialog: TPrinterSetupDialog;
    PrintDialog: TPrintDialog;
    SynEditPrint: TSynEditPrint;
    SynCppSyn: TSynCppSyn;
    SynPasSyn: TSynPasSyn;
    procedure acFileNewExecute(Sender: TObject);
    procedure acFileOpenExecute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure acFileExitExecute(Sender: TObject);
    procedure MRUManagerClick(Sender: TObject; const RecentName,
      Caption: String; UserData: Integer);
    procedure acFileSaveExecute(Sender: TObject);
    procedure acFileSaveAsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acFileRevertExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acEditCutExecute(Sender: TObject);
    procedure acEditCopyExecute(Sender: TObject);
    procedure acEditPasteExecute(Sender: TObject);
    procedure acFindExecute(Sender: TObject);
    procedure acReplaceExecute(Sender: TObject);
    procedure acL3PCheckExecute(Sender: TObject);
    procedure acOptionsExecute(Sender: TObject);
    procedure acLDViewExecute(Sender: TObject);
    procedure acUndoExecute(Sender: TObject);
    procedure acRedoExecute(Sender: TObject);
    procedure acMLCadExecute(Sender: TObject);
    procedure PluginClick(Sender: TObject);
    procedure acincIndentExecute(Sender: TObject);
    procedure acInsertPartHeaderExecute(Sender: TObject);
    procedure acInsertUpdateLineExecute(Sender: TObject);
    procedure CheckforUpdate1Click(Sender: TObject);
    procedure acCommentBlockExecute(Sender: TObject);
    procedure acUncommentBlockExecute(Sender: TObject);
    procedure acDecIndentExecute(Sender: TObject);
    procedure acTrimLinesExecute(Sender: TObject);
    procedure acInlineExecute(Sender: TObject);
    procedure acUserDefinedExecute(Sender: TObject);
    procedure acHomepageExecute(Sender: TObject);
    procedure acReplaceColorExecute(Sender: TObject);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acFindNextExecute(Sender: TObject);
    procedure acL3LabExecute(Sender: TObject);
    procedure btPollingClick(Sender: TObject);
    procedure Pollevery3sec1Click(Sender: TObject);
    procedure Pollevery5sec1Click(Sender: TObject);
    procedure Pollevery30secs1Click(Sender: TObject);
    procedure tmPollTimer(Sender: TObject);
    procedure mnPollL3LabClick(Sender: TObject);
    procedure Ldraw1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure Pascal1Click(Sender: TObject);
    procedure Fixerror1Click(Sender: TObject);
    procedure pmL3PPopup(Sender: TObject);
    procedure Fixallerrors1Click(Sender: TObject);
    procedure acInsertBFCExecute(Sender: TObject);
    procedure mnPollToSelectedClick(Sender: TObject);
    procedure acFindNextUpdate(Sender: TObject);


  private
    { Private declarations }
    initialized:boolean;
    fSearchFromCaret: boolean;
    procedure CreateMDIChild(const Name: string;new:boolean);
    PROCEDURE FileIsDropped ( VAR Msg : TMessage ) ; Message WM_DropFiles ;
    Procedure AppInitialize;


  public
    { Public declarations }
    strChangedCompleteText:string;
    strChangedSelText:string;
    slPlugins:Tstringlist;
    lastfind:integer;
    function  DoCommand(Command: String; Flg:byte; Wait:Boolean): Boolean;
    procedure DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
    function  FileAccessDateToDateTime(FileTime : tFileTime) : tDateTime;
    function  GetShortFileName(Const FileName : String) : String;
    function  GetTempDir:string;
    Function  GetTMPFileName: String;
    function  LDrawConstruct(line:TLDrawArray):string;
    function  LDrawParse(line:String): TLDrawArray;
    procedure LoadFile(fname:string);
    procedure LoadPlugins;
    function  PluginInfo(fname:string; nr:integer):string;
    procedure ShowSearchReplaceDialog(AReplace: boolean);
    procedure UpdateCOntrols(closing:boolean);
  end;


var
  frMain: TfrMain;
  splashscreen: TfrSplash;

implementation

{$R *.DFM}

uses ChildWin, shellapi, About, options, ColorDialog, dlgConfirmReplace,
     dlgSearchText, dlgReplaceText;

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


function TfrMain.LDrawConstruct(line:TLDrawArray):string;
{---------------------------------------------------------------------
Description: Assembles a string in LDraw format from the abstract TLDrawArray
Parameter: TLDrawArray
Return value: Line in LDRaw format
----------------------------------------------------------------------}
var tmp:string;
    m,j,k:integer;
begin
  tmp:=inttostr(line.typ)+' '+inttostr(line.color);
  m:=line.typ;
  if m=1 then m:=4;
  for j:=1 to m do
    for k:=1 to 3 do
    begin
      tmp:=tmp+' '+Formatfloat('0.####',line.xyz[j,k]);
    end;
  if line.typ=1 then tmp:=tmp+' '+line.partname;
  Result:=tmp;
end;


procedure LDDPCallBack(strCBCompleteText,strCBSelText : PChar ); StdCall;
{---------------------------------------------------------------------
Description: Accepts the (changed) Text and SelText from the plugin DLLs
Parameter: strCBCompleteText,strCBSelText
Return value: none
----------------------------------------------------------------------}
begin
  frMain.strChangedCompleteText:=String(strCBCompleteText);
  frMain.strChangedSelText:=String(strCBSelText);
end;

function ExtractWordPos(N: Integer; const S: string; const WordDelims: TSysCharSet; var Pos: Integer): string;
{---------------------------------------------------------------------
Description: Returns words at specific position from a string
             using given delimiters
Parameter: N=N-nD Word, s:string to search, WordDelims: Word-Delimiter, var pos: position
Return value: var pos: Position that is returned
----------------------------------------------------------------------}
var
  I, Len: Integer;

        function WordPosition(const N: Integer; const S: string;
        const WordDelims: TSysCharSet): Integer;
        var
          Count, I: Integer;
        begin
          Count := 0;
          I := 1;
          Result := 0;
          while (I <= Length(S)) and (Count <> N) do
          begin
            { skip over delimiters }
            while (I <= Length(S)) and (S[I] in WordDelims) do Inc(I);
            { if we're not beyond end of S, we're at the start of a word }
            if I <= Length(S) then Inc(Count);
            { if not finished, find the end of the current word }
            if Count <> N then
              while (I <= Length(S)) and not (S[I] in WordDelims) do Inc(I)
            else Result := I;
          end;
        end;



begin
  Len := 0;
  I := WordPosition(N, S, WordDelims);
  Pos := I;
  if I <> 0 then
    { find the end of the current word }
    while (I <= Length(S)) and not(S[I] in WordDelims) do
    begin
      { add the I'th character to result }
      Inc(Len);
      SetLength(Result, Len);
      Result[Len] := S[I];
      Inc(I);
    end;
  SetLength(Result, Len);
end;



function TfrMain.DoCommand(Command: String; Flg:byte; Wait:Boolean): Boolean;
{---------------------------------------------------------------------
Description: Executes an external program
Parameter: command: Command to execute; flg: see below;
           wait: wait for completion of called program until program continues
Return value: none

---

Flag-Value		Meaning
----------------------------------------
SW_HIDE			Hides the window and activates another window.
SW_MAXIMIZE		Maximizes the specified window.
SW_MINIMIZE		Minimizes the specified window and activates the next top-level window in the Z order.
SW_RESTORE		Activates and displays the window. If the window is minimized or
                        maximized, Windows restores it to its original size and position.
                        An application should specify this flag when restoring a minimized window.
SW_SHOW			Activates the window and displays it in its current size and position.
SW_SHOWDEFAULT		Sets the show state based on the SW_ flag specified in the STARTUPINFO
                        structure passed to the CreateProcess function by the program that started the application. An application should call ShowWindow with this flag to set the initial show state of its main window.
SW_SHOWMAXIMIZED	Activates the window and displays it as a maximized window.
SW_SHOWMINIMIZED	Activates the window and displays it as a minimized window.
SW_SHOWMINNOACTIVE	Displays the window as a minimized window. The active window remains active.
SW_SHOWNA		Displays the window in its current state. The active window remains active.
SW_SHOWNOACTIVATE	Displays a window in its most recent size and position. The active window remains active.
SW_SHOWNORMAL		Activates and displays a window. If the window is minimized or maximized, Windows restores it to its original size and position. An application should specify this flag when displaying the window for the first time.

----------------------------------------------------------------------}
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;

begin
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  with StartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    dwFlags:= STARTF_USESHOWWINDOW;
    wShowWindow := Flg;
  end;
  Result := CreateProcess(nil, PChar(Command), nil, nil, False,
  NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo);
  if Result then
    with ProcessInfo do
    begin
      if wait then
        WaitForSingleObject(hProcess, INFINITE);
      CloseHandle(hThread);
      CloseHandle(hProcess);
    end;
end;


PROCEDURE TfrMain.FileIsDropped ( VAR Msg : TMessage ) ;
{---------------------------------------------------------------------
Description: Accepts files dropped from explorer
Parameter: msg:TMessage : not needed
Return value: msg:TMessage : not needed
----------------------------------------------------------------------}
VAR
   hDrop : THandle ;
   fName : string ;
   NumberOfFiles : INTEGER ;
   fCounter : INTEGER ;
BEGIN
   hDrop := Msg.WParam ;
   NumberOfFiles := DragQueryFile(hDrop,$FFFFFFFF, nil, 0);
   FOR fCounter := 1 TO NumberOfFiles DO
   BEGIN
     SetLength(fname, MAX_PATH); // Anticipate largest string size
     SetLength(fname, DragQueryFile(HDrop, fCounter-1, PChar(fname),MAX_PATH));
     if (lowercase(extractFIleExt(fname)) <> '.exe') and
        (lowercase(extractFIleExt(fname)) <> '.com') then
       CreateMDIChild(fName,false);
   END ;
   DragFinish ( hDrop);
END ;


procedure TfrMain.UpdateControls;
{---------------------------------------------------------------------
Description: Updated the action controls depending on the EditorCHilds
Parameter: none
Return value: none
----------------------------------------------------------------------}
var mdicount:integer;
begin
  mdicount:=mdiChildcount;
  if closing then mdicount:=mdicount-1;
  acFileSaveAs.Enabled:=mdicount>0;
  acPrint.Enabled:=mdicount>0;
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
  acCommentBlock.Enabled:=mdicount>0;
  acUnCommentBlock.Enabled:=mdicount>0;
  acIncIndent.Enabled:=mdicount>0;
  acDecIndent.Enabled:=mdicount>0;
  acTrimLines.Enabled:=mdicount>0;
  acUndo.Enabled:=mdicount>0;
  acRedo.Enabled:=mdicount>0;
  acUserDefined.Enabled:=mdicount>0;
  if mdicount=0 then acInline.enabled:=false;
  if mdicount=0 then acReplaceColor.enabled:=false;
end;

procedure tfrMain.LoadFile(fname:string);
{---------------------------------------------------------------------
Description: Loads given Filename into the active MDI editor child
Parameter: fname: Filename
Return value: none
----------------------------------------------------------------------}
var sr:TsearchRec;
begin
  if FileExists(fName) then
  begin
    (activeMDICHild as TfrEditorChild).Memo.Lines.LoadFromFile(fName);
    (activeMDICHild as TfrEditorChild).Memo.modified:=false;
    FindFirst(fname, faAnyFile, SR);
    {$ifdef MSWINDOWS}
    (activeMDICHild as TfrEditorChild).filedatetime:=frMain.FileAccessDateToDateTime(SR.FindData.ftLastWriteTime);
    {$endif}
    FindClose(sr);
    (activeMDICHild as TfrEditorChild).updatecontrols;
  end
   else
   begin
     MessageDlg('File '''+fname+''' not found!', mtError, [mbOK], 0);
   end;

end;

procedure TfrMain.CreateMDIChild(const Name: string;new:boolean);
{---------------------------------------------------------------------
Description: Creates a new MDI child
Parameter: new: if new is false, then File 'name' is loaded automatically
           name: name of the child - if you load an existing file 'name' MUST
                 be the path and filename of  that file
Return value: none
----------------------------------------------------------------------}
var
  Child: TfrEditorChild;
begin
  { create a new MDI child window }
  Child := TfrEditorChild.Create(Application);
  Child.Caption := Name;
  child.pnInfo.height:=1;
  if not new then
  begin
    if lowercase(ExtractFileExt(name))='.c' then child.memo.Highlighter:=syncppsyn;
    if (lowercase(ExtractFileExt(name))='.pas') or (lowercase(ExtractFileExt(name))='.dpr') then child.memo.Highlighter:=synPasSyn;
    LoadFile(name);
  end;
  UpdateControls(false);
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
Description: Opens an existing filename in a new editor child window
Parameter: Standard
Return value: none
----------------------------------------------------------------------}
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName, false);
end;

procedure TfrMain.HelpAbout1Execute(Sender: TObject);
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

procedure TfrMain.MRUManagerClick(Sender: TObject; const RecentName,
  Caption: String; UserData: Integer);
{---------------------------------------------------------------------
Description: Opens a file from the MRU Manager
Parameter: Standard , component MRUManager is used
Return value: none
----------------------------------------------------------------------}
begin
  if FIleExists(Recentname) then CreateMDIChild(Recentname,false)
    else MessageDlg('File '''+RecentName+''' not found!', mtError, [mbOK], 0);
end;


function TfrMain.FileAccessDateToDateTime(FileTime : tFileTime) : tDateTime;
{---------------------------------------------------------------------
Description: Convert DOS Filetime to tDatetime value
Parameter: FileTime : tFileTime
Return value: tDateTime
----------------------------------------------------------------------}
var LocalTime : tFileTime;
    DOSFileTime : DWord;
begin
  FileTimeToLocalFileTime(FileTime, LocalTime); // Compensate for time zone
  FileTimeToDosDateTime(LocalTime,  LongRec(DOSFileTime).Hi,
     LongRec(DOSFileTime).Lo);
  Result := FileDateToDateTime(DOSFileTime);
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
  if pos('Untitled',activeMDIChild.caption)>0 then acFileSaveAsExecute(Sender)
    else
    begin
      (activeMDICHild as TfrEditorChild).memo.lines.SaveToFile(activeMDICHild.caption);
      (activeMDICHild as TfrEditorChild).memo.Modified:=false;
      FindFirst(activeMDICHild.caption, faAnyFile, SR);
    {$ifdef MSWINDOWS}
      (activeMDICHild as TfrEditorChild).filedatetime:=frMain.FileAccessDateToDateTime(SR.FindData.ftLastWriteTime);
    {$endif}

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
  SaveDialog.filename:=activeMDIChild.caption;
  if SaveDialog.execute then begin
    activeMDIChild.caption:=SaveDialog.filename;
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
var i:integer;
    regT:Tregistry;
begin
  SplashScreen := TfrSplash.Create(Application);
  try
    splashscreen.lbState.Caption:='Initializing plugins...';
    splashscreen.show;
    splashscreen.update;
    screen.cursor:=-11;

  regT:=Tregistry.create;
  regt.RootKey:=HKEY_CURRENT_USER;
  regt.OpenKey('Software\Waterproof Productions\LDDesignPad',true);
  regt.WriteString('InstallDir', application.ExeName);
  regt.free;
  frOptions.fstOptions.RestoreFormPlacement;
  slPlugins:=TStringlist.create;
  pmMemo.tag:=pmMemo.items.count;
  LoadPlugins;
  if paramcount>0 then
    for i:=1 to paramcount do CreateMDIChild(paramstr(i),false);
  finally
    screen.cursor:=0;
    splashscreen.free;
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
   Application.updateformatsettings:=false;
   DecimalSeparator:='.';
   ThousandSeparator:=',';
   DragAcceptFiles( Handle,True ) ;
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

function tfrMain.GetTempDir:string;
{---------------------------------------------------------------------
Description: Find out windows temp path
Parameter: None
Return value: Windows Temp dir
----------------------------------------------------------------------}
  var
  tempDir: string;
  lng:     DWORD;
begin
  lng := GetTempPath(0, nil);
  if lng > 0 then
  begin
    SetLength(tempDir, lng - 1);
    GetTempPath(lng, PChar(tempDir));
  end;
  if copy(tempdir,length(tempdir),1)<>'\' then tempdir:=tempdir+'\';
  Result:=tempDir;

end;

Function TfrMain.GetTMPFileName: String;
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
Description: Start L3P
Parameter: None
Return value: Windows Temp dir
----------------------------------------------------------------------}

var st:TStringlist;
    s,cmd,u,Zieldatei:string;
    i:integer;

  function GetDOSVar (VarName: string): string;
  {---------------------------------------------------------------------
  Description: Find out DOS var settings (path etc.)
  Parameter: name of DOS var
  Return value: value of dos var
  ----------------------------------------------------------------------}

  const StrSize = 250    ;
  var PName,PBuff : PChar ;
      DataSize    : byte  ;
  begin
   Getmem  (PName,StrSize) ;
   Getmem  (PBuff,StrSize) ;
   StrCopy (PName,pchar(VarName)) ;
   Datasize := GetEnvironmentVariable (PName,PBuff,StrSize) ;
   Result := copy(string(PBuff),1,Datasize) ;
   FreeMem (PName) ;
   FreeMem (PBuff) ;
  end;

begin
  if (not FIleExists(frOptions.edLDrawDir.text+'\parts.lst')) then begin
    MessageDlg('You have to specify a valid path to LDraw (parts.lst) first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  if (not FIleExists(frOptions.edL3PDir.text+'\L3P.exe')) then begin
    MessageDlg('You have to specify a valid path to L3P.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  Zieldatei:=GetShortFileName(GetTempDir+GettmpFileName);
  st:=Tstringlist.create;
  st.add('set PATH=%PATH%;'+extractFIledir(Paramstr(0)));
  st.add('set LDRAWDIR='+GetShortFileName(frOptions.edLdrawDir.text));
  cmd:=GetShortFileName(frOptions.edL3PDir.text)+'\L3P.exe -check';
  if frOptions.cboDist.Checked then cmd:=cmd+' -dist'+floattostr(froptions.seDist.Value);
  if frOptions.cboDet.Checked then cmd:=cmd+' -det'+floattostr(froptions.seDet.Value);
  u:=GetShortFileName(extractFilePath((activeMDICHild as TfrEditorChild).TempFileName))+ExtractFIleName((activeMDICHild as TfrEditorChild).TempFileName);
  (activeMDICHild as TfrEditorChild).memo.lines.savetofile(u);
  st.add(cmd+' '+u+' >'+Zieldatei);
  s:=GetShortFileName(GetTempDir)+GetTMPFIleName+'.bat';
  st.SaveToFile(s);
  DOCommand(GetDOSVar('COMSPEC')+' /C '+ s,SW_HIDE,true);
  DeleteFile(s);
  st.loadfromfile(Zieldatei);
  if st.count=0 then begin
    MessageDlg('An unknow error occured while trying '+#13+#10+'to execute L3P.', mtError, [mbOK], 0);
    exit;
  end;
  DeleteFile(Zieldatei);
  DeleteFile(u);
  (activeMDICHild as TfrEditorChild).lbInfo.clear;
  if st.count>3 then begin
    if (activeMDICHild as TfrEditorChild).pnInfo.height<30 then (activeMDICHild as TfrEditorChild).pnInfo.height:=60;
    for I:=3 to st.count-1 do begin
      if pos('WARNING',st[i])>0 then begin
        st[i]:=copy(st[i],pos(' ',st[i])+1,length(st[i]));
        st[i]:=copy(st[i],pos(' ',st[i])+1,length(st[i]));
        st[i]:='[L3P-Warning] '+ st[i];
      end;
      if pos('SKIPPING',st[i])>0 then begin
        st[i]:=copy(st[i],pos(' ',st[i])+1,length(st[i]));
        st[i]:=copy(st[i],pos(' ',st[i])+1,length(st[i]));
        st[i]:='[L3P-Warning] '+ st[i];
      end;
     (activeMDICHild as TfrEditorChild).lbInfo.items.add(st[i]);
    end;
  end
    else begin
      (activeMDICHild as TfrEditorChild).pnInfo.height:=1;
      MessageDlg('No L3P errors found!', mtInformation, [mbOK], 0);
    end;
  st.free;
end;

procedure TfrMain.acOptionsExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Show modal option window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frOptions.fstOptions.RestoreFormPlacement;
  if frOptions.showmodal=mrOK then frOptions.fstOptions.SaveFormPlacement
     else frOptions.fstOptions.RestoreFormPlacement;
end;

procedure TfrMain.acLDViewExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute LDView
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

begin
  if (not FIleExists(frOptions.edLDVIEWDir.text+'\LDVIEW.exe')) then begin
    MessageDlg('You have to specify a valid path to LDView.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  (activeMDICHild as TfrEditorChild).memo.Lines.SaveToFile((activeMDICHild as TfrEditorChild).tempFileName);
  DOCommand(frOptions.edLDVIEWDir.text+'\LDVIEW.exe -Poll=3 "'+(activeMDICHild as TfrEditorChild).tempFileName+'"',SW_SHOWNA,false);
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
  DOCommand(frOptions.edMLCadDir.text+'\MLCAD.exe "'+(activeMDICHild as TfrEditorChild).caption+'"',SW_SHOWNA,false);

end;

function TfrMain.PluginInfo(fname:string; nr:integer):string;
{---------------------------------------------------------------------
Description: Get Info from plugin DLL
Parameter: Fname: path and filename of dll, nr: no. of Info to get
Return value: None
----------------------------------------------------------------------}
var
 libHndl:THandle;
 Plugin_Info:procedure(CaseID:byte;buffer:pchar;maxlength:byte); stdcall;
 sBuff:string;
begin
  SetLength(sBuff, 255);         // allocate buffer
  Plugin_Info:=nil;
  libHndl := LoadLibrary(pchar(fname));

  if libHndl <> 0 then
    @Plugin_Info := GetProcAddress(libHndl, 'Plugin_Info');

  if Assigned(Plugin_Info) then Plugin_info(nr,PChar(sBuff), 255);
  
  SetLength(sBuff, Length(PChar(sBuff)));
  result:=sBuff;
  FreeLibrary(libHndl);
end;

procedure Tfrmain.LoadPlugins;
{---------------------------------------------------------------------
Description: Load all plugins and create menu entries, add names to a stringlist and enumerate entries by tag
Parameter: None
Return value: None
----------------------------------------------------------------------}
var sr:TSearchRec;
    i:integer;
    newitem:TMenuItem;
begin
  i:=FIndfirst(extractfilepath(paramstr(0))+'Plugins\*.dl*',faAnyFile,sr);
  frOptions.cblPlugins.clear;
  slPlugins.clear;
  frOptions.cblPlugins.sorted:=false;
  while Plugins1.Count>0 do plugins1.items[Plugins1.Count-1].free;
  while plugins3.Count>0 do plugins3.items[Plugins3.Count-1].free;
  while i=0 do
  begin
    splashscreen.lbState.Caption:='Initializing plugin: '+sr.name;
    splashscreen.update;
    frOptions.cblPlugins.Items.Add(copy(sr.name,1,pos('.',sr.name)-1)+' - '+ frMain.PLuginInfo((extractfilepath(paramstr(0))+'\Plugins\'+sr.name),3));
    slplugins.add(frMain.PLuginInfo((extractfilepath(paramstr(0))+'Plugins\'+sr.name),6)+','+extractfilePath(paramstr(0))+'Plugins\'+sr.name);

    if ExtractfileExt(lowercase(sr.name))='.dll' then
    begin
      NewItem := TMenuItem.Create(Plugins3);
      Newitem.tag:=slplugins.count-1;
      NewItem.caption:=frMain.PLuginInfo((extractfilepath(paramstr(0))+'Plugins\'+sr.name),1);
      NewItem.hint:=frMain.PLuginInfo((extractfilepath(paramstr(0))+'Plugins\'+sr.name),3);
      newItem.onclick:=PluginClick;
      plugins3.Insert(plugins3.count,Newitem);

      NewItem := TMenuItem.Create(Plugins1);
      Newitem.tag:=slplugins.count-1;
      NewItem.caption:=frMain.PLuginInfo((extractfilepath(paramstr(0))+'Plugins\'+sr.name),1);
      NewItem.hint:=frMain.PLuginInfo((extractfilepath(paramstr(0))+'Plugins\'+sr.name),3);
      newItem.onclick:=PluginClick;
      plugins1.Insert(plugins1.count,Newitem);
    end;
    frOptions.cblPlugins.checked[frOptions.cblPlugins.Items.count-1]:= (ExtractfileExt(lowercase(sr.name))='.dll');
    i:=FindNext(sr);
  end;
  Findclose(sr);
  frOptions.cblPlugins.sorted:=true;
end;


procedure TfrMain.PluginClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Start Plugin related to the tag of the menu entry
Parameter: Fname: path and filename of dll, nr: no. of Info to get
Return value: None
----------------------------------------------------------------------}
var
 libHndl:THandle;
 ProcessText:procedure(CompleteText,SelText:PChar; var SelStart, SelLength , cursorow , cursorcolumn:longWORD;myCallback:TLDDPCallBack);stdcall;
 st,libname:string;
 s1,s2,s3,s4:longword;

begin
  ProcessText:=nil;
  libname:=copy(slplugins[(Sender as TMenuItem).tag],pos(',',slplugins[(Sender as TMenuItem).tag])+1, length(slplugins[(Sender as TMenuItem).tag]));
  libHndl := LoadLibrary(pchar(libname));

  if libHndl <> 0 then
    @ProcessText := GetProcAddress(libHndl, 'ProcessText');

  if Assigned(ProcessText) then with (activeMDICHild as TfrEditorChild) do
  begin
     s1:=memo.selstart;
     s2:=memo.selend-memo.selstart;
     s3:=memo.caretY;
     s4:=memo.caretX;
     if memo.seltext<>'' then
     begin
        ProcessText(PChar(memo.Text),PChar(memo.seltext),s1,s2,s3,s4,@LDDPCallBack);

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
             ProcessText(PChar(memo.Text),PChar(memo.seltext),s1,s2,s3,s4,@LDDPCallBack);

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

  FreeLibrary(libHndl);
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
            '0 Name: 000000.dat'+#13#10+
            '0 Author: '+frOptions.edName.text+' <'+frOptions.edEmail.text+'>'+#13#10+
            '0 Unofficial Element'+#13#10+
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

procedure TfrMain.CheckforUpdate1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Check for update on lddp website
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var st:TStringList;
    ver:Tversion;
    vers:string;
begin
  ver:=TVersion.Create(paramstr(0));
  Vers:=IntToStr (ver.HauptVersion) + '.' +
              IntToStr (ver.NebenVersion);
  ver.free;
  HttpCli1.RcvdStream := TMemoryStream.Create;
  try
    try
      HttpCli1.Get;
      st:=TStringList.Create;
      HttpCli1.RcvdStream.Position:=0;
      st.LoadFromStream(HttpCli1.RcvdStream);
      if trim(st.Text)=vers then MessageDlg('There is no newer version available.', mtInformation, [mbOK], 0)
        else begin
          MessageDlg('There is a newer version available!!!', mtInformation, [mbOK], 0);
          ShellExecute( Application.Handle, 'open', PChar( 'http://www.m8laune.de' ), nil, nil, SW_NORMAL );
        end;
      st.Free;
    except
        on E: EHttpException do
        begin
          MessageDlg('Check Failed: ' + IntToStr(HttpCli1.StatusCode) + ' ' + HttpCli1.ReasonPhrase, mtError, [mbOK], 0);
        end
          else MessageDlg('Check Failed: An unknown error occured', mtError, [mbOK], 0);
    end;
  finally
    HttpCli1.RcvdStream.Destroy;
    HttpCli1.RcvdStream := nil;
  end;
end;


Function TfrMain.LDrawParse(line:String): TLDrawArray;
{---------------------------------------------------------------------
Description: Parse a line into a TLDrawArray
Parameter: line: string -  LIne to parse
Return value: TLdrawArray
----------------------------------------------------------------------}
var i,j,m:integer;
    s:TLDrawArray;
begin
   s.typ:=-1;
   s.color:=-1;
   if trim(line)='' then
   begin
     Result:=s;
     exit;
   end;
   try
     for I:=1 to 4 do
       for j:=1 to 3 do
         s.xyz[i,j]:=0;
     line:=trim(line)+' ';
     s.typ:=strtoint(copy(line,1,pos(' ',line)-1));
     if (s.typ>0) and (s.typ<6) then
     begin
       line:=trim(copy(line,pos(' ',line)+1,length(line)));
       s.color:=strtoint(copy(line,1,pos(' ',line)-1));
       line:=trim(copy(line,pos(' ',line)+1,length(line)));
       m:=s.typ;
       if (m=1) or (m=5) then m:=4;
       for i:=1 to m do
         for j:=1 to 3 do
         begin
           s.xyz[i,j]:=strtofloat(copy(line,1,pos(' ',line)-1));
           line:=trim(copy(line,pos(' ',line)+1,length(line)))+' ';
         end;
       if s.typ=1 then s.partname:=trim(line);
     end;
   except
   end;
   Result:=s;
end;


procedure TfrMain.acCommentBlockExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Comment a block using zero's
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var j:integer;
    tmp:string;
begin
 LockWindowUPdate(frMain.handle);
 try
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then
     begin
        j:=selstart;
        tmp:='0 '+Replacestr(seltext,#13#10,#13#10+'0 ');
        seltext:=tmp;
        selstart:=j;
        selend:=j+length(tmp);
     end;
   end;
 finally
   LockWindowUPdate(0);
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
 LockWindowUPdate(frMain.handle);
 try
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then
     begin
        j:=selstart;
        tmp:=copy(Replacestr(#13#10+seltext,#13#10+'0 ',#13#10),3,selend-selstart);
        seltext:=tmp;
        selstart:=j;
        selend:=j+length(tmp);
     end;
   end;
 finally
   LockWindowUPdate(0);
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
 LockWindowUPdate(frMain.handle);
 try
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
        k:=length(Replacestr(tmp,#13,''));
        seltext:=tmp;
        selstart:=j+k;
        selend:=selstart-k;
     end;
   end;
 finally
   LockWindowUPdate(0);
 end;
end;

procedure TfrMain.acInlineExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inline - Transform a sub-file command into an expanded list of the sub-files contents
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var part,spart,zielpart:TLDrawArray;
    x,y,z:real;
    j,jt,k,m:integer;
    subpart:Textfile;
    inlined:TStringlist;
    sr:string;
begin
 inlined:=TStringlist.create;

 with (activeMDICHild as TfrEditorChild).memo do begin
   try
     inlined.add('0 Inlined by LDDesignPad');
     inlined.add('0 Original Line: '+lines[carety-1]);
     inlined.add('');
     part:=LDrawParse(lines[carety-1]);
     if FIleExists(frOptions.edLDrawDir.text+'\parts\'+part.partname) then part.partname:=frOptions.edLDrawDir.text+'\parts\'+part.partname
        else if FIleExists(frOptions.edLDrawDir.text+'\p\'+part.partname) then part.partname:=frOptions.edLDrawDir.text+'\p\'+part.partname
          else part.partname:=ExtractFilePath((activeMDICHild as TfrEditorChild).caption)+part.partname;
     if FileExists(part.partname) then
     begin
       AssignFIle(subpart,part.partname);
       reset(subpart);
       while not eof(subpart) do
       begin
         Readln(subpart,sr);
         spart:=LDrawParse(sr);
         case spart.typ of
          -1: inlined.add('');
           0: inlined.add(' '+sr);
   1,2,3,4,5: begin
               m:=spart.typ;
               zielpart.typ:=spart.typ;
               if m=5 then m:=4;
               for j:=1 to m do
               begin
                 x := part.xyz[2,1]*spart.xyz[j,1]+part.xyz[2,2]*spart.xyz[j,2]+part.xyz[2,3]*spart.xyz[j,3]+part.xyz[1,1];
                 y := part.xyz[3,1]*spart.xyz[j,1]+part.xyz[3,2]*spart.xyz[j,2]+part.xyz[3,3]*spart.xyz[j,3]+part.xyz[1,2];
                 z := part.xyz[4,1]*spart.xyz[j,1]+part.xyz[4,2]*spart.xyz[j,2]+part.xyz[4,3]*spart.xyz[j,3]+part.xyz[1,3];
                 zielpart.xyz[j,1]:=x;
                 zielpart.xyz[j,2]:=y;
                 zielpart.xyz[j,3]:=z;
               end;
               // Type 1 lines receive special treatment . Thanks to Tore Erikkson!
               if spart.typ=1 then
                 for jt:=2 to 4 do
                 begin
                   x := part.xyz[jt,1]*spart.xyz[2,1] + part.xyz[jt,2]*spart.xyz[3,1] + part.xyz[jt,3]*spart.xyz[4,1];
                   y := part.xyz[jt,1]*spart.xyz[2,2] + part.xyz[jt,2]*spart.xyz[3,2] + part.xyz[jt,3]*spart.xyz[4,2];
                   z := part.xyz[jt,1]*spart.xyz[2,3] + part.xyz[jt,2]*spart.xyz[3,3] + part.xyz[jt,3]*spart.xyz[4,3];
                   zielpart.xyz[jt,1]:=x;
                   zielpart.xyz[jt,2]:=y;
                   zielpart.xyz[jt,3]:=z;
                 end;

               if spart.color = 16 then zielpart.color:=part.color
                 else zielpart.color:=spart.color;
               inlined.add(LDrawConstruct(zielpart));

             end;
         end;
       end;
       CloseFIle(subpart);
     end
       else begin
         MessageDlg('Cannot inline because I can''t find the subpart.', mtError, [mbOK], 0);
         exit;
       end;

   except
     MessageDlg('Cannot inline because of invalid line. Check the line carefully.', mtError, [mbOK], 0);
     exit
   end;
   inlined.add('');
   inlined.add('0 End of Inlined Part');
   k:=carety;
   lines[carety-1]:=inlined.text;
   carety:=k;
 end;
 inlined.free;
end;


Function TfrMain.GetShortFileName(Const FileName : String) : String;
{---------------------------------------------------------------------
Description: Get a short 8.3 version of a long filename - needed for dos programs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  aTmp: array[0..255] of char;
begin
  if GetShortPathName(PChar(FileName),aTmp,Sizeof(aTmp)-1)=0 then
     Result:= FileName
  else
     Result:=StrPas(aTmp);
end;


procedure TfrMain.acUserDefinedExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute user defined program
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

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
      toparse:=ReplaceStr(toparse,'%0',long);
      toparse:=ReplaceStr(toparse,'%1',ExtractFilePath(long));
      toparse:=ReplaceStr(toparse,'%2',copy(ExtractFileName(long),1,pos('.',ExtractFileName(long))-1));
      toparse:=ReplaceStr(toparse,'%3',ExtractFilePath(long)+copy(ExtractFileName(long),1,pos('.',ExtractFileName(long))-1));
      toparse:=ReplaceStr(toparse,'%4',short);
      toparse:=ReplaceStr(toparse,'%5',ExtractFilePath(short));
      toparse:=ReplaceStr(toparse,'%6',copy(ExtractFileName(short),1,pos('.',ExtractFileName(short))-1));
      toparse:=ReplaceStr(toparse,'%7',ExtractFilePath(short)+copy(ExtractFileName(short),1,pos('.',ExtractFileName(short))-1));
      Result:=toParse;
    end;

begin
  with frOptions do begin
    if not FileExists(edExternal.text) then
    begin
      MessageDlg('You have to specify a valid external program first!', mtError, [mbOK], 0);
      acOptionsExecute(Sender);
      exit;
    end;
    opt:=SW_SHOWNORMAL;
    if rbWindowHidden.checked then opt:=SW_HIDE;
    if rbWindowNormalRemain.checked then opt:=SW_SHOWNOACTIVATE;
    if rbWindowMaximized.checked then opt:=SW_MAXIMIZE;
    if cboShowCommand.checked then ShowMessage(edExternal.text+' '+ParseString(edParameters.text));
    (activeMDICHild as TfrEditorChild).memo.lines.savetofile((activeMDICHild as TfrEditorChild).tempFileName);
    DoCommand(edExternal.text+' '+ParseString(edParameters.text),opt,cboWaitforFinish.checked);
  end;
end;

procedure TfrMain.acHomepageExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Open LDDP project homepage
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  ShellExecute( Application.Handle, 'open', PChar( 'http://www.sourceforge.net/projects/lddp' ), nil, nil, SW_NORMAL );
end;

procedure TfrMain.acReplaceColorExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Replace Colors using a color dialogue
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var clr:TLDrawArray;
    i,j,l:integer;
    st:Tstringlist;
    cname,tmp,nr:string;
    cvalue:integer;
    bCR:boolean;
begin
    frColorDialog.StrHolder1.strings.LoadFromFile(ExtractFilePath(paramstr(0))+'colors.pal');
    if ((activeMDICHild as TfrEditorChild).memo.selstart-(activeMDICHild as TfrEditorChild).memo.selend=0) then begin
      frColorDialog.rbreplaceselection.enabled:=false;
      frColorDialog.rbreplaceLine.checked:=true;;
    end
      else begin
        frColorDialog.rbreplaceselection.enabled:=true;
        frColorDialog.rbreplaceSelection.checked:=true;
      end;
    clr:=LDrawParse((activeMDICHild as TfrEditorChild).memo.lines[(activeMDICHild as TfrEditorChild).memo.CaretY-1]);
    try
      tmp:=frColorDialog.strholder1.Strings[frColorDialog.strholder1.Strings.IndexOfName(inttostr(clr.color))];
    except
      MessageDlg('Invalid colornumber!', mtError, [mbOK], 0);
      exit;
    end;
    nr:=copy(tmp,1,pos('=',tmp)-1);
    tmp:=copy(tmp,pos('=',tmp)+1,20);
    cname:=copy(tmp,1,pos(' ',tmp)-1);
    tmp:=copy(tmp,pos(' ',tmp)+1,20);
    cvalue:=strtoint('$'+copy(tmp,5,2)+copy(tmp,3,2)+copy(tmp,1,2));
    frColorDialog.btOldColor.color:=cvalue;
    frColorDialog.btOldColor.tag:=strtoint(nr);
    frColorDialog.btOldColor.caption:=nr+' - '+cname;
    if cvalue>$00999999 then  frColorDialog.btOldColor.Font.Color:=0
     else frColorDialog.btOldColor.Font.Color:=$FFFFFF;
    if frColorDialog.showmodal=mrOK then
    begin
      if frColorDialog.rbReplaceLine.checked then begin
        tmp:=(activeMDICHild as TfrEditorChild).memo.lines[(activeMDICHild as TfrEditorChild).memo.CaretY-1];
        ExtractWordPos(2,tmp,[' '],l);
        tmp:=copy(tmp,1,l-1)+inttostr(frColorDialog.btNewColor.tag)+copy(tmp,l+length(inttostr(clr.color)),length(tmp));
        (activeMDICHild as TfrEditorChild).memo.lines[(activeMDICHild as TfrEditorChild).memo.CaretY-1]:=tmp;
      end;
      if frColorDialog.rbReplaceAll.checked then
      begin
        for i:=0 to (activeMDICHild as TfrEditorChild).memo.lines.count-1 do
        begin
          clr:=LDrawParse((activeMDICHild as TfrEditorChild).memo.lines[i]);
          if (clr.color>-1) and (clr.color=frColorDialog.btOldColor.tag) then
          begin
            tmp:=(activeMDICHild as TfrEditorChild).memo.lines[i];
            ExtractWordPos(2,tmp,[' '],l);
            tmp:=copy(tmp,1,l-1)+inttostr(frColorDialog.btNewColor.tag)+copy(tmp,l+length(inttostr(clr.color)),length(tmp));
            (activeMDICHild as TfrEditorChild).memo.lines[i]:=tmp;
          end;
        end;
      end;
      // Replace colors in selection
      if frColorDialog.rbReplaceSelection.checked then
      with (activeMDICHild as TfrEditorChild).memo do
      begin
        st:=TStringlist.create;
        j:=selstart;
        bCR:=seltext[length(seltext)]=#10;
        st.text:=seltext;
        for i:=st.count-1 downto 0 do
        begin
          clr:=LDrawParse(st[i]);
          if (clr.color>-1) and (clr.color=frColorDialog.btOldColor.tag) then
          begin
            tmp:=st[i];
            ExtractWordPos(2,tmp,[' '],l);
            tmp:=copy(tmp,1,l-1)+inttostr(frColorDialog.btNewColor.tag)+copy(tmp,l+length(inttostr(clr.color)),length(tmp));
            st[i]:=tmp;
          end;
        end;
        if not bCR then tmp:=copy(st.text,1,length(st.text)-2)
          else tmp:=st.text;
        seltext:=tmp;
        selstart:=j+length(tmp);
        selend:=selstart-length(tmp);
      end;
    end;
end;

procedure TfrMain.acSelectAllExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Select all text in active editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  with (activeMDICHild as TfrEditorChild).memo do
    selectall;
end;

procedure TfrMain.acPrintExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: print active editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  if PrintDialog.Execute then
  begin
    SynEditPrint.SynEdit := (activeMDICHild as TfrEditorChild).memo;
    SynEditPrint.Title := activeMDICHild.caption;
    SynEditPrint.Print;
  end;
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

procedure TfrMain.acL3LabExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute L3Lab
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  if (not FIleExists(frOptions.edL3LabDir.text+'\L3Lab.exe')) then
  begin
    MessageDlg('You have to specify a valid path to L3Lab.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  (activeMDICHild as TfrEditorChild).memo.lines.savetofile((activeMDICHild as TfrEditorChild).tempFileName);
  DOCommand(frOptions.edL3LabDir.text+'\L3Lab.exe -PollSilent -NoCache -DontAddToMRU -NotReusable -FromLDAO -A.707,0,.707,.354,.866,-.354,-.612,.5,.612 "'+(activeMDICHild as TfrEditorChild).tempFileName+'"',SW_SHOWNA,false);
end;

procedure TfrMain.btPollingClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Do nothing.. needed so the polling button isnt deactivated
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

procedure TfrMain.Ldraw1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set highlighting to LDraw
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).Memo.Highlighter:=SynLDRSyn;
end;

procedure TfrMain.C1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set highlighting to C++
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).Memo.Highlighter:=SynCPPSyn;
end;

procedure TfrMain.Pascal1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set highlighting to Pascal
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  (activeMDICHild as TfrEditorChild).Memo.Highlighter:=SynPasSyn;
end;

procedure TfrMain.Fixerror1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Fix an L3P Error depdning on the error
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

var line:TLDrawArray;
    x4,y4,z4:real;
    strTemp:string;
begin
 with (activeMDICHild as TfrEditorChild) do
 begin
   memo.TopLine:=strtoint((copy(lbinfo.Items[lbinfo.Itemindex],19,pos(':',lbinfo.Items[lbinfo.Itemindex])-19)))-1;
   memo.CaretXY:=point(1000,strtoint((copy(lbinfo.Items[lbinfo.Itemindex],19,pos(':',lbinfo.Items[lbinfo.Itemindex])-19))));
   memo.selend:=memo.selstart-length(memo.lines[memo.CaretY-1]);
   memo.setfocus;
   strTemp:=copy(lbInfo.Items[lbInfo.ItemIndex],pos(':',lbInfo.Items[lbInfo.ItemIndex])+1, length(lbInfo.Items[lbInfo.ItemIndex]));
   strTemp:=copy(strTemp,pos(':',strTemp)+2, length(strTemp));
   if pos(strTemp,lbInfo.Items[lbInfo.ItemIndex])>0 then
   begin
     if pos('Bad vertex sequence, 0132',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       line:=LDrawParse(memo.lines[memo.CaretY-1]);
       x4:=line.xyz[3,1];
       y4:=line.xyz[3,2];
       z4:=line.xyz[3,3];
       line.xyz[3,1]:=line.xyz[4,1];
       line.xyz[3,2]:=line.xyz[4,2];
       line.xyz[3,3]:=line.xyz[4,3];
       line.xyz[4,1]:=x4;
       line.xyz[4,2]:=y4;
       line.xyz[4,3]:=z4;
       memo.lines[memo.CaretY-1]:=LDrawConstruct(line);
       lbInfo.items.delete(lbInfo.ItemIndex);
       exit;
     end;
     if pos('Identical to line',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       memo.lines[memo.CaretY-1]:='';
       exit;
     end;
     if pos('Bad vertex sequence, 0312',lbInfo.Items[lbInfo.ItemIndex])>0 then
     begin
       line:=LDrawParse(memo.lines[memo.CaretY-1]);
       x4:=line.xyz[2,1];
       y4:=line.xyz[2,2];
       z4:=line.xyz[2,3];
       line.xyz[2,1]:=line.xyz[3,1];
       line.xyz[2,2]:=line.xyz[3,2];
       line.xyz[2,3]:=line.xyz[3,3];
       line.xyz[3,1]:=x4;
       line.xyz[3,2]:=y4;
       line.xyz[3,3]:=z4;
       x4:=line.xyz[3,1];
       y4:=line.xyz[3,2];
       z4:=line.xyz[3,3];
       line.xyz[3,1]:=line.xyz[4,1];
       line.xyz[3,2]:=line.xyz[4,2];
       line.xyz[3,3]:=line.xyz[4,3];
       line.xyz[4,1]:=x4;
       line.xyz[4,2]:=y4;
       line.xyz[4,3]:=z4;
       memo.lines[memo.CaretY-1]:=LDrawConstruct(line);
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
  if (activeMDICHild as TfrEditorChild).memo.SearchReplace(gsSearchText, gsReplaceText, Options) = 0 then
  begin
    MessageBeep(MB_ICONASTERISK);
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

end.

