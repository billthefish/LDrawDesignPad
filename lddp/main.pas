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
  windows, forms, windowsspecific, registry, messages, Dialogs, SynEditPrint,
  SynEditHighlighter, SysUtils, Synedit, SynHighlighterLDraw, ExtCtrls, Menus,
  ImgList, StdActns, Types, SynHighlighterCpp, SynHighlighterPas,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Classes,
  ActnList, ComCtrls, Controls, Inifiles, splash, SyneditTypes, Graphics,
  SyneditKeyCmds, l3check, DATModel, DATBase, StdCtrls, Shellapi,
  dlgReplaceText, SynEditMiscClasses, SynEditSearch, ToolWin, SynEditTextBuffer,
  dlgSearchText, SynEditRegexSearch;

type
  TfrMain = class(TForm)
    acCommentBlock: TAction;
    acCommentBlock1: TMenuItem;
    acDecIndent: TAction;
    acEditCopy: TEditCopy;
    acEditCut: TEditCut;
    acEditingToolbar: TAction;
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
    acInsertPartHeader: TAction;
    acInsertUpdateLine: TAction;
    acL3Lab: TAction;
    acErrorCheck: TAction;
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
    Toolbars: TMenuItem;
    FilesToolbar: TMenuItem;
    Edit2: TMenuItem;
    SearchReplace1: TMenuItem;
    Windows2: TMenuItem;
    ExternalPrograms3: TMenuItem;
    N3: TMenuItem;
    miMiscOptions: TMenuItem;
    Insert1: TMenuItem;
    Find1: TMenuItem;
    FindNext1: TMenuItem;
    Replace1: TMenuItem;
    ChangeColor2: TMenuItem;
    Tools1: TMenuItem;
    Plugins1: TMenuItem;
    Nonefound1: TMenuItem;
    StandardPartHeader1: TMenuItem;
    UpdateHeader1: TMenuItem;
    ExternalPrograms1: TMenuItem;
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
    ToolButton7: TToolButton;
    ReverseWinding1: TMenuItem;
    acReverseWinding: TAction;
    BFCStatement2: TMenuItem;
    ReverseWinding2: TMenuItem;
    ToolButton9: TToolButton;
    ErrorCheck1: TMenuItem;
    http: TIdHTTP;
    acCheckforUpdate: TAction;
    SynEditSearch: TSynEditSearch;
    N14: TMenuItem;
    acBMP2LDraw: TAction;
    ConvertBitmaptoLDraw1: TMenuItem;
    acModelTreeView: TAction;
    ViewModelTree1: TMenuItem;
    N15: TMenuItem;
    Polling1: TMenuItem;
    PolltoL3LabLDView1: TMenuItem;
    Polltoselectedlineonly1: TMenuItem;
    N16: TMenuItem;
    Pollevery1sec1: TMenuItem;
    Pollevery2sec1: TMenuItem;
    Pollevery5sec: TMenuItem;
    CERTIFY1: TMenuItem;
    INVERNEXT1: TMenuItem;
    CERTIFYCCW1: TMenuItem;
    CLIP1: TMenuItem;
    NOCLIP1: TMenuItem;
    acInsertBFCCertifyCW: TAction;
    acInsertBFCCertifyCCW: TAction;
    acInsertBFCInvertnext: TAction;
    acInsertBFCClip: TAction;
    acInsertBFCNoClip: TAction;
    CERTIFYCW1: TMenuItem;
    CERTIFYCCW2: TMenuItem;
    INVERTNEXT1: TMenuItem;
    CLIP2: TMenuItem;
    NOCLIP2: TMenuItem;
    N7: TMenuItem;
    View1: TMenuItem;
    AutofixCheckedErrors1: TMenuItem;
    AutofixAllErrorofSameType1: TMenuItem;
    AutofixAllCheckedErrorsofSameType1: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    acECFixError: TAction;
    acECFixAllErrors: TAction;
    N17: TMenuItem;
    MarkAllForFixing1: TMenuItem;
    UnmarkAll1: TMenuItem;
    MarkAllofSelectedErrorType1: TMenuItem;
    UnmarkAllofSelectedType1: TMenuItem;
    MarkAll1: TMenuItem;
    UnmarkAll2: TMenuItem;
    MarkAllofSelectedType1: TMenuItem;
    UnmarkAllofSelectedType2: TMenuItem;
    N18: TMenuItem;
    AutofixSelectedError1: TMenuItem;
    N19: TMenuItem;
    AutofixAllMarkedErrorsofSelectedType1: TMenuItem;
    AutofixAllMarkedErrors1: TMenuItem;
    N20: TMenuItem;
    AutofixAllErrorsofSelectedType1: TMenuItem;
    AutofixAllErrors1: TMenuItem;
    N21: TMenuItem;
    E1: TMenuItem;
    acECMarkAll: TAction;
    acECUnMarkAll: TAction;
    acECFixAllMarkedErrors: TAction;
    acECFixAllMarkedErrorsTyped: TAction;
    acECFixAllErrorsTyped: TAction;
    acECMarkAllTyped: TAction;
    acECUnMarkAllTyped: TAction;
    AutofixSelectedError2: TMenuItem;
    AutofixAllErrors2: TMenuItem;
    SynEditRegexSearch: TSynEditRegexSearch;
    N22: TMenuItem;
    ProcessthroughLSynth1: TMenuItem;
    acLSynth: TAction;

    procedure acHomepageExecute(Sender: TObject);
    procedure acL3LabExecute(Sender: TObject);
    procedure acLDViewExecute(Sender: TObject);
    procedure acMLCadExecute(Sender: TObject);
    procedure acUserDefinedExecute(Sender: TObject);
    procedure acFilePrintExecute(Sender: TObject);
    procedure PluginClick(Sender: TObject);
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
    procedure acHighlightCppExecute(Sender: TObject);
    procedure acHighlightLdrawExecute(Sender: TObject);
    procedure acHighlightPascalExecute(Sender: TObject);
    procedure acincIndentExecute(Sender: TObject);
    procedure acInsertPartHeaderExecute(Sender: TObject);
    procedure acInsertUpdateLineExecute(Sender: TObject);
    procedure acErrorCheckExecute(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HelpAboutExecute(Sender: TObject);
    procedure mnPollL3LabClick(Sender: TObject);
    procedure mnPollToSelectedClick(Sender: TObject);
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
    procedure acCheckforUpdateExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acBMP2LDrawExecute(Sender: TObject);
    procedure acModelTreeViewExecute(Sender: TObject);
    procedure acInsertBFCCertifyCWExecute(Sender: TObject);
    procedure acInsertBFCCertifyCCWExecute(Sender: TObject);
    procedure acInsertBFCInvertnextExecute(Sender: TObject);
    procedure acInsertBFCClipExecute(Sender: TObject);
    procedure acInsertBFCNoClipExecute(Sender: TObject);
    procedure acECFixErrorExecute(Sender: TObject);
    procedure acECFixAllErrorsExecute(Sender: TObject);
    procedure acECMarkAllExecute(Sender: TObject);
    procedure acECUnMarkAllExecute(Sender: TObject);
    procedure acECFixAllMarkedErrorsExecute(Sender: TObject);
    procedure acECFixAllMarkedErrorsTypedExecute(Sender: TObject);
    procedure acECFixAllErrorsTypedExecute(Sender: TObject);
    procedure acECMarkAllTypedExecute(Sender: TObject);
    procedure acECUnMarkAllTypedExecute(Sender: TObject);
    procedure acFindNextUpdate(Sender: TObject);
    procedure acLSynthExecute(Sender: TObject);

  private
    { Private declarations }
    fSearchFromCaret: boolean;
    initialized:boolean;
    procedure AppInitialize;
    procedure SetErrorCheckMarks(State: Boolean; ErrorType: string);
    procedure ErrorCheckErrorFix(OnlyMarked: Boolean; ErrorType: string);
    PROCEDURE FileIsDropped ( VAR Msg : TMessage ) ; Message WM_DropFiles ;


  public
    { Public declarations }
    strChangedCompleteText:string;
    strChangedSelText:string;
    slPlugins:TStringList;
    IniFileName, IniSection: string;
    procedure LoadPlugins(AppInit:Boolean = false);
    procedure DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
    function  GetTmpFileName: String;
    procedure LoadFile(EditCh: TForm);
    procedure ShowSearchReplaceDialog(AReplace: boolean);
    procedure UpdateControls(closing:boolean);
    procedure UpdateMRU(NewFileName: TFileName= '');
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure CreateMDIChild(const CaptionName: string; new: Boolean);
  end;


var
  frMain: TfrMain;
  splashscreen: TfrSplash;


implementation

{$R *.dfm}

uses
  childwin, about, options, colordialog,
  BMP2LDraw, modeltreeview, dlgConfirmReplace;


var
  gbSearchBackwards: boolean;
  gbSearchCaseSensitive: boolean;
  gbSearchFromCaret: boolean;
  gbSearchSelectionOnly: boolean;
  gbSearchTextAtCaret: boolean;
  gbSearchWholeWords: boolean;
  gbSearchRegex: boolean;

  gsSearchText: string;
  gsSearchTextHistory: string;
  gsReplaceText: string;
  gsReplaceTextHistory: string;




procedure TfrMain.FileIsDropped ( VAR Msg : TMessage ) ;
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
  acErrorCheck.Enabled:=mdicount>0;
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
  Edit1.Enabled := mdicount>0;
  Tools1.Enabled := mdicount>0;
  Window1.Enabled := mdicount>0;
  acCommentBlock.Enabled:=mdicount>0;
  acUnCommentBlock.Enabled:=mdicount>0;
  acIncIndent.Enabled:=mdicount>0;
  acDecIndent.Enabled:=mdicount>0;
  acTrimLines.Enabled:=mdicount>0;
  acReverseWinding.Enabled := mdicount>0;

  if Assigned(ActiveMDICHild) then
  begin
    acUndo.Enabled:=(mdicount>0) and (activeMDICHild as TfrEditorChild).Memo.CanUndo;
    acRedo.Enabled:=(mdicount>0) and (activeMDICHild as TfrEditorChild).Memo.CanRedo;
  end
  else if mdicount > 0 then
  begin
    acUndo.Enabled:=(mdicount>0) and
                    (MDICHildren[mdicount-1] as TfrEditorChild).Memo.CanUndo;
    acRedo.Enabled:=(mdicount>0) and
                    (MDICHildren[mdicount-1] as TfrEditorChild).Memo.CanRedo;
  end
  else
  begin
    acUndo.Enabled:= false;
    acRedo.Enabled:= false;
  end;

  acUserDefined.Enabled:=mdicount>0;
  if mdicount=0 then acInline.enabled:=false;
  acReplaceColor.enabled:=mdicount>0;
  acWindowTile.enabled:=mdicount>0;
end;

procedure tfrMain.LoadFile(EditCh: TForm);
{---------------------------------------------------------------------
Description: Loads given Filename into the active MDI editor child
Parameter: fname: Filename
Return value: none
----------------------------------------------------------------------}
begin
  with (EditCh as TfrEditorChild) do
    if FileExists(Caption) then
    begin
      filedatetime:=FileDateToDateTime(FileAge(Caption));
      Memo.Lines.LoadFromFile(Caption);
      Memo.modified:=false;
      updatecontrols;
    end
    else
      MessageDlg('File '''+Caption+''' not found!', mtError, [mbOK], 0);
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
      LoadFile(Child);
    end;
    memo.Gutter.ShowLineNumbers := frOptions.cboMarginNumbers.Checked;
    memo.Gutter.Width := frOptions.speMarginWidth.AsInteger;
    memo.RightEdge := frOptions.speRightLine.AsInteger;
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
  regT:TRegistry;

begin
  SplashScreen := TfrSplash.Create(Application);
  try
    SplashScreen.lbState.Caption:='Initializing plugins...';
    SplashScreen.show;
    SplashScreen.update;
    screen.cursor:=-11;

    IniFileName := WindowsDir + '\LDraw.ini';
    IniSection := 'LDDP Main';
    frOptions.IniFileName := IniFileName;
    frOptions.IniSection := 'LDDP Options';

    LoadFormValues;
    frOptions.LoadFormValues;

    regT:=Tregistry.create;
    regt.OpenKey('Software\Waterproof Productions\LDDesignPad',true);
    regt.WriteString('InstallDir', application.ExeName);
    regt.free;
    slPlugins:=TStringlist.create;
    LoadPlugins(true);

    UpdateMRU;

    // Set initial directory to that of the last opened file
    // (but only if a previous file is listed)
    if LastOpen1.count > 0 then
    OpenDialog1.InitialDir := ExtractFileDir(LastOpen1[0].Caption);


    SynLDRSyn.Assign(frOptions.SynLDRSyn1);
    pmMemo.tag:=pmMemo.items.count;

    if paramcount>0 then
      for i:=1 to paramcount do
      begin
        CreateMDIChild(paramstr(i),false);
        UpdateMRU(paramstr(i));
      end;

  finally
    sleep(1500);
    screen.cursor:=0;
    SplashScreen.Free;
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
    then LoadFile(ActiveMDIChild);
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


procedure TfrMain.acErrorCheckExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Perform L3P Check
Parameter: None
Return value: None
----------------------------------------------------------------------}

var
  s: string;
  i, idx:integer;
  DATModel1: TDATModel;

  procedure AddError(LineNumber, ErrorType: string);

  var
    error: TListItem;

  begin
    error := (ActiveMDIChild as TfrEditorChild).lbInfo.Items.Add;
    error.Checked := True;
    error.SubItems.Add(LineNumber);
    error.SubItems.Add(ErrorType);
  end;

begin
  Screen.Cursor := crHourGlass;
  if (frOptions.cboDet.Checked) then
    DetThreshold := frOptions.seDet.Value;
  if frOptions.cboDist.Checked then
    DistThreshold := frOptions.seDist.Value;
  if frOptions.seCollinear.Text <> '' then
    CollinearPointsThreshold := frOptions.seCollinear.Value;

  (ActiveMDIChild as TfrEditorChild).lbInfo.Items.Clear;

  DATModel1 := TDATModel.Create;

  DATModel1.ModelText := (ActiveMDIChild as TfrEditorChild).memo.Lines.Text;

  for i := 0 to DATModel1.Count - 1 do
    if DATModel1[i] is TDATElement then
    begin
      // Check for Identical Lines
      idx := DATModel1.IndexOfLine(DATModel1[i].DATString);
      if idx <> i then
        AddError(IntToStr(i+1),'Identical to line ' + IntToStr(idx+1))
      else
      begin
        // Check For Illegal Color Number
        if (DATModel1[i] is TDATSubPart) and
           ((DATModel1[i] as TDATElement).Color = 24) then
          AddError(IntToStr(i+1),'Color 24 Illegal for this linetype');

        // Check for All Other L3P Errors
        s := L3CheckLine(DATModel1[i].DATString);
        if s <> '' then
          AddError(IntToStr(i+1),s);
      end;
    end;

  DATModel1.Free;

  with (ActiveMDIChild as TfrEditorChild) do
    if lbInfo.Items.Count > 0 then
    begin
      pnInfo.Height := 91;
      acECFixAllErrors.Enabled := True;
      acECFixAllMarkedErrors.Enabled := True;
      acECMarkAll.Enabled := True;
      acECUnMarkAll.Enabled := True;
      acECMarkAllTyped.Enabled := True;
      acECUnMarkAllTyped.Enabled := True;
      lbInfo.ItemIndex := 0;
      lbInfo.OnSelectItem(nil, lbInfo.Items[lbInfo.ItemIndex], True);
    end
    else
    begin
      pnInfo.Height := 1;
      acECFixError.Enabled := False;
      acECFixAllErrors.Enabled := False;
      acECFixAllErrorsTyped.Enabled := False;
      acECFixAllMarkedErrors.Enabled := False;
      acECFixAllMarkedErrorsTyped.Enabled := False;
      acECMarkAll.Enabled := False;
      acECUnMarkAll.Enabled := False;
      acECMarkAllTyped.Enabled := False;
      acECUnMarkAllTyped.Enabled := False;
      StatusBar.Panels[0].Text := 'No Errors Found!';
    end;
  Screen.Cursor := crDefault;
end;

procedure TfrMain.acOptionsExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Show modal option window
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  i: Integer;

begin
  frOptions.LoadFormValues;

  if frOptions.showmodal=mrOK then
  begin
    frOptions.SaveFormValues;
    SynLDRSyn.Assign(frOptions.SynLDRSyn1);
    for i := 0 to MDIChildCount - 1 do
      with (MDIChildren[i] as TfrEditorChild).memo do
      begin
        Gutter.ShowLineNumbers := frOptions.cboMarginNumbers.Checked;
        Gutter.Width := frOptions.speMarginWidth.AsInteger;
        RightEdge := frOptions.speRightLine.AsInteger;
      end;
  end
  else frOptions.LoadFormValues;
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
  if (not FileExists(frOptions.edLDVIEWDir.text+'\LDVIEW.exe')) then begin
    MessageDlg('You have to specify a valid path to LDView.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  (activeMDICHild as TfrEditorChild).memo.Lines.SaveToFile((activeMDICHild as TfrEditorChild).tempFileName);
  DOCommand(frOptions.edLDVIEWDir.text+'\LDVIEW.exe -Poll=3 "'+(activeMDICHild as TfrEditorChild).tempFileName+'"',SW_SHOWNA,false);
end;

procedure TfrMain.acMLCadExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Execute ML-Cad with active MDI-Child file
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

begin
 if (activeMDICHild as TfrEditorChild).memo.modified then
    if MessageDlg('File has been modified. '+#13+#10+'Do you want to save and then view the file in MLCad '+#13+#10+'or cancel the operation?', mtWarning, [mbOK, mbCancel], 0) =mrcancel then exit;
  acFileSaveExecute(Sender);
  if (not FIleExists(frOptions.edMLCADDir.text+'\MLCAD.exe')) then begin
    MessageDlg('You have to specify a valid path to MLCad.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  DOCommand(frOptions.edMLCadDir.text+'\MLCAD.exe "'+(activeMDICHild as TfrEditorChild).caption+'"',SW_SHOWNA,false);
end;


procedure TfrMain.acHomepageExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Open LDDP project homepage
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  OpenInBrowser('http://www.lddp.net');
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

begin
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
    if cboShowCommand.checked then
      ShowMessage(edExternal.text+' '+ParseString(edParameters.text));
    (Self.activeMDICHild as TfrEditorChild).memo.Lines.SaveToFile((Self.activeMDICHild as TfrEditorChild).tempFileName);
    DoCommand(edExternal.text+' '+ParseString(edParameters.text),opt,cboWaitforFinish.checked);
  end;
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
  libname:=copy(slplugins[(Sender as TMenuItem).tag],pos(',',slplugins[(Sender as TMenuItem).tag])+1, length(slplugins[(Sender as TMenuItem).tag]));

  with (activeMDICHild as TfrEditorChild) do
  begin
     s1:=memo.selstart;
     s2:=memo.SelLength;
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
  DOCommand(frOptions.edL3LabDir.text+'\L3Lab.exe -PollSilent -NoCache -DontAddToMRU -NotReusable -FromLDAO -A.707,0,.707,.354,.866,-.354,-.612,.5,.612 "'+(activeMDICHild as TfrEditorChild).tempFileName+'"',SW_SHOWNA,false);
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
var
  HeaderText: string;

begin
  HeaderText := '0 Part name'+#13#10+
                '0 Name: ' + ExtractFileName(ActiveMDIChild.Caption) + #13#10 +
                '0 Author: ' + frOptions.edName.text;
  if frOptions.edEmail.text <> '' then
    HeaderText := HeaderText + ' <'+frOptions.edEmail.text+'>';

  HeaderText := HeaderText + #13#10 + '0 Unofficial Element'+#13#10+
                '0 KEYWORDS your keywords'+#13#10;
  with (activeMDICHild as TfrEditorChild).memo do
  begin
    Text := HeaderText + Text;
    Undolist.AddChange(crInsert,Point(1,1),Point(1,6),'',SelectionMode);
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
    Lines.Insert(CaretY-1, '0 //' + FormatDateTime('yyyy-mm-dd',now) + ' ' +
                           frOptions.edSIG.text + ' Update description');
    Modified := true;
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

begin
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then
     begin
       startcol := BlockBegin.Y - 1;
       if BlockEnd.X = 1 then
         endcol := BlockEnd.Y - 2
       else
         endcol := BlockEnd.y - 1;

       for j := startcol to endcol do
        if (Lines[j] <> '') and (Lines[j] <> #13#10) and
           (Lines[j] <> #13) and (Lines[j] <> #10) then
          Lines[j] := '0 ' + Lines[j];
       BlockBegin := Point(1,startcol + 1);
       BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1)
     end;
   end;
end;


procedure TfrMain.acUncommentBlockExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Uncomment a zero'ed block
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  j:integer;
  startcol,endcol: Integer;
  DModel: TDATModel;

begin
   with (activeMDICHild as TfrEditorChild).memo do
   begin
     if seltext<>'' then
     begin
       startcol := BlockBegin.Y - 1;
       if BlockEnd.X = 1 then
         endcol := BlockEnd.Y - 2
       else
         endcol := BlockEnd.y - 1;

       BlockBegin := Point(1,startcol + 1);
       BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1);

       DModel := TDATModel.Create;
       DModel.ModelText := SelText;

       for j := 0 to DModel.Count-1 do
         DModel.UnCommentLine(j);

       SelText := DModel.ModelText;

       BlockBegin := Point(1,startcol + 1);
       BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1);

       DModel.Free;
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
    DATModel1.Add(Lines[CaretY-1]);
 
    (DATModel1[0] as TDATSubPart).RotationDecimalPlaces :=
      frOptions.seRotAcc.Value;
    (DATModel1[0] as TDATSubPart).PositionDecimalPlaces :=
      frOptions.sePntAcc.Value;
    DATModel1.InlinePart(0);

    DATModel1.Insert(0,'');
    DATModel1.Insert(0,'0 Original Line: '+ Lines[CaretY-1]);
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
  i, startcol, endcol:integer;
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

        startcol := BlockBegin.Y - 1;
        if BlockEnd.X = 1 then
          endcol := BlockEnd.Y - 2
        else
          endcol := BlockEnd.y - 1;

        BlockBegin := Point(1,startcol + 1);
        BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1);

        clr.ModelText := SelText;

        for i := 0 to clr.Count-1 do
          if clr[i] is TDATElement then
            if (clr[i] as TDATElement).Color = btOldColor.Tag then
            begin
              (clr[i] as TDATElement).Color := btNewColor.Tag;
              Modified := true;
            end;

        SelText := clr.ModelText;

        BlockBegin := Point(1,startcol + 1);
        BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1);
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
  SynEditPrint.SynEdit := (activeMDICHild as TfrEditorChild).memo;
  SynEditPrint.Title := activeMDICHild.caption;
  SynEditPrint.Print;
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
Description: Set polling interval to 1 sec
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 Pollevery1sec1.Checked := true;
 Pollevery3sec1.Checked := true;
 tmPoll.Enabled:=false;
 tmPoll.Interval:=1000;
 tmPoll.Enabled:=true;
end;


procedure TfrMain.Pollevery5sec1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Set polling interval to 2 secs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
 Pollevery2sec1.Checked := true;
 Pollevery5sec1.Checked := true;
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
 Pollevery5sec.Checked := true;
 Pollevery30secs1.Checked := true;
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
  PolltoL3LabLDView1.Checked := not PolltoL3LabLDView1.Checked;
end;


procedure TfrMain.acECFixErrorExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Fix an L3P Error depending on the error
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

   // Fix the error
   if pos('Bad vertex sequence, 0132',lbInfo.Items[lbInfo.ItemIndex].SubItems[1])>0 then
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
       DATElem.Free;
       lbInfo.items.delete(lbInfo.ItemIndex);
     end;
   end

   else if pos('Identical to line',lbInfo.Items[lbInfo.ItemIndex].SubItems[1])>0 then
   begin
     memo.lines[memo.CaretY-1]:='';
     lbInfo.items.delete(lbInfo.ItemIndex);
   end

   else if pos('Row 0 all zeros',lbInfo.Items[lbInfo.ItemIndex].SubItems[1])>0 then
   begin
     DATElem := TDATSubPart.Create;
     (DATElem as TDATSubPart).DATString := memo.lines[memo.CaretY-1];
     (DATElem as TDATSubPart).RM[1,2] := 1;
     memo.lines[memo.CaretY-1] := (DATElem as TDATSubPart).DATString;
     DATElem.Free;
     lbInfo.items.delete(lbInfo.ItemIndex);
   end

   else if pos('Row 1 all zeros',lbInfo.Items[lbInfo.ItemIndex].SubItems[1])>0 then
   begin
     DATElem := TDATSubPart.Create;
     (DATElem as TDATSubPart).DATString := memo.lines[memo.CaretY-1];
     (DATElem as TDATSubPart).RM[2,2] := 1;
     memo.lines[memo.CaretY-1] := (DATElem as TDATSubPart).DATString;
     DATElem.Free;
     lbInfo.items.delete(lbInfo.ItemIndex);
   end

   else if pos('Row 2 all zeros',lbInfo.Items[lbInfo.ItemIndex].SubItems[1])>0 then
   begin
     DATElem := TDATSubPart.Create;
     (DATElem as TDATSubPart).DATString := memo.lines[memo.CaretY-1];
     (DATElem as TDATSubPart).RM[3,2] := 1;
     memo.lines[memo.CaretY-1] := (DATElem as TDATSubPart).DATString;
     DATElem.Free;
     lbInfo.items.delete(lbInfo.ItemIndex);
   end

   else if pos('Bad vertex sequence, 0312',lbInfo.Items[lbInfo.ItemIndex].SubItems[1])>0 then
   begin
     DATElem := TDATQuad.Create;
     with DATElem as TDATQuad do
     begin
       DATString := memo.lines[memo.CaretY-1];
       tx := x3;
       ty := y3;
       tz := z3;
       x3 := x2;
       y3 := y2;
       z3 := z2;
       x2 := x4;
       y2 := y4;
       z2 := z4;
       x4 := tx;
       y4 := ty;
       z4 := tz;
       memo.lines[memo.CaretY-1] := DATString;
       DATElem.Free;
       lbInfo.Items.Delete(lbInfo.ItemIndex);
     end;
   end;

   if lbInfo.Items.Count < 1 then
   begin
     pnInfo.Height := 1;
     acECFixError.Enabled := False;
     acECFixAllErrors.Enabled := False;
     acECFixAllErrorsTyped.Enabled := False;
     acECFixAllMarkedErrors.Enabled := False;
     acECFixAllMarkedErrorsTyped.Enabled := False;
     acECMarkAll.Enabled := False;
     acECUnMarkAll.Enabled := False;
     acECMarkAllTyped.Enabled := False;
     acECUnMarkAllTyped.Enabled := False;
   end;
 end;
end;

procedure TfrMain.acECFixAllErrorsExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Fix all errors in L3P error list
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  ErrorCheckErrorFix(False,'');
end;

procedure TfrMain.mnPollToSelectedClick(Sender: TObject);
{---------------------------------------------------------------------
Description: switch polling to selected line
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  mnPollToSelected.Checked:=not mnPollToSelected.Checked;
  Polltoselectedlineonly1.Checked := not Polltoselectedlineonly1.Checked;
end;


procedure TfrMain.ShowSearchReplaceDialog(AReplace: boolean);
{---------------------------------------------------------------------
Description: Show Search and Replace dialogue
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  dlg: TTextSearchDialog;
begin
  Statusbar.SimpleText := '';
  if AReplace then
    dlg := TTextReplaceDialog.Create(Self)
  else
    dlg := TTextSearchDialog.Create(Self);
  with dlg do try
    // assign search options
    SearchBackwards := gbSearchBackwards;
    SearchCaseSensitive := gbSearchCaseSensitive;
    SearchFromCursor := gbSearchFromCaret;
    SearchInSelectionOnly := gbSearchSelectionOnly;
    // start with last search text
    SearchText := gsSearchText;
    if gbSearchTextAtCaret then begin
      // if something is selected search for that text
      if (activeMDICHild as TfrEditorChild).memo.SelAvail and ((activeMDICHild as TfrEditorChild).memo.BlockBegin.Y = (activeMDICHild as TfrEditorChild).memo.BlockEnd.Y)
      then
        SearchText := (activeMDICHild as TfrEditorChild).memo.SelText
      else
        SearchText := (activeMDICHild as TfrEditorChild).memo.GetWordAtRowCol((activeMDICHild as TfrEditorChild).memo.CaretXY);
    end;
    SearchTextHistory := gsSearchTextHistory;
    if AReplace then with dlg as TTextReplaceDialog do begin
      ReplaceText := gsReplaceText;
      ReplaceTextHistory := gsReplaceTextHistory;
    end;
    SearchWholeWords := gbSearchWholeWords;
    if ShowModal = mrOK then begin
      gbSearchBackwards := SearchBackwards;
      gbSearchCaseSensitive := SearchCaseSensitive;
      gbSearchFromCaret := SearchFromCursor;
      gbSearchSelectionOnly := SearchInSelectionOnly;
      gbSearchWholeWords := SearchWholeWords;
      gbSearchRegex := SearchRegularExpression;
      gsSearchText := SearchText;
      gsSearchTextHistory := SearchTextHistory;
      if AReplace then with dlg as TTextReplaceDialog do begin
        gsReplaceText := ReplaceText;
        gsReplaceTextHistory := ReplaceTextHistory;
      end;
      fSearchFromCaret := gbSearchFromCaret;
      if gsSearchText <> '' then begin
        DoSearchReplaceText(AReplace, gbSearchBackwards);
        fSearchFromCaret := TRUE;
      end;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TfrMain.DoSearchReplaceText(AReplace: boolean; ABackwards: boolean);
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
  if gbSearchRegex then
    (activeMDICHild as TfrEditorChild).memo.SearchEngine := SynEditRegexSearch
  else
    (activeMDICHild as TfrEditorChild).memo.SearchEngine := SynEditSearch;
  if (activeMDICHild as TfrEditorChild).memo.SearchReplace(gsSearchText, gsReplaceText, Options) = 0 then
  begin
    MessageBeep(MB_ICONASTERISK);
    MessageDlg('Searchtext has not been found.', mtInformation, [mbOK], 0);
    if ssoBackwards in Options then
      (activeMDICHild as TfrEditorChild).memo.BlockEnd := (activeMDICHild as TfrEditorChild).memo.BlockBegin
    else
      (activeMDICHild as TfrEditorChild).memo.BlockBegin := (activeMDICHild as TfrEditorChild).memo.BlockEnd;
    (activeMDICHild as TfrEditorChild).memo.CaretXY := (activeMDICHild as TfrEditorChild).memo.BlockBegin;
  end;

  if ConfirmReplaceDialog <> nil then
    ConfirmReplaceDialog.Free;
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
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
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
{---------------------------------------------------------------------
Description: Closes all open child windows
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  i: Integer;

begin
   for i:= MDIChildCount-1 downto 0 do
     MDIChildren[i].Close;
end;


procedure TfrMain.acWindowCascadeExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Cascades the child windows
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frMain.Cascade;
end;


procedure TfrMain.acWindowTileExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Tiles the child windows
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frMain.Tile;
end;

procedure TfrMain.acReverseWindingExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Reverse the winding of a block of text
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  startcol, endcol, i : Integer;
  DATModel1: TDATModel;

begin
  with (ActiveMDIChild as TfrEditorChild).memo do
  begin
    DATModel1 := TDATModel.Create;

    startcol := BlockBegin.Y - 1;

    if BlockEnd.X = 1 then
      endcol := BlockEnd.Y - 2
    else
      endcol := BlockEnd.y - 1;

    BlockBegin := Point(1,startcol + 1);
    BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1);

    if SelLength <> 0 then
    begin
      DATModel1.ModelText := SelText;

      for i := 0 to DATModel1.Count-1 do
        if DATModel1[i] is TDATPolygon then
          (DATModel1[i] as TDATPolygon).ReverseWinding;

      SelText := DATModel1.ModelText;

      BlockBegin := Point(1,startcol + 1);
      BlockEnd := Point(Length(Lines[endcol]) + 1, endcol + 1);

      DATModel1.Free;
    end;
//    Modified := True;
  end;
end;



procedure TfrMain.acCheckforUpdateExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Checks for a newer version looking for a special url
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var strVersionHTTP:string;
    strActualVersion:string;

begin
  strActualVersion := GetWindowsVersion;
  strVersionHTTP := http.Get('http://lddp.sourceforge.net/lddp.ver');
  if trim(strVersionHTTP)=strActualVersion then MessageDlg('There is no newer version available.', mtInformation, [mbOK], 0)
  else
  begin
    MessageDlg('There is a newer version available!!!', mtInformation, [mbOK], 0);
    OpenInBrowser('http://www.lddp.net');
  end;
end;

procedure TfrMain.LoadFormValues;
{---------------------------------------------------------------------
Description: Loads form values from the LDraw.ini file
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

var
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
  Left := LDDPini.ReadInteger(IniSection, 'frMain_Left', Left);
  Top := LDDPini.ReadInteger(IniSection, 'frMain_Top', Top);
  Width := LDDPini.ReadInteger(IniSection, 'frMain_Width', Width);
  Height := LDDPini.ReadInteger(IniSection, 'frMain_Height', Height);
  LDDPini.Free;
end;

procedure TfrMain.SaveFormValues;
{---------------------------------------------------------------------
Description: Saves form values to the LDraw.ini file
Parameter: Standard
Return value: None
----------------------------------------------------------------------}

var
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFileName);
  LDDPini.EraseSection(IniSection);
  LDDPini.WriteString(IniSection, 'InstallDir', ExtractFilePath(Application.ExeName));
  LDDPini.WriteInteger(IniSection, 'frMain_Left', Left);
  LDDPini.WriteInteger(IniSection, 'frMain_Top', Top);
  LDDPini.WriteInteger(IniSection, 'frMain_Width', Width);
  LDDPini.WriteInteger(IniSection, 'frMain_Height', Height);
  LDDPini.UpdateFile;
  LDDPini.Free;
end;


procedure TfrMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormValues;
end;

procedure TfrMain.acBMP2LDrawExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Starts BMP2DAT
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frBMP2LDrawMain.showmodal;
end;

procedure TfrMain.acModelTreeViewExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Shows the model tree form
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  frModelTreeView.ShowModal;
end;

procedure TfrMain.acInsertBFCCertifyCWExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inserts BFC Text
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  with (activeMDICHild as TfrEditorChild).memo do
  begin
    Lines.Insert(CaretY-1, '0 BFC CERTIFY CW');
    Modified := true;
  end;
end;

procedure TfrMain.acInsertBFCCertifyCCWExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inserts BFC Text
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  with (activeMDICHild as TfrEditorChild).memo do
  begin
    Lines.Insert(CaretY-1, '0 BFC CERTIFY CCW');
    Modified := true;
  end;
end;

procedure TfrMain.acInsertBFCInvertnextExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inserts BFC Text
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  with (activeMDICHild as TfrEditorChild).memo do
  begin
    Lines.Insert(CaretY-1, '0 BFC INVERTNEXT');
    Modified := true;
  end;
end;

procedure TfrMain.acInsertBFCClipExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inserts BFC Text
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  with (activeMDICHild as TfrEditorChild).memo do
  begin
    Lines.Insert(CaretY-1, '0 BFC CLIP');
    Modified := true;
  end;
end;

procedure TfrMain.acInsertBFCNoClipExecute(Sender: TObject);
{---------------------------------------------------------------------
Description: Inserts BFC Text
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  with (activeMDICHild as TfrEditorChild).memo do
  begin
    Lines.Insert(CaretY-1, '0 BFC NOCLIP');
    Modified := true;
  end;
end;

procedure TfrMain.SetErrorCheckMarks(State: Boolean; ErrorType: string);

var
  i: Integer;
  errorstring: string;

begin
  if pos('Identical to line', ErrorType) > 0 then
    ErrorType := 'Identical to line'
  else if pos('Vertices not coplaner', ErrorType) > 0 then
    ErrorType := 'Vertices not coplaner'
  else if pos('Collinear vertices', ErrorType) > 0 then
    ErrorType := 'Collinear vertices';

  with ActiveMDIChild as TfrEditorChild do
    if lbInfo.Items.Count > 0 then
      for i := 0 to lbInfo.Items.Count - 1 do
      begin
        if pos('Identical to line', lbInfo.Items[i].SubItems[1]) > 0 then
          errorstring := 'Identical to line'
        else if pos('Vertices not coplaner', lbInfo.Items[i].SubItems[1]) > 0 then
          errorstring := 'Vertices not coplaner'
        else if pos('Collinear vertices', lbInfo.Items[i].SubItems[1]) > 0 then
          errorstring := 'Collinear vertices'
        else
          errorstring := lbInfo.Items[i].SubItems[1];

        if (ErrorType = '') or (ErrorType = errorstring) then
          lbInfo.Items[i].Checked := State;
      end;
end;

procedure TfrMain.acECMarkAllExecute(Sender: TObject);

begin
  SetErrorCheckMarks(True, '');
end;

procedure TfrMain.acECUnMarkAllExecute(Sender: TObject);
begin
  SetErrorCheckMarks(False, '');
end;

procedure TfrMain.acECMarkAllTypedExecute(Sender: TObject);
begin
  with ActiveMDIChild as TfrEditorChild do
     SetErrorCheckMarks(True, lbInfo.Items[lbInfo.ItemIndex].SubItems[1]);
end;

procedure TfrMain.acECUnMarkAllTypedExecute(Sender: TObject);
begin
  with ActiveMDIChild as TfrEditorChild do
     SetErrorCheckMarks(False, lbInfo.Items[lbInfo.ItemIndex].SubItems[1]);
end;

procedure TfrMain.ErrorCheckErrorFix(OnlyMarked: Boolean; ErrorType: string);

var
  i: Integer;

begin
  if pos('Identical to line', ErrorType) > 0 then
    ErrorType := 'Identical to line';

  with (ActiveMDIChild as TfrEditorChild) do
    if lbInfo.Items.Count > 0 then
      for i:=lbInfo.Items.Count - 1 downto 0 do
      begin
        lbInfo.ItemIndex := i;
        if pos('Identical to line', lbInfo.Items[lbInfo.ItemIndex].SubItems[1]) > 0 then
          lbInfo.Items[lbInfo.ItemIndex].SubItems[1] := 'Identical to line';
        if ((not OnlyMarked) and (ErrorType = '')) or
           ((not OnlyMarked) and (lbInfo.Items[lbInfo.ItemIndex].SubItems[1] = ErrorType)) or
           ((OnlyMarked and lbInfo.Items[lbInfo.ItemIndex].Checked) and (ErrorType = '')) or
           ((OnlyMarked and lbInfo.Items[lbInfo.ItemIndex].Checked) and (lbInfo.Items[lbInfo.ItemIndex].SubItems[1] = ErrorType)) then
          acECFixErrorExecute(nil);
      end;
end;

procedure TfrMain.acECFixAllMarkedErrorsExecute(Sender: TObject);
begin
  ErrorCheckErrorFix(True,'');
end;

procedure TfrMain.acECFixAllMarkedErrorsTypedExecute(Sender: TObject);
begin
  with ActiveMDIChild as TfrEditorChild do
   ErrorCheckErrorFix(True,lbInfo.Items[lbInfo.ItemIndex].SubItems[1]);
end;

procedure TfrMain.acECFixAllErrorsTypedExecute(Sender: TObject);
begin
  with ActiveMDIChild as TfrEditorChild do
   ErrorCheckErrorFix(False,lbInfo.Items[lbInfo.ItemIndex].SubItems[1]);
end;

procedure TfrMain.acFindNextUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := gsSearchText <> '';
end;

procedure TfrMain.acLSynthExecute(Sender: TObject);

var
  TempFile: TStringList;
  CommandFile,CommandLine,InputFile,OutputFile:string;

begin
  if (not FileExists(frOptions.edLSynthDir.text+'\lsynthcp.exe')) then begin
    MessageDlg('You have to specify a valid path to lsynthcp.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  OutputFile:=GetShortFileName(GetTempDir+GetTmpFileName);
  TempFile:=TstringList.create;
  CommandLine:=GetShortFileName(frOptions.edLSynthDir.text)+'\lsynthcp.exe ';
  InputFile:=GetShortFileName(extractFilePath((activeMDICHild as TfrEditorChild).TempFileName))+ExtractFIleName((activeMDICHild as TfrEditorChild).TempFileName);
  (activeMDICHild as TfrEditorChild).memo.lines.SaveToFile(InputFile);
  TempFile.add(CommandLine+' '+InputFile+' '+OutputFile);
  CommandFile:=GetShortFileName(GetTempDir)+GetTMPFIleName+'.bat';
  TempFile.SaveToFile(CommandFile);
  DOCommand(GetDOSVar('COMSPEC')+' /C '+ CommandFile,SW_HIDE,true);
  DeleteFile(CommandFile);
  TempFile.loadfromfile(OutputFile);
  (activeMDICHild as TfrEditorChild).memo.Text := TempFile.Text;
  TempFile.Free;
  DeleteFile(OutputFile);
  DeleteFile(InputFile);
end;

end.
