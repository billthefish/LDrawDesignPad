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
unit Childwin;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls, dialogs, Sysutils,
  Menus, ExtCtrls, SynMemo, SynEdit, SynEditHighlighter,
  SynHighlighterLDraw;

type
  TfrEditorChild = class(TForm)
    Splitter1: TSplitter;
    pnInfo: TPanel;
    Panel2: TPanel;
    lbInfo: TListBox;
    Button1: TButton;
    memo: TSynEdit;
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

uses Main, Preview;

{$R *.DFM}

function TfrEditorChild.tempFileName:string;
{---------------------------------------------------------------------
Description: Creates and returns a unique temporary filename for this editor window
Parameter: None
Return value: Path & Filename of the temporary filename
---------------------------------------------------------------------}
begin
  if ExtractFilePath(self.Caption)<>'' then tempFileName:=ExtractFilePath(self.Caption)+tmpFileName
    else tempFileName:=frMain.GetTempDir+tmpFileName;
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
    if (frMain.FileAccessDateToDateTime(SR.FindData.ftLastWriteTime)<>filedatetime) and
       (MessageDlg('File has been changed outside the editor!'+#13+#10+'Reload and loose all changes?', mtWarning, [mbYes, mbNo], 0)=mrYes) then
        begin
          Memo.Lines.LoadFromFile(caption);
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
var clr:TLDrawArray;
    i:integer;
begin
    If Memo.modified then begin
      frMain.Statusbar.Panels[2].Text:='Modified'
    end
       else frMain.Statusbar.Panels[2].Text:='';
  frMain.StatusBar.Panels[1].text:=inttostr(memo.CaretY)+':'+inttostr(memo.CaretX);
  clr:=frMain.LDrawparse(memo.lines[memo.CaretY-1]);

  frMain.acInline.enabled:= clr.typ=1;

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
//  frMain.acFindNext.Enabled:=memo.LastFindText<>'';
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
  if canclose=true then
  begin
     if FileExists(self.caption) then frMain.MRUManager.Strings.Insert(0,Self.Caption);
     if FileExists(tempFilename) then DeleteFile(tempFilename);
  end;
end;

procedure TfrEditorChild.Button1Click(Sender: TObject);
{---------------------------------------------------------------------
Description: Close the L3P Error box
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  pninfo.height:=1;
end;

procedure TfrEditorChild.lbInfoDblClick(Sender: TObject);
{---------------------------------------------------------------------
Description: Focuses the line with the error when double clicked in L3P error list
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
begin
  memo.TopLine:=strtoint((copy(lbinfo.Items[lbinfo.Itemindex],19,pos(':',lbinfo.Items[lbinfo.Itemindex])-19)))-1;
  memo.CaretY:=memo.TopLine;
  memo.CaretX:=1;
  memo.selstart:=memo.selstart+length(memo.lines[memo.CaretY-1]);
  memo.selend:=memo.selstart-length(memo.lines[memo.CaretY-1]);
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

end.
