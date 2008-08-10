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
  gnugettext, Windows, Graphics, Forms, Registry, Messages, Dialogs,
  SysUtils, ExtCtrls, Menus, ImgList, StdActns, Types, Classes, ActnList,
  ComCtrls, Controls, Inifiles, splash, StdCtrls, ShellAPI, ToolWin,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  sciPrint, SciScintillaOptionsFrm, SciScintillaOptionsDlg, SciSearchReplaceBase,
  SciSearchReplace, SciScintillaBase, SciScintillaMemo, SciScintilla,
  SciScintillaLDDP, SciDocTabCtrl, SciLanguageManager, SciPropertyMgr,
  JvDockTree, JvDockControlForm, JvDockDelphiStyle, JvComponentBase,
  JvDockVIDStyle;

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
    acInsertUpdateLine: TAction;
    acL3Lab: TAction;
    acLDView: TAction;
    acMLCad: TAction;
    acMRUList: TAction;
    acOptions: TAction;
    acRedo: TAction;
    acReplace: TAction;
    acReplaceColor: TAction;
    acSelectAll: TAction;
    ActionList1: TActionList;
    acTrimLines: TAction;
    acUncommentBlock: TAction;
    acUncommentBlock1: TMenuItem;
    acUndo: TAction;
    acUserDefined: TAction;
    btPolling: TToolButton;
    ChangeColor1: TMenuItem;
    ControlBar1: TControlBar;
    Cut1: TMenuItem;
    Editing1: TMenuItem;
    ExternalPrograms2: TMenuItem;
    Files1: TMenuItem;
    HelpAbout: TAction;
    ilToolBarColor: TImageList;
    InlinePart1: TMenuItem;
    Insert2: TMenuItem;
    MenuItem2: TMenuItem;
    mnPollL3Lab: TMenuItem;
    mnPollToSelected: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    Paste1: TMenuItem;
    Plugins3: TMenuItem;
    pmMemo: TPopupMenu;
    pmPolling: TPopupMenu;
    pmToolbars: TPopupMenu;
    Pollevery5sec2: TMenuItem;
    Pollevery1sec2: TMenuItem;
    Pollevery2sec2: TMenuItem;
    SearchandReplace1: TMenuItem;
    StandardPartHeader2: TMenuItem;
    StatusBar: TStatusBar;
    tmPoll: TTimer;
    tbrFile: TToolBar;
    tbrExternalPrograms: TToolBar;
    tbrSearchAndReplace: TToolBar;
    tbrWindows: TToolBar;
    tbrEditing: TToolBar;
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
    tbUserDefined: TToolButton;
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
    Comment1: TMenuItem;
    Uncomment1: TMenuItem;
    Toolbars: TMenuItem;
    mnuFile: TMenuItem;
    mnuEditing: TMenuItem;
    mnuSearchAndReplace: TMenuItem;
    mnuWindows: TMenuItem;
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
    ReverseWinding2: TMenuItem;
    ToolButton9: TToolButton;
    ErrorCheck1: TMenuItem;
    acCheckforUpdate: TAction;
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
    Processing1: TMenuItem;
    RandomizeColorsinSelection1: TMenuItem;
    RandomizeColorsinSelection2: TMenuItem;
    Pollonrequest1: TMenuItem;
    Pollonrequest2: TMenuItem;
    N24: TMenuItem;
    ToolButton31: TToolButton;
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
    UnIndent1: TMenuItem;
    acincIdent1: TMenuItem;
    pmExternal: TPopupMenu;
    ReplaceColorShortcut1: TMenuItem;
    acSubFile: TAction;
    SubfileSelection1: TMenuItem;
    N25: TMenuItem;
    SubfileSelection2: TMenuItem;
    Sort1: TMenuItem;
    http: TIdHTTP;
    EditorOptions1: TMenuItem;
    acEditorOptions: TAction;
    SearchReplaceDlg: TSciSearchReplace;
    EditorOptionDlg: TScintillaOptionsDlg;
    acToolbarVisibility: TAction;
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
    SciLanguageManager1: TSciLanguageManager;

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
    procedure acInsertUpdateLineExecute(Sender: TObject);
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
    procedure mnPollL3LabClick(Sender: TObject);
    procedure mnPollToSelectedClick(Sender: TObject);
    procedure Pollevery5sec2Click(Sender: TObject);
    procedure Pollevery1sec2Click(Sender: TObject);
    procedure Pollevery2sec2Click(Sender: TObject);
    procedure tmPollTimer(Sender: TObject);
    procedure acFileSaveAsExecute(Sender: TObject);
    procedure acFileOpenExecute(Sender: TObject);
    procedure acFileCloseAllExecute(Sender: TObject);
    procedure acWindowCascadeExecute(Sender: TObject);
    procedure acWindowTileExecute(Sender: TObject);
    procedure acReverseWindingExecute(Sender: TObject);
    procedure acCheckforUpdateExecute(Sender: TObject);
    procedure acModelTreeViewExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acBMP2LDrawExecute(Sender: TObject);
    procedure acFindNextUpdate(Sender: TObject);
    procedure acLSynthExecute(Sender: TObject);
    procedure acBendableObjectExecute(Sender: TObject);
    procedure acAutoRoundExecute(Sender: TObject);
    procedure MetaMenuClick(Sender: TObject);
    procedure acTriangleCombineExecute(Sender: TObject);
    procedure acRandomizeColorsExecute(Sender: TObject);
    procedure Pollonrequest1Click(Sender: TObject);
    procedure acMirrorExecute(Sender: TObject);
    procedure acColorReplaceShortcutExecute(Sender: TObject);
    procedure tbUserDefinedClick(Sender: TObject);
    procedure acSubFileExecute(Sender: TObject);
    procedure acSortSelectionExecute(Sender: TObject);
    procedure acEditorOptionsExecute(Sender: TObject);
    procedure SearchReplaceDlgTextFound(Sender: TObject);
    procedure SearchReplaceDlgTextNotFound(Sender: TObject);
    procedure acToolbarVisibilityExecute(Sender: TObject);
    procedure acErrorListExecute(Sender: TObject);
    procedure editorUpdateUI(Sender: TObject);
    procedure acFileCloseExecute(Sender: TObject);
    procedure DocumentTabsClosing(Sender: TObject; const TabIndex: Integer;
      var AllowClose: Boolean);
    procedure DocumentTabsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DocumentTabsChange(Sender: TObject);

  private
    { Private declarations }
    initialized: boolean;
    TabRightClickndex: Integer;
    procedure AppInitialize;
    procedure FileIsDropped(var Msg : TMessage); message WM_DropFiles ;
    procedure BuildMetaMenu;
    function tempFileName:string;

  public
    { Public declarations }
    strChangedCompleteText:string;
    strChangedSelText:string;
    slPlugins: TStringList;
    procedure LoadPlugins(AppInit:Boolean = false);
    procedure OpenFile(filename: string);
    procedure LoadFile(filename: string; DocNumber: Integer);
    procedure ShowSearchReplaceDialog(AReplace: boolean);
    procedure UpdateControls(Closing: Boolean = false);
    procedure UpdateMRU(NewFileName: TFileName= '');
    procedure UpdateViewMenu;
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure SetToolbarWindows;
  end;


