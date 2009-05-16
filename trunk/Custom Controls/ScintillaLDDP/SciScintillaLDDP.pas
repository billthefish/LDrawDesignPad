unit SciScintillaLDDP;

interface

uses
  SysUtils, Classes, Controls, SciScintillaBase, SciScintillaMemo, SciScintilla, DATBase;

type
  TScintillaLDDP = class(TScintilla)
  private
    FPntAcc, FRotAcc: Byte;
    FOnlyRoundDuringAutoRound: Boolean;

  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    function CaretX: Integer;
    function CaretY: Integer;
    procedure ExpandSelection(out startln, endln: Integer);
    procedure SelectLine(Line: Integer);
    procedure SelectLines(StartLine, EndLine: Integer);
    procedure MirrorSelection(axis: TDATAxis);
    procedure AutoRound;
    procedure SetLineColor(line, color: Integer);
    function GetLineColor(line: Integer): Integer;
    procedure RotateSelection(w, x, y, z: Extended);
    procedure TranslateSelection(x, y, z: Extended);
    procedure ReverseWinding;
  published
    property PositionDecimalPlaces: Byte read FPntAcc write FPntAcc default 15;
    property RotationDecimalPlaces: Byte read FRotAcc write FRotAcc default 15;
    property OnlyRoundDuringAutoRound: Boolean read FOnlyRoundDuringAutoRound write FOnlyRoundDuringAutoRound default false;
  end;

procedure Register;

implementation

uses
  DATModel, DATUtils, SciStreamDefault;

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

constructor TScintillaLDDP.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  StreamClass := TSciStreamDefault;
end;

procedure TScintillaLDDP.MirrorSelection(axis: TDATAxis);

var
  DModel: TDATModel;
  i, startline, endline: integer;

begin
    ExpandSelection(startline, endline);

    if FOnlyRoundDuringAutoRound then
      DModel := TDATModel.Create
    else
      DModel := CreateDATModel(PositionDecimalPlaces, RotationDecimalPlaces);

    DModel.ModelText := SelText;

    for i := 0 to DModel.Count - 1 do
      if DModel[i] is TDATElement then
      begin
        (DModel[i] as TDATElement).Mirror(axis);
      end;
    SelText := DModel.ModelText;
    SelectLines(startline, endline);
    DModel.Free;
end;

procedure TScintillaLDDP.ReverseWinding;
var
  startline, endline, i : Integer;
  DModel: TDATModel;

begin
    if FOnlyRoundDuringAutoRound then
      DModel := TDATModel.Create
    else
      DModel := CreateDATModel(PositionDecimalPlaces, RotationDecimalPlaces);

    ExpandSelection(startline, endline);

    if SelLength <> 0 then
    begin
      DModel.ModelText := SelText;

      for i := 0 to DModel.Count-1 do
        if DModel[i] is TDATPolygon then
          (DModel[i] as TDATPolygon).ReverseWinding;

      SelText := DModel.ModelText;

      SelectLines(startline, endline);

      DModel.Free;
    end;
end;

procedure TScintillaLDDP.RotateSelection(w, x, y, z: Extended);
var
  DModel: TDATModel;
  startline,endline: Integer;

begin
  ExpandSelection(startline, endline);

  if FOnlyRoundDuringAutoRound then
    DModel := TDATModel.Create
  else
    DModel := CreateDATModel(PositionDecimalPlaces, RotationDecimalPlaces);

  DModel.ModelText := SelText;

  DModel.Rotate(w, x, y, z);

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

procedure TScintillaLDDP.TranslateSelection(x, y, z: Extended);
var
  DModel: TDATModel;
  startline,endline: Integer;

begin
  ExpandSelection(startline, endline);

  if FOnlyRoundDuringAutoRound then
    DModel := TDATModel.Create
  else
    DModel := CreateDATModel(PositionDecimalPlaces, RotationDecimalPlaces);

  DModel.ModelText := SelText;

  DModel.Translate(x, y, z);

  SelText := DModel.ModelText;
  SelectLines(startline, endline);
  DModel.Free;
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
