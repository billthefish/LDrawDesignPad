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
unit childwin;

interface

uses
  gnugettext, windowsspecific, Windows,
  Dialogs, Forms, SysUtils, StdCtrls,
  ExtCtrls, Classes, Types, ComCtrls, Controls,
  DATBase, DATModel, SciPropertyMgr, SciScintillaBase, SciScintillaMemo,
  SciScintillaLDDP, SciStreamDefault, SciScintilla, SciLanguageManager;

type
  TfrEditorChild = class(TForm)
    pnInfo: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    lbInfo: TListView;
    Splitter1: TSplitter;
    memo: TScintillaLDDP;
    MemoPropLoad: TSciPropertyLoader;
    SciLanguageManager1: TSciLanguageManager;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MemoChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure lbInfoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbInfoSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure memoMarginClick(Sender: TObject; const modifiers, position,
      margin: Integer);
    procedure memoUpdateUI(Sender: TObject);
  private
    { Private declarations }
    tmpFilename:string;
  public
    filedatetime:TDatetime;
    NewFile: Boolean;
    function tempFileName:string;
    procedure UpdateControls;
    function AddError(LineNumber, ErrorType: string): Boolean;
    procedure SaveFile;
    procedure LoadFile;
    { Public declarations }
  end;

implementation

uses main, preview, options, commonprocs, DATUtils;

{$R *.dfm}

function TfrEditorChild.tempFileName:string;
{---------------------------------------------------------------------
Description: Creates and returns a unique temporary filename for this editor window
Parameter: None
Return value: Path & Filename of the temporary filename
---------------------------------------------------------------------}
begin
  if ExtractFilePath(self.Caption)<>'' then tempFileName:=ExtractFilePath(self.Caption)+tmpFileName
    else tempFileName:=GetTempDir+tmpFileName;
end;


procedure TfrEditorChild.FormClose(Sender: TObject; var Action: TCloseAction);
{---------------------------------------------------------------------
Description: Update all controls after closing the form
Parameter: Standard
Return value: Standard
----------------------------------------------------------------------}
begin
  MemoPropLoad.Save;
  Action := caFree;
  UpdateControls;
  frMain.UpdateControls(true);
end;


procedure TfrEditorChild.FormActivate(Sender: TObject);
{---------------------------------------------------------------------
Description: Checks if form has been changed outside the editor by
             comparing filedate time
Parameter: Standard
Return value: Standard
----------------------------------------------------------------------}
var
  r : integer;
  SR : tSearchRec;

begin
  r := FindFirst(self.caption, faAnyFile, SR);
  if r = 0 then
    if (FileDateToDateTime(SR.Time) <> filedatetime) and
       (MessageDlg(_('File has been changed outside the editor!' + #13#10 +
                   'Reload and lose all changes?'), mtWarning, [mbYes, mbNo], 0)=mrYes) then
      frMain.LoadFile(frMain.ActiveMDIChild);
  FindClose(SR);
  UpdateControls;
end;

procedure TfrEditorChild.UpdateControls;
{---------------------------------------------------------------------
Description: Update all controls on the action list depeding on the type of line
Parameter: none
Return value: none
----------------------------------------------------------------------}
var
  i: Integer;
  DLine: TDATType;

begin
  if memo.modified then
    frMain.Statusbar.Panels[2].Text:=_('Modified')
  else
    frMain.Statusbar.Panels[2].Text:='';

  frMain.acUndo.Enabled:=Memo.CanUndo;
  frMain.acRedo.Enabled:=Memo.CanRedo;

  frMain.StatusBar.Panels[1].text:=inttostr(memo.CaretY)+':'+inttostr(memo.CaretX);

  if memo.SelLength = 0 then
  begin
    DLine := StrToDAT(memo.Lines[memo.CaretY - 1]);
    frMain.acInline.enabled := DLine.LineType = 1;
    DLine.Free;
  end
  else
  begin
    frMain.acInline.Enabled := False;

    for i := memo.LineFromPosition(memo.SelStart) to memo.LineFromPosition(memo.SelStart+memo.SelLength) do
    begin
      DLine := StrToDAT(memo.Lines[i]);
      if DLine.LineType = 1 then
      begin
        frMain.acInline.Enabled := True;
        Break;
      end;
      DLine.Free;
    end;
  end;

  if frMain.slPlugins.Count > 0 then
  for i:=0 to frMain.plugins3.Count-1 do
    begin
      case strtoint(copy(frMain.slplugins[frMain.plugins3.Items[i].tag],1,pos(',',frMain.slplugins[frMain.plugins3.Items[i].tag])-1))  of
        2: begin
             frMain.plugins3.Items[i].enabled:=memo.SelLength<>0;
             frMain.plugins1.Items[i].enabled:=memo.SelLength<>0;
           end;
        1: begin
             frMain.plugins3.Items[i].enabled:=memo.SelLength=0;
             frMain.plugins1.Items[i].enabled:=memo.SelLength=0;
           end;
        0: begin
             frMain.plugins3.Items[i].enabled:=true;
             frMain.plugins1.Items[i].enabled:=true;
          end;
      end;
    end;