var
  frMain: TfrMain;

implementation

{$R *.dfm}

uses
  about, options, colordialog, BezWindow, sorting, errorbar,
  BMP2LDraw, modeltreeview, dlgSubpart, commonprocs, windowsspecific,
  DATBase, DATModel, DATUtils, DATCheck, DATErrorFix, SciStreamDefault,
  STRUtils;

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

procedure TfrMain.acInsertUpdateLineExecute(Sender: TObject);
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

  DModel := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);
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
  DATModel1 := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);

  editor.ExpandSelection(i, i);

  DATModel1.FilePath := ExtractFilePath(Caption);
  DATModel1.ModelText := editor.SelText;

  for i := DATModel1.Count - 1 downto 0 do
    if DATModel1[i] is TDATSubPart then
    begin
      DATModel1.Insert(i,'');
      DATModel1.Insert(i,'0 Inlined by LDDesignPad');
      DATModel1.Insert(i,'0 Original Line: ' + DATModel1[i+2].DATString );
      DATModel1.Insert(i+4, '0 End of Inlined Part');
      DATModel1.Insert(i+5, '');
      DATModel1.InlinePart(i+3);
      end;

  editor.SelText := DATModel1.ModelText;
  editor.Modified := true;
  UpdateControls(false);

  DATModel1.Free;
end;

procedure TfrMain.acSelectAllExecute(Sender: TObject);
// Select all text in active editor child
begin
  editor.SelectAll;
end;

procedure TfrMain.acReverseWindingExecute(Sender: TObject);
// Reverse the winding of a block of text
var
  startline, endline, i : Integer;
  DATModel1: TDATModel;

begin
    DATModel1 := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);

    editor.ExpandSelection(startline, endline);

    if editor.SelLength <> 0 then
    begin
      DATModel1.ModelText := editor.SelText;

      for i := 0 to DATModel1.Count-1 do
        if DATModel1[i] is TDATPolygon then
          (DATModel1[i] as TDATPolygon).ReverseWinding;

      editor.SelText := DATModel1.ModelText;

      editor.SelectLines(startline, endline);

      DATModel1.Free;
    end;
end;

procedure TfrMain.acTriangleCombineExecute(Sender: TObject);
// Combine 2 triangle commnds into a quad command
// Also checks for non coplanarity and issues a warning
var
  DModel: TDATModel;
  i, startline, endline: Integer;
  QuadCombine: TDATQuad;
  ErrorLine: string;

  procedure ProcessTriangles(tri1, tri2: TDATTriangle);

  var
    QuadPoints: array of TDATPoint;
    j, k: Integer;
    flag: Boolean;

  begin
    for j := 1 to 3 do
    begin
      if Length(QuadPoints) > 0 then
      begin
        flag := false;
        for k := 0 to Length(QuadPoints) - 1 do
          if CheckSamePoint(tri1.Point[j],QuadPoints[k]) then
            flag := true;
        if not flag then
        begin
          SetLength(QuadPoints, Length(QuadPoints) + 1);
          QuadPoints[Length(QuadPoints) - 1] := tri1.Point[j];
        end;
      end
      else
      begin
        SetLength(QuadPoints,1);
        QuadPoints[0] := tri1.Point[j];
      end;
      flag := false;
      for k := 0 to Length(QuadPoints) - 1 do
        if CheckSamePoint(tri2.Point[j],QuadPoints[k]) then
          flag := true;
      if not flag then
      begin
        SetLength(QuadPoints, Length(QuadPoints) + 1);
        QuadPoints[Length(QuadPoints) - 1] := tri2.Point[j];
      end;
    end;

    if Length(QuadPoints) = 4 then
    begin
      QuadCombine := TDATQuad.Create;
      QuadCombine.Point[1] := QuadPoints[0];
      QuadCombine.Point[2] := QuadPoints[1];
      QuadCombine.Point[3] := QuadPoints[2];
      QuadCombine.Point[4] := QuadPoints[3];
      QuadCombine.Color := tri1.Color;
      ErrorLine := L3CheckLine(QuadCombine.DATString);

      if pos('Bad vertex sequence, 0132',ErrorLine)>0 then
        FixBowtieQuad0132(QuadCombine)
      else if pos('Bad vertex sequence, 0312',ErrorLine)>0 then
        FixBowtieQuad0312(QuadCombine);

      ErrorLine := L3CheckLine(QuadCombine.DATString);
      flag := true;
      if (pos('Collinear vertices',ErrorLine)>0) or
         (pos('Vertices not coplaner',ErrorLine)>0) then
        if MessageDlg(_('Combining these triangles:') + #13#10 +
                      tri1.DATString + '(Line: ' + IntToStr(editor.LineFromPosition(editor.SelStart) + i) + ')' + #13#10 +
                      tri2.DATString + '(Line: ' + IntToStr(editor.LineFromPosition(editor.SelStart) + i + 1) + ')' + #13#10 +
                      _('will result in a quad with collinear or') + #13#10 +
                      _('not coplaner vertices') + #13#10 +
                      _('Combine anyway?'), mtWarning, [mbYes, mbNo], 0) = mrNo then
          flag := false;

      if flag then
      begin
        DModel.Insert(i, QuadCombine.DATString);
        DModel.Delete(i+1);
        DModel.Delete(i+1);
      end;
    end;
  end; 

