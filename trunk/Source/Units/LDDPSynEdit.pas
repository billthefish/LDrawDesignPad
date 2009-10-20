unit LDDPSynEdit;

interface

uses
  SysUtils, Classes, Controls, SynEdit, lddpoptions, DATBase;

type
  TLDDPGridSetting = (gsCoarse, gsMedium, gsFine);

  TLDDPSynEdit = class(TCustomSynEdit)
  private
    FLDDPOptions: TLDDPOptions;
    FGridSetting: TLDDPGridSetting;
    procedure SetLDDPOptions(const Value: TLDDPOptions);
    procedure SetGridSetting(const Value: TLDDPGridSetting);
  protected
    { Protected declarations }

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
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
    function GridX: Double;
    function GridY: Double;
    function GridZ: Double;
    function GridAngle: Double;
    procedure GridRotateX(Negative: Boolean = False);
    procedure GridRotateY(Negative: Boolean = False);
    procedure GridRotateZ(Negative: Boolean = False);
    procedure GridMoveX(Negative: Boolean = False);
    procedure GridMoveY(Negative: Boolean = False);
    procedure GridMoveZ(Negative: Boolean = False);
    procedure SnapToGrid;

  published
    property LDDPOptions: TLDDPOptions read FLDDPOptions write SetLDDPOptions;
    property GridSetting: TLDDPGridSetting read FGridSetting write SetGridSetting;

    // inherited properties
  published
    property Align;
{$IFDEF SYN_COMPILER_4_UP}
    property Anchors;
    property Constraints;
{$ENDIF}
    property Color;
    property ActiveLineColor;
{$IFDEF SYN_CLX}
{$ELSE}
    property Ctl3D;
    property ParentCtl3D;
{$ENDIF}
    property Enabled;
    property Font;
    property Height;
    property Name;
    property ParentColor default False;
    property ParentFont default False;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop default True;
    property Visible;
    property Width;
    // inherited events
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
{$IFDEF SYN_CLX}
{$ELSE}
{$IFDEF SYN_COMPILER_4_UP}
    property OnEndDock;
    property OnStartDock;
{$ENDIF}
{$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
    property OnStartDrag;
    // TCustomSynEdit properties
    property BookMarkOptions;
    property BorderStyle;
    property ExtraLineSpacing;
    property Gutter;
    property HideSelection;
    property Highlighter;
{$IFNDEF SYN_CLX}
    property ImeMode;
    property ImeName;
{$ENDIF}
    property InsertCaret;
    property InsertMode;
    property Keystrokes;
    property Lines;
    property MaxScrollWidth;
    property MaxUndo;
    property Options;
    property OverwriteCaret;
    property ReadOnly;
    property RightEdge;
    property RightEdgeColor;
    property ScrollHintColor;
    property ScrollHintFormat;
    property ScrollBars;
    property SearchEngine;
    property SelectedColor;
    property SelectionMode;
    property TabWidth;
    property WantReturns;
    property WantTabs;
    property WordWrap;
    property WordWrapGlyph;
    // TCustomSynEdit events
    property OnChange;
    property OnClearBookmark;
    property OnCommandProcessed;
    property OnContextHelp;
    property OnDropFiles;
    property OnGutterClick;
    property OnGutterGetText;
    property OnGutterPaint;
    property OnMouseCursor;
    property OnPaint;
    property OnPlaceBookmark;
    property OnProcessCommand;
    property OnProcessUserCommand;
    property OnReplaceText;
    property OnScroll;
    property OnSpecialLineColors;
    property OnStatusChange;
    property OnPaintTransient;
  end;

procedure Register;

implementation

uses
  DATModel, DATUtils, SynEditTypes;

procedure TLDDPSynEdit.SelectLine(Line: Integer);
begin
  SelectLines(Line, Line);
end;

procedure TLDDPSynEdit.SelectLines(StartLine, EndLine: Integer);
begin
  SelStart := RowColToCharIndex(BufferCoord(0, StartLine));
  SelEnd := RowColToCharIndex(BufferCoord(0, EndLine))
//  SetCaretXY(GetLineEndPosition(endline));
//  SetAnchor(PositionFromLine(startline));
end;

procedure TLDDPSynEdit.ExpandSelection(out startln, endln: Integer);
{-------
Description: If the selected text begins and/or ends in the middle of a line
ExpandSelection will move the beginning of the selected text to the beginning of
the line and the end of the selected text to the end of the line
--------}
var
  startline, endline: Integer;

begin
  startline := CharIndexToRowCol(SelStart).Line;

  if SelLength > 0 then
    endline := CharIndexToRowCol(SelEnd).Line
  else
    endline := startline;

  SelectLines(startline, endline);

  startln := startline;
  endln := endline;
end;

(*
function TLDDPSynEdit.CaretX: Integer;
begin
  Result := GetColumn(GetCurrentPos) + 1;
end;

function TLDDPSynEdit.CaretY: Integer;
begin
  Result := LineFromPosition(GetCurrentPos) + 1;
end;
*)

constructor TLDDPSynEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FLDDPOptions := TLDDPOptions.Create;
end;

destructor TLDDPSynEdit.Destroy;
begin
  FLDDPOptions.Free;
  inherited;
end;

procedure TLDDPSynEdit.MirrorSelection(axis: TDATAxis);

var
  DModel: TDATModel;
  i, startline, endline: integer;

begin
    ExpandSelection(startline, endline);

    if LDDPOptions.OnlyRoundDuringAutoRound then
      DModel := TDATModel.Create
    else
      DModel := CreateDATModel(FLDDPOptions.PostionDecAcc, FLDDPOptions.RotationDecAcc);

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

procedure TLDDPSynEdit.ReverseWinding;
var
  startline, endline, i : Integer;
  DModel: TDATModel;

begin
    if LDDPOptions.OnlyRoundDuringAutoRound then
      DModel := TDATModel.Create
    else
      DModel := CreateDATModel(FLDDPOptions.PostionDecAcc, FLDDPOptions.RotationDecAcc);

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

procedure TLDDPSynEdit.RotateSelection(w, x, y, z: Extended);
var
  DModel: TDATModel;
  startline,endline: Integer;

begin
  ExpandSelection(startline, endline);

  if LDDPOptions.OnlyRoundDuringAutoRound then
    DModel := TDATModel.Create
  else
    DModel := CreateDATModel(FLDDPOptions.PostionDecAcc, FLDDPOptions.RotationDecAcc);

  DModel.ModelText := SelText;

  DModel.Rotate(w, x, y, z);

  SelText := DModel.ModelText;
  SelectLines(startline, endline);
  DModel.Free;
end;

procedure TLDDPSynEdit.AutoRound;
var
  DModel: TDATModel;
  startline,endline: Integer;

begin
  ExpandSelection(startline,endline);
  DModel := CreateDATModel(FLDDPOptions.PostionDecAcc, FLDDPOptions.RotationDecAcc);
  DModel.ModelText := SelText;
  SelText := DModel.ModelText;
  SelectLines(startline, endline);
end;

procedure TLDDPSynEdit.SetGridSetting(const Value: TLDDPGridSetting);
begin
  FGridSetting := Value;
end;

procedure TLDDPSynEdit.SetLDDPOptions(const Value: TLDDPOptions);
begin
  if Assigned(Value) then
    FLDDPOptions.Assign(Value);
end;

procedure TLDDPSynEdit.SetLineColor(line, color: Integer);

var
  DLine: TDATType;

begin
  if color >= 0 then
  begin
    DLine := StrToDAT(Lines[line]);
    if DLine is TDATElement then
    begin
      (DLine as TDATElement).Color := color;
      (DLine as TDATElement).PositionDecimalPlaces := FLDDPOptions.PostionDecAcc;
      (DLine as TDATElement).RotationDecimalPlaces := FLDDPOptions.RotationDecAcc;
      Lines[line] := (DLine as TDATElement).DATString;
    end;
    DLine.Free;
  end;
end;

procedure TLDDPSynEdit.SnapToGrid;

var
  DModel: TDATModel;
  i, startline, endline: integer;
  diffx, diffy, diffz: Double;

begin
  ExpandSelection(startline, endline);

  DModel := CreateDATModel(FLDDPOptions.PostionDecAcc, FLDDPOptions.RotationDecAcc);
  DModel.ModelText := SelText;

  for i := 0 to DModel.Count - 1 do
    if DModel[i] is TDATElement then
    begin
      diffx := 0;
      diffy := 0;
      diffz := 0;
      if DModel[i] is TDATGeometric then
        with DModel[i] as TDATGeometric do
        begin
          diffx := MaxX  - Trunc(MaxX / GridX) * GridX;
          diffy := MaxY  - Trunc(MaxY / GridY) * GridY;
          diffz := MaxZ  - Trunc(MaxZ / GridZ) * GridY;
        end
      else if DModel[i] is TDATSubPart then
        with DModel[i] as TDATSubPart do
        begin
          diffx := X  - Trunc(X / GridX) * GridX;
          diffy := Y  - Trunc(Y / GridY) * GridY;
          diffz := Z  - Trunc(Z / GridZ) * GridZ;
        end;
      if diffx >= (GridX / 2) then
        diffx := GridX - diffx
      else
        diffx := -diffx;
      if diffy >= (GridY / 2) then
        diffy := GridY - diffy
      else
        diffy := -diffy;
      if diffz >= (GridZ / 2) then
        diffz := GridZ - diffz
      else
        diffz := -diffz;
      (DModel[i] as TDATElement).Translate(diffx, diffy, diffz);
    end;

  SelText := DModel.ModelText;
  SelectLines(startline, endline);
  DModel.Free;
end;

procedure TLDDPSynEdit.TranslateSelection(x, y, z: Extended);
var
  DModel: TDATModel;
  startline,endline: Integer;

begin
  ExpandSelection(startline, endline);

  if LDDPOptions.OnlyRoundDuringAutoRound then
    DModel := TDATModel.Create
  else
    DModel := CreateDATModel(FLDDPOptions.PostionDecAcc, FLDDPOptions.RotationDecAcc);

  DModel.ModelText := SelText;

  DModel.Translate(x, y, z);

  SelText := DModel.ModelText;
  SelectLines(startline, endline);
  DModel.Free;
end;

function TLDDPSynEdit.GetLineColor(line: Integer): Integer;

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

function TLDDPSynEdit.GridAngle: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseAngle;
    gsMedium: Result := LDDPOptions.GridMedAngle;
    gsFine: Result := LDDPOptions.GridFineAngle;
    else Result := 90;
  end;
end;

procedure TLDDPSynEdit.GridMoveX(Negative: Boolean = False);
begin
  if not Negative then
    TranslateSelection(GridX, 0, 0)
  else
    TranslateSelection(-GridX, 0, 0)
end;

procedure TLDDPSynEdit.GridMoveY(Negative: Boolean = False);
begin
  if not Negative then
    TranslateSelection(0, GridY, 0)
  else
    TranslateSelection(0, -GridY, 0)
end;

procedure TLDDPSynEdit.GridMoveZ(Negative: Boolean = False);
begin
  if not Negative then
    TranslateSelection(0, 0, GridZ)
  else
    TranslateSelection(0, 0, -GridZ)
end;

procedure TLDDPSynEdit.GridRotateX(Negative: Boolean = False);
begin
  if not Negative then
    RotateSelection(GridAngle, 1, 0, 0)
  else
    RotateSelection(GridAngle, -1, 0, 0)
end;

procedure TLDDPSynEdit.GridRotateY(Negative: Boolean = False);
begin
  if not Negative then
    RotateSelection(GridAngle, 0, 1, 0)
  else
    RotateSelection(GridAngle, 0, -1, 0)
end;

procedure TLDDPSynEdit.GridRotateZ(Negative: Boolean = False);
begin
  if not Negative then
    RotateSelection(GridAngle, 0, 0, 1)
  else
    RotateSelection(GridAngle, 0, 0, 1)
end;

function TLDDPSynEdit.GridX: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseX;
    gsMedium: Result := LDDPOptions.GridMedX;
    gsFine: Result := LDDPOptions.GridFineX;
    else Result := 10;
  end;
end;

function TLDDPSynEdit.GridY: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseY;
    gsMedium: Result := LDDPOptions.GridMedY;
    gsFine: Result := LDDPOptions.GridFineY;
    else Result := 10;
  end;
end;

function TLDDPSynEdit.GridZ: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseZ;
    gsMedium: Result := LDDPOptions.GridMedZ;
    gsFine: Result := LDDPOptions.GridFineZ;
    else Result := 10;
  end;
end;

procedure Register;
begin
  RegisterComponents('LDDP', [TLDDPSynEdit]);
end;

end.
