unit SciScintillaLDDP;

interface

uses
  SysUtils, Classes, Controls, SciScintillaBase, SciScintillaMemo, SciScintilla, DATBase;

type
  TScintillaLDDP = class(TScintilla)
  private
    FPntAcc, FRotAcc: Byte;
  protected
    { Protected declarations }
  public
    function CaretX: Integer;
    function CaretY: Integer;
    procedure ExpandSelection(out startln, endln: Integer);
    procedure SelectLine(Line: Integer);
    procedure SelectLines(StartLine, EndLine: Integer);
    procedure MirrorSelection(axis: TDATAxis);
    procedure AutoRound;
    procedure SetLineColor(line, color: Integer);
    function GetLineColor(line: Integer): Integer;
  published
    property PositionDecimalPlaces: Byte read FPntAcc write FPntAcc default 15;
    property RotationDecimalPlaces: Byte read FRotAcc write FRotAcc default 15;
  end;

procedure Register;

implementation

uses
  DATModel, DATUtils;

procedure TScintillaLDDP.SelectLine(Line: Integer);
begin
  SelectLines(Line, Line);
end;

procedure TScintillaLDDP.SelectLines(StartLine, EndLine: Integer);
begin
  SetCurrentPos(GetLineEndPosition(endline));
  SetAnchor(PositionFromLine(startline));
end;

procedure TScintillaLDDP.ExpandSelection(out startln, endln: Integer);
{-------
Description: If the selected text begins and/or ends in the middle of a line
ExpandSelection will move the beginning of the selected text to the beginning of
the line and the end of the selected text to the end of the line
--------}
var
  startline, endline: Integer;

begin
  startline := LineFromPosition(SelStart);

  if SelLength > 0 then
    endline := LineFromPosition(SelStart + SelLength - 1)
  else
    endline := startline;

  SelectLines(startline, endline);
      
  startln := startline;
  endln := endline;
end;

function TScintillaLDDP.CaretX: Integer;
begin
  Result := GetColumn(GetCurrentPos) + 1;
end;

function TScintillaLDDP.CaretY: Integer;
begin
  Result := LineFromPosition(GetCurrentPos) + 1;
end;

procedure TScintillaLDDP.MirrorSelection(axis: TDATAxis);

var
  DModel: TDATModel;
  rows, i, j, startline, endline: integer;

begin
    ExpandSelection(startline, endline);

    DModel := CreateDATModel(PositionDecimalPlaces, RotationDecimalPlaces);
    DModel.ModelText := SelText;

    for i := 0 to DModel.Count - 1 do
      if DModel[i] is TDATElement then
      begin
        case DModel[i].LineType of
          1,3: rows := 3;
            2: rows := 2;
          4,5: rows := 4;
        else
          rows := 0;
        end;

        if rows > 0 then
          for j := 1 to rows do
            (DModel[i] as TDATElement).MatrixVals[j, Ord(axis)] := -(DModel[i] as TDATElement).MatrixVals[j, Ord(axis)];
      end;
    SelText := DModel.ModelText;
    SelectLines(startline, endline);
    DModel.Free;
end;

procedure TScintillaLDDP.AutoRound;
var
  DModel: TDATModel;
  startline,endline: Integer;

begin
  ExpandSelection(startline,endline);
  DModel := CreateDATModel(PositionDecimalPlaces, RotationDecimalPlaces);
  DModel.ModelText := SelText;
  SelText := DModel.ModelText;
  SelectLines(startline, endline);
end;

procedure TScintillaLDDP.SetLineColor(line, color: Integer);

var
  DLine: TDATType;

begin
  if color >= 0 then
  begin
    DLine := StrToDAT(Lines[line]);
    if DLine is TDATElement then
    begin
      (DLine as TDATElement).Color := color;
      (DLine as TDATElement).PositionDecimalPlaces := PositionDecimalPlaces;
      (DLine as TDATElement).RotationDecimalPlaces := RotationDecimalPlaces;
      Lines[line] := (DLine as TDATElement).DATString;
    end;
    DLine.Free;
  end;
end;

function TScintillaLDDP.GetLineColor(line: Integer): Integer;

var
  DLine: TDATType;

begin
  DLine := StrToDAT(Lines[line]);
  if DLine is TDATElement then
    Result := (DLine as TDATElement).Color
  else
    Result := -1;
  DLine.Free;
end;

procedure Register;
begin
  RegisterComponents('Scintilla', [TScintillaLDDP]);
end;

end.