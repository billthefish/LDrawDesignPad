{These sources are copyright (C) 2003-2010 Orion Pobursky.

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
unit EditorDoc;

interface

uses
  ComCtrls, SynEdit, SynEditTextBuffer, SynEditTypes;

type

  TLDDPEditorDoc = class(TObject)
  private
    FFileName: string;
    FSelStart: Integer;
    FSelEnd: Integer;
    FFirstLineInView: LongInt;
    FCaretPos: TBufferCoord;
    FModified: Boolean;
    FLastChanged : TDateTime;
    FUndoList: TSynEditUndoList;
    FRedoList: TSynEditUndoList;
    FText: string;

  public
    constructor Create(editor: TCustomSynEdit);
    destructor Destroy; override;
    procedure AssignFromEditor(editor: TCustomSynEdit);
    procedure AssignToEditor(editor: TCustomSynEdit);
    property Text: string read FText write FText;
    property FileName: string read FFileName write FFileName;
    property LastChanged: TDateTime read FLastChanged write FLastChanged;
    property Modified: Boolean read FModified write FModified;
  end;


implementation

uses
  SysUtils;

constructor TLDDPEditorDoc.Create(editor: TCustomSynEdit);
begin
  inherited Create;
  FLastChanged := -1;
  FFileName := '';
  FUndoList := TSynEditUndoList.Create;
  FRedoList := TSynEditUndoList.Create;
  AssignFromEditor(editor);
end;

destructor TLDDPEditorDoc.Destroy;
begin
  FUndoList.Free;
  FRedoList.Free;
  inherited;
end;

procedure TLDDPEditorDoc.AssignFromEditor(editor: TCustomSynEdit);
begin
  FFirstLineInView := editor.TopLine;
  FCaretPos := editor.CaretXY;
  FSelStart := editor.SelStart;
  FSelEnd := editor.SelEnd;
  FModified := editor.Modified;
  FText := editor.Lines.Text;
  FUndoList.Assign(editor.UndoList);
  FRedoList.Assign(editor.RedoList);
end;

procedure TLDDPEditorDoc.AssignToEditor(editor: TCustomSynEdit);

var
  Caret: TBufferCoord;
  SelStart, SelEnd, FirstLine: Integer;

begin
  // Preserve caret and selection values since these may be changed
  // by loading text into the editor.
  Caret := FCaretPos;
  SelStart := FSelStart;
  SelEnd := FSelEnd;
  FirstLine := FFirstLineInView;

  editor.Lines.Text := FText;
  editor.UndoList.Assign(FUndoList);
  editor.RedoList.Assign(FRedoList);
  editor.CaretXY := Caret;
  editor.SelStart := SelStart;
  editor.SelEnd := SelEnd;
  editor.Modified := FModified;
  editor.TopLine := FirstLine;
end;

end.
