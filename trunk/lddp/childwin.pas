{These sources are copyright (C) 2003-2005 the LDDP project contributors.

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
  windowsspecific,
  Dialogs, SynEditPrint, SynEditHighlighter, Forms, SysUtils, Synedit,
  SynHighlighterLDraw, ExtCtrls, Classes, Types, ComCtrls, Controls,
  SyneditTypes, StdCtrls, SynEditMiscClasses, SynEditSearch, SynEditMiscProcs,
  DATBase, DATModel;

type
  TfrEditorChild = class(TForm)
    pnInfo: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    memo: TSynEdit;
    lbInfo: TListView;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MemoChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure lbInfoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memoClick(Sender: TObject);
    procedure memoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure memoGutterClick(Sender: TObject; Button: TMouseButton; X, Y,
      Line: Integer; Mark: TSynEditMark);
    procedure lbInfoSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure memoReplaceText(Sender: TObject; const ASearch,
      AReplace: String; Line, Column: Integer;
      var Action: TSynReplaceAction);
  private
    { Private declarations }
    tmpFilename:string;
  public
    filedatetime:TDatetime;
    function tempFileName:string;
    procedure UpdateControls;
    { Public declarations }
  end;

implementation

uses main, preview, dlgConfirmReplace;

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
var r : integer;
    SR : tSearchRec;

begin
  r := FindFirst(self.caption, faAnyFile, SR);
  if r = 0 then
  begin
    if (FileDateToDateTime(SR.Time)<>filedatetime) and
       (MessageDlg('File has been changed outside the editor!'+#13+#10+'Reload and loose all changes?', mtWarning, [mbYes, mbNo], 0)=mrYes) then
        begin
          Memo.Lines.LoadFromFile(caption);
          FindFirst(caption, faAnyFile, SR);
          filedatetime:=FileDateToDateTime(SR.Time);
          FindClose(sr);
          Memo.modified:=false;
          updatecontrols;
        end;
  end;
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
  clr: string;
  i: Integer;
  DLine: TDATType;
  DModel: TDATModel;

begin
  If Memo.modified then
  begin
    frMain.Statusbar.Panels[2].Text:='Modified'
  end
    else frMain.Statusbar.Panels[2].Text:='';
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
    DModel := TDATModel.Create;
    frMain.ExpandSelection;
    DModel.ModelText := memo.SelText;
    for i := 0 to DModel.Count - 1 do
      if DModel[i].LineType = 1 then
        frMain.acInline.enabled := True;
    DModel.Free;
  end;

  if frMain.slPlugins.Count > 0 then
  for i:=0 to frMain.plugins3.Count-1 do
    begin
      case strtoint(copy(frMain.slplugins[frMain.plugins3.Items[i].tag],1,pos(',',frMain.slplugins[frMain.plugins3.Items[i].tag])-1))  of
        2: begin
             frMain.plugins3.Items[i].enabled:=memo.SelStart-memo.selEnd<>0;
             frMain.plugins1.Items[i].enabled:=memo.SelStart-memo.selEnd<>0;
           end;
        1: begin
             frMain.plugins3.Items[i].enabled:=memo.SelStart-memo.selEnd=0;
             frMain.plugins1.Items[i].enabled:=memo.SelStart-memo.selEnd=0;
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
               canclose:=true;
             end;
      mrNo : canclose:=true;
      mrCancel: canclose:=false;

    end;
  end
    else canclose:=true;
  if ((canclose=true) and (FileExists(tempFilename))) then
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
    // Set current postion to errorline
    L3PErrorLine := StrToInt(lbinfo.Items[lbinfo.Itemindex].SubItems[0]);
    memo.TopLine := L3PErrorLine;
    memo.CaretXY := BufferCoord(1, L3PErrorLine);
    
    // Highlight errorline
    memo.BlockBegin := memo.CaretXY;
    memo.BlockEnd := BufferCoord(1, L3PErrorLine + 1);

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
  tmpFilename:=frmain.GetTMPFilename+'.tmp';
end;

procedure TfrEditorChild.memoClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Update controls when entering the memo
Parameter: Standard
Return value: Standard
----------------------------------------------------------------------}
begin
  UpdateControls;
end;

procedure TfrEditorChild.memoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
{---------------------------------------------------------------------
Description: Update controls when writing in memo
Parameter: Standard
Return value: Standard
----------------------------------------------------------------------}
begin
  UpdateControls;
end;

procedure TfrEditorChild.memoGutterClick(Sender: TObject;
  Button: TMouseButton; X, Y, Line: Integer; Mark: TSynEditMark);
begin
  with memo do
  begin
    BlockBegin := CaretXY;
    BlockEnd := BufferCoord(Length(Lines[Line-1]) + 1 , CaretY);
  end;
end;

procedure TfrEditorChild.lbInfoSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);

var
  UnFixableError: Boolean;

begin
  UnFixableError := (Item.SubItems[1] = 'Identical vertices') or
     (pos('Singular matrix',Item.SubItems[1]) > 0) or
     (Item.SubItems[1] = 'Y column all zeros') or
     (pos('Collinear vertices',Item.SubItems[1]) > 0) or
     (pos('Vertices not coplaner',Item.SubItems[1]) > 0);
  frMain.acECFixError.Enabled := not UnFixableError;
  frMain.acECFixAllErrorsTyped.Enabled := not UnFixableError;
  frMain.acECFixAllMarkedErrorsTyped.Enabled := not UnFixableError;
end;


procedure TfrEditorChild.memoReplaceText(Sender: TObject; const ASearch,
  AReplace: String; Line, Column: Integer; var Action: TSynReplaceAction);
var
  APos: TPoint;
  EditRect: TRect;
begin
  if ASearch = AReplace then
    Action := raSkip
  else begin
//    APos := Point(Column, Line);
    APos := memo.ClientToScreen(
      memo.RowColumnToPixels(
      memo.BufferToDisplayPos(
        BufferCoord(Column, Line) ) ) );
    EditRect := ClientRect;
    EditRect.TopLeft := ClientToScreen(EditRect.TopLeft);
    EditRect.BottomRight := ClientToScreen(EditRect.BottomRight);

    if ConfirmReplaceDialog = nil then
      ConfirmReplaceDialog := TConfirmReplaceDialog.Create(Application);
    ConfirmReplaceDialog.PrepareShow(EditRect, APos.X, APos.Y,
      APos.Y + memo.LineHeight, ASearch);
    case ConfirmReplaceDialog.ShowModal of
      mrYes: Action := raReplace;
      mrYesToAll: Action := raReplaceAll;
      mrNo: Action := raSkip;
      else Action := raCancel;
    end;
  end;
end;

end.
