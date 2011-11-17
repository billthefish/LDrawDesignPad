unit ScintillaLDDP;

interface

uses
  SysUtils, Classes, Controls, DScintillaCustom, DScintilla, DATBase, DATModel,
  lddpoptions;

type
  TLDDPGridSetting = (gsCoarse, gsMedium, gsFine, gsCustom);

  TScintillaLDDP = class;

  TScintillaLDDP = class(TDScintilla)
  private
    FLDDPOptions: TLDDPOptions;
    FGridSetting: TLDDPGridSetting;
    FDATModel: TDATModel;

    procedure SetGridSetting(const Value: TLDDPGridSetting);
    function GetSelLength: Integer;

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
    procedure IndentSelection;
    procedure UnindentSelection;
    procedure CommentSelection;
    procedure UncommentSelection;
    procedure SetEditorOptions;
    procedure SetEditorStyles;

    // These are properties in Scintilla or one that I've come to expect from
    // edit type controls
    property SelectionStart: Integer read GetSelectionStart write SetSelectionStart;
    property SelLength: Integer read GetSelLength;
    property SelectionEnd: Integer read GetSelectionEnd write SetSelectionEnd;
    property SelText: string read GetSelText write ReplaceSel;
    property Modified: Boolean read GetModify;

  published
    property LDDPOptions: TLDDPOptions read FLDDPOptions write FLDDPOptions;
    property GridSetting: TLDDPGridSetting read FGridSetting write SetGridSetting;

    property MultipleSelection: Boolean read GetMultipleSelection write SetMultipleSelection;
  end;

//Until I get the LDraw lexer added to the Scintilla project these consts are needed
const
  SCLEX_LDRAW = 102;
  SCE_LDRAW_DEFAULT = 0;
  SCE_LDRAW_COMMENT = 1;
  SCE_LDRAW_SUBFILE = 2;
  SCE_LDRAW_LINE = 3;
  SCE_LDRAW_TRIANGLE = 4;
  SCE_LDRAW_QUAD = 5;
  SCE_LDRAW_OPLINE = 6;
  SCE_LDRAW_COLOR = 7;
  SCE_LDRAW_POSITION = 8;
  SCE_LDRAW_TRIPLE1 = 9;
  SCE_LDRAW_TRIPLE2 = 10;
  SCE_LDRAW_TRIPLE3 = 11;
  SCE_LDRAW_TRIPLE4 = 12;
  SCE_LDRAW_MATRIX1 = 13;
  SCE_LDRAW_MATRIX2 = 14;
  SCE_LDRAW_MATRIX3 = 15;
  SCE_LDRAW_OFFICIAL_FILENAME = 16;
  SCE_LDRAW_UNOFFICIAL_FILENAME = 17;
  SCE_LDRAW_META = 18;

procedure Register;

implementation

uses
  DATUtils;

procedure TScintillaLDDP.SelectLine(Line: Integer);
begin
  SelectLines(Line, Line);
end;

procedure TScintillaLDDP.SelectLines(StartLine, EndLine: Integer);
begin
  SetSelection(GetLineEndPosition(endline), PositionFromLine(startline));
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
  startline := LineFromPosition(SelectionStart);

  if SelLength > 0 then
    endline := LineFromPosition(SelectionStart + SelLength - 1)
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

procedure TScintillaLDDP.CommentSelection;
var
  i, startline, endline: integer;

begin
  //Expand Selection block
  ExpandSelection(startline, endline);

  FDATModel.ModelText := SelText;

  for i := 0 to FDATModel.Count - 1 do
    FDATModel.CommentLine(i);

  SelText := FDATModel.ModelText;
  SelectLines(startline, endline);
end;

constructor TScintillaLDDP.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FLDDPOptions := TLDDPOptions.Create;
  FDATModel := TDATModel.Create;
end;

destructor TScintillaLDDP.Destroy;
begin
  if Assigned(FLDDPOptions) then
    FLDDPOptions.Free;
  if Assigned(FDATModel) then
    FDATModel.Free;
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
      DModel := CreateDATModel(FLDDPOptions.PositionDecAcc, FLDDPOptions.RotationDecAcc);

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
      DModel := CreateDATModel(FLDDPOptions.PositionDecAcc, FLDDPOptions.RotationDecAcc);

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
    DModel := CreateDATModel(FLDDPOptions.PositionDecAcc, FLDDPOptions.RotationDecAcc);

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
  DModel := CreateDATModel(FLDDPOptions.PositionDecAcc, FLDDPOptions.RotationDecAcc);
  DModel.ModelText := SelText;
  SelText := DModel.ModelText;
  SelectLines(startline, endline);