end;

procedure TfrEditorChild.MemoChange(Sender: TObject);
{---------------------------------------------------------------------
Description: Update all controls on the action list depeding on the type of line
Parameter: Standard
Return value: Standard
----------------------------------------------------------------------}
begin
  UpdateControls;
end;

procedure TfrEditorChild.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
{---------------------------------------------------------------------
Description: Save query when closing the editor child form
Parameter: Standard
Return value: Standard
----------------------------------------------------------------------}
begin
  if memo.modified then
  begin
    case MessageDlg('Save changes to '+caption+'?'+#13+#10+''+#13+#10+'Yes: Saves the changes and closes this document.'+#13+#10+'No: Closes the document without saving any changes.'+#13+#10+'Cancel: Keeps the document open', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: begin
               frMain.acFileSave.Execute;
               canclose := true;
             end;
      mrNo : canclose := true;
      mrCancel: canclose := false;

    end;
  end
  else
    canclose := true;

  if canclose and (FileExists(tempFilename)) then
    DeleteFile(tempFilename);
end;

procedure TfrEditorChild.Button1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Close the L3P Error box
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  pnInfo.Visible := False;
  Splitter1.Visible := False;
end;

procedure TfrEditorChild.lbInfoDblClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Focuses the line with the error when double clicked in L3P error list
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
   L3PErrorLine: Integer;
begin
    // Line number of errorline. 1 subtracted since lines start
    // at 0 but error check starts with 1
    L3PErrorLine := StrToInt(lbinfo.Items[lbinfo.Itemindex].SubItems[0]) - 1;

    // Highlight errorline.
    memo.GotoLineEnsureVisible(L3PErrorLine);
    memo.SelectLine(L3PErrorline);

    // Change focus from L3P error pane to editor pane
    memo.setfocus;
end;


procedure TfrEditorChild.FormCreate(Sender: TObject);
{---------------------------------------------------------------------
Description: Gets temporary filename upon creation of editor child
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  TranslateComponent (self);
  tmpFilename := GetTMPFilename + '.tmp';

  MemoPropLoad.FileName := ExtractFilePath(Application.ExeName) + MemoPropLoad.FileName;
  memo.StreamClass := TSciStreamDefault;
  if FileExists(MemoPropLoad.FileName) then
    MemoPropLoad.Load;
end;

procedure TfrEditorChild.memoMarginClick(Sender: TObject; const modifiers,
  position, margin: Integer);
begin
 memo.SelectLine(position);
end;

procedure TfrEditorChild.memoUpdateUI(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrEditorChild.lbInfoSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);

var
  UnFixableError: Boolean;

begin
  UnFixableError := (Item.SubItems[1] = 'Identical vertices') or
     (pos('Singular matrix',Item.SubItems[1]) > 0) or
     (pos('Collinear vertices',Item.SubItems[1]) > 0) or
     (pos('Vertices not coplaner',Item.SubItems[1]) > 0);
  frMain.acECFixError.Enabled := not UnFixableError;
  frMain.acECFixAllErrorsTyped.Enabled := not UnFixableError;
  frMain.acECFixAllMarkedErrorsTyped.Enabled := not UnFixableError;
end;

function TfrEditorChild.AddError(LineNumber, ErrorType: string): Boolean;

var
  error: TListItem;

begin
  error := lbInfo.Items.Add;
  error.Checked := True;
  error.SubItems.Add(LineNumber);
  error.SubItems.Add(ErrorType);
  Result := True;
end;

procedure TfrEditorChild.SaveFile;
// Saves a file to disk. If window is untitled it executes 'SaveAs' procedure
// else it saves last savetime to check for changes outside editor
var
  sr:TsearchRec;

begin
  memo.Lines.SaveToFile(Caption);
  memo.Modified := false;
  FindFirst(Caption, faAnyFile, SR);
  filedatetime := FileDateToDateTime(sr.Time);
  FindClose(sr);
end;

procedure TfrEditorChild.LoadFile;
// Loads given Filename into the active MDI editor child
begin
  if FileExists(Caption) then
  begin
    memo.Lines.LoadFromFile(Caption);
    FileAge(Caption, filedatetime);
    memo.EmptyUndoBuffer;
    memo.SetSavePoint;
    UpdateControls;
  end
  else
    MessageDlg(_('File ') + Caption + _(' not found'), mtError, [mbOK], 0);
end;

end.