begin
  DModel := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);

  editor.ExpandSelection(startline, endline);
  DModel.ModelText := editor.SelText;

  i := 0;

  if DModel.Count >= 2 then
    while i < DModel.Count do
    begin
      if i <= DModel.Count - 2 then
        if (DModel[i] is TDATTriangle) and (DModel[i+1] is TDATTriangle) then
          ProcessTriangles(DModel[i] as TDATTriangle, DModel[i+1] as TDATTriangle);
      inc(i);
    end;
  editor.SelText := DModel.ModelText;
end;

procedure TfrMain.acSubFileExecute(Sender: TObject);
// Save a block of text as a separate file and add the appropriate subfile line
var
  SubFile: TStringList;
  FileType, subfilename: string;
  i, startline, endline: Integer;

begin
  editor.ExpandSelection(startline, endline);

  //Init Form Values
  frSubFile.edFilename.Text := ExtractFileName(Caption);
  frSubFile.edAuthor.Text := frOptions.edName.Text;
  frSubFile.edUsername.Text := frOptions.edUsername.Text;
  frSubFile.edTitle.Text := '';
  frSubFile.edComments.Clear;
  frSubFile.rgType.ItemIndex := -1;
  frSubFile.cbUnofficial.Checked := False;

  //Subfile selected text
  if frSubfile.ShowModal = mrOK then
  begin
    case frSubFile.rgType.ItemIndex of
      1: FileType := 'Submodel';
      2: FileType := 'Part';
      3: FileType := 'Subpart';
      4: FileType := 'Primitive';
      5: FileType := '48_Primitive';
      else FileType := 'Model';
    end;

    if frSubFile.cbUnofficial.Checked then
      FileType := 'Unofficial ' + FileType;

    for i := 0 to frSubFile.edComments.Lines.Count - 1 do
      frSubFile.edComments.Lines[i] := '0 ' + frSubFile.edComments.Lines[i];

    SubFile := TStringList.Create;
    SubFile.Text := '0 ' + frSubFile.edTitle.Text + #13#10 +
                    '0 Name: ' + frSubFile.edFileName.Text + #13#10 +
                    '0 Author: ' + frSubFile.edAuthor.Text +
                    '[' + frSubFile.edUsername.text + ']' + #13#10 +
                    '0 !LDRAW_ORG ' + FileType + #13#10 +
                    frSubFile.edComments.Text + #13#10 +
                    editor.SelText;

    if FileExists(ExtractFilePath(Caption) + frSubFile.edFileName.Text) and
       (MessageDlg(_('File of same name already exists.  Overwrite?'),
                   mtWarning, mbOKCancel, 0) <> mrOk) then
      Exit;

    subfilename := ExtractFilePath(DocumentTabs.ActiveDocument.FileName) + frSubFile.edFileName.Text;
    SubFile.SaveToFile(subfilename);
    editor.SelText := '1 16 0 0 0 1 0 0 0 1 0 0 0 1 ' + frSubFile.edFileName.Text;
    OpenFile(subfilename);
    UpdateMRU(subfilename);
  end;
end;

// External Program actions