end;

procedure TScintillaLDDP.SetEditorOptions;
begin
  SetEditorStyles;
end;

procedure TScintillaLDDP.SetEditorStyles;
var
  i: Integer;
  Styles: TStringList;

begin
  Styles := TStringList.Create;
  try
    for i := 0 to 18 do
    begin
      Styles.CommaText := LDDPOptions.EditorStyles[i];
      if StyleGetFont(i) <> Styles[0] then
        StyleSetFont(i, Styles[0]);
      if StyleGetSize(i) <> StrToInt(Styles[1]) then
        StyleSetSize(i, StrToInt(Styles[1]));
      if StyleGetFore(i) <> StrToInt(Styles[2]) then
        StyleSetFore(i, StrToInt(Styles[2]));
      if StyleGetBack(i) <> StrToInt(Styles[3]) then
        StyleSetBack(i, StrToInt(Styles[3]));
      if StyleGetBold(i) <> StrToBool(Styles[4]) then
        StyleSetBold(i, StrToBool(Styles[4]));
      if StyleGetItalic(i) <> StrToBool(Styles[5]) then
        StyleSetItalic(i, StrToBool(Styles[5]));
      if StyleGetUnderLine(i) <> StrToBool(Styles[6]) then
        StyleSetUnderline(i, StrToBool(Styles[6]));
    end;
  finally
    Styles.Free;
  end;
  Colourise(0, -1);
end;

procedure TScintillaLDDP.SetGridSetting(const Value: TLDDPGridSetting);
begin
  FGridSetting := Value;
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
      (DLine as TDATElement).PositionDecimalPlaces := FLDDPOptions.PositionDecAcc;
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

  DModel := CreateDATModel(FLDDPOptions.PositionDecAcc, FLDDPOptions.RotationDecAcc);
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
    DModel := CreateDATModel(FLDDPOptions.PositionDecAcc, FLDDPOptions.RotationDecAcc);

  DModel.ModelText := SelText;

  DModel.Translate(x, y, z);

  SelText := DModel.ModelText;
  SelectLines(startline, endline);
  DModel.Free;
end;

procedure TScintillaLDDP.UncommentSelection;
var
  i, startline, endline: integer;

begin
  //Expand Selection block
  ExpandSelection(startline, endline);

  FDATModel.ModelText := SelText;

  for i := 0 to FDATModel.Count - 1 do
    FDATModel.UncommentLine(i);

  SelText := FDATModel.ModelText;
  SelectLines(startline, endline);
end;

procedure TScintillaLDDP.UnindentSelection;
var
  startline, endline, i: Integer;

begin
  ExpandSelection(startline, endline);
  BeginUndoAction;
  for i := startline to endline do
    if GetLineIndentation(i) - 1 >= 0 then
      SetLineIndentation(i, GetLineIndentation(i) - 1);
  EndUndoAction;
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

function TScintillaLDDP.GetSelLength: Integer;
begin
  Result := SelectionStart - SelectionEnd;
end;

function TScintillaLDDP.GridAngle: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseAngle;
    gsMedium: Result := LDDPOptions.GridMedAngle;
    gsFine: Result := LDDPOptions.GridFineAngle;
    gsCustom: Result := LDDPOptions.GridCustomAngle;
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
    gsCustom: Result := LDDPOptions.GridCustomX;
    else Result := 10;
  end;
end;

function TScintillaLDDP.GridY: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseY;
    gsMedium: Result := LDDPOptions.GridMedY;
    gsFine: Result := LDDPOptions.GridFineY;
    gsCustom: Result := LDDPOptions.GridCustomY;
    else Result := 10;
  end;
end;

function TScintillaLDDP.GridZ: Double;
begin
  case GridSetting of
    gsCoarse: Result := LDDPOptions.GridCoarseZ;
    gsMedium: Result := LDDPOptions.GridMedZ;
    gsFine: Result := LDDPOptions.GridFineZ;
    gsCustom: Result := LDDPOptions.GridCustomZ;
    else Result := 10;
  end;
end;

procedure TScintillaLDDP.IndentSelection;
var
  startline, endline, i: Integer;

begin
  ExpandSelection(startline, endline);
  BeginUndoAction;
  for i := startline to endline do
    SetLineIndentation(i, GetLineIndentation(i) + 1);
  EndUndoAction;
end;

procedure Register;
begin
  RegisterComponents('Scintilla', [TScintillaLDDP]);
end;

end.
