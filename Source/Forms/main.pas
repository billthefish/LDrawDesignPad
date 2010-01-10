{These sources are copyright (C) 2003-2009 the LDDP project contributors.

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
  errorbar, JvAppInst, JvDockTree, JvDockControlForm,
  JvDockDelphiStyle, JvComponentBase, Dialogs, ExtCtrls, Menus, ImgList,
  Controls, StdActns, Classes, ActnList, ComCtrls, ToolWin, Windows, Graphics,
  Forms, Messages, SysUtils, Types, StdCtrls, ShellAPI, DATBase, AppEvnts,
  commonprocs, LDDPDlgs, LDDPSynEdit, SynEdit, SynEditMiscClasses,
  SynEditSearch, SynEditOptionsDialog, SynEditPrint, SynEditHighlighter,
  SynHighlighterLDraw, SynCompletionProposal, LDDPSynEditDocTabs;

type
  TLDDPMain = class(TForm)
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
    ReverseWinding1: TMenuItem;
    acReverseWinding: TAction;
    ReverseWinding2: TMenuItem;
    ErrorCheck1: TMenuItem;
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
    EditorOptions1: TMenuItem;
    acEditorOptions: TAction;
    acErrorList: TAction;
    mnuErrorList: TMenuItem;
    acFileClose: TAction;
    JvDockServer1: TJvDockServer;
    JvDockDelphiStyle1: TJvDockDelphiStyle;
    pmTab: TPopupMenu;
    CloseFile1: TMenuItem;
    AppInst: TJvAppInstances;
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
    ApplicationEvents1: TApplicationEvents;
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
    PluginMenu: TMenuItem;
    OptionsDlg: TLDDPOptionsDlg;
    ColorReplace: TLDDPColorReplaceDlg;
    SynCompletionProposal1: TSynCompletionProposal;
    LDrawHighlighter: TSynLDRSyn;
    printer: TSynEditPrint;
    EditorOptions: TSynEditOptionsDialog;
    SearchDlg: TSynEditSearch;
    DocumentTabs: TLDDPDocumentTabControl;
    editor: TLDDPSynEdit;
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
    procedure acFileCloseExecute(Sender: TObject);
    procedure DocumentTabsClosing(Sender: TObject; const TabIndex: Integer;
      var AllowClose: Boolean);
    procedure DocumentTabsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DocumentTabsChange(Sender: TObject);
    procedure AppInstCmdLineReceived(Sender: TObject;
      CmdLine: TStrings);
    procedure CloseFile1Click(Sender: TObject);
//    procedure editorDwellStart(Sender: TObject; const position: Integer; x,
//      y: Integer);
//    procedure editorDwellEnd(Sender: TObject; const position: Integer; x,
//      y: Integer);
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
//    procedure editorModified(Sender: TObject; const position,
//      modificationType: Integer; text: PAnsiChar; const len, linesAdded, line,
//      foldLevelNow, foldLevelPrev: Integer);
    procedure acMoveSnapToGridExecute(Sender: TObject);
    procedure editorStatusChange(Sender: TObject; Changes: TSynStatusChanges);

  private
    TabRightClickIndex: Integer;
    Initialized: Boolean;

  protected
    procedure AppInitialize;
    procedure FileIsDropped(var Msg : TMessage); message WM_DropFiles ;
    function tempFileName: string;
    procedure SetKeyWordList;
    procedure MakeExternalPrograms;
    procedure MakeColorBar;
    procedure BuildMetaMenu;

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
  LDDPMain: TLDDPMain;

implementation

{$R *.dfm}

uses
  about, BezWindow, sorting, splash, 
  BMP2LDraw, dlgSubpart, windowsspecific,
  DATModel, DATUtils, DATCheck, DATErrorFix,
  StrUtils, Registry, IniFiles, Contnrs, DATColour;

// General Editor Actions

procedure TLDDPMain.acEditCutExecute(Sender: TObject);
// Cut text from active editor window
begin
 editor.CutToClipboard;
end;

procedure TLDDPMain.acEditCopyExecute(Sender: TObject);
// Copy text from active editor window
begin
 editor.CopyToClipboard;
end;

procedure TLDDPMain.acEditPasteExecute(Sender: TObject);
// Paste text into active editor window
begin
  editor.PasteFromClipboard;
end;

procedure TLDDPMain.acUndoExecute(Sender: TObject);
// Undo in active editor child
begin
  editor.Undo;
end;

procedure TLDDPMain.acRedoExecute(Sender: TObject);
// Redo in active editor child
begin
  editor.Redo;
end;

procedure TLDDPMain.acIncIndentExecute(Sender: TObject);
// Indent line/selection based on tabWidth
var
  lineindent, startline, endline, i: Integer;

begin
  editor.ExpandSelection(startline, endline);
  editor.BeginUndoBlock;
  for i := startline to endline do
    editor.SetLineIndent(i, editor.GetLineIndent(i) + 1);
  editor.EndUndoBlock;
end;

procedure TLDDPMain.acDecIndentExecute(Sender: TObject);
// Un-indent line/selection based on tabWidth
var
  lineindent, startline, endline, i: Integer;

begin
  editor.ExpandSelection(startline, endline);
  editor.BeginUndoBlock;
  for i := startline to endline do
    editor.SetLineIndent(i, editor.GetLineIndent(i) - 1);
  editor.EndUndoBlock;
end;

procedure TLDDPMain.acInsertPartHeaderExecute(Sender: TObject);
// Insert standard LDraw part header
var
  HeaderText: string;

begin
  HeaderText := '0 Part name'+ #13#10 +
                '0 Name: ' + ExtractFileName(DocumentTabs.ActiveDocument.FileName) + #13#10 +
                '0 Author: ' + editor.LDDPOptions.Username;
  if editor.LDDPOptions.UserPTName <> '' then
    HeaderText := HeaderText + ' [' + editor.LDDPOptions.UserPTName + ']';

  HeaderText := HeaderText + #13#10 + '0 !LDRAW_ORG Unofficial Part';

  editor.Lines.Insert(0, HeaderText);
  editor.Modified := true;
end;

procedure TLDDPMain.acInsertHistoryStatementExecute(Sender: TObject);
// Insert standard update line
begin
  editor.Lines.Insert(editor.CaretX,
               '0 !HISTORY ' + FormatDateTime('yyyy-mm-dd', Now) + ' [' +
               editor.LDDPOptions.Username + '] Update description');
  editor.Modified := true;
end;

procedure TLDDPMain.acCommentBlockExecute(Sender: TObject);
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

procedure TLDDPMain.acUncommentBlockExecute(Sender: TObject);
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

procedure TLDDPMain.acTrimLinesExecute(Sender: TObject);
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

procedure TLDDPMain.acInlineExecute(Sender: TObject);
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
      DATModel1.InlinePart(i+3, editor.LDDPOptions.SearchPaths);
    end;

  editor.SelText := DATModel1.ModelText;
  editor.Modified := true;

  DATModel1.Free;
end;

procedure TLDDPMain.acSelectAllExecute(Sender: TObject);
// Select all text in active editor child
begin
  editor.SelectAll;
end;

procedure TLDDPMain.acReverseWindingExecute(Sender: TObject);
// Reverse the winding of a block of text
begin
  editor.ReverseWinding;
end;

procedure TLDDPMain.acTriangleCombineExecute(Sender: TObject);
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
                if (errorlist[j] as TDATError).ErrorType = deBowtieQuad1423 then
                  FixBowtieQuad1423(quad)
                else if (errorlist[j] as TDATError).ErrorType = deBowtieQuad1243 then
                  FixBowtieQuad1243(quad);
              errorlist := L3CheckLine(quad.DATString);
              for j := 0 to errorlist.Count - 1 do
                if ((errorlist[j] as TDATError).ErrorType = deQuadCollinear) or
                   ((errorlist[j] as TDATError).ErrorType = deNonCoplanerVerticesNormAngle) or
                   ((errorlist[j] as TDATError).ErrorType = deConcaveQuadSplit24) or
                   ((errorlist[j] as TDATError).ErrorType = deConcaveQuadSplit13) then
                  case MessageDlg('Combining these triangles:' + #13#10 +
                                    line1.DATString + ' (Line: ' + IntToStr(editor.CharIndexToRowCol(editor.SelStart).Line + i) + ')' + #13#10 +
                                    line2.DATString + ' (Line: ' + IntToStr(editor.CharIndexToRowCol(editor.SelStart).Line + i + 1) + ')' + #13#10 +
                                    'gives the following error:' + #13#10 +
                                    GetErrorString(errorlist[j] as TDATError) + #13#10 + #13#10 +
                                    'Combine anyway?', mtWarning, [mbYes, mbNo, mbAbort], 0, mbNo) of
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
                      errorlist.Free;
                      Exit;
                    end;
                    else DoNotCombine := True;
                  end;
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

procedure TLDDPMain.acSubFileExecute(Sender: TObject);
// Save a block of text as a separate file and add the appropriate subfile line
var
  SubFileDlg: TLDDPSubFileDlg;

begin
  SubFileDlg := TLDDPSubFileDlg.Create(Application);
  try
    SubFileDlg.ShowModal;
  finally
    SubFileDlg.Free;
  end;
end;

// External Program actions

procedure TLDDPMain.acLDViewExecute(Sender: TObject);
// Execute LDView with active file
begin
  if (not FileExists(editor.LDDPOptions.LDViewPath + '\LDVIEW.exe')) then begin
    MessageDlg('You have to specify a valid path to LDView.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    Exit;
  end;
  editor.Lines.SaveToFile(tempFileName);
  DoCommand(editor.LDDPOptions.LDViewPath + '\LDVIEW.exe -Poll=3 "' + tempFileName + '"',SW_SHOWNA,false);
end;

procedure TLDDPMain.acMLCadExecute(Sender: TObject);
// Execute MLCad with active file
begin
  if editor.Modified then
    if MessageDlg('File has been modified. ' + #13#10 +
                    'Do you want to save and then view the file in MLCad ' + #13#10 +
                    'or cancel the operation?', mtWarning, [mbOK, mbCancel], 0) =mrcancel then exit;
      acFileSaveExecute(Sender);
  if (not FileExists(editor.LDDPOptions.MLCadPath + '\MLCAD.exe')) then begin
    MessageDlg('You have to specify a valid path to MLCad.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    Exit;
  end;
  DoCommand(editor.LDDPOptions.MLCadPath + '\MLCAD.exe "' + DocumentTabs.ActiveDocument.FileName + '"',SW_SHOWNA,false);
end;

procedure TLDDPMain.acUserDefinedExecute(Sender: TObject);
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
  ExProgram.CommaText := editor.LDDPOptions.ExternalProgramList[(Sender as TAction).ActionComponent.Tag];
  if not FileExists(ExProgram[1]) then
  begin
    MessageDlg('You have to specify a valid external program first!', mtError, [mbOK], 0);
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

procedure TLDDPMain.acL3LabExecute(Sender: TObject);
// Execute L3Lab with active file
begin
  if (not FileExists(editor.LDDPOptions.L3LabPath + '\L3Lab.exe')) then
  begin
    MessageDlg('You have to specify a valid path to L3Lab.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  editor.lines.savetofile(tempFileName);
  DOCommand(editor.LDDPOptions.L3LabPath + '\L3Lab.exe -PollSilent -NoCache -DontAddToMRU -NotReusable -FromLDAO -A.707,0,.707,.354,.866,-.354,-.612,.5,.612 "' + tempFileName + '"',SW_SHOWNA,false);
end;

// File actions

procedure TLDDPMain.acFileNewExecute(Sender: TObject);
// Creates a new untitled document
begin
  DocumentTabs.NewDocument;
end;

procedure TLDDPMain.acFileOpenExecute(Sender: TObject);
// Opens chosen existing filenames in a new tab
var
  i: Integer;

begin
  if OpenDialog1.Execute then
    for i := 0 to OpenDialog1.Files.Count - 1 do
      OpenFile(OpenDialog1.Files[i]);
end;

procedure TLDDPMain.acFilePrintExecute(Sender: TObject);
begin
  printer.Title := DocumentTabs.ActiveDocument.FileName;
  printer.Print;
end;

procedure TLDDPMain.OpenFile(filename: string);
// Open the specified file and set initial data
begin
  if FileExists(filename) then
  begin
    DocumentTabs.Open(filename);
    UpdateMRU(filename);
  end
  else
    MessageDlg('File ' + DocumentTabs.ActiveDocument.Filename + ' not found', mtError, [mbOK], 0);
end;

procedure TLDDPMain.acFileSaveExecute(Sender: TObject);
// Save file to disk if it already exists otherwise run Save As
begin
  SaveFile(DocumentTabs.ActiveDocument.DocIndex);
end;

procedure TLDDPMain.acFileSaveAsExecute(Sender: TObject);
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
    SaveFile(DocumentTabs.ActiveDocument.DocIndex);
  end;
end;

procedure TLDDPMain.acSaveAllExecute(Sender: TObject);
// Save all open documents
var
  i: Integer;

begin
   for i:= DocumentTabs.Count - 1 downto 0 do
     SaveFile(i);
end;

procedure TLDDPMain.SaveFile(DocNumber: Integer);
// Save the file of the specified tab
var
  fileage: TDateTime;

begin
  if DocumentTabs.ActiveDocument.IsUntitled then
    acFileSaveAs.Execute
  else
  begin
    editor.Lines.SaveToFile(DocumentTabs.ActiveDocument.Filename);
    DocumentTabs.ActiveDocument.Modified := editor.Modified;
    SysUtils.FileAge(DocumentTabs.ActiveDocument.FileName, fileage);
    DocumentTabs.ActiveDocument.LastChanged := fileage;
  end;
end;

procedure TLDDPMain.acFileExitExecute(Sender: TObject);
// Close application
begin
  Close;
end;

procedure TLDDPMain.acFileRevertExecute(Sender: TObject);
// Reloads active document losing any changes
begin
  if MessageDlg('Reload last saved version?' + #13#10 +
                  'All changes will be lost!', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    OpenFile(DocumentTabs.ActiveDocument.FileName);
end;

procedure TLDDPMain.acFileCloseAllExecute(Sender: TObject);
// Closes all open document tabs
var
  i: Integer;

begin
   for i:= DocumentTabs.Count - 1 downto 0 do
     CloseFile(i);
end;

procedure TLDDPMain.acFileCloseExecute(Sender: TObject);
// Close tab under cursor
begin
  CloseFile(DocumentTabs.ActiveDocument.DocIndex);
end;

procedure TLDDPMain.CloseFile(DocNumber: Integer);
begin
  DocumentTabs.Close(DocNumber);
end;

procedure TLDDPMain.CloseFile1Click(Sender: TObject);
begin
  if TabRightClickIndex >= 0 then
    CloseFile(TabRightClickIndex);
end;

// Help actions

procedure TLDDPMain.HelpAboutExecute(Sender: TObject);
// Show the 'About' Box
var
  AboutDlg: TLDDPAbout;

begin
  AboutDlg := TLDDPAbout.Create(Application);
  try
    AboutDlg.ShowModal;
  finally
    AboutDlg.Free;
  end;
end;

// Misc actions

procedure TLDDPMain.acOptionsExecute(Sender: TObject);
// Show options window
begin
  OptionsDlg.Execute;
  if DirectoryExists(editor.LDDPOptions.LDrawPath) then
    LDrawBasePath := editor.LDDPOptions.LDrawPath;
  editorStatusChange(Sender,[scAll]);
  MakeColorBar;
  MakeExternalPrograms;
end;

procedure TLDDPMain.acHomepageExecute(Sender: TObject);
// Open LDDP project homepage
begin
  OpenInBrowser('http://lddp.sourceforge.net');
end;

procedure TLDDPMain.acMRUListExecute(Sender: TObject);
// Opens a file from the MRU Manager
begin
  if FileExists((Sender as TMenuItem).Caption) then
    OpenFile((Sender as TMenuItem).Caption)
  else
    MessageDlg('File ' + (Sender as TMenuItem).Caption + ' not found!', mtError, [mbOK], 0);
end;

procedure TLDDPMain.acBMP2LDrawExecute(Sender: TObject);
// Show the BMP2DAT dialog
var
  BMP2LDrawDlg: TLDDPBMP2LDrawDlg;

begin
  BMP2LDrawDlg := TLDDPBMP2LDrawDlg.Create(Application);
  try
    BMP2LDrawDlg.ShowModal;
  finally
    BMP2LDrawDlg.Free;
  end;
end;

procedure TLDDPMain.acLSynthExecute(Sender: TObject);
// Execues LSynth and replaces current text with the output
var
  TempFile: TStringList;
  CommandFile, CommandLine, InputFile, OutputFile: string;

begin
  if (not FileExists(editor.LDDPOptions.LSynthPath + '\lsynthcp.exe')) then
  begin
    MessageDlg('You have to specify a valid path to lsynthcp.exe first!', mtError, [mbOK], 0);
    acOptionsExecute(Sender);
  end
  else
  begin
    OutputFile := GetShortFileName(tempFileName);
    TempFile := TstringList.create;
    CommandLine := GetShortFileName(editor.LDDPOptions.LSynthPath) + '\lsynthcp.exe ';
    InputFile := GetShortFileName(ExtractFilePath(tempFileName)) + ExtractFileName(tempFileName);
    editor.lines.SaveToFile(InputFile);
    TempFile.Add(CommandLine + ' ' + InputFile + ' ' + OutputFile);
    CommandFile := GetShortFileName(WinTempDir) + GetTmpFileName + '.bat';
    TempFile.SaveToFile(CommandFile);
    DoCommand(GetEnvironmentVariable('COMSPEC') + ' /C ' + CommandFile,SW_HIDE,true);
    DeleteFile(CommandFile);
    TempFile.LoadFromFile(OutputFile);
    editor.SelectAll;
    editor.SelText := TempFile.Text;
    TempFile.Free;
    DeleteFile(OutputFile);
    DeleteFile(InputFile);
  end;
end;

procedure TLDDPMain.acBendableObjectExecute(Sender: TObject);
// Show the bendible parts dialog and then insert the object
var
  startline, endline: Integer;
  frmDatCurve: TFlexObjectDlg;

begin
    editor.ExpandSelection(startline, endline);
    if endline - startline = 1 then
    begin
      frmDATCurve := TFlexObjectDlg.Create(Application);
      try
        frmDATCurve.Line1.DATString := editor.Lines[startline];
        frmDATCurve.Line2.DATString := editor.Lines[endline];
        if frmDATCurve.ShowModal = mrOk then
        begin
          frmDATCurve.HoseDATCode.RotationDecimalPlaces := editor.LDDPOptions.RotationDecAcc;
          frmDATCurve.HoseDATCode.PositionDecimalPlaces := editor.LDDPOptions.PostionDecAcc;
          editor.SelText := frmDATCurve.HoseDATCode.ModelText + #13#10;
        end;
      finally
        frmDATCurve.Free;
      end;
    end;
end;

procedure TLDDPMain.acAutoRoundExecute(Sender: TObject);
// Auto rounds selection to decimal places in the options
begin
  editor.AutoRound;
end;

procedure TLDDPMain.acSortSelectionExecute(Sender: TObject);
// Show the sort dialog
var
  SortDlg: TLDDPSortDlg;

begin
  SortDlg := TLDDPSortDlg.Create(Application);
  try
    SortDlg.ShowModal;
  finally
    SortDlg.Free;
  end;
end;

procedure TLDDPMain.acRandomizeColorsExecute(Sender: TObject);
// Randomizes the colors of the selection
var
  RandColor, i, startline, endline: Integer;

begin
    editor.ExpandSelection(startline, endline);
    editor.BeginUndoBlock;
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
    editor.EndUndoBlock;
    editor.SelectLines(startline, endline);
end;

procedure TLDDPMain.acMirrorExecute(Sender: TObject);
// Mirrors the selected lines
begin
    case (Sender as TComponent).Tag of
      1: editor.MirrorSelection(axisX);
      2: editor.MirrorSelection(axisY);
      3: editor.MirrorSelection(axisZ);
    end;
end;

procedure TLDDPMain.acEditorOptionsExecute(Sender: TObject);
// Show the editor options form
var
  op: TSynEditorOptionsContainer;

begin
  op := TSynEditorOptionsContainer.Create(nil);
  try
    op.Assign(editor);
    if EditorOptions.Execute(op) then
      op.AssignTo(editor);
  finally
    op.Free;
  end;
end;

// Movement actions

procedure TLDDPMain.acMoveGridCoarseExecute(Sender: TObject);
begin
  if acMoveGridCoarse.Checked then
  begin
    editor.GridSetting := gsCoarse;
  end
  else
    if (not acMoveGridFine.Checked) and (acMoveGridMedium.Checked) then
      acMoveGridCoarse.Checked := True;
end;

procedure TLDDPMain.acMoveGridMediumExecute(Sender: TObject);
begin
  if acMoveGridMedium.Checked then
  begin
    editor.GridSetting := gsMedium;
  end
  else
    if (not acMoveGridCoarse.Checked) and (acMoveGridFine.Checked) then
      acMoveGridMedium.Checked := True;
end;

procedure TLDDPMain.acMoveGridFineExecute(Sender: TObject);
begin
  if acMoveGridFine.Checked then
  begin
    editor.GridSetting := gsFine;
  end
  else
    if (not acMoveGridCoarse.Checked) and (acMoveGridMedium.Checked) then
      acMoveGridFine.Checked := True;
end;

procedure TLDDPMain.acMoveRotXNegExecute(Sender: TObject);
begin
  editor.GridRotateX(True);
end;

procedure TLDDPMain.acMoveRotXPosExecute(Sender: TObject);
begin
  editor.GridRotateX;
end;

procedure TLDDPMain.acMoveRotYNegExecute(Sender: TObject);
begin
  editor.GridRotateY(True);
end;

procedure TLDDPMain.acMoveRotYPosExecute(Sender: TObject);
begin
  editor.GridRotateY;
end;

procedure TLDDPMain.acMoveRotZNegExecute(Sender: TObject);
begin
  editor.GridRotateZ(True);
end;

procedure TLDDPMain.acMoveRotZPosExecute(Sender: TObject);
begin
  editor.GridRotateZ;
end;

procedure TLDDPMain.acMoveSnapToGridExecute(Sender: TObject);
begin
  editor.SnapToGrid;
end;

procedure TLDDPMain.acMoveXNegExecute(Sender: TObject);
begin
  editor.GridMoveX(True);
end;

procedure TLDDPMain.acMoveXPosExecute(Sender: TObject);
begin
  editor.GridMoveX;
end;

procedure TLDDPMain.acMoveYNegExecute(Sender: TObject);
begin
  editor.GridMoveY(True);
end;

procedure TLDDPMain.acMoveYPosExecute(Sender: TObject);
begin
  editor.GridMoveY;
end;

procedure TLDDPMain.acMoveZNegExecute(Sender: TObject);
begin
  editor.GridMoveZ(True);
end;

procedure TLDDPMain.acMoveZPosExecute(Sender: TObject);
begin
  editor.GridMoveZ;
end;

// Polling Actions

procedure TLDDPMain.acPollEnablePollingExecute(Sender: TObject);
begin
  tmPoll.Enabled := acPollEnablePolling.Checked;
end;

procedure TLDDPMain.acPollOnDemandExecute(Sender: TObject);
begin
  acPollOnDemand.ShortCut := TextToShortCut('F11');
  tmPoll.Enabled := False;
  tmPollTimer(nil);
end;

procedure TLDDPMain.acPollToSelectedLineExecute(Sender: TObject);
begin
  // Do nothing;
end;

procedure TLDDPMain.SetPollTime(Sender: TObject);
begin
  tmPoll.Enabled := False;
  tmPoll.Interval := (Sender as TAction).Tag;
  tmPoll.Enabled := True;
  acPollOnDemand.ShortCut := TextToShortCut('')
end;

// Search actions

procedure TLDDPMain.acFindExecute(Sender: TObject);
// Execute Find Dialogue
begin
//  SearchReplaceDlg.ShowSearchDialog;
end;

procedure TLDDPMain.acReplaceExecute(Sender: TObject);
// Execute Replace Dialogue
begin
//  SearchReplaceDlg.ShowReplaceDialog;
end;

procedure TLDDPMain.acReplaceColorExecute(Sender: TObject);
// Replace Colors using a color dialogue
begin
  ColorReplace.Execute;
end;

procedure TLDDPMain.acFindNextExecute(Sender: TObject);
// Find Next occurence of a previous find procedure
begin
//  SearchReplaceDlg.DoSearchReplaceText(false,SearchReplaceDlg.SearchBackwards);
end;

procedure TLDDPMain.acColorReplaceShortcutExecute(Sender: TObject);
// Replace the color of the selection with the clicked color on the color bar
var
  i, startline, endline: Integer;

begin
    editor.ExpandSelection(startline, endline);
    editor.BeginUndoBlock;
    for i := startline to endline do
      editor.SetLineColor(i, (Sender as TComponent).Tag);
    editor.EndUndoBlock;
    editor.SelectLines(startline, endline);
end;

// View Menu actions
procedure TLDDPMain.acViewColorReplaceToolbarExecute(Sender: TObject);
begin
  tbrColorReplace.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewEditToolbarExecute(Sender: TObject);
begin
  tbrEditing.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewExternalProgramToolbarExecute(Sender: TObject);
begin
  tbrExternalPrograms.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewFileToolbarExecute(Sender: TObject);
begin
  tbrFile.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewGridToolbarExecute(Sender: TObject);
begin
  tbrGrid.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewMovementToolbarExecute(Sender: TObject);
begin
  tbrMovement.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewSearchToolbarExecute(Sender: TObject);
begin
  tbrSearch.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acViewToolsToolbarExecute(Sender: TObject);
begin
  tbrTools.Visible := (Sender as TAction).Checked;
end;

procedure TLDDPMain.acErrorListExecute(Sender: TObject);
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

procedure TLDDPMain.FileIsDropped(var Msg: TMessage);
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

procedure TLDDPMain.AppInstCmdLineReceived(Sender: TObject;
  CmdLine: TStrings);
var
  i: Integer;

begin
  if CmdLine.Count > 0 then
  for i := 0 to CmdLine.Count - 1 do
    OpenFile(CmdLine[i]);
end;

(*
procedure TLDDPMain.editorDwellEnd(Sender: TObject; const position: Integer; x,
  y: Integer);
begin
  editor.CallTipCancel;
end;

procedure TLDDPMain.editorDwellStart(Sender: TObject; const position: Integer; x,
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
                           PChar((DModel[0] as TDATComment).Comment));

      subp.Free;
      DModel.Free;
    end;
  end;
end;

*)
procedure TLDDPMain.editorStatusChange(Sender: TObject;
  Changes: TSynStatusChanges);
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
    acInline.Enabled := DLine.LineType = ltSubpart;
    DLine.Free;
  end
  else
  begin
    acInline.Enabled := False;

    for i := editor.CharIndexToRowCol(editor.SelStart).Line to editor.CharIndexToRowCol(editor.SelEnd).Line do
    begin
      DLine := StrToDAT(editor.Lines[i]);
      if DLine.LineType = ltSubpart then
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
//  AutoComplete.Disabled := (editor.GetStyleAt(editor.GetCurrentPos) <> 16) and
//                           (editor.GetStyleAt(editor.GetCurrentPos) <> 17);

  // Check external changes
  if (not DocumentTabs.ActiveDocument.IsUntitled) and
     FileExists(DocumentTabs.ActiveDocument.FileName) then
  begin
    SysUtils.FileAge(DocumentTabs.ActiveDocument.FileName, fileage);
    if fileage <> DocumentTabs.ActiveDocument.LastChanged then
    begin
      if MessageDlg('File has been externally changed.' + #13#10 +
                      'Reload last saved version?' + #13#10 +
                      'All changes will be lost!',
                    mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
        OpenFile(DocumentTabs.ActiveDocument.FileName);
      DocumentTabs.ActiveDocument.LastChanged := fileage;
    end;
  end;

  DocumentTabs.ActiveDocument.Modified := editor.Modified;
  if DocumentTabs.ActiveDocument.Modified then
  begin
    if DocumentTabs.ActiveDocument.IsUntitled then
      DocumentTabs.ActiveDocument.TabName :=
        '<' + ExtractFileName(DocumentTabs.ActiveDocument.FileName) + '> *'
    else
      DocumentTabs.ActiveDocument.TabName :=
        ExtractFileName(DocumentTabs.ActiveDocument.FileName) + ' *';
    Statusbar.Panels[2].Text:='Modified';
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

//procedure TLDDPMain.editorUpdateUI(Sender: TObject);

procedure TLDDPMain.FormDblClick(Sender: TObject);
// Opens the file open dialog if the background is double clicked
begin
  acFileOpen.Execute;
end;

procedure TLDDPMain.FormCreate(Sender: TObject);
begin
//  frMain.OnActivate := DocumentTabsChange;
  DragAcceptFiles(Handle,True);
  Initialized := False;
  PluginActionList := TActionList.Create(Self);
end;

procedure TLDDPMain.FormShow(Sender: TObject);
// Inits the app and shows model tree if needed
begin
  AppInitialize;
end;

Procedure TLDDPMain.AppInitialize;
// Initializes Application
var
  i: Integer;
  regT: TRegistry;
  SplashScreen: TLDDPSplash;

begin
  if Initialized then Exit;
  
  SplashScreen := TLDDPSplash.Create(Application);
  try
    //Show splash screen
    SplashScreen.lbState.Caption:='Initializing plugins...';
    SplashScreen.show;
    SplashScreen.update;
    Screen.Cursor := crHourGlass;

    // Check if the App Data folder exists and create it if not
    if not DirectoryExists(GetShellFolderPath('AppData') + '\LDDP') then
      CreateDir(GetShellFolderPath('AppData') + '\LDDP');
    CopyFile(PWideChar(ExtractFilePath(Application.ExeName) + '\uiconfig.ini'), PWideChar(GetShellFolderPath('AppData') + '\LDDP\uiconfig.ini'), false);

    //Load form parameters from INI file
    acMoveGridCoarse.Execute;
    LoadFormValues;
    BuildMetaMenu;

    // View menu settings;
    acViewFileToolbar.Checked := tbrFile.Visible;
    acViewSearchToolbar.Checked := tbrSearch.Visible;
    acViewExternalProgramToolbar.Checked := tbrExternalPrograms.Visible;
    acViewMovementToolbar.Checked := tbrMovement.Visible;
    acViewToolsToolbar.Checked := tbrTools.Visible;
    acViewEditToolbar.Checked := tbrEditing.Visible;
    acViewColorReplaceToolbar.Checked := tbrColorReplace.Visible;

 //   editor.CallTipSetFore(clBlack);

    //Set editor properties filename and load properties
 //   EditorPropertyLoader.FileName := GetShellFolderPath('AppData') + '\LDDP\' + EditorPropertyLoader.FileName;
 //   if FileExists(EditorPropertyLoader.FileName) then
 //     EditorPropertyLoader.Load;

    //Set InstallDir in registry for legacy plugin support
    regT := TRegistry.Create;
    regT.OpenKey('Software\Waterproof Productions\LDDesignPad',true);
    regT.WriteString('InstallDir', Application.ExeName);
    regT.Free;

    //Load Plugins
    LoadPlugins;

    //Build the MRU list
    UpdateMRU;

    //Set the keywordlist for the syntax highlighter
    if DirectoryExists(LDrawBasePath) then
      SetKeyWordList;
//    AutoComplete.AStrings.Text := LanguageManager.LanguageList.Find('LDraw').Keywords[0].Keywords.Text;

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
    SplashScreen.Free;
    Initialized := True;
  end;
end;

procedure TLDDPMain.MakeColorBar;
var
  ColorButtonBitmap: TBitmap;
  CurrentItem: TStringList;
  CList: TDATColourList;
  ImageColor: TColor;
  i, code: Integer;

begin
  if (editor.LDDPOptions.ColorBarList.Count < 15) then
  begin
    if FileExists(LDrawBasePath + PathDelim + 'ldconfig.ldr') then
    begin
      CList := MakeStandardDATColourList;
      i := 0;
      while i < 16 do
      begin
        code := CList.IndexOfColourCode(i);
        if code >= 0 then
        begin
          editor.LDDPOptions.ColorBarList.Add('"' + StringReplace(CList[code].ColourName, '_', ' ', [rfReplaceAll]) + '",' +
                             IntToStr(CList[code].Code) + ',' +
                             IntToStr(CList[code].MainColour));
          inc(i);
        end;
      end;
      CList.Free;
    end
    else
    begin
      for i := 0 to 15 do
        editor.LDDPOptions.ColorBarList.Add('"Black",0,0');
    end;
  end;

  CurrentItem := TStringList.Create;
  if editor.LDDPOptions.ColorBarList.Count >= 15 then
    for i := 0 to 15 do
    begin
      CurrentItem.CommaText := editor.LDDPOptions.ColorBarList[i];
      ImageColor := StrToInt(CurrentItem[2]);
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

      with LDDPMain.tbrColorReplace.Buttons[i] do
      begin
        ImageIndex := LDDPMain.ilProgramIcons.AddMasked(ColorButtonBitmap, clFuchsia);
        Hint := CurrentItem[0] + ' ' + CurrentItem[1];
        Caption := CurrentItem[0] + ' ' + CurrentItem[1];
        Tag := StrToInt(CurrentItem[1]);
      end;
      ColorButtonBitmap.Free;
  end;
  CurrentItem.Free;
end;

procedure TLDDPMain.MakeExternalPrograms;
var
  i: Integer;
  ExProgram: TStringList;
  MenuItem, MenuItem2: TMenuItem;

begin
  for i := mnuUserDefined.Count - 1 downto 0 do
  begin
    mnuUserDefined.Items[i].Free;
    pmExternal.Items.Free;
  end;
  for i := 0 to editor.LDDPOptions.ExternalProgramList.Count - 1 do
  begin
    ExProgram := TStringList.Create;
    ExProgram.CommaText := editor.LDDPOptions.ExternalProgramList[i];
    MenuItem := TMenuItem.Create(mnuUserDefined);
    MenuItem.Action := acUserDefined;
    MenuItem.Caption := ExProgram[0];
    MenuItem.Tag := i;
    MenuItem2 := TMenuItem.Create(pmExternal);
    MenuItem2.Action := LDDPMain.acUserDefined;
    MenuItem2.Caption := ExProgram[0];
    MenuItem2.Tag := i;
    LDDPMain.mnuUserDefined.Add(MenuItem);
    LDDPMain.pmExternal.Items.Add(MenuItem2);
    ExProgram.Free;
  end;
end;

procedure TLDDPMain.MetaMenuClick(Sender: TObject);
// Insert the selected meta command
begin
  editor.Lines.Insert(editor.CaretXY.Line, '0 ' +
                      (Sender as TMenuItem).Hint);
end;

procedure TLDDPMain.SetKeyWordList;
// Set lookup the official part files put them in the keyword list
var
  sc: TSearchRec;

begin
  // Set official part autocomplete
(*  with LanguageManager.LanguageList.Find('LDraw').Keywords[0].Keywords do
  begin
    Clear;
    if FindFirst(LDrawBasePath + '\parts\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase(ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    if FindFirst(LDrawBasePath + '\parts\s\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase('s\' + ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    if FindFirst(LDrawBasePath + '\p\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase(ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    if FindFirst(LDrawBasePath + '\p\48\*.dat', faAnyFile, sc) = 0 then
      repeat
        Add(LowerCase('48\' + ExtractFileName(sc.Name)));
      until FindNext(sc) <> 0;
    FindClose(sc);
  end;
  // Set Meta command auto complete
  with LanguageManager.LanguageList.Find('LDraw').Keywords[1].Keywords do
    CommaText := ReadUIConfigValue('MetaCommands'); *)
end;

procedure TLDDPMain.DocumentTabsChange(Sender: TObject);
begin
  if frErrorWindow.Visible  then
    frErrorWindow.acErrorCheck.Execute;
end;

procedure TLDDPMain.DocumentTabsClosing(Sender: TObject; const TabIndex: Integer;
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

procedure TLDDPMain.DocumentTabsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    TabRightClickIndex := DocumentTabs.IndexOfTabAt(X,Y);
  end else TabRightClickIndex := -1;
end;

procedure TLDDPMain.LoadPlugins;
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
    //Free all the old plugin actions and menu items
    while PluginActionList.ActionCount > 0 do
      with (PluginActionList.Actions[PluginActionList.ActionCount - 1] as TAction) do
      begin
        if ImageIndex > 0 then
          PluginActionList.Images.Delete(ImageIndex);
        Free;
      end;
    while PluginMenu.Count > 0 do
      PluginMenu.Items[PluginMenu.Count - 1].Free;

    //Find and add the plugins
    repeat
      PluginFile := sr.Name;
      PluginInfoList.Clear;
      PluginInfoList.Add('');

      for i := 1 to 6 do
        PluginInfoList.Add(PluginInfo(PluginFile,i));

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

      PluginMenuItem := TMenuItem.Create(PluginMenu);
      PluginMenuItem.Action := PluginAction;
      PluginMenu.Insert(PluginMenu.Count, PluginMenuItem);
    until FindNext(sr) <> 0;
  end;

  if PluginMenu.Count = 0 then
  begin
    PluginMenuItem := CreateMenuItem('None Found', '', PluginMenu);
    PluginMenuItem.Enabled := false;
    PluginMenu.Insert(PluginMenu.Count, PluginMenuItem);
  end;

  FindClose(sr);
  PluginInfoList.Free;
end;

procedure TLDDPMain.PluginClick(Sender: TObject);
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
    begin
      editor.SelStart := s1;
      editor.SelEnd := s2;
    end;
  end;
end;

// Polling procedures

procedure TLDDPMain.btPollingClick(Sender: TObject);
// Does nothing.. but needed so the polling button isn't deactivated
begin
 // do nothing
end;

procedure TLDDPMain.tmPollTimer(Sender: TObject);
// if polling time triggers the actual editor window is written to its 
// firm assigned temp filename
var
  st: TStringList;

begin
  if acPollEnablePolling.Checked and (DocumentTabs.Count > 0) then
    try
      if acPollToSelectedLine.Checked then
      begin
        st := TStringList.Create;
        st.Text := editor.Lines.Text;
        while st.Count > editor.CaretY do
          st.Delete(st.Count - 1);
        st.SaveToFile(tempFileName);
      end
      else 
        editor.lines.SaveToFile(tempFileName);
    except
      on E: Exception do
      begin
        mnuEnablePolling.Checked := False;
        tmPoll.Enabled := False;
        ShowMessage(E.Message);
      end;
    end;
end;

procedure TLDDPMain.UpdateMRU(NewFileName: TFileName = '');
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

procedure TLDDPMain.LoadFormValues;
// Loads form values from the LDDP.ini file
var
  LDDPini: TIniFile;
  IniSection: string;
  i: Integer;

begin
  LDDPini := TIniFile.Create(IniFilePath + '\LDDP.ini');

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
//  SearchReplaceDlg.ReplaceTextHistory := LDDPini.ReadString(IniSection, 'SearchReplaceDlg_ReplaceTextHistory', SearchReplaceDlg.ReplaceTextHistory);
//  SearchReplaceDlg.SearchTextHistory := LDDPini.ReadString(IniSection, 'SearchReplaceDlg_SearchTextHistory', SearchReplaceDlg.SearchTextHistory);

  editor.LDDPOptions.Load(IniFilePath + '\LDDP.ini', 'LDDP Options');
  if DirectoryExists(editor.LDDPOptions.LDrawPath) then
    LDrawBasePath := editor.LDDPOptions.LDrawPath;

  MakeExternalPrograms;
  MakeColorBar;

  LDDPini.Free;
end;

procedure TLDDPMain.BuildMetaMenu;
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
          ParentMenuItem := CreateMenuItem(SectionName, '', LDDPMain.mnuMeta);
          ParentMenuItem2 := CreateMenuItem(SectionName, '', LDDPMain.mnuMeta2);
          LDDPMain.mnuMeta.Add(ParentMenuItem);
          LDDPMain.mnuMeta2.Add(ParentMenuItem2);
          for j := 0 to CurrentSection.Count - 1 do
          begin
            ChildMenuItem := CreateMenuItem(CurrentSection[j],MetaMenuIni.ReadString(SectionName,CurrentSection[j],''),ParentMenuItem);
            ChildMenuItem.OnClick := LDDPMain.MetaMenuClick;
            ParentMenuItem.Add(ChildMenuItem);
            ChildMenuItem := CreateMenuItem(CurrentSection[j],MetaMenuIni.ReadString(SectionName,CurrentSection[j],''),ParentMenuItem);
            ChildMenuItem.OnClick := LDDPMain.MetaMenuClick;
            ParentMenuItem2.Add(ChildMenuItem);
          end;
        end;
      end;
    end
  else
    LDDPMain.mnuMeta.Enabled := False;

  CurrentSection.Free;
  MetaSections.Free;
  MetaMenuIni.Free;
end;

procedure TLDDPMain.SaveFormValues;
// Saves form values to the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;
  i: Integer;

begin
  editor.LDDPOptions.Save(IniFilePath + '\LDDP.ini', 'LDDP Options');

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

//  LDDPini.WriteString(IniSection, 'SearchReplaceDlg_ReplaceTextHistory', SearchReplaceDlg.ReplaceTextHistory);
//  LDDPini.WriteString(IniSection, 'SearchReplaceDlg_SearchTextHistory', SearchReplaceDlg.SearchTextHistory);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

function TLDDPMain.tempFileName:string;
// Creates and returns a unique temporary filename
begin
  Result := ExtractFilePath(DocumentTabs.ActiveDocument.FileName) + PathDelim +
            ChangeFileExt(ExtractFileName(DocumentTabs.ActiveDocument.FileName), '.lddptmp');
end;

procedure TLDDPMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;

begin
  for i := DocumentTabs.Count - 1 downto 0 do
  begin
    if DocumentTabs.Document[i].Modified then
      case MessageDlg('Save changes to ' + DocumentTabs.Document[i].FileName + '?'
                      + #13#10 + #13#10 +
                      'Yes: Saves the changes and closes this document.' + #13#10 +
                      'No: Closes the document without saving any changes.' + #13#10 +
                      'Cancel: Keeps the document open',
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
//  EditorPropertyLoader.Save;
  PluginActionList.Free;
end;

procedure TLDDPMain.SearchReplaceDlgTextNotFound(Sender: TObject);
begin
  acFindNext.Enabled := false;
end;

procedure TLDDPMain.acFindNextUpdate(Sender: TObject);
begin
//  acFindNext.Enabled := SearchReplaceDlg.SearchText <> '';
end;

procedure TLDDPMain.tbUserDefinedClick(Sender: TObject);
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
