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
unit main;

interface

uses
  errorbar, gnugettext, SciSearchReplaceBase, SciSearchReplace, JvAppInst,
  SciLanguageManager, JvDockTree, JvDockControlForm, JvDockDelphiStyle,
  JvComponentBase, SciPropertyMgr, SciScintillaOptionsDlg, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Dialogs, ExtCtrls, Menus,
  ImgList, Controls, StdActns, Classes, ActnList, ComCtrls, ToolWin,
  SciScintillaBase, SciScintillaMemo, SciScintilla, SciScintillaLDDP,
  SciDocTabCtrl, Windows, Graphics, Forms, Messages, SysUtils, Types,
  StdCtrls, ShellAPI, sciPrint, SciScintillaOptionsFrm, SciAutoComplete,
  SciCallTips, DATBase, AppEvnts, commonprocs;

type
  TfrMain = class(TForm)
    acCommentBlock: TAction;
    acCommentBlock1: TMenuItem;
    acDecIndent: TAction;
    acEditCopy: TEditCopy;
    acEditCut: TEditCut;
    acEditPaste: TEditPaste;
    acFileExit: TAction;
    acFileNew: TAction;
    acFileRevert: TAction;
    acFileSave: TAction;
    acFind: TAction;
    acFindNext: TAction;
    acHomepage: TAction;
    acincIndent: TAction;
    acInline: TAction;
    acInsertPartHeader: TAction;
    acInsertHistoryStatement: TAction;
    acL3Lab: TAction;
    acLDView: TAction;
    acMLCad: TAction;
    acMRUList: TAction;
    acOptions: TAction;
    acRedo: TAction;
    acReplace: TAction;
    acReplaceColor: TAction;
    acSelectAll: TAction;
    MainFormActions: TActionList;
    acTrimLines: TAction;
    acUncommentBlock: TAction;
    acUncommentBlock1: TMenuItem;
    acUndo: TAction;
    acUserDefined: TAction;
    btPolling: TToolButton;
    ChangeColor1: TMenuItem;
    ControlBar1: TControlBar;
    Cut1: TMenuItem;
    pmuEditing: TMenuItem;
    pmuExternalPrograms: TMenuItem;
    pmuFile: TMenuItem;
    HelpAbout: TAction;
    ilProgramIcons: TImageList;
    InlinePart1: TMenuItem;
    Insert2: TMenuItem;
    MenuItem2: TMenuItem;
    mnuEnablePolling: TMenuItem;
    mnuPollToSelected: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    Paste1: TMenuItem;
    Plugins3: TMenuItem;
    pmMemo: TPopupMenu;
    pmPolling: TPopupMenu;
    pmToolbars: TPopupMenu;
    mnuPollEvery5sec: TMenuItem;
    mnuPollEvery1sec: TMenuItem;
    mnuPollevery2sec: TMenuItem;
    StandardPartHeader2: TMenuItem;
    StatusBar: TStatusBar;
    tmPoll: TTimer;
    tbrFile: TToolBar;
    tbrExternalPrograms: TToolBar;
    tbrEditing: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    tbUserDefined: TToolButton;
    ToolButton28: TToolButton;
    ToolButton30: TToolButton;
    ToolButton32: TToolButton;
    ToolButton4: TToolButton;
    ToolButton8: TToolButton;
    TrimLines2: TMenuItem;
    UpdateHeader2: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    acFileOpen: TAction;
    acFileSaveAs: TAction;
    acFilePrint: TAction;
    acFileCloseAll: TAction;
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
    Toolbars: TMenuItem;
    mnuFile: TMenuItem;
    mnuEditing: TMenuItem;
    mnuExternalPrograms: TMenuItem;
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
    mnuUserDefined: TMenuItem;
    InlinePart2: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    LDDPHomepage1: TMenuItem;
    CheckforUpdate1: TMenuItem;
    ReverseWinding1: TMenuItem;
    acReverseWinding: TAction;
    ReverseWinding2: TMenuItem;
    ErrorCheck1: TMenuItem;
    acCheckforUpdate: TAction;
    acBMP2LDraw: TAction;
    ConvertBitmaptoLDraw1: TMenuItem;
    N7: TMenuItem;
    View1: TMenuItem;
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
    N22: TMenuItem;
    ProcessthroughLSynth1: TMenuItem;
    acLSynth: TAction;
    GenrateBendibleObject1: TMenuItem;
    acBendableObject: TAction;
    acAutoRound: TAction;
    AutoRoundSelection1: TMenuItem;
    AutoRoundSelection2: TMenuItem;
    GenerateBendibleObject1: TMenuItem;
    acSortSelection: TAction;
    N14: TMenuItem;
    CopyErrorListToClipboard1: TMenuItem;
    mnuMeta: TMenuItem;
    mnuMeta2: TMenuItem;
    acTriangleCombine: TAction;
    CombineTrianglesIntoQuad1: TMenuItem;
    CombineTrianglesIntoQuad2: TMenuItem;
    SortByPosition1: TMenuItem;
    acRandomizeColors: TAction;
    RandomizeColorsinSelection1: TMenuItem;
    RandomizeColorsinSelection2: TMenuItem;
    mnuPollOnRequest: TMenuItem;
    acMirrorX: TAction;
    acMirrorY: TAction;
    acMirrorZ: TAction;
    Mirror1: TMenuItem;
    XAxis1: TMenuItem;
    YAxis1: TMenuItem;
    ZAxis1: TMenuItem;
    N13: TMenuItem;
    MirrorLineOn1: TMenuItem;
    XAxis2: TMenuItem;
    YAxis2: TMenuItem;
    ZAxis2: TMenuItem;
    tbrColorReplace: TToolBar;
    mnuColorReplace: TMenuItem;
    acColorReplaceShortcut: TAction;
    tbnColor0: TToolButton;
    tbnColor1: TToolButton;
    tbnColor2: TToolButton;
    tbnColor3: TToolButton;
    tbnColor4: TToolButton;
    tbnColor5: TToolButton;
    tbnColor6: TToolButton;
    tbnColor7: TToolButton;
    tbnColor8: TToolButton;
    tbnColor9: TToolButton;
    tbnColor10: TToolButton;
    tbnColor11: TToolButton;
    tbnColor12: TToolButton;
    tbnColor13: TToolButton;
    tbnColor14: TToolButton;
    tbnColor15: TToolButton;
    pmExternal: TPopupMenu;
    pmuColorReplace: TMenuItem;
    acSubFile: TAction;
    SubfileSelection1: TMenuItem;
    SubfileSelection2: TMenuItem;
    Sort1: TMenuItem;
    http: TIdHTTP;
    EditorOptions1: TMenuItem;
    acEditorOptions: TAction;
    DocumentTabs: TSciDocumentTabControl;
    editor: TScintillaLDDP;
    EditorPropertyLoader: TSciPropertyLoader;
    acErrorList: TAction;
    mnuErrorList: TMenuItem;
    acFileClose: TAction;
    JvDockServer1: TJvDockServer;
    JvDockDelphiStyle1: TJvDockDelphiStyle;
    pmTab: TPopupMenu;
    CloseFile1: TMenuItem;
    LanguageManager: TSciLanguageManager;
    AppInst: TJvAppInstances;
    SearchReplaceDlg: TSciSearchReplace;
    tbrTools: TToolBar;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton43: TToolButton;
    ToolButton9: TToolButton;
    ToolButton12: TToolButton;
    mnuTools: TMenuItem;
    pmuTools: TMenuItem;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    pmMirror: TPopupMenu;
    XAxis3: TMenuItem;
    YAxis3: TMenuItem;
    ZAxis3: TMenuItem;
    mnuPollOnCustomInterval: TMenuItem;
    AutoComplete: TSciAutoComplete;
    ApplicationEvents1: TApplicationEvents;
    printer: TSciPrinter;
    Search1: TMenuItem;
    acMoveXPos: TAction;
    acMoveXNeg: TAction;
    acMoveYPos: TAction;
    acMoveYNeg: TAction;
    acMoveZPos: TAction;
    acMoveZNeg: TAction;
    acMoveRotXPos: TAction;
    acMoveRotXNeg: TAction;
    acMoveRotYPos: TAction;
    acMoveRotYNeg: TAction;
    acMoveRotZPos: TAction;
    acMoveRotZNeg: TAction;
    acSaveAll: TAction;
    tbrMovement: TToolBar;
    ToolButton7: TToolButton;
    ToolButton29: TToolButton;
    ToolButton42: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    ToolButton50: TToolButton;
    ToolButton51: TToolButton;
    ToolButton52: TToolButton;
    ToolButton53: TToolButton;
    tbrSearch: TToolBar;
    ToolButton3: TToolButton;
    ToolButton27: TToolButton;
    ToolButton31: TToolButton;
    ToolButton44: TToolButton;
    ToolButton54: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton55: TToolButton;
    ToolButton56: TToolButton;
    ToolButton5: TToolButton;
    mnuSearch: TMenuItem;
    mnuMovement: TMenuItem;
    pmuSearch: TMenuItem;
    pmuMovement: TMenuItem;
    acViewFileToolbar: TAction;
    acViewSearchToolbar: TAction;
    acViewToolsToolbar: TAction;
    acViewExternalProgramToolbar: TAction;
    acViewMovementToolbar: TAction;
    acViewEditToolbar: TAction;
    acViewColorReplaceToolbar: TAction;
    IncreaseIndent1: TMenuItem;
    DecreaseIndent1: TMenuItem;
    Comment2: TMenuItem;
    Uncomment2: TMenuItem;
    rimBlankLines1: TMenuItem;
    tbrGrid: TToolBar;
    ToolButton6: TToolButton;
    ToolButton24: TToolButton;
    ToolButton33: TToolButton;
    acMoveGridFine: TAction;
    acMoveGridMedium: TAction;
    acMoveGridCoarse: TAction;
    acViewGridToolbar: TAction;
    N11: TMenuItem;
    Move1: TMenuItem;
    Rotate1: TMenuItem;
    RotateX1: TMenuItem;
    X1: TMenuItem;
    Y1: TMenuItem;
    Y2: TMenuItem;
    Z1: TMenuItem;
    Z2: TMenuItem;
    RotateX2: TMenuItem;
    RotateX3: TMenuItem;
    RotateY1: TMenuItem;
    RotateY2: TMenuItem;
    RotateZ1: TMenuItem;
    RotaeZ1: TMenuItem;
    GridGranularity1: TMenuItem;
    ModelTree1: TMenuItem;
    MediumGrid1: TMenuItem;
    FineGrid1: TMenuItem;
    N12: TMenuItem;
    acMoveSnapToGrid: TAction;
    SnaptoGrid1: TMenuItem;
    Movement1: TMenuItem;
    N9: TMenuItem;
    N15: TMenuItem;
    acPollEnablePolling: TAction;
    acPollToSelectedLine: TAction;
    acPoll1Second: TAction;
    acPoll2Seconds: TAction;
    acPoll5Seconds: TAction;
    acPollOnDemand: TAction;
    acPollCustom: TAction;
    Polling1: TMenuItem;
    EnablePolling1: TMenuItem;
    PollToSelectedLine1: TMenuItem;
    N6: TMenuItem;
    N1SecondPollInterval1: TMenuItem;
    N2SecondsPollInterval1: TMenuItem;
    N5SecondsPollInterval1: TMenuItem;
    CustomPollInterval1: TMenuItem;
    CustomPollInterval2: TMenuItem;

    procedure acHomepageExecute(Sender: TObject);
    procedure acL3LabExecute(Sender: TObject);
    procedure acLDViewExecute(Sender: TObject);
    procedure acMLCadExecute(Sender: TObject);
    procedure acUserDefinedExecute(Sender: TObject);
    procedure PluginClick(Sender: TObject);
    procedure acOptionsExecute(Sender: TObject);
    procedure acInlineExecute(Sender: TObject);
    procedure acCommentBlockExecute(Sender: TObject);
    procedure acDecIndentExecute(Sender: TObject);
    procedure acEditCopyExecute(Sender: TObject);
    procedure acEditCutExecute(Sender: TObject);
    procedure acEditPasteExecute(Sender: TObject);
    procedure acFileExitExecute(Sender: TObject);
    procedure acFileNewExecute(Sender: TObject);
    procedure acFileRevertExecute(Sender: TObject);
    procedure acFileSaveExecute(Sender: TObject);
    procedure acFindExecute(Sender: TObject);
    procedure acFindNextExecute(Sender: TObject);
    procedure acincIndentExecute(Sender: TObject);
    procedure acInsertPartHeaderExecute(Sender: TObject);
    procedure acInsertHistoryStatementExecute(Sender: TObject);
    procedure acMRUListExecute(Sender: TObject);
    procedure acRedoExecute(Sender: TObject);
    procedure acReplaceColorExecute(Sender: TObject);
    procedure acReplaceExecute(Sender: TObject);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acTrimLinesExecute(Sender: TObject);
    procedure acUncommentBlockExecute(Sender: TObject);
    procedure acUndoExecute(Sender: TObject);
    procedure btPollingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HelpAboutExecute(Sender: TObject);
    procedure tmPollTimer(Sender: TObject);
    procedure acFileSaveAsExecute(Sender: TObject);
    procedure acFileOpenExecute(Sender: TObject);
    procedure acFileCloseAllExecute(Sender: TObject);
    procedure acReverseWindingExecute(Sender: TObject);
    procedure acCheckforUpdateExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acBMP2LDrawExecute(Sender: TObject);
    procedure acFindNextUpdate(Sender: TObject);
    procedure acLSynthExecute(Sender: TObject);
    procedure acBendableObjectExecute(Sender: TObject);
    procedure acAutoRoundExecute(Sender: TObject);
    procedure MetaMenuClick(Sender: TObject);
    procedure acTriangleCombineExecute(Sender: TObject);
    procedure acRandomizeColorsExecute(Sender: TObject);
    procedure acMirrorExecute(Sender: TObject);
    procedure acColorReplaceShortcutExecute(Sender: TObject);
    procedure tbUserDefinedClick(Sender: TObject);
    procedure acSubFileExecute(Sender: TObject);
    procedure acSortSelectionExecute(Sender: TObject);
    procedure acEditorOptionsExecute(Sender: TObject);
    procedure SearchReplaceDlgTextNotFound(Sender: TObject);
    procedure acErrorListExecute(Sender: TObject);
    procedure editorUpdateUI(Sender: TObject);
    procedure acFileCloseExecute(Sender: TObject);
    procedure DocumentTabsClosing(Sender: TObject; const TabIndex: Integer;
      var AllowClose: Boolean);
    procedure DocumentTabsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DocumentTabsChange(Sender: TObject);
    procedure AppInstCmdLineReceived(Sender: TObject;
      CmdLine: TStrings);
    procedure CloseFile1Click(Sender: TObject);
    procedure editorDwellStart(Sender: TObject; const position: Integer; x,
      y: Integer);
    procedure editorDwellEnd(Sender: TObject; const position: Integer; x,
      y: Integer);
    procedure acFilePrintExecute(Sender: TObject);
    procedure acSaveAllExecute(Sender: TObject);
    procedure acViewFileToolbarExecute(Sender: TObject);
    procedure acViewSearchToolbarExecute(Sender: TObject);
    procedure acViewToolsToolbarExecute(Sender: TObject);
    procedure acViewExternalProgramToolbarExecute(Sender: TObject);
    procedure acViewMovementToolbarExecute(Sender: TObject);
    procedure acViewEditToolbarExecute(Sender: TObject);
    procedure acViewColorReplaceToolbarExecute(Sender: TObject);
    procedure acMoveXPosExecute(Sender: TObject);
    procedure acMoveXNegExecute(Sender: TObject);
    procedure acMoveYPosExecute(Sender: TObject);
    procedure acMoveYNegExecute(Sender: TObject);
    procedure acMoveZPosExecute(Sender: TObject);
    procedure acMoveZNegExecute(Sender: TObject);
    procedure acMoveRotXPosExecute(Sender: TObject);
    procedure acMoveRotXNegExecute(Sender: TObject);
    procedure acMoveRotYPosExecute(Sender: TObject);
    procedure acMoveRotYNegExecute(Sender: TObject);
    procedure acMoveRotZPosExecute(Sender: TObject);
    procedure acMoveRotZNegExecute(Sender: TObject);
    procedure acViewGridToolbarExecute(Sender: TObject);
    procedure acMoveGridCoarseExecute(Sender: TObject);
    procedure acMoveGridMediumExecute(Sender: TObject);
    procedure acMoveGridFineExecute(Sender: TObject);
    procedure SetPollTime(Sender: TObject);
    procedure acPollEnablePollingExecute(Sender: TObject);
    procedure acPollToSelectedLineExecute(Sender: TObject);
    procedure acPollOnDemandExecute(Sender: TObject);
    procedure acMoveSnapToGridExecute(Sender: TObject);
    procedure editorModified(Sender: TObject; const position,
      modificationType: Integer; text: PAnsiChar; const len, linesAdded, line,
      foldLevelNow, foldLevelPrev: Integer);

  private
    TabRightClickIndex: Integer;
    Initialized: Boolean;
    GridSetting: TGridSettings;
    GridType: TGridType;

  protected
    procedure AppInitialize;
    procedure FileIsDropped(var Msg : TMessage); message WM_DropFiles ;
    procedure BuildMetaMenu;
    function tempFileName: string;
    procedure SetKeyWordList;

  public
    PluginActionList: TActionList;
    strChangedCompleteText, strChangedSelText: string;
    procedure LoadPlugins;
    procedure OpenFile(filename: string);
    procedure CloseFile(DocNumber: Integer);
    procedure SaveFile(DocNumber: Integer);
    procedure UpdateMRU(NewFileName: TFileName = '');
    procedure LoadFormValues;
    procedure SaveFormValues;
  end;


