unit SciScintillaLDDP;

interface

uses
  SysUtils, Classes, Controls, SciScintillaBase, SciScintillaMemo, SciScintilla,
  DATBase, lddpoptions;

type
  TLDDPGridSetting = (gsCoarse, gsMedium, gsFine);

  TScintillaLDDP = class(TScintilla)
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
  FLDDPOptions := TLDDPOptions.Create;
end;

destructor TScintillaLDDP.Destroy;
begin
  FLDDPOptions.Free;
  inherited;
end;

procedure TScintillaLDDP.MirrorSelection(axis: TDATAxis);

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

procedure TScintillaLDDP.ReverseWinding;
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

procedure TScintillaLDDP.RotateSelection(w, x, y, z: Extended);
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

procedure TScintillaLDDP.AutoRound;
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

procedure TScintillaLDDP.SetGridSetting(const Value: TLDDPGridSetting);
begin
  FGridSetting := Value;
end;

procedure TScintillaLDDP.SetLDDPOptions(const Value: TLDDPOptions);
begin
  if Assigned(Value) then
    FLDDPOptions.Assign(Value);
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
      (DLine as TDATElement).PositionDecimalPlaces := FLDDPOptions.PostionDecAcc;
      (DLine as TDATElement).RotationDecimalPlaces := FLDDPOptions.RotationDecAcc;
      Lines[line] := (DLine as TDATElement).DATString;
    end;
    DLine.Free;
  end;
end;

procedure TScintillaLDDP.SnapToGrid;

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

procedure TScintillaLDDP.TranslateSelection(x, y, z: Extended);
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

function TScintillaLDDP.GridAngle: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseAngle;
    gsMedium: Result := LDDPOptions.GridMedAngle;
    gsFine: Result := LDDPOptions.GridFineAngle;
    else Result := 90;
  end;
end;

procedure TScintillaLDDP.GridMoveX(Negative: Boolean = False);
begin
  if not Negative then
    TranslateSelection(GridX, 0, 0)
  else
    TranslateSelection(-GridX, 0, 0)
end;

procedure TScintillaLDDP.GridMoveY(Negative: Boolean = False);
begin
  if not Negative then
    TranslateSelection(0, GridY, 0)
  else
    TranslateSelection(0, -GridY, 0)
end;

procedure TScintillaLDDP.GridMoveZ(Negative: Boolean = False);
begin
  if not Negative then
    TranslateSelection(0, 0, GridZ)
  else
    TranslateSelection(0, 0, -GridZ)
end;

procedure TScintillaLDDP.GridRotateX(Negative: Boolean = False);
begin
  if not Negative then
    RotateSelection(GridAngle, 1, 0, 0)
  else
    RotateSelection(GridAngle, -1, 0, 0)
end;

procedure TScintillaLDDP.GridRotateY(Negative: Boolean = False);
begin
  if not Negative then
    RotateSelection(GridAngle, 0, 1, 0)
  else
    RotateSelection(GridAngle, 0, -1, 0)
end;

procedure TScintillaLDDP.GridRotateZ(Negative: Boolean = False);
begin
  if not Negative then
    RotateSelection(GridAngle, 0, 0, 1)
  else
    RotateSelection(GridAngle, 0, 0, 1)
end;

function TScintillaLDDP.GridX: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseX;
    gsMedium: Result := LDDPOptions.GridMedX;
    gsFine: Result := LDDPOptions.GridFineX;
    else Result := 10;
  end;
end;

function TScintillaLDDP.GridY: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseY;
    gsMedium: Result := LDDPOptions.GridMedY;
    gsFine: Result := LDDPOptions.GridFineY;
    else Result := 10;
  end;
end;

function TScintillaLDDP.GridZ: Double;
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
  RegisterComponents('Scintilla', [TScintillaLDDP]);
end;

end.
