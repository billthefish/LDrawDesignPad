unit commonprocs;

interface

uses
  DATModel;

function CreateDATModel: TDATModel;
procedure ExpandSelection;

implementation

uses
  childwin, main, options, SynEditTypes;

function CreateDATModel: TDATModel;

begin
  Result := TDATModel.Create;
  Result.RotationDecimalPlaces := frOptions.seRotAcc.Value;
  Result.PositionDecimalPlaces := frOptions.sePntAcc.Value;
end;

procedure ExpandSelection;
{-------
Descrption: If the selected text begins and/or end in the middle of a line
ExpandSelection will move the beginning of the slected to to the beginning of
the line and the end of the selected text to the end of the line
--------}
var
  tmpBlEnd: TBufferCoord;

begin
  with (frMain.ActiveMDIChild as TfrEditorChild).memo do
  begin
    tmpBlEnd := BlockEnd;
    BlockBegin := BufferCoord(1, BlockBegin.Line);
    if tmpBlEnd.Char > 1 then
      BlockEnd := BufferCoord(Length(Lines[tmpBlEnd.Line - 1]) + 1, tmpBlEnd.Line)
    else
      BlockEnd := BufferCoord(Length(Lines[tmpBlEnd.Line - 2]) + 1, tmpBlEnd.Line - 1);
  end;
end;

end.