var
  frMain: TfrMain;

implementation

{$R *.dfm}

uses
  about, options, colordialog, BezWindow, sorting, splash, 
  BMP2LDraw, dlgSubpart, windowsspecific,
  DATModel, DATUtils, DATCheck, DATErrorFix, SciStreamDefault,
  StrUtils, Registry, IniFiles, SciResLang, Contnrs;

var
  splashscreen: TfrSplash;

// General Editor Actions

procedure TfrMain.acEditCutExecute(Sender: TObject);
// Cut text from active editor window
begin
 editor.Cut;
end;

procedure TfrMain.acEditCopyExecute(Sender: TObject);
// Copy text from active editor window
begin
 editor.Copy;
end;

procedure TfrMain.acEditPasteExecute(Sender: TObject);
// Paste text into active editor window
begin
  editor.Paste;
end;

procedure TfrMain.acUndoExecute(Sender: TObject);
// Undo in active editor child
begin
  editor.Undo;
end;

procedure TfrMain.acRedoExecute(Sender: TObject);
// Redo in active editor child
begin
  editor.Redo;
end;

procedure TfrMain.acIncIndentExecute(Sender: TObject);
// Indent line/selection based on tabWidth
var
  currentindent, lineindent, startline, endline, i: Integer;

begin
  editor.ExpandSelection(startline, endline);
  currentindent:= editor.GetIndent;
  if currentindent = 0 then
    currentindent := editor.GetTabWidth;
  for i := startline to endline do
  begin
    lineindent := editor.GetLineIndentation(i);
    editor.SetLineIndentation(i, lineindent + currentindent);
  end;
end;

procedure TfrMain.acDecIndentExecute(Sender: TObject);
// Un-indent line/selection based on tabWidth
var
  currentindent, startline, endline, i: Integer;
  newindent : Cardinal;
begin
  editor.ExpandSelection(startline, endline);
  currentindent:= editor.GetIndent;
  if currentindent = 0 then
    currentindent := editor.GetTabWidth;

  for i := startline to endline do
  begin
    newindent := editor.GetLineIndentation(i) - currentindent;
    editor.SetLineIndentation(i, newindent);
  end;
end;