procedure TfrMain.acLDViewExecute(Sender: TObject);
// Execute LDView with active file
begin
  if (not FileExists(frOptions.edLDVIEWDir.text+'\LDVIEW.exe')) then begin
    MessageDlg(_('You have to specify a valid path to LDView.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  editor.Lines.SaveToFile(tempFileName);
  DOCommand(frOptions.edLDVIEWDir.text+'\LDVIEW.exe -Poll=3 "' + tempFileName+'"',SW_SHOWNA,false);
end;

procedure TfrMain.acMLCadExecute(Sender: TObject);
// Execute MLCad with active file
begin
 if editor.modified then
    if MessageDlg(_('File has been modified. ' +#13#10+
                  'Do you want to save and then view the file in MLCad '+#13#10+
                  'or cancel the operation?'), mtWarning, [mbOK, mbCancel], 0) =mrcancel then exit;
  acFileSaveExecute(Sender);
  if (not FIleExists(frOptions.edMLCADDir.text+'\MLCAD.exe')) then begin
    MessageDlg(_('You have to specify a valid path to MLCad.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  DOCommand(frOptions.edMLCadDir.text+'\MLCAD.exe "' + DocumentTabs.ActiveDocument.FileName + '"',SW_SHOWNA,false);
end;

procedure TfrMain.acUserDefinedExecute(Sender: TObject);
// Execute user defined program with active file
var
  opt:byte;
  ExProgram: TStringList;

    function ParseString(toparse:string):string;
    var short,long:string;
    // %0 will be replaced by the path and filename of the exported file LDDP has generated,
    // %1 is replaced by the path only,
    // %2 will be replaced by the file-name only (without extension),
    // %3 is used a place holder for the path and the filename without extension.
    // %4, %5, %6, %7 are the same as %0 to %3 except they use the short form for paths and file-names that means the 8.3 notation of MS-DOS.
    begin
      long := tempFileName;
      short := ExtractShortPathName(long);
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
  ExProgram := TStringList.Create;
  ExProgram.CommaText := frOptions.ExternalProgramList[(Sender as TAction).ActionComponent.Tag];
  if not FileExists(ExProgram[1]) then
  begin
    MessageDlg(_('You have to specify a valid external program first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
    exit;
  end;
  case StrToInt(ExProgram[5]) of
    1: opt:=SW_HIDE;
    2: opt:=SW_SHOWNOACTIVATE;
    3: opt:=SW_MAXIMIZE;
    else
      opt:=SW_SHOWNORMAL;
  end;

  if StrToBool(ExProgram[4]) then
    ShowMessage(ExProgram[1]+' '+ParseString(ExProgram[2]));

  editor.Lines.SaveToFile(tempFileName);
  DoCommand(ExProgram[1]+' '+ParseString(ExProgram[2]),opt,StrToBool(ExProgram[3]));
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
// Creates a new untitled Editor child window
begin
  DocumentTabs.NewDocument;
end;

procedure TfrMain.acFileOpenExecute(Sender: TObject);
// Opens chosen existing filenames in a new editor child windows
var
  i: Integer;

begin
  if OpenDialog1.Execute then
  begin
    for i:=0 to OpenDialog1.Files.Count - 1 do
    begin
      OpenFile(OpenDialog1.Files[i]);
      UpdateMRU(OpenDialog1.Files[i]);
    end;
  end;
end;

procedure TfrMain.OpenFile(filename: string);
var
  DocNumber: Integer;

begin
  if (DocumentTabs.Count = 1) and
     (editor.Lines.Count = 0) then
    DocNumber := 0
  else
    DocNumber := DocumentTabs.NewDocument;
  LoadFile(filename, DocNumber);
end;

procedure tfrMain.LoadFile(filename: string; DocNumber: Integer);
// Loads given Filename into the active MDI editor child

begin
  if FileExists(filename) then
  begin
    DocumentTabs.Document[DocNumber].FileName := filename;
    DocumentTabs.Document[DocNumber].TabName := ExtractFileName(DocumentTabs.Document[DocNumber].FileName);
    editor.LoadFromFile(filename);
    editor.EmptyUndoBuffer;
    editor.SetSavePoint;
    UpdateControls(false);
  end
  else
    MessageDlg(_('File ') + Caption + _(' not found'), mtError, [mbOK], 0);
end;

procedure TfrMain.acFileSaveExecute(Sender: TObject);
var
  sr:TsearchRec;

begin
  if DocumentTabs.ActiveDocument.IsUntitled then
    acFileSaveAs.Execute
  else
  begin
    editor.Lines.SaveToFile(Caption);
    editor.Modified := false;
    FindFirst(Caption, faAnyFile, SR);
    FindClose(sr);
  end;
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
    acFileSaveExecute(Sender);
  end;
end;

procedure TfrMain.acFileExitExecute(Sender: TObject);
// Close application
begin
  Close;
end;

procedure TfrMain.acFileRevertExecute(Sender: TObject);
// Reloads active MDI child losing any changes
begin
  if MessageDlg(_('Reload last saved version?') + #13#10 +
                _('All changes will be lost!'), mtConfirmation, [mbYes, mbNo], 0)=mrYes
    then LoadFile(DocumentTabs.ActiveDocument.FileName, DocumentTabs.ActiveDocument.Index);
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
   for i:= DocumentTabs.Count - 1 downto 0 do
     DocumentTabs.Close(i, False);
end;

procedure TfrMain.acFileCloseExecute(Sender: TObject);
begin
  if TabRightClickndex >= 0 then
    DocumentTabs.Close(TabRightClickndex);
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
  begin
    OpenFile((Sender as TMenuItem).Caption);
  end
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
  CommandFile, CommandLine, InputFile, OutputFile:string;

begin
  if (not FileExists(frOptions.edLSynthDir.text+'\lsynthcp.exe')) then
  begin
    MessageDlg(_('You have to specify a valid path to lsynthcp.exe first!'), mtError, [mbOK], 0);
    acOptionsExecute(Sender);
  end
  else
  begin
    OutputFile := GetShortFileName(GetTempDir + GetTmpFileName);
    TempFile := TstringList.create;
    CommandLine := GetShortFileName(frOptions.edLSynthDir.text) + '\lsynthcp.exe ';
    InputFile := GetShortFileName(ExtractFilePath(TempFileName)) + ExtractFileName(TempFileName);
    editor.lines.SaveToFile(InputFile);
    TempFile.Add(CommandLine + ' ' + InputFile + ' ' + OutputFile);
    CommandFile := GetShortFileName(GetTempDir) + GetTMPFIleName + '.bat';
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
  if EditorOptionDlg.Execute then
    EditorPropertyLoader.Save;
end;

// Search actions

procedure TfrMain.acFindExecute(Sender: TObject);
// Execute Find Dialogue
begin
  ShowSearchReplaceDialog(False);
end;

procedure TfrMain.acReplaceExecute(Sender: TObject);
// Execute Replace Dialogue
begin
  ShowSearchReplaceDialog(True);
end;

procedure TfrMain.acReplaceColorExecute(Sender: TObject);
// Replace Colors using a color dialogue
begin
  frColorDialog.ShowModal;
end;

procedure TfrMain.acFindNextExecute(Sender: TObject);
// Find Next occurence of a previous find procedure
begin
  if Assigned(SearchReplaceDlg.Editor) then
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

procedure TfrMain.acToolbarVisibilityExecute(Sender: TObject);
// Toggle the toolbars on and off
var
  toolbarname: string;
  toolbar : TComponent;
begin

  toolbarname := 'tbr' + Copy( (Sender as TAction).ActionComponent.Name, 4, Length((Sender as TAction).ActionComponent.Name) - 2);
  toolbar := frMain.FindComponent(toolbarname);
  if toolbar is TToolbar then
    (toolbar as TToolbar).Visible := not (toolbar as TToolbar).Visible;
  UpdateViewMenu;
end;

procedure TfrMain.acErrorListExecute(Sender: TObject);
begin
  frErrorWindow.Visible := not frErrorWindow.Visible;
  UpdateViewMenu;
end;

procedure TfrMain.acModelTreeViewExecute(Sender: TObject);
// Shows the model tree dialog
begin
  frModelTreeView.Show;
end;

procedure TfrMain.UpdateViewMenu;
begin
  mnuFile.Checked := tbrFile.Visible;
  mnuEditing.Checked := tbrEditing.Visible;
  mnuSearchAndReplace.Checked := tbrSearchAndReplace.Visible;
  mnuWindows.Checked := tbrWindows.Visible;
  mnuExternalPrograms.Checked := tbrExternalPrograms.Visible;
  mnuColorReplace.Checked := tbrColorReplace.Visible;
  mnuErrorList.Checked := frErrorWindow.Visible;
end;

// Window actions

procedure TfrMain.acWindowCascadeExecute(Sender: TObject);
// Cascades the child windows
begin
  frMain.Cascade;
end;

procedure TfrMain.acWindowTileExecute(Sender: TObject);
// Tiles the child windows
begin
  frMain.Tile;
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
   NumberOfFiles := DragQueryFile(hDrop,$FFFFFFFF, nil, 0);
   for fCounter := 1 to NumberOfFiles do
   begin
     SetLength(fname, MAX_PATH); // Anticipate largest string size
     SetLength(fname, DragQueryFile(HDrop, fCounter-1, PChar(fname),MAX_PATH));
     if (lowercase(extractFIleExt(fname)) = '.dat') or
        (lowercase(extractFIleExt(fname)) = '.mpd') or
        (lowercase(extractFIleExt(fname)) = '.ldr') then
     begin
       OpenFile(fName);
       UpdateMRU(fName);
     end;
   end;
   DragFinish (hDrop);
end;

procedure TfrMain.UpdateControls(Closing: Boolean = false);
// Updated the action controls depending on the EditorChilds
var
  documentcount: Integer;

begin
  documentcount := DocumentTabs.Count;

  if Closing then documentcount := documentcount - 1;
  acFileClose.Enabled := documentcount > 0 ;
  acFileCloseAll.Enabled := documentcount > 0;
  acFileSaveAs.Enabled := documentcount > 0;
  acFilePrint.Enabled := documentcount > 0;
  acFileSave.Enabled := documentcount > 0;
  acFileRevert.Enabled := documentcount > 0;
  acldview.Enabled := documentcount > 0;
  acl3Lab.Enabled := documentcount > 0;
  acmlcad.Enabled := documentcount > 0;
  acEditCut.Enabled := documentcount > 0;
  acEditCopy.Enabled := documentcount > 0;
  acEditPaste.Enabled := documentcount > 0;
  btPolling.Enabled := documentcount > 0;
  acSelectAll.Enabled := documentcount > 0;
  acFind.Enabled := documentcount > 0;
  acReplace.Enabled := documentcount > 0;
  Plugins1.Enabled := documentcount > 0;
  Insert1.Enabled := documentcount > 0;
  Edit1.Enabled := documentcount > 0;
  Window1.Enabled := documentcount > 0;
  acCommentBlock.Enabled := documentcount > 0;
  acUnCommentBlock.Enabled := documentcount > 0;
  acIncIndent.Enabled := documentcount > 0;
  acDecIndent.Enabled := documentcount > 0;
  acTrimLines.Enabled := documentcount > 0;
  acReverseWinding.Enabled := documentcount > 0;
  acTriangleCombine.Enabled := documentcount > 0;
  acMirrorX.Enabled := documentcount > 0;
  acMirrorY.Enabled := documentcount > 0;
  acMirrorZ.Enabled := documentcount > 0;
  acAutoRound.Enabled := documentcount > 0;
  acLSynth.Enabled := documentcount > 0;
  acBendableObject.Enabled := documentcount > 0;
  acModelTreeView.Enabled := documentcount > 0;
  acBMP2LDraw.Enabled := documentcount > 0;
  Mirror1.Enabled := documentcount > 0;
  ErrorCheck1.Enabled := documentcount > 0;
  MirrorLineOn1.Enabled := documentcount > 0;
  tbrColorReplace.Enabled := documentcount > 0;
  acSubfile.Enabled := documentcount > 0;
  acSortSelection.Enabled := documentcount > 0;
  acUserDefined.Enabled := documentcount > 0;
  acReplaceColor.enabled := documentcount > 0;
  acWindowTile.enabled := documentcount > 0;
  acEditorOptions.Enabled := documentcount > 0;

  acUndo.Enabled := (documentcount>0) and editor.CanUndo;
  acRedo.Enabled := (documentcount>0) and editor.CanRedo;

  if documentcount = 0 then acInline.enabled:=false;
end;

procedure TfrMain.editorUpdateUI(Sender: TObject);
var
  i: Integer;
  DLine: TDATType;

begin
  if editor.modified then
    Statusbar.Panels[2].Text:=_('Modified')
  else
    Statusbar.Panels[2].Text:='';

  acUndo.Enabled:=editor.CanUndo;
  acRedo.Enabled:=editor.CanRedo;

  StatusBar.Panels[1].text:=inttostr(editor.CaretY)+':'+inttostr(editor.CaretX);

  if editor.SelLength = 0 then
  begin
    DLine := StrToDAT(editor.Lines[editor.CaretY - 1]);
    acInline.enabled := DLine.LineType = 1;
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

  if slPlugins.Count > 0 then
  for i:=0 to plugins3.Count-1 do
    begin
      case strtoint(copy(slplugins[plugins3.Items[i].tag],1,pos(',',slplugins[plugins3.Items[i].tag])-1))  of
        2: begin
             plugins3.Items[i].enabled:=editor.SelLength<>0;
             plugins1.Items[i].enabled:=editor.SelLength<>0;
           end;
        1: begin
             plugins3.Items[i].enabled:=editor.SelLength=0;
             plugins1.Items[i].enabled:=editor.SelLength=0;
           end;
        0: begin
             plugins3.Items[i].enabled:=true;
             plugins1.Items[i].enabled:=true;
          end;
      end;
    end;
    UpdateControls;
end;

procedure TfrMain.FormDblClick(Sender: TObject);
// Opens the file open dialog if the background is double clicked
begin
  acFileOpen.Execute;
end;

procedure TfrMain.FormCreate(Sender: TObject);
begin
  TranslateComponent(Self);
  DragAcceptFiles(Handle,True);
  AppInitialize;
end;

procedure TfrMain.FormShow(Sender: TObject);
// if app starts for first time this initializes application and updates controls
begin
  UpdateControls;
end;

Procedure TfrMain.AppInitialize;
(*
Description: Initializes Application:
             1.) Show Splash
             2.) Save Installdir (for plugins)
             3.) Save no. of items in empty plugin list in pmmemo.tag
             4.) Loads plugins
             5.) assumes any params are files to load and loads them
*)
var
  i: Integer;
  regT: TRegistry;

begin
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
    if not DirectoryExists(GetShellFolderPath('AppData') + '\LDraw') then
      CreateDir(GetShellFolderPath('AppData') + '\LDraw');

    //Load form parameters from INI file
    LoadFormValues;

    //Set editor properties filename and load properties
    EditorPropertyLoader.FileName := GetShellFolderPath('AppData') + '\LDDP\' + EditorPropertyLoader.FileName;
    if FileExists(EditorPropertyLoader.FileName) then
      EditorPropertyLoader.Load;

    //Set streamclass so that we can save and load properly
    editor.StreamClass := TSciStreamDefault;

    //Set InstallDir in registry for legacy plugin support
    regT := TRegistry.Create;
    regT.OpenKey('Software\Waterproof Productions\LDDesignPad',true);
    regT.WriteString('InstallDir', Application.ExeName);
    regT.Free;

    //Load Plugins
    slPlugins := TStringlist.create;
    LoadPlugins(true);

    //Set META menu commands
    BuildMetaMenu;

    //Build the MRU list
    UpdateMRU;

    // Set initial directory to that of the last opened file
    // or home directory if no file is listed
    if LastOpen1.Count > 0 then
      OpenDialog1.InitialDir := ExtractFileDir(LastOpen1[0].Caption)
    else
      OpenDialog1.InitialDir := GetShellFolderPath('Personal');

    //Load files listed on the command line
    if ParamCount > 0 then
      for i := 1 to ParamCount do
      begin
        OpenFile(paramstr(i));
        UpdateMRU(paramstr(i));
      end;

  finally
    Sleep(1500);
    Screen.Cursor := crDefault;
    SplashScreen.Release;
  end;
end;

procedure TfrMain.BuildMetaMenu;
// Construct the meta command menu from the ini file
var
  MetaMenuIni: TInifile;
  ParentMenuItem, ParentMenuItem2, ChildMenuItem: TMenuItem;
  MetaSections, CurrentSection: TStringList;
  i,j: Integer;

begin
  MetaSections := TStringList.Create;
  CurrentSection := TStringList.Create;
  MetaMenuIni := TInifile.Create(IniFilePath + '\metamenu.ini');

  MetaMenuIni.ReadSections(MetaSections);

  if MetaSections.Count > 0 then
    for i := 0 to MetaSections.Count - 1 do
    begin
      MetaMenuIni.ReadSection(MetaSections[i],CurrentSection);
      if CurrentSection.Count > 0 then
      begin
        ParentMenuItem := CreateMenuItem(MetaSections[i],'',mnuMeta);
        ParentMenuItem2 := CreateMenuItem(MetaSections[i],'',mnuMeta2);
        mnuMeta.Add(ParentMenuItem);
        mnuMeta2.Add(ParentMenuItem2);
        for j := 0 to CurrentSection.Count - 1 do
        begin
          ChildMenuItem := CreateMenuItem(CurrentSection[j],MetaMenuIni.ReadString(MetaSections[i],CurrentSection[j],''),ParentMenuItem);
          ChildMenuItem.OnClick := MetaMenuClick;
          ParentMenuItem.Add(ChildMenuItem);
          ChildMenuItem := CreateMenuItem(CurrentSection[j],MetaMenuIni.ReadString(MetaSections[i],CurrentSection[j],''),ParentMenuItem);
          ChildMenuItem.OnClick := MetaMenuClick;
          ParentMenuItem2.Add(ChildMenuItem);
        end;
      end;
    end
  else
    mnuMeta.Enabled := False;

  CurrentSection.Free;
  MetaSections.Free;
  MetaMenuIni.Free;
end;

procedure TfrMain.DocumentTabsChange(Sender: TObject);
var
  r : integer;
  SR : tSearchRec;

begin
  r := FindFirst(DocumentTabs.ActiveDocument.FileName, faAnyFile, SR);
  if r = 0 then
    if (FileDateToDateTime(SR.Time) <> DocumentTabs.ActiveDocument.LastChanged) and
       (MessageDlg(_('File has been changed outside the editor!' + #13#10 +
                   'Reload and lose all changes?'), mtWarning, [mbYes, mbNo], 0)=mrYes) then
    begin
      LoadFile(DocumentTabs.ActiveDocument.FileName, DocumentTabs.ActiveDocument.Index);
      DocumentTabs.ActiveDocument.LastChanged := FileDateToDateTime(SR.Time);
    end;
  FindClose(SR);
  UpdateControls;
end;


procedure TfrMain.DocumentTabsClosing(Sender: TObject; const TabIndex: Integer;
  var AllowClose: Boolean);
begin
  if editor.modified then
  begin
    case MessageDlg('Save changes to ' + DocumentTabs.Document[TabIndex].TabName + '?'+#13+#10+''+#13+#10+'Yes: Saves the changes and closes this document.'+#13+#10+'No: Closes the document without saving any changes.'+#13+#10+'Cancel: Keeps the document open', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: begin
               acFileSave.Execute;
               AllowClose := true;
             end;
      mrNo : AllowClose := true;
      mrCancel: AllowClose := false;
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
    TabRightClickndex := DocumentTabs.IndexOfTabAt(X,Y);
  end else TabRightClickndex := -1;
end;

procedure TfrMain.MetaMenuClick(Sender: TObject);
// Insert the selected meta command
begin
  editor.Lines.Insert(editor.LineFromPosition(editor.GetCurrentPos), '0 ' +
                      (Sender as TMenuItem).Hint);
end;

procedure Tfrmain.LoadPlugins(AppInit:Boolean = false);
// Load all plugins and create menu entries, add names to a stringlist and enumerate entries by tag
var
  sr: TSearchRec;
  i, j, imgix: Integer;
  newitem:TMenuItem;
  PluginPath, PluginFile: string;
  plgBitmap: TBitMap;
  PluginInfoList: TStringList;

begin
  PluginInfoList := TStringList.Create;
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
    PluginInfoList.Clear;
    PluginInfoList.Add('');
    for j := 1 to 6 do
      PluginInfoList.Add(PluginInfo(PluginFile,j));
    if AppInit then
    begin
      splashscreen.lbState.Caption:=_('Initializing plugin:') + ' '+sr.name;
      splashscreen.update;
    end;
    frOptions.cblPlugins.Items.Add(ChangeFileExt(sr.Name,'') +
                                   ' - ' + PluginInfoList[3]);
    slplugins.Add(PluginInfoList[6]+','+PluginFile);

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
      NewItem := CreateMenuItem(PluginInfoList[1],PluginInfoList[3],Plugins3);
      Newitem.tag:=slplugins.count-1;
      NewItem.onclick:=PluginClick;
      NewItem.ImageIndex := imgix;
      plugins3.Insert(plugins3.count,Newitem);

      NewItem := CreateMenuItem(PluginInfoList[1],PluginInfoList[3],Plugins3);
      Newitem.tag:=slplugins.count-1;
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
    NewItem.caption:=_('None Found');
    NewItem.Enabled := false;
    plugins3.Insert(plugins3.count,Newitem);

    NewItem := TMenuItem.Create(Plugins1);
    NewItem.caption:=_('None Found');
    NewItem.Enabled := false;
    plugins1.Insert(plugins1.count,Newitem);
  end;
  Findclose(sr);
  frOptions.cblPlugins.sorted:=true;
  PluginInfoList.Free;
end;


procedure TfrMain.PluginClick(Sender: TObject);
// Start Plugin related to the tag of the menu entry
var
 st,libname:string;
 s1,s2,s3,s4: LongWord;

begin
  libname:=copy(slplugins[(Sender as TMenuItem).tag],pos(',',slplugins[(Sender as TMenuItem).tag])+1, length(slplugins[(Sender as TMenuItem).tag]));

     s1 := editor.SelStart;
     s2 := editor.SelLength;
     s3 := editor.CaretY;
     s4 := editor.CaretX;
     if editor.seltext<>'' then
     begin
       CallPlugin(libname, PChar(editor.Lines.Text),PChar(editor.seltext),s1,s2,s3,s4);
       if strChangedSelText<>'' then editor.SelText:=frMain.strChangedSelText
          else
          begin
            editor.SelectAll;
            editor.SelText:=frMain.strChangedCompleteText;
          end;
     end
        else
        begin
           st:=editor.Lines.text;
           CallPlugin(libname, PChar(editor.Lines.Text),PChar(editor.seltext),s1,s2,s3,s4);

           if strChangedSelText<>'' then editor.SelText:=frMain.strChangedSelText
            else
            begin
              editor.SelectAll;
              editor.SelText:=frMain.strChangedCompleteText;
            end;
        end;
     if (s1=0) and (s2=0) then
     begin
//         CaretX := s4;
//         CaretY := s3;
     end
       else
       begin
         editor.SetSel(s1, s1 + s2);
       end;
end;

// Polling procedures

procedure TfrMain.btPollingClick(Sender: TObject);
// Does nothing.. but needed so the polling button isn't deactivated
begin
 // do nothing
end;

procedure TfrMain.Pollevery1sec2Click(Sender: TObject);
// Set polling interval to 1 sec
begin
  Pollevery1sec1.Checked := true;
  Pollevery1sec2.Checked := true;
  Pollonrequest2.ShortCut := 0;
  tmPoll.Enabled:=false;
  tmPoll.Interval:=1000;
  tmPoll.Enabled:=true;
end;


procedure TfrMain.Pollevery2sec2Click(Sender: TObject);
// Set polling interval to 2 secs
begin
 Pollevery2sec1.Checked := true;
 Pollevery2sec2.Checked := true;
 Pollonrequest2.ShortCut := 0;
 tmPoll.Enabled:=false;
 tmPoll.Interval:=2000;
 tmPoll.Enabled:=true;

end;

procedure TfrMain.Pollevery5sec2Click(Sender: TObject);
// Set polling interval to 5 secs
begin
  Pollevery5sec.Checked := true;
  Pollevery5sec2.Checked := true;
  Pollonrequest2.ShortCut := 0;
  tmPoll.Enabled:=false;
  tmPoll.Interval:=5000;
  tmPoll.Enabled:=true;
end;

procedure TfrMain.Pollonrequest1Click(Sender: TObject);
// Poll on request
begin
  Pollonrequest1.Checked := true;
  Pollonrequest2.Checked := true;
  Pollonrequest2.ShortCut := TextToShortcut('F11');
  tmPoll.Enabled:=false;
  tmPollTimer(nil);
end;

procedure TfrMain.mnPollToSelectedClick(Sender: TObject);
// Switch polling to selected line
begin
  mnPollToSelected.Checked:=not mnPollToSelected.Checked;
  Polltoselectedlineonly1.Checked := not Polltoselectedlineonly1.Checked;
end;

procedure TfrMain.tmPollTimer(Sender: TObject);
// if polling time triggers the actual editor window is written to its firm assigned temp filename
var
  st: TStringList;

begin
  if mnPollL3Lab.Checked and (DocumentTabs.Count > 0) then
   if mnPolltoSelected.checked then
   begin
     st:=TStringList.Create;
     st.Text:=editor.Lines.Text;
     while st.Count>editor.CaretY do
       st.Delete(st.Count-1);
     st.SaveToFile(tempFileName);
   end
   else editor.lines.SaveToFile(tempFileName);
end;


procedure TfrMain.mnPollL3LabClick(Sender: TObject);
// Activate Polling for L3Lab
begin
  mnPollL3Lab.checked:= not mnPollL3Lab.checked;
  PolltoL3LabLDView1.Checked := not PolltoL3LabLDView1.Checked;
  if (Pollonrequest1.Checked) and (not mnPollL3Lab.checked) then
    Pollonrequest1.ShortCut := 0;
end;


procedure TfrMain.ShowSearchReplaceDialog(AReplace: boolean);
// Show Search and Replace dialogue
begin
  if AReplace then
    SearchReplaceDlg.ShowReplaceDialog
  else
    SearchReplaceDlg.ShowSearchDialog;
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

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP Main';

  Left := LDDPini.ReadInteger(IniSection, 'frMain_Left', Left);
  Top := LDDPini.ReadInteger(IniSection, 'frMain_Top', Top);
  Width := LDDPini.ReadInteger(IniSection, 'frMain_Width', Width);
  Height := LDDPini.ReadInteger(IniSection, 'frMain_Height', Height);
  tbrFile.Visible := LDDPini.ReadBool(IniSection, 'tbrFile_Visible', tbrFile.Visible);
  tbrExternalPrograms.Visible := LDDPini.ReadBool(IniSection, 'tbrExternalPrograms_Visible', tbrExternalPrograms.Visible);
  tbrSearchAndReplace.Visible := LDDPini.ReadBool(IniSection, 'tbrSearchAndReplace_Visible', tbrSearchAndReplace.Visible);
  tbrWindows.Visible := LDDPini.ReadBool(IniSection, 'tbrWindows_Visible', tbrWindows.Visible);
  tbrEditing.Visible := LDDPini.ReadBool(IniSection, 'tbrEditing_Visible', tbrEditing.Visible);
  tbrColorReplace.Visible := LDDPini.ReadBool(IniSection, 'tbrColorReplace_Visible', tbrColorReplace.Visible);

  LDDPini.Free;
end;

procedure TfrMain.SaveFormValues;
// Saves form values to the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;

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
  LDDPini.WriteBool(IniSection, 'tbrFile_Visible', tbrFile.Visible);
  LDDPini.WriteBool(IniSection, 'tbrExternalPrograms_Visible', tbrExternalPrograms.Visible);
  LDDPini.WriteBool(IniSection, 'tbrSearchAndReplace_Visible', tbrSearchAndReplace.Visible);
  LDDPini.WriteBool(IniSection, 'tbrWindows_Visible', tbrWindows.Visible);
  LDDPini.WriteBool(IniSection, 'tbrEditing_Visible', tbrEditing.Visible);
  LDDPini.WriteBool(IniSection, 'tbrColorReplace_Visible', tbrColorReplace.Visible);

  LDDPini.WriteBool(IniSection, 'frErrorWindow_Visible', frErrorWindow.Visible);
  LDDPini.WriteBool(IniSection, 'frErrorWindow_Floating', frErrorWindow.Floating);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrMain.SetToolbarWindows;

var
  LDDPini: TMemIniFile;
  IniSection: string;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP Main';

  frErrorWindow.Visible := LDDPini.ReadBool(IniSection, 'frErrorWindow_Visible', frErrorWindow.Visible);

  if frErrorWindow.Visible and
     LDDPini.ReadBool(IniSection, 'frErrorWindow_Floating', False) then
    frErrorWindow.ManualDock(JvDockServer1.BottomDockPanel, nil, alBottom);

  LDDPini.Free;

end;
function TfrMain.tempFileName:string;
{---------------------------------------------------------------------
Description: Creates and returns a unique temporary filename for this editor window
Parameter: None
Return value: Path & Filename of the temporary filename
---------------------------------------------------------------------}
begin
  if ExtractFilePath(DocumentTabs.ActiveDocument.FileName) <> '' then
    Result := ExtractFilePath(DocumentTabs.ActiveDocument.FileName) //+ tmpFileName
  else
    Result := GetTempDir //+ tmpFileName;
end;

procedure TfrMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormValues;
  EditorPropertyLoader.Save;
end;

procedure TfrMain.SearchReplaceDlgTextFound(Sender: TObject);
begin
  acFindNext.Enabled := true;
end;

procedure TfrMain.SearchReplaceDlgTextNotFound(Sender: TObject);
begin
  acFindNext.Enabled := false;
end;

procedure TfrMain.acFindNextUpdate(Sender: TObject);
begin
//  (Sender as TAction).Enabled := gsSearchText <> '';
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