procedure TfrMain.acInsertPartHeaderExecute(Sender: TObject);
// Insert standard LDraw part header
var
  HeaderText: string;

begin
  HeaderText := '0 Part name'+ #13#10 +
                '0 Name: ' + ExtractFileName(DocumentTabs.ActiveDocument.FileName) + #13#10 +
                '0 Author: ' + frOptions.edName.text;
  if frOptions.edUsername.text <> '' then
    HeaderText := HeaderText + ' [' + frOptions.edUsername.text + ']';

  HeaderText := HeaderText + #13#10 + '0 !LDRAW_ORG Unofficial Part';

  editor.Lines.Insert(0, HeaderText);
  editor.Modified := true;
end;

procedure TfrMain.acInsertHistoryStatementExecute(Sender: TObject);
// Insert standard update line
begin
  editor.Lines.Insert(editor.LineFromPosition(editor.GetCurrentPos),
               '0 !HISTORY ' + FormatDateTime('yyyy-mm-dd', Now) + ' [' +
               frOptions.edUsername.text + '] Update description');
  editor.Modified := true;
end;

procedure TfrMain.acCommentBlockExecute(Sender: TObject);
// Comment selected text
var
  j:integer;
  commenttext: TStringList;
  startline, endline: Integer;

begin
  //Expand Selection block
  editor.ExpandSelection(startline, endline);

  commenttext := TStringList.Create;
  commenttext.Text := editor.SelText;

  for j := 0 to commenttext.Count - 1 do
    if not IsBlankLine(commenttext[j]) then
      commenttext[j] := '0 ' + commenttext[j];

  editor.SelText := StripEndingCRLF(commenttext.Text);

  editor.SelectLines(startline, endline);
  commenttext.Free;
end;

procedure TfrMain.acUncommentBlockExecute(Sender: TObject);
// Uncomment selected text
var
  j: Integer;
  startline,endline: Integer;
  DModel: TDATModel;

begin
  editor.ExpandSelection(startline, endline);

  DModel := LDDPCreateDATModel;
  DModel.ModelText := editor.SelText;

  for j := 0 to DModel.Count-1 do
    DModel.UnCommentLine(j);

  editor.SelText := DModel.ModelText;

  editor.SelectLines(startline, endline);
  DModel.Free;
end;

procedure TfrMain.acTrimLinesExecute(Sender: TObject);
// Trim empty Lines
var
  j:integer;
  trimtext: TStringList;
  startline, endline: Integer;

begin
  //Expand Selection block
  editor.ExpandSelection(startline, endline);

  trimtext := TStringList.Create;
  trimtext.Text := editor.SelText;

  for j := trimtext.Count - 1 downto 0 do
    if IsBlankLine(trimtext[j]) then
      trimtext.Delete(j);

  editor.SelText := StripEndingCRLF(trimtext.Text);

  editor.SelectLines(startline, endline);
  trimtext.Free;
end;

procedure TfrMain.acInlineExecute(Sender: TObject);
// Inline - Transform a subfile command into an expanded list of the subfiles contents
var
  i: Integer;
  DATModel1: TDATModel;

begin
  DATModel1 := LDDPCreateDATModel;

  editor.ExpandSelection(i, i);

  DATModel1.FilePath := ExtractFilePath(DocumentTabs.ActiveDocument.Filename);
  DATModel1.ModelText := editor.SelText;

  for i := DATModel1.Count - 1 downto 0 do
    if DATModel1[i] is TDATSubPart then
    begin
      DATModel1.Insert(i,'');
      DATModel1.Insert(i,'0 Inlined by LDDesignPad');
      DATModel1.Insert(i,'0 Original Line: ' + DATModel1[i+2].DATString );
      DATModel1.Insert(i+4, '0 End of Inlined Part');
      DATModel1.Insert(i+5, '');
      DATModel1.InlinePart(i+3, frOptions.SearchPaths);
    end;

  editor.SelText := DATModel1.ModelText;
  editor.Modified := true;

  DATModel1.Free;
end;

procedure TfrMain.acSelectAllExecute(Sender: TObject);
// Select all text in active editor child
begin
  editor.SelectAll;
end;

procedure TfrMain.acReverseWindingExecute(Sender: TObject);
// Reverse the winding of a block of text
begin
  editor.ReverseWinding;
end;

procedure TfrMain.acTriangleCombineExecute(Sender: TObject);
// Combine 2 triangle commands into a quad command
// Also checks for non coplanarity and issues a warning
var
  DModel: TDATModel;
  i, j, startline, endline: Integer;
  quad: TDATQuad;
  line1, line2: TDATGeometric;
  errorlist: TObjectList;
  DoNotCombine: Boolean;

begin
  DModel := LDDPCreateDATModel;
  line1 := TDATTriangle.Create;
  line2 := TDATTriangle.Create;

  editor.ExpandSelection(startline, endline);
  DModel.ModelText := editor.SelText;

  i := 0;

  if DModel.Count >= 2 then
    while i < DModel.Count do
    begin
      if i <= DModel.Count - 2 then
        if (DModel[i] is TDATTriangle) and (DModel[i+1] is TDATTriangle) then
        begin
          line1.DATString := DModel[i].DATString;
          line2.DATString := DModel[i+1].DATString;
          quad := CombineGeometrics(line1, line2);
          if Assigned(quad) then
          begin
            errorlist := L3CheckLine(quad.DATString);
            DoNotCombine := False;
            if errorlist.Count > 0 then
            begin
              for j := 0 to errorlist.Count - 1 do
                if (errorlist[j] as TDATError).ErrorType = deBowtieQuad then
                  if (errorlist[j] as TDATError).IsBowtieType1423 then
                    FixBowtieQuad1423(quad)
                  else
                    FixBowtieQuad1243(quad);
              errorlist := L3CheckLine(quad.DATString);
              for j := 0 to errorlist.Count - 1 do
                if ((errorlist[j] as TDATError).ErrorType = deCollinearVertices) or
                   ((errorlist[j] as TDATError).ErrorType = deNonCoplanerVertices) or
                   ((errorlist[j] as TDATError).ErrorType = deConcaveQuad) then
                  case MessageDlg(_('Combining these triangles:') + #13#10 +
                                    line1.DATString + ' (Line: ' + IntToStr(editor.LineFromPosition(editor.SelStart) + i) + ')' + #13#10 +
                                    line2.DATString + ' (Line: ' + IntToStr(editor.LineFromPosition(editor.SelStart) + i + 1) + ')' + #13#10 +
                                    _('will result in a concave quad or a quad with' + #13#10 +
                                    'collinear or not coplaner vertices' + #13#10 +
                                    'Combine anyway?'), mtWarning, [mbYes, mbNo, mbAbort], 0, mbNo) of
                    mrNo:
                    begin
                      DoNotCombine := True;
                      Break;
                    end;
                    mrYes: DoNotCombine := False;
                    mrAbort:
                    begin
                      DModel.Free;
                      line1.Free;
                      line2.Free;
                      if Assigned(errorlist) then
                        errorlist.Free;
                      Exit;
                    end;
                    else DoNotCombine := True;
                  end;
              if Assigned(errorlist) then
                errorlist.Free;
            end;

            if not DoNotCombine then
            begin
              DModel.Insert(i, quad.DATString);
              DModel.Delete(i+1);
              DModel.Delete(i+1);
            end;
          end;
        end;
      inc(i);
    end;
  editor.SelText := DModel.ModelText;
  DModel.Free;
  line1.Free;
  line2.Free;
end;

procedure TfrMain.acSubFileExecute(Sender: TObject);
// Save a block of text as a separate file and add the appropriate subfile line
begin
  frSubfile.ShowModal;
end;

// External Program actions

procedure TfrMain.acLDViewExecute(Sender: TObject);
// Execute LDView with active file
begin
  if (not FileExists(frOptions.edLDVIEWDir.text + '\LDVIEW.exe')) then begin
    MessageDlg(_('You have to specify a valid path to LDView.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    Exit;
  end;
  editor.Lines.SaveToFile(tempFileName);
  DoCommand(frOptions.edLDVIEWDir.text + '\LDVIEW.exe -Poll=3 "' + tempFileName + '"',SW_SHOWNA,false);
end;

procedure TfrMain.acMLCadExecute(Sender: TObject);
// Execute MLCad with active file
begin
  if editor.Modified then
    if MessageDlg(_('File has been modified. ' + #13#10 +
                    'Do you want to save and then view the file in MLCad ' + #13#10 +
                    'or cancel the operation?'), mtWarning, [mbOK, mbCancel], 0) =mrcancel then exit;
      acFileSaveExecute(Sender);
  if (not FileExists(frOptions.edMLCADDir.text+'\MLCAD.exe')) then begin
    MessageDlg(_('You have to specify a valid path to MLCad.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    Exit;
  end;
  DoCommand(frOptions.edMLCadDir.text+'\MLCAD.exe "' + DocumentTabs.ActiveDocument.FileName + '"',SW_SHOWNA,false);
end;

procedure TfrMain.acUserDefinedExecute(Sender: TObject);
// Execute user defined program with active file
var
  opt: byte;
  ExProgram: TStringList;

    function ParseString(toparse: string): string;
    var
      short, long: string;
    // %0 will be replaced by the path and filename of the exported file LDDP has generated,
    // %1 is replaced by the path only,
    // %2 will be replaced by the file-name only (without extension),
    // %3 is used a place holder for the path and the filename without extension.
    // %4, %5, %6, %7 are the same as %0 to %3 except they use the short form for paths and file-names that means the 8.3 notation of MS-DOS.
    begin
      long := tempFileName;
      short := ExtractShortPathName(long);
      toparse := StringReplace(toparse,'%0',long,[rfReplaceAll]);
      toparse := StringReplace(toparse,'%1',ExtractFilePath(long),[rfReplaceAll]);
      toparse := StringReplace(toparse,'%2',ChangeFileExt(ExtractFileName(long),''),[rfReplaceAll]);
      toparse := StringReplace(toparse,'%3',ChangeFileExt(long,''),[rfReplaceAll]);
      toparse := StringReplace(toparse,'%4',short,[rfReplaceAll]);
      toparse := StringReplace(toparse,'%5',ExtractFilePath(short),[rfReplaceAll]);
      toparse := StringReplace(toparse,'%6',ChangeFileExt(ExtractFileName(short),''),[rfReplaceAll]);
      toparse := StringReplace(toparse,'%7',ChangeFileExt(short,''),[rfReplaceAll]);
      Result := toParse;
    end;

begin
  ExProgram := TStringList.Create;
  ExProgram.CommaText := frOptions.ExternalProgramList[(Sender as TAction).ActionComponent.Tag];
  if not FileExists(ExProgram[1]) then
  begin
    MessageDlg(_('You have to specify a valid external program first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  case StrToInt(ExProgram[5]) of
    1: opt := SW_HIDE;
    2: opt := SW_SHOWNOACTIVATE;
    3: opt := SW_MAXIMIZE;
    else
      opt := SW_SHOWNORMAL;
  end;

  if StrToBool(ExProgram[4]) then
    ShowMessage(ExProgram[1] + ' ' + ParseString(ExProgram[2]));

  editor.Lines.SaveToFile(tempFileName);
  DoCommand(ExProgram[1] + ' ' + ParseString(ExProgram[2]), opt, StrToBool(ExProgram[3]));
  ExProgram.Free;
end;

procedure TfrMain.acL3LabExecute(Sender: TObject);
// Execute L3Lab with active file
begin
  if (not FileExists(frOptions.edL3LabDir.text+'\L3Lab.exe')) then
  begin
    MessageDlg(_('You have to specify a valid path to L3Lab.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  editor.lines.savetofile(tempFileName);
  DOCommand(frOptions.edL3LabDir.text+'\L3Lab.exe -PollSilent -NoCache -DontAddToMRU -NotReusable -FromLDAO -A.707,0,.707,.354,.866,-.354,-.612,.5,.612 "' + tempFileName + '"',SW_SHOWNA,false);
end;

// File actions

procedure TfrMain.acFileNewExecute(Sender: TObject);
// Creates a new untitled document
begin
  DocumentTabs.NewDocument;
  DocumentTabs.ActiveDocument.Highlighter := 'LDraw';
end;

procedure TfrMain.acFileOpenExecute(Sender: TObject);
// Opens chosen existing filenames in a new tab
var
  i: Integer;

begin
  if OpenDialog1.Execute then
    for i := 0 to OpenDialog1.Files.Count - 1 do
      OpenFile(OpenDialog1.Files[i]);
end;

procedure TfrMain.acFilePrintExecute(Sender: TObject);
begin
  printer.Title := DocumentTabs.ActiveDocument.FileName;
  printer.Print;
end;

procedure TfrMain.OpenFile(filename: string);
// Open the specified file and set initial data
begin
  if FileExists(filename) then
  begin
    DocumentTabs.Open(filename);
    UpdateMRU(filename);
    DocumentTabs.ActiveDocument.Highlighter := 'LDraw';
  end
  else
    MessageDlg(_('File ') + DocumentTabs.ActiveDocument.Filename + _(' not found'), mtError, [mbOK], 0);
end;

procedure TfrMain.acFileSaveExecute(Sender: TObject);
// Save file to disk if it already exists otherwise run Save As
begin
  SaveFile(DocumentTabs.ActiveDocument.Index);
end;

procedure TfrMain.acFileSaveAsExecute(Sender: TObject);
// Saves a file to disk after asking for filename
begin
  SaveDialog1.FileName := DocumentTabs.ActiveDocument.FileName;
  if SaveDialog1.Execute then
  begin
    if (DocumentTabs.ActiveDocument.IsUntitled or
        (DocumentTabs.ActiveDocument.FileName <> SaveDialog1.FileName)) then
      UpdateMRU(SaveDialog1.FileName);
    DocumentTabs.ActiveDocument.FileName := SaveDialog1.FileName;
    DocumentTabs.ActiveDocument.TabName := ExtractFileName(DocumentTabs.ActiveDocument.FileName);
    SaveFile(DocumentTabs.ActiveDocument.Index);
  end;
end;

procedure TfrMain.acSaveAllExecute(Sender: TObject);
// Save all open documents
var
  i: Integer;

begin
   for i:= DocumentTabs.Count - 1 downto 0 do
     SaveFile(i);
end;

procedure TfrMain.SaveFile(DocNumber: Integer);
// Save the file of the specified tab
var
  fileage: TDateTime;

begin
  if DocumentTabs.ActiveDocument.IsUntitled then
    acFileSaveAs.Execute
  else
  begin
    editor.SaveToFile(DocumentTabs.ActiveDocument.Filename);
    DocumentTabs.ActiveDocument.Modified := editor.Modified;
    SysUtils.FileAge(DocumentTabs.ActiveDocument.FileName, fileage);
    DocumentTabs.ActiveDocument.LastChanged := fileage;
  end;
end;

procedure TfrMain.acFileExitExecute(Sender: TObject);
// Close application
begin
  Close;
end;

procedure TfrMain.acFileRevertExecute(Sender: TObject);
// Reloads active document losing any changes
begin
  if MessageDlg(_('Reload last saved version?' + #13#10 +
                  'All changes will be lost!'), mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    OpenFile(DocumentTabs.ActiveDocument.FileName);
end;

procedure TfrMain.acFileCloseAllExecute(Sender: TObject);
// Closes all open document tabs
var
  i: Integer;

begin
   for i:= DocumentTabs.Count - 1 downto 0 do
     CloseFile(i);
end;

procedure TfrMain.acFileCloseExecute(Sender: TObject);
// Close tab under cursor
begin
  CloseFile(DocumentTabs.ActiveDocument.Index);
end;

procedure TfrMain.CloseFile(DocNumber: Integer);
var
  LastTab: Boolean;

begin
  LastTab := DocumentTabs.Count <= 1;
  DocumentTabs.Close(DocNumber);
  if LastTab then
    DocumentTabs.ActiveDocument.Highlighter := 'LDraw';
end;

procedure TfrMain.CloseFile1Click(Sender: TObject);
begin
  if TabRightClickIndex >= 0 then
    CloseFile(TabRightClickIndex);
end;

// Help actions

procedure TfrMain.HelpAboutExecute(Sender: TObject);
// Show the 'About' Box
begin
  frAboutBox.ShowModal;
end;

// Misc actions

procedure TfrMain.acOptionsExecute(Sender: TObject);
// Show options window
begin
  frOptions.ShowModal;

  editor.OnlyRoundDuringAutoRound := frOptions.cboAutoRoundOnly.Checked;
  editor.PositionDecimalPlaces := frOptions.sePntAcc.Value;
  editor.RotationDecimalPlaces := frOptions.seRotAcc.Value;
  mnuUserDefined.Enabled := frOptions.ExternalProgramList.Count > 0;
  tbUserDefined.Enabled := frOptions.ExternalProgramList.Count > 0;
  acPollCustom.Tag := frOptions.seCustomPollInterval.Value * 1000;

  case GridType of
    gtCoarse:
    begin
      GridSetting.XStep := frOptions.seGridCoarseX.Value;
      GridSetting.YStep := frOptions.seGridCoarseY.Value;
      GridSetting.ZStep := frOptions.seGridCoarseZ.Value;
      GridSetting.Angle := frOptions.seGridCoarseAngle.Value;
    end;
    gtMedium:
    begin
      GridSetting.XStep := frOptions.seGridMediumX.Value;
      GridSetting.YStep := frOptions.seGridMediumY.Value;
      GridSetting.ZStep := frOptions.seGridMediumZ.Value;
      GridSetting.Angle := frOptions.seGridMediumAngle.Value;
    end;
    gtFine:
    begin
      GridSetting.XStep := frOptions.seGridFineX.Value;
      GridSetting.YStep := frOptions.seGridFineY.Value;
      GridSetting.ZStep := frOptions.seGridFineZ.Value;
      GridSetting.Angle := frOptions.seGridFineAngle.Value;
    end;
  end;
  editorUpdateUI(Sender);
end;

procedure TfrMain.acHomepageExecute(Sender: TObject);
// Open LDDP project homepage
begin
  OpenInBrowser('http://www.lddp.net');
end;

procedure TfrMain.acMRUListExecute(Sender: TObject);
// Opens a file from the MRU Manager
begin
  if FileExists((Sender as TMenuItem).Caption) then
    OpenFile((Sender as TMenuItem).Caption)
  else
    MessageDlg(_('File ') + (Sender as TMenuItem).Caption + _(' not found!'), mtError, [mbOK], 0);
end;

procedure TfrMain.acCheckforUpdateExecute(Sender: TObject);
// Checks for a newer version looking for a special url
var
  strVersionHTTP: string;
  strActualVersion: string;

begin
  strActualVersion := GetAppVersion(Application.ExeName);
  strVersionHTTP := http.Get('http://lddp.sourceforge.net/lddp.ver');
  if trim(strVersionHTTP) = strActualVersion then
    MessageDlg(_('There is no newer version available.'), mtInformation, [mbOK], 0)
  else
  begin
    MessageDlg(_('There is a newer version available!!!'), mtInformation, [mbOK], 0);
    OpenInBrowser('http://www.lddp.net');
  end;
end;

procedure TfrMain.acBMP2LDrawExecute(Sender: TObject);
// Show the BMP2DAT dialog
begin
  frBMP2LDrawMain.ShowModal;
end;

procedure TfrMain.acLSynthExecute(Sender: TObject);
// Execues LSynth and replaces current text with the output
var
  TempFile: TStringList;
  CommandFile, CommandLine, InputFile, OutputFile: string;

begin
  if (not FileExists(frOptions.edLSynthDir.text + '\lsynthcp.exe')) then
  begin
    MessageDlg(_('You have to specify a valid path to lsynthcp.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
  end
  else
  begin
    OutputFile := GetShortFileName(tempFileName);
    TempFile := TstringList.create;
    CommandLine := GetShortFileName(frOptions.edLSynthDir.text) + '\lsynthcp.exe ';
    InputFile := GetShortFileName(ExtractFilePath(tempFileName)) + ExtractFileName(tempFileName);
    editor.lines.SaveToFile(InputFile);
    TempFile.Add(CommandLine + ' ' + InputFile + ' ' + OutputFile);
    CommandFile := GetShortFileName(WinTempDir) + GetTmpFIleName + '.bat';
    TempFile.SaveToFile(CommandFile);
    DOCommand(GetDOSVar('COMSPEC') + ' /C ' + CommandFile,SW_HIDE,true);
    DeleteFile(CommandFile);
    TempFile.LoadFromFile(OutputFile);
    editor.SelectAll;
    editor.SelText := TempFile.Text;
    TempFile.Free;
    DeleteFile(OutputFile);
    DeleteFile(InputFile);
  end;
end;

procedure TfrMain.acBendableObjectExecute(Sender: TObject);
// Show the bendible parts dialog and then insert the object
var
  startline, endline: Integer;

begin
    editor.ExpandSelection(startline, endline);
    if endline - startline = 1 then
      frmDATCurve.Line1.DATString := editor.Lines[startline];
      frmDATCurve.Line2.DATString := editor.Lines[endline];
      if frmDATCurve.ShowModal = mrOk then
      begin
        frmDATCurve.HoseDATCode.RotationDecimalPlaces := frOptions.seRotAcc.Value;
        frmDATCurve.HoseDATCode.PositionDecimalPlaces := frOptions.sePntAcc.Value;
        editor.SelText := frmDATCurve.HoseDATCode.ModelText + #13#10;
      end;
end;

procedure TfrMain.acAutoRoundExecute(Sender: TObject);
// Auto rounds selection to decimal places in the options
begin
  editor.AutoRound;
end;

procedure TfrMain.acSortSelectionExecute(Sender: TObject);
// Show the sort dialog
begin
  fmSort.ShowModal;
end;

procedure TfrMain.acRandomizeColorsExecute(Sender: TObject);
// Randomizes the colors of the selection
var
  RandColor, i, startline, endline: Integer;

begin
    editor.ExpandSelection(startline, endline);
    editor.BeginUndoAction;
    for i := startline to endline do
    begin
      Randomize;
        // This if statement ensures that a single line selection is not
        // assigned its current color.  i.e. the color of the line will change
        if i = startline then
          repeat
            RandColor := Trunc(Random(16));
          until RandColor <> editor.GetLineColor(i)
        else
          RandColor := Trunc(Random(16));
      editor.SetLineColor(i, RandColor);
    end;
    editor.EndUndoAction;
    editor.SelectLines(startline, endline);
end;

procedure TfrMain.acMirrorExecute(Sender: TObject);
// Mirrors the selected lines
begin
    case (Sender as TComponent).Tag of
      1: editor.MirrorSelection(axisX);
      2: editor.MirrorSelection(axisY);
      3: editor.MirrorSelection(axisZ);
    end;
end;

procedure TfrMain.acEditorOptionsExecute(Sender: TObject);
// Show the Scintilla editor options
begin
  with TSciOptionsForm.Create(Self) do
  begin
    OptionPages.ActivePage := OptionsPage;

    //Hide/Disable controls that aren't relavent to LDDP
    LanguageCBBox.Visible := false;
    KeyListAdd.Visible := false;
    KeyListDelete.Visible := false;
    otherPage.TabVisible := false;
    AddStyleB.Visible := false;
    DeleteStyleB.Visible := false;
    StyleNumberSE.ReadOnly := true;
    KeyListNumberSE.ReadOnly := true;
    OptionPages.OnChange := nil;

    Editor := frMain.editor;
    if ShowModal = mrOK then
      EditorPropertyLoader.Save;
    Free;
  end;
end;

// Movement actions

procedure TfrMain.acMoveGridCoarseExecute(Sender: TObject);
begin
  if acMoveGridCoarse.Checked then
  begin
    GridType := gtCoarse;
    GridSetting.XStep := frOptions.seGridCoarseX.Value;
    GridSetting.YStep := frOptions.seGridCoarseY.Value;
    GridSetting.ZStep := frOptions.seGridCoarseZ.Value;
    GridSetting.Angle := frOptions.seGridCoarseAngle.Value;
  end
  else
    if (not acMoveGridFine.Checked) and (acMoveGridMedium.Checked) then
      acMoveGridCoarse.Checked := True;
end;

procedure TfrMain.acMoveGridMediumExecute(Sender: TObject);
begin
  if acMoveGridMedium.Checked then
  begin
    GridType := gtMedium;
    GridSetting.XStep := frOptions.seGridMediumX.Value;
    GridSetting.YStep := frOptions.seGridMediumY.Value;
    GridSetting.ZStep := frOptions.seGridMediumZ.Value;
    GridSetting.Angle := frOptions.seGridMediumAngle.Value;
  end
  else
    if (not acMoveGridCoarse.Checked) and (acMoveGridFine.Checked) then
      acMoveGridMedium.Checked := True;
end;

procedure TfrMain.acMoveGridFineExecute(Sender: TObject);
begin
  if acMoveGridFine.Checked then
  begin
    GridType := gtFine;
    GridSetting.XStep := frOptions.seGridFineX.Value;
    GridSetting.YStep := frOptions.seGridFineY.Value;
    GridSetting.ZStep := frOptions.seGridFineZ.Value;
    GridSetting.Angle := frOptions.seGridFineAngle.Value;
  end
  else
    if (not acMoveGridCoarse.Checked) and (acMoveGridMedium.Checked) then
      acMoveGridFine.Checked := True;
end;

procedure TfrMain.acMoveRotXNegExecute(Sender: TObject);
begin
  editor.RotateSelection(GridSetting.Angle, -1, 0, 0);
end;

procedure TfrMain.acMoveRotXPosExecute(Sender: TObject);
begin
  editor.RotateSelection(GridSetting.Angle, 1, 0, 0);
end;

procedure TfrMain.acMoveRotYNegExecute(Sender: TObject);
begin
  editor.RotateSelection(GridSetting.Angle, 0, -1, 0);
end;

procedure TfrMain.acMoveRotYPosExecute(Sender: TObject);
begin
  editor.RotateSelection(GridSetting.Angle, 0, 1, 0);
end;

procedure TfrMain.acMoveRotZNegExecute(Sender: TObject);
begin
  editor.RotateSelection(GridSetting.Angle, 0, 0, -1);
end;

procedure TfrMain.acMoveRotZPosExecute(Sender: TObject);
begin
  editor.RotateSelection(GridSetting.Angle, 0, 0, 1);
end;

procedure TfrMain.acMoveSnapToGridExecute(Sender: TObject);

var
  DModel: TDATModel;
  i, startline, endline: integer;
  diffx, diffy, diffz: Extended;

begin
  editor.ExpandSelection(startline, endline);

  DModel := LDDPCreateDATModel;
  DModel.ModelText := editor.SelText;

  for i := 0 to DModel.Count - 1 do
    if DModel[i] is TDATElement then
    begin
      diffx := 0;
      diffy := 0;
      diffz := 0;
      if DModel[i] is TDATGeometric then
        with DModel[i] as TDATGeometric do
        begin
          diffx := MaxX  - Trunc(MaxX / GridSetting.XStep) * GridSetting.XStep;
          diffy := MaxY  - Trunc(MaxY / GridSetting.YStep) * GridSetting.YStep;
          diffz := MaxZ  - Trunc(MaxZ / GridSetting.ZStep) * GridSetting.ZStep;
        end
      else if DModel[i] is TDATSubPart then
        with DModel[i] as TDATSubPart do
        begin
          diffx := X  - Trunc(X / GridSetting.XStep) * GridSetting.XStep;
          diffy := Y  - Trunc(Y / GridSetting.YStep) * GridSetting.YStep;
          diffz := Z  - Trunc(Z / GridSetting.ZStep) * GridSetting.ZStep;
        end;
      if diffx >= (GridSetting.XStep / 2) then
        diffx := GridSetting.XStep - diffx
      else
        diffx := -diffx;
      if diffy >= (GridSetting.YStep / 2) then
        diffy := GridSetting.YStep - diffy
      else
        diffy := -diffy;
      if diffz >= (GridSetting.ZStep / 2) then
        diffz := GridSetting.ZStep - diffz
      else
        diffz := -diffz;
      (DModel[i] as TDATElement).Translate(diffx, diffy, diffz);
    end;

  editor.SelText := DModel.ModelText;
  editor.SelectLines(startline, endline);
  DModel.Free;
end;

procedure TfrMain.acMoveXNegExecute(Sender: TObject);
begin
  editor.TranslateSelection(-GridSetting.XStep, 0, 0);
end;

procedure TfrMain.acMoveXPosExecute(Sender: TObject);
begin
  editor.TranslateSelection(GridSetting.XStep, 0, 0);
end;

procedure TfrMain.acMoveYNegExecute(Sender: TObject);
begin
  editor.TranslateSelection(0, -GridSetting.YStep, 0);
end;

procedure TfrMain.acMoveYPosExecute(Sender: TObject);
begin
  editor.TranslateSelection(0, GridSetting.YStep, 0);
end;

procedure TfrMain.acMoveZNegExecute(Sender: TObject);
begin
  editor.TranslateSelection(0, 0, -GridSetting.ZStep);
end;

procedure TfrMain.acMoveZPosExecute(Sender: TObject);
begin
  editor.TranslateSelection(0, 0, GridSetting.ZStep);
end;

// Polling Actions

procedure TfrMain.acPollEnablePollingExecute(Sender: TObject);
begin
  tmPoll.Enabled := acPollEnablePolling.Checked;
end;

procedure TfrMain.acPollOnDemandExecute(Sender: TObject);
begin
  acPollOnDemand.ShortCut := TextToShortCut('F11');
  tmPoll.Enabled := False;
  tmPollTimer(nil);
end;

procedure TfrMain.acPollToSelectedLineExecute(Sender: TObject);
begin
  // Do nothing;
end;

procedure TfrMain.SetPollTime(Sender: TObject);
begin
  tmPoll.Enabled := False;
  tmPoll.Interval := (Sender as TAction).Tag;
  tmPoll.Enabled := True;
  acPollOnDemand.ShortCut := TextToShortCut('')
end;

// Search actions

procedure TfrMain.acFindExecute(Sender: TObject);
// Execute Find Dialogue
begin
  SearchReplaceDlg.ShowSearchDialog;
end;

procedure TfrMain.acReplaceExecute(Sender: TObject);
// Execute Replace Dialogue
begin
  SearchReplaceDlg.ShowReplaceDialog;
end;

procedure TfrMain.acReplaceColorExecute(Sender: TObject);
// Replace Colors using a color dialogue
begin
  frColorDialog.ShowModal;
end;

procedure TfrMain.acFindNextExecute(Sender: TObject);
// Find Next occurence of a previous find procedure
begin
  SearchReplaceDlg.DoSearchReplaceText(false,SearchReplaceDlg.SearchBackwards);
end;

procedure TfrMain.acColorReplaceShortcutExecute(Sender: TObject);
// Replace the color of the selection with the clicked color on the color bar
var
  i, startline, endline: Integer;

begin
    editor.ExpandSelection(startline, endline);
    editor.BeginUndoAction;
    for i := startline to endline do
      editor.SetLineColor(i, (Sender as TComponent).Tag);
    editor.EndUndoAction;
    editor.SelectLines(startline, endline);
end;

// View Menu actions
procedure TfrMain.acViewColorReplaceToolbarExecute(Sender: TObject);
begin
  tbrColorReplace.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewEditToolbarExecute(Sender: TObject);
begin
  tbrEditing.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewExternalProgramToolbarExecute(Sender: TObject);
begin
  tbrExternalPrograms.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewFileToolbarExecute(Sender: TObject);
begin
  tbrFile.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewGridToolbarExecute(Sender: TObject);
begin
  tbrGrid.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewMovementToolbarExecute(Sender: TObject);
begin
  tbrMovement.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewSearchToolbarExecute(Sender: TObject);
begin
  tbrSearch.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acViewToolsToolbarExecute(Sender: TObject);
begin
  tbrTools.Visible := (Sender as TAction).Checked;
end;

procedure TfrMain.acErrorListExecute(Sender: TObject);
begin
  if (Sender as TAction).Checked then
    frErrorWindow.Show
  else
    frErrorWindow.Close;

  if frErrorWindow.Visible then
  begin
    frErrorWindow.RestorePosition;
    frErrorWindow.acErrorCheck.Execute;
  end;
end;

// Other procedures

procedure TfrMain.FileIsDropped(var Msg: TMessage);
// Accepts files dropped from explorer
var
   hDrop: THandle ;
   fName: string ;
   NumberOfFiles: Integer ;
   fCounter: Integer ;

begin
   hDrop := Msg.WParam ;
   NumberOfFiles := DragQueryFile(hDrop, $FFFFFFFF, nil, 0);
   for fCounter := 1 to NumberOfFiles do
   begin
     SetLength(fName, MAX_PATH); // Anticipate largest string size
     SetLength(fName, DragQueryFile(HDrop, fCounter - 1, PChar(fname), MAX_PATH));
     if (LowerCase(ExtractFileExt(fName)) = '.dat') or
        (LowerCase(ExtractFileExt(fName)) = '.mpd') or
        (LowerCase(ExtractFileExt(fName)) = '.ldr') then
       OpenFile(fName);
   end;
   DragFinish(hDrop);
end;

procedure TfrMain.AppInstCmdLineReceived(Sender: TObject;
  CmdLine: TStrings);
var
  i: Integer;

begin
  if CmdLine.Count > 0 then
  for i := 0 to CmdLine.Count - 1 do
    OpenFile(CmdLine[i]);
end;

procedure TfrMain.editorDwellEnd(Sender: TObject; const position: Integer; x,
  y: Integer);
begin
  editor.CallTipCancel;
end;

procedure TfrMain.editorDwellStart(Sender: TObject; const position: Integer; x,
  y: Integer);

var
  subp: TDATType;
  DModel: TDATModel;

begin
  if editor.GetStyleAt(editor.PositionFromPointClose(x,y)) = 16 then
  begin
    subp := StrToDAT(editor.Lines[editor.LineFromPosition(editor.PositionFromPointClose(x,y))]);
    if subp is TDATSubpart then
    begin
      DModel := TDATModel.Create;
      if FileExists(LDrawBasePath + 'parts\' + (subp as TDATSubpart).SubPart) then
        DModel.LoadModel(LDrawBasePath + 'parts\' + (subp as TDATSubpart).SubPart)
      else if FileExists(LDrawBasePath + 'p\' + (subp as TDATSubpart).SubPart) then
        DModel.LoadModel(LDrawBasePath + 'p\' + (subp as TDATSubpart).SubPart);

      if (DModel.Count > 0) and (DModel[0] is TDATComment) then
        editor.CallTipShow(editor.PositionFromPointClose(x,y),
                           PCHar((DModel[0] as TDATComment).Comment));

      subp.Free;
      DModel.Free;
    end;
  end;
end;

procedure TfrMain.editorModified(Sender: TObject; const position,
  modificationType: Integer; text: PAnsiChar; const len, linesAdded, line,
  foldLevelNow, foldLevelPrev: Integer);
begin
  DocumentTabs.ActiveDocument.Modified := editor.Modified;
  if DocumentTabs.ActiveDocument.Modified then
  begin
    if DocumentTabs.ActiveDocument.IsUntitled then
      DocumentTabs.ActiveDocument.TabName :=
        '<' + ExtractFileName(DocumentTabs.ActiveDocument.FileName) + '> *'
    else
      DocumentTabs.ActiveDocument.TabName :=
        ExtractFileName(DocumentTabs.ActiveDocument.FileName) + ' *';
    Statusbar.Panels[2].Text:=_('Modified')
  end
  else
  begin
    if DocumentTabs.ActiveDocument.IsUntitled then
      DocumentTabs.ActiveDocument.TabName :=
        '<' + ExtractFileName(DocumentTabs.ActiveDocument.FileName) + '>'
    else
      DocumentTabs.ActiveDocument.TabName :=
        ExtractFileName(DocumentTabs.ActiveDocument.FileName);
    Statusbar.Panels[2].Text:='';
  end;
end;

procedure TfrMain.editorUpdateUI(Sender: TObject);
var
  i: Integer;
  DLine: TDATType;
  fileage: TDateTime;

begin
  // Update panel values
  StatusBar.Panels[1].text := IntToStr(editor.CaretY) + ':' + IntToStr(editor.CaretX);

  // Set undo and redo state
  acUndo.Enabled := (DocumentTabs.Count > 0) and editor.CanUndo;
  acRedo.Enabled := (DocumentTabs.Count > 0) and editor.CanRedo;

  // Enable inline function based on line or selection
  if editor.SelLength = 0 then
  begin
    DLine := StrToDAT(editor.Lines[editor.CaretY - 1]);
    acInline.Enabled := DLine.LineType = 1;
    DLine.Free;
  end
  else
  begin
    acInline.Enabled := False;

    for i := editor.LineFromPosition(editor.SelStart) to editor.LineFromPosition(editor.SelStart+editor.SelLength) do
    begin
      DLine := StrToDAT(editor.Lines[i]);
      if DLine.LineType = 1 then
      begin
        acInline.Enabled := True;
        Break;
      end;
      DLine.Free;
    end;
  end;

  // Check plugin type and enable as appropriate
  for i := 0 to PluginActionList.ActionCount - 1 do
  begin
    case (PluginActionList.Actions[i] as TAction).Tag of
      0: (PluginActionList.Actions[i] as TAction).Enabled := true;
      1: (PluginActionList.Actions[i] as TAction).Enabled := editor.SelLength = 0;
      2: (PluginActionList.Actions[i] as TAction).Enabled := editor.SelLength <> 0;
    end;
  end;

  // Check style state and enable auto complete and call tips for linetype 1 file
  AutoComplete.Disabled := (editor.GetStyleAt(editor.GetCurrentPos) <> 16) and
                           (editor.GetStyleAt(editor.GetCurrentPos) <> 17);

  // Check external changes
  if (not DocumentTabs.ActiveDocument.IsUntitled) and
     FileExists(DocumentTabs.ActiveDocument.FileName) then
  begin
    SysUtils.FileAge(DocumentTabs.ActiveDocument.FileName, fileage);
    if fileage <> DocumentTabs.ActiveDocument.LastChanged then
    begin
      if MessageDlg(_('File has been externally changed.' + #13#10 +
                      'Reload last saved version?' + #13#10 +
                      'All changes will be lost!'),
                    mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
        OpenFile(DocumentTabs.ActiveDocument.FileName);
      DocumentTabs.ActiveDocument.LastChanged := fileage;
    end;
  end;
end;

procedure TfrMain.FormDblClick(Sender: TObject);
// Opens the file open dialog if the background is double clicked
begin
  acFileOpen.Execute;
end;

procedure TfrMain.FormCreate(Sender: TObject);
begin
//  frMain.OnActivate := DocumentTabsChange;
  TranslateComponent(Self);
  DragAcceptFiles(Handle,True);
  Initialized := False;
  PluginActionList := TActionList.Create(Self);
end;

procedure TfrMain.FormShow(Sender: TObject);
// Inits the app and shows model tree if needed
begin
  AppInitialize;
end;

Procedure TfrMain.AppInitialize;
// Initializes Application
var
  i: Integer;
  regT: TRegistry;

begin
  if Initialized then Exit;
  
  SplashScreen := TfrSplash.Create(Application);
  try
    //Show splash screen
    SplashScreen.lbState.Caption:=_('Initializing plugins...');
    SplashScreen.show;
    SplashScreen.update;
    Screen.Cursor := crHourGlass;

    // Check if the App Data folder exists and create it if not
    if not DirectoryExists(GetShellFolderPath('AppData') + '\LDDP') then
      CreateDir(GetShellFolderPath('AppData') + '\LDDP');
    CopyFile(PAnsiChar(ExtractFilePath(Application.ExeName) + '\uiconfig.ini'), PAnsiChar(GetShellFolderPath('AppData') + '\LDDP\uiconfig.ini'), false);

    //Load form parameters from INI file
    acMoveGridCoarse.Execute;
    LoadFormValues;

    // View menu settings;
    acViewFileToolbar.Checked := tbrFile.Visible;
    acViewSearchToolbar.Checked := tbrSearch.Visible;
    acViewExternalProgramToolbar.Checked := tbrExternalPrograms.Visible;
    acViewMovementToolbar.Checked := tbrMovement.Visible;
    acViewToolsToolbar.Checked := tbrTools.Visible;
    acViewEditToolbar.Checked := tbrEditing.Visible;
    acViewColorReplaceToolbar.Checked := tbrColorReplace.Visible;

    //Set defaults based on options
    acPollCustom.Tag := frOptions.seCustomPollInterval.Value * 1000;

    editor.PositionDecimalPlaces := frOptions.sePntAcc.Value;
    editor.RotationDecimalPlaces := frOptions.seRotAcc.Value;
    editor.OnlyRoundDuringAutoRound := frOptions.cboAutoRoundOnly.Checked;

    editor.CallTipSetFore(clBlack);

    //Set editor properties filename and load properties
    EditorPropertyLoader.FileName := GetShellFolderPath('AppData') + '\LDDP\' + EditorPropertyLoader.FileName;
    if FileExists(EditorPropertyLoader.FileName) then
      EditorPropertyLoader.Load;
    DocumentTabs.ActiveDocument.Highlighter := 'LDraw';

    //Set InstallDir in registry for legacy plugin support
    regT := TRegistry.Create;
    regT.OpenKey('Software\Waterproof Productions\LDDesignPad',true);
    regT.WriteString('InstallDir', Application.ExeName);
    regT.Free;

    //Load Plugins
    LoadPlugins;

    //Set META menu commands
    BuildMetaMenu;

    //Build the MRU list
    UpdateMRU;

    //Set the keywordlist for the syntax highlighter
    if DirectoryExists(LDrawBasePath) then
      SetKeyWordList;
    AutoComplete.AStrings.Text := LanguageManager.LanguageList.Find('LDraw').Keywords[0].Keywords.Text;

    // Set initial directory to that of the last opened file
    // or home directory if no file is listed
    if LastOpen1.Count > 0 then
      OpenDialog1.InitialDir := ExtractFileDir(LastOpen1[0].Caption)
    else
      OpenDialog1.InitialDir := GetShellFolderPath('Personal');

    //Load files listed on the command line
    if ParamCount > 0 then
      for i := 1 to ParamCount do
        OpenFile(paramstr(i));

  finally
    Screen.Cursor := crDefault;
    SplashScreen.Release;
    Initialized := True;
  end;
end;

procedure TfrMain.BuildMetaMenu;
// Construct the meta command menu from the ini file
var
  MetaMenuIni: TInifile;
  ParentMenuItem, ParentMenuItem2, ChildMenuItem: TMenuItem;
  MetaSections, CurrentSection: TStringList;
  SectionName: string;
  i,j: Integer;

begin
  MetaSections := TStringList.Create;
  MetaSections.Sorted := true;
  CurrentSection := TStringList.Create;
  MetaMenuIni := TInifile.Create(IniFilePath + '\uiconfig.ini');

  MetaMenuIni.ReadSection('Meta Menu Items', MetaSections);

  if MetaSections.Count > 0 then
    for i := 0 to MetaSections.Count - 1 do
    begin
      SectionName := MetaMenuIni.ReadString('Meta Menu Items', MetaSections[i], '');
      if MetaMenuIni.SectionExists(SectionName) then
      begin
        MetaMenuIni.ReadSection(SectionName,CurrentSection);
        if CurrentSection.Count > 0 then
        begin
          ParentMenuItem := CreateMenuItem(SectionName, '', mnuMeta);
          ParentMenuItem2 := CreateMenuItem(SectionName, '', mnuMeta2);
          mnuMeta.Add(ParentMenuItem);
          mnuMeta2.Add(ParentMenuItem2);
          for j := 0 to CurrentSection.Count - 1 do
          begin
            ChildMenuItem := CreateMenuItem(CurrentSection[j],MetaMenuIni.ReadString(SectionName,CurrentSection[j],''),ParentMenuItem);
            ChildMenuItem.OnClick := MetaMenuClick;
            ParentMenuItem.Add(ChildMenuItem);
            ChildMenuItem := CreateMenuItem(CurrentSection[j],MetaMenuIni.ReadString(SectionName,CurrentSection[j],''),ParentMenuItem);
            ChildMenuItem.OnClick := MetaMenuClick;
            ParentMenuItem2.Add(ChildMenuItem);
          end;
        end;
      end;
    end
  else
    mnuMeta.Enabled := False;

  CurrentSection.Free;
  MetaSections.Free;
  MetaMenuIni.Free;
end;

procedure TfrMain.SetKeyWordList;
// Set lookup the official part files put them in the keyword list
var
  sc: TSearchRec;

begin
  // Set official part autocomplete
  with LanguageManager.LanguageList.Find('LDraw').Keywords[0].Keywords do
  begin
    Clear;
    if FindFirst(LDrawBasePath + 'parts\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase(ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    if FindFirst(LDrawBasePath + 'parts\s\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase('s\' + ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    if FindFirst(LDrawBasePath + 'p\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase(ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    if FindFirst(LDrawBasePath + 'p\48\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase('48\' + ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    FindClose(sc);
  end;
  // Set Meta command auto complete
  with LanguageManager.LanguageList.Find('LDraw').Keywords[1].Keywords do
    CommaText := ReadUIConfigValue('MetaCommands');
end;

procedure TfrMain.DocumentTabsChange(Sender: TObject);
begin
  if frErrorWindow.Visible  then
    frErrorWindow.acErrorCheck.Execute;
end;

procedure TfrMain.DocumentTabsClosing(Sender: TObject; const TabIndex: Integer;
  var AllowClose: Boolean);

begin
  if DocumentTabs.Document[TabIndex].Modified then
  begin
    case MessageDlg('Save changes to ' + DocumentTabs.Document[TabIndex].FileName + '?'
                    + #13#10 + #13#10 +
                    'Yes: Saves the changes and closes this document.' + #13#10 +
                    'No: Closes the document without saving any changes.'+ #13#10 +
                    'Cancel: Keeps the document open',
                    mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes:
      begin
        acFileSave.Execute;
        AllowClose := True;
      end;
      mrNo : AllowClose := True;
      mrCancel: AllowClose := False;
    end;
  end
  else
    AllowClose := true;

  if AllowClose and (FileExists(tempFilename)) then
    DeleteFile(tempFilename);
end;

procedure TfrMain.DocumentTabsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    TabRightClickIndex := DocumentTabs.IndexOfTabAt(X,Y);
  end else TabRightClickIndex := -1;
end;

procedure TfrMain.MetaMenuClick(Sender: TObject);
// Insert the selected meta command
begin
  editor.Lines.Insert(editor.LineFromPosition(editor.GetCurrentPos), '0 ' +
                      (Sender as TMenuItem).Hint);
end;

procedure Tfrmain.LoadPlugins;
// Load all plugins and create menu entries,
// add names to a stringlist and enumerate entries by tag
var
  sr: TSearchRec;
  i, imgix: Integer;
  PluginMenuItem: TMenuItem;
  PluginPath, PluginFile: string;
  plgBitmap: TBitMap;
  PluginInfoList: TStringList;
  PluginAction: TAction;

begin
  PluginInfoList := TStringList.Create;
  PluginPath := ExtractFilePath(Application.ExeName) + 'Plugins' + PathDelim;

  if Findfirst(PluginPath + '*.dl*',faAnyFile,sr) = 0 then
  begin
    //Clear the options dialog and plugin string list
    frOptions.cblPlugins.Clear;
    frOptions.cblPlugins.Sorted := false;

    //Free all the old plugin actions and menu items
    while PluginActionList.ActionCount > 0 do
      with (PluginActionList.Actions[PluginActionList.ActionCount - 1] as TAction) do
      begin
        if ImageIndex > 0 then
          PluginActionList.Images.Delete(ImageIndex);
        Free;
      end;
    while Plugins1.Count > 0 do
      Plugins1.items[Plugins1.Count-1].free;
    while Plugins3.Count > 0 do
      Plugins3.items[Plugins3.Count-1].free;

    //Find and add the plugins
    repeat
      PluginFile := sr.Name;
      PluginInfoList.Clear;
      PluginInfoList.Add('');

      for i := 1 to 6 do
        PluginInfoList.Add(PluginInfo(PluginFile,i));

      if not Initialized then
      begin
        splashscreen.lbState.Caption := _('Initializing plugin:') + ' ' + sr.Name;
        splashscreen.Update;
      end;

      frOptions.cblPlugins.Items.Add(ChangeFileExt(sr.Name,'') +
                                     ' - ' + PluginInfoList[3]);

      imgix := -1;
      if FileExists(ChangeFileExt(PluginFile, '.bmp')) then
      try
        plgBitmap := TBitMap.Create;
        plgBitmap.LoadFromFile(ChangeFileExt(PluginFile, '.bmp'));
        imgix := ilProgramIcons.AddMasked(plgBitmap, clFuchsia);
        plgBitmap.Free;
      except
        imgix := -1;
      end;

      PluginAction := TAction.Create(PluginActionList);
      PluginAction.Tag := StrToInt(PluginInfoList[6]);
      PluginAction.OnExecute := PluginClick;
      PluginAction.ImageIndex := imgix;
      PluginAction.Caption := PluginInfoList[1];
      PluginAction.Hint := PluginInfoList[3];
      PluginAction.Enabled := ExtractFileExt(LowerCase(sr.Name)) = '.dll';
      PluginAction.Name := ChangeFileExt(sr.Name,'');
      PluginAction.ActionList := PluginActionList;

      PluginMenuItem := TMenuItem.Create(Plugins1);
      PluginMenuItem.Action := PluginAction;
      Plugins1.Insert(Plugins1.Count, PluginMenuItem);

      PluginMenuItem := TMenuItem.Create(Plugins3);
      PluginMenuItem.Action := PluginAction;
      Plugins3.Insert(Plugins3.Count, PluginMenuItem);

      frOptions.cblPlugins.Checked[frOptions.cblPlugins.Items.Count - 1] :=
        PluginAction.Enabled;
    until FindNext(sr) <> 0;
  end;

  if (Plugins1.Count = 0) and (Plugins3.Count = 0) then
  begin
    PluginMenuItem := CreateMenuItem(_('None Found'), '', Plugins1);
    PluginMenuItem.Enabled := false;
    Plugins1.Insert(Plugins1.Count, PluginMenuItem);

    PluginMenuItem := CreateMenuItem(_('None Found'), '', Plugins3);
    PluginMenuItem.Enabled := false;
    Plugins3.Insert(Plugins3.Count, PluginMenuItem);
  end;

  FindClose(sr);
  frOptions.cblPlugins.Sorted := True;
  PluginInfoList.Free;
end;

procedure TfrMain.PluginClick(Sender: TObject);
// Start Plugin related to the tag of the action
var
 libname: string;
 s1, s2, s3, s4: LongWord;

begin
  if (Sender is TAction) then
  begin
    libname := (Sender as TAction).Name + '.dll';

    s1 := editor.SelStart;
    s2 := editor.SelLength;
    s3 := editor.CaretY;
    s4 := editor.CaretX;

    CallPlugin(libname, editor.Lines.Text, editor.SelText, s1, s2, s3, s4);

    if strChangedSelText <> '' then
      editor.SelText := strChangedSelText
    else
      editor.Lines.Text := strChangedCompleteText;

    if s2 <> 0 then
      editor.SetSel(s1, s1 + s2);
  end;
end;

// Polling procedures

procedure TfrMain.btPollingClick(Sender: TObject);
// Does nothing.. but needed so the polling button isn't deactivated
begin
 // do nothing
end;

procedure TfrMain.tmPollTimer(Sender: TObject);
// if polling time triggers the actual editor window is written to its firm assigned temp filename
var
  st: TStringList;

begin
  if acPollEnablePolling.Checked and (DocumentTabs.Count > 0) then
    if acPollToSelectedLine.Checked then
    begin
      st := TStringList.Create;
      st.Text := editor.Lines.Text;
      while st.Count > editor.CaretY do
        st.Delete(st.Count - 1);
      st.SaveToFile(tempFileName);
    end
    else editor.lines.SaveToFile(tempFileName);
end;

procedure TfrMain.UpdateMRU(NewFileName: TFileName = '');
// Update the Most Recently Used list
var
  MRUSectionList: TStringList;
  i: integer;
  mnuNewItem: TMenuItem;
  LDDPini: TMemIniFile;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');
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

procedure TfrMain.LoadFormValues;
// Loads form values from the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;
  i: Integer;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP Main';

  Left := LDDPini.ReadInteger(IniSection, 'frMain_Left', Left);
  Top := LDDPini.ReadInteger(IniSection, 'frMain_Top', Top);
  Width := LDDPini.ReadInteger(IniSection, 'frMain_Width', Width);
  Height := LDDPini.ReadInteger(IniSection, 'frMain_Height', Height);

  // Load toolbar settings
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TToolbar then
      with Components[i] as TToolbar do
      begin
        Visible := LDDPini.ReadBool(IniSection, Name + '_Visible', True);
        Top := LDDPini.ReadInteger(IniSection, Name + '_Top', Top);
        Left := LDDPini.ReadInteger(IniSection, Name + '_Left', Left);
      end;

  if LDDPini.ReadBool(IniSection, 'acMoveGridFine_Checked', acMoveGridFine.Checked) then
    acMoveGridFine.Execute;
  if LDDPini.ReadBool(IniSection, 'acMoveGridMedium_Checked', acMoveGridMedium.Checked) then
    acMoveGridMedium.Execute;
  if LDDPini.ReadBool(IniSection, 'acMoveGridCoarse_Checked', acMoveGridCoarse.Checked) then
    acMoveGridCoarse.Execute;

  if LDDPini.ReadBool(IniSection, 'acPollEnablePolling_Checked', acPollEnablePolling.Checked) then
    acPollEnablePolling.Execute;
  if LDDPini.ReadBool(IniSection, 'acPollToSelectedLine_Checked', acPollToSelectedLine.Checked) then
    acPollToSelectedLine.Execute;
  if LDDPini.ReadBool(IniSection, 'acPoll1Second_Checked', acPoll1Second.Checked) then
    acPoll1Second.Execute;
  if LDDPini.ReadBool(IniSection, 'acPoll2Seconds_Checked', acPoll2Seconds.Checked) then
    acPoll2Seconds.Execute;
  if LDDPini.ReadBool(IniSection, 'acPoll5Seconds_Checked', acPoll5Seconds.Checked) then
    acPoll5Seconds.Execute;
  if LDDPini.ReadBool(IniSection, 'acPollCustom_Checked', acPollCustom.Checked) then
    acPollCustom.Execute;
  if LDDPini.ReadBool(IniSection, 'acPollOnDemand_Checked', acPollOnDemand.Checked) then
    acPollOnDemand.Execute;
  SearchReplaceDlg.ReplaceTextHistory := LDDPini.ReadString(IniSection, 'SearchReplaceDlg_ReplaceTextHistory', SearchReplaceDlg.ReplaceTextHistory);
  SearchReplaceDlg.SearchTextHistory := LDDPini.ReadString(IniSection, 'SearchReplaceDlg_SearchTextHistory', SearchReplaceDlg.SearchTextHistory);
  LDDPini.Free;
end;

procedure TfrMain.SaveFormValues;
// Saves form values to the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;
  i: Integer;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  // Save Main position, size, and toolbar visibility
  Inisection := 'LDDP Main';
  LDDPini.EraseSection(IniSection);

  LDDPini.WriteString(IniSection, 'InstallDir', ExtractFilePath(Application.ExeName));
  LDDPini.WriteInteger(IniSection, 'frMain_Left', Left);
  LDDPini.WriteInteger(IniSection, 'frMain_Top', Top);
  LDDPini.WriteInteger(IniSection, 'frMain_Width', Width);
  LDDPini.WriteInteger(IniSection, 'frMain_Height', Height);

  // Save toolbar settings
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TToolbar then
      with Components[i] as TToolbar do
      begin
        LDDPini.WriteBool(IniSection, Name + '_Visible', Visible);
        LDDPini.WriteInteger(IniSection, Name + '_Top', Top);
        LDDPini.WriteInteger(IniSection, Name + '_Left', Left);
      end;

  LDDPini.WriteBool(IniSection, 'acMoveGridFine_Checked', acMoveGridFine.Checked);
  LDDPini.WriteBool(IniSection, 'acMoveGridMedium_Checked', acMoveGridMedium.Checked);
  LDDPini.WriteBool(IniSection, 'acMoveGridCoarse_Checked', acMoveGridCoarse.Checked);

  LDDPini.WriteBool(IniSection, 'acPollEnablePolling_Checked', acPollEnablePolling.Checked);
  LDDPini.WriteBool(IniSection, 'acPollToSelectedLine_Checked', acPollToSelectedLine.Checked);
  LDDPini.WriteBool(IniSection, 'acPoll1Second_Checked', acPoll1Second.Checked);
  LDDPini.WriteBool(IniSection, 'acPoll2Seconds_Checked', acPoll2Seconds.Checked);
  LDDPini.WriteBool(IniSection, 'acPoll5Seconds_Checked', acPoll5Seconds.Checked);
  LDDPini.WriteBool(IniSection, 'acPollCustom_Checked', acPollCustom.Checked);
  LDDPini.WriteBool(IniSection, 'acPollOnDemand_Checked', acPollOnDemand.Checked);

  LDDPini.WriteString(IniSection, 'SearchReplaceDlg_ReplaceTextHistory', SearchReplaceDlg.ReplaceTextHistory);
  LDDPini.WriteString(IniSection, 'SearchReplaceDlg_SearchTextHistory', SearchReplaceDlg.SearchTextHistory);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

function TfrMain.tempFileName:string;
// Creates and returns a unique temporary filename
begin
  Result := ExtractFilePath(DocumentTabs.ActiveDocument.FileName) + PathDelim +
            ChangeFileExt(ExtractFileName(DocumentTabs.ActiveDocument.FileName), '.lddptmp');
end;

procedure TfrMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;

begin
  for i := DocumentTabs.Count - 1 downto 0 do
  begin
    if DocumentTabs.Document[i].Modified then
      case MessageDlg(_('Save changes to ' + DocumentTabs.Document[i].FileName + '?'
                      + #13#10 + #13#10 +
                      'Yes: Saves the changes and closes this document.' + #13#10 +
                      'No: Closes the document without saving any changes.' + #13#10 +
                      'Cancel: Keeps the document open'),
                      mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes: acFileSave.Execute;
        mrCancel:
        begin
          DocumentTabs.Activate(i);
          Action := caNone;
          Exit;
        end;
      end;
    if FileExists(tempFilename) then
      DeleteFile(tempFilename);
  end;
  SaveFormValues;
  EditorPropertyLoader.Save;
  PluginActionList.Free;
end;

procedure TfrMain.SearchReplaceDlgTextNotFound(Sender: TObject);
begin
  acFindNext.Enabled := false;
end;

procedure TfrMain.acFindNextUpdate(Sender: TObject);
begin
  acFindNext.Enabled := SearchReplaceDlg.SearchText <> '';
end;

procedure TfrMain.tbUserDefinedClick(Sender: TObject);
begin
// Empty. Required for Button to be enabled
end;

initialization
  {Some locales use "," as the decimal separator
   This changes the decimal separtor to "." as required by the LDraw spec
   without changing the master settings. }
  Application.UpdateFormatSettings := False;
  DecimalSeparator := '.';
  ThousandSeparator:=',';

finalization
// Nothing

end.
