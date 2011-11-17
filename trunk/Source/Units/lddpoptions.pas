
{These sources are copyright (C) 2003-2011 Orion Pobursky.

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
unit lddpoptions;

interface

uses
  Classes, DATColour, DATBase;

type

  TLDDPOptions = class(TPersistent)
  private
    FLDrawPath: string;
    FLDViewPath: string;
    FMLCadPath: string;
    FL3LabPath: string;
    FLSynthPath: string;
    FErrorCheckNormalAngle: Double;
    FErrorCheckCollinearMaxAngle: Double;
    FErrorCheckCollinearMinAngle: Double;
    FPositionDecAcc: TDATPositionAccuracy;
    FRotationDecAcc: TDATRotationAccuracy;
    FOnlyRoundDuringAutoRound: Boolean;
    FCustomPollInterval: Double;
    FColorComboSortTerm: TDATColourSortTerm;
    FUsername: string;
    FUserPTName: string;
    FUserEmail: string;
    FGridCoarseX: Double;
    FGridCoarseY: Double;
    FGridCoarseZ: Double;
    FGridCoarseAngle: Double;
    FGridMedX: Double;
    FGridMedY: Double;
    FGridMedZ: Double;
    FGridMedAngle: Double;
    FGridFineX: Double;
    FGridFineY: Double;
    FGridFineZ: Double;
    FGridFineAngle: Double;
    FGridCustomX: Double;
    FGridCustomY: Double;
    FGridCustomZ: Double;
    FGridCustomAngle: Double;
    FSearchPaths: TStringList;
    FColorBarList: TStringList;
    FExternalProgramList: TStringList;
    FEditorStyles: TStringList;
    procedure SetColorBarList(const Value: TStringList);
    procedure SetExternalProgramList(const Value: TStringList);
    procedure SetSearchPaths(const Value: TStringList);
    procedure SetEditorStyles(const Value: TStringList);
    procedure SetLDrawPath(const Value: string);

  public
    constructor Create; overload;
    constructor Create(basepath: string); overload;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    procedure Save(IniFilePath, Section: string);
    procedure Load(IniFilePath, Section: string);
    procedure SetColorListToDefault;
    procedure SetEditorStylesToDefault;

  published
    property LDrawPath: string read FLDrawPath write SetLDrawPath;
    property LDViewPath: string read FLDViewPath write FLDViewPath;
    property MLCadPath: string read FMLCadPath write FMLCadPath;
    property L3LabPath: string read FL3LabPath write FL3LabPath;
    property LSynthPath: string read FLSynthPath write FLSynthPath;
    property ErrorCheckNormalAngle: Double read FErrorCheckNormalAngle write FErrorCheckNormalAngle;
    property ErrorCheckCollinearMaxAngle: Double read FErrorCheckCollinearMaxAngle write FErrorCheckCollinearMaxAngle;
    property ErrorCheckCollinearMinAngle: Double read FErrorCheckCollinearMinAngle write FErrorCheckCollinearMinAngle;
    property PositionDecAcc: TDATPositionAccuracy read FPositionDecAcc write FPositionDecAcc default 4;
    property RotationDecAcc: TDATRotationAccuracy read FRotationDecAcc write FRotationDecAcc default 4;
    property OnlyRoundDuringAutoRound: Boolean read FOnlyRoundDuringAutoRound write FOnlyRoundDuringAutoRound;
    property CustomPollInterval: Double read FCustomPollInterval write FCustomPollInterval;
    property ColorComboSortTerm: TDATColourSortTerm read FColorComboSortTerm write FColorComboSortTerm;
    property Username: string read FUsername write FUsername;
    property UserPTName: string read FUserPTName write FUserPTName;
    property UserEmail: string read FUserEmail write FUserEmail;
    property GridCoarseX: Double read FGridCoarseX write FGridCoarseX;
    property GridCoarseY: Double read FGridCoarseY write FGridCoarseY;
    property GridCoarseZ: Double read FGridCoarseZ write FGridCoarseZ;
    property GridCoarseAngle: Double read FGridCoarseAngle write FGridCoarseAngle;
    property GridMedX: Double read FGridMedX write FGridMedX;
    property GridMedY: Double read FGridMedY write FGridMedY;
    property GridMedZ: Double read FGridMedZ write FGridMedZ;
    property GridMedAngle: Double read FGridMedAngle write FGridMedAngle;
    property GridFineX: Double read FGridFineX write FGridFineX;
    property GridFineY: Double read FGridFineY write FGridFineY;
    property GridFineZ: Double read FGridFineZ write FGridFineZ;
    property GridFineAngle: Double read FGridFineAngle write FGridFineAngle;
    property GridCustomX: Double read FGridCustomX write FGridCustomX;
    property GridCustomY: Double read FGridCustomY write FGridCustomY;
    property GridCustomZ: Double read FGridCustomZ write FGridCustomZ;
    property GridCustomAngle: Double read FGridCustomAngle write FGridCustomAngle;
    property SearchPaths: TStringList read FSearchPaths write SetSearchPaths;
    property ColorBarList: TStringList read FColorBarList write SetColorBarList;
    property ExternalProgramList: TStringList read FExternalProgramList write SetExternalProgramList;
    property EditorStyles: TStringList read FEditorStyles write SetEditorStyles;
  end;

implementation

uses
  SysUtils, IniFiles, DATUtils;

{ TLDDPOptions }

procedure TLDDPOptions.Assign(Source: TPersistent);
begin
  if Source is TLDDPOptions then
    with (Source as TLDDPOptions) do
    begin
      Self.FLDrawPath := LDrawPath;
      Self.FLDViewPath := LDViewPath;
      Self.FMLCadPath := MLCadPath;
      Self.FL3LabPath := L3LabPath;
      Self.FLSynthPath := LSynthPath;
      Self.FErrorCheckNormalAngle := ErrorCheckNormalAngle;
      Self.FErrorCheckCollinearMaxAngle := ErrorCheckCollinearMaxAngle;
      Self.FErrorCheckCollinearMinAngle := ErrorCheckCollinearMinAngle;
      Self.FPositionDecAcc := PositionDecAcc;
      Self.FRotationDecAcc := RotationDecAcc;
      Self.FOnlyRoundDuringAutoRound := OnlyRoundDuringAutoRound;
      Self.FCustomPollInterval := CustomPollInterval;
      Self.FColorComboSortTerm := ColorComboSortTerm;
      Self.FUsername := Username;
      Self.FUserPTName := UserPTName;
      Self.FUserEmail := UserEmail;
      Self.FGridCoarseX := GridCoarseX;
      Self.FGridCoarseY := GridCoarseY;
      Self.FGridCoarseZ := GridCoarseZ;
      Self.FGridCoarseAngle := GridCoarseAngle;
      Self.FGridMedX := GridMedX;
      Self.FGridMedY := GridMedY;
      Self.FGridMedZ := GridMedZ;
      Self.FGridMedAngle := GridMedAngle;
      Self.FGridFineX := GridFineX;
      Self.FGridFineY := GridFineY;
      Self.FGridFineZ := GridFineZ;
      Self.FGridFineAngle := GridFineAngle;
      Self.FGridCustomX := GridCustomX;
      Self.FGridCustomY := GridCustomY;
      Self.FGridCustomZ := GridCustomZ;
      Self.FGridCustomAngle := GridCustomAngle;
      Self.FSearchPaths.Text := SearchPaths.Text;
      Self.FColorBarList.Text := ColorBarList.Text;
      Self.FExternalProgramList.Text := ExternalProgramList.Text;
      Self.FEditorStyles.Text := EditorStyles.Text;
    end
  else
    inherited;
end;

constructor TLDDPOptions.Create;
begin
  FSearchPaths := TStringList.Create;
  FColorBarList := TStringList.Create;
  FExternalProgramList := TStringList.Create;
  FEditorStyles := TStringList.Create;

  if DirectoryExists(LDrawPath) then
    SetColorListToDefault;

  SetEditorStylesToDefault;
end;

constructor TLDDPOptions.Create(basepath: string);
begin
  LDrawPath := BasePath;
  Self.Create;
end;

destructor TLDDPOptions.Destroy;
begin
  if Assigned(FSearchPaths) then
    FSearchPaths.Free;
  if Assigned(FColorBarList) then
    FColorBarList.Free;
  if Assigned(FExternalProgramList) then
    FExternalProgramList.Free;
  if Assigned(FEditorStyles) then
    FEditorStyles.Free;
  inherited;
end;

procedure TLDDPOptions.Load(IniFilePath, Section: string);
var
  i, cnt: Integer;
  IniFile: TIniFile;

begin
    IniFile := TIniFile.Create(IniFilePath);
    LDrawPath := IniFile.ReadString(Section, 'LDrawPath', LDrawBasePath);
    LDViewPath := IniFile.ReadString(Section, 'LDViewPath', '');
    MLCadPath := IniFile.ReadString(Section, 'MLCadPath', '');
    L3LabPath := IniFile.ReadString(Section, 'L3LabPath', '');
    LSynthPath := IniFile.ReadString(Section, 'LSynthPath', '');
    Username := IniFile.ReadString(Section, 'Username', '');
    UserPTName := IniFile.ReadString(Section, 'UserPTName', '');
    UserEmail := IniFile.ReadString(Section, 'UserEmail', '');
    PositionDecAcc := IniFile.ReadInteger(Section, 'PositionDecAcc', 4);
    RotationDecAcc := IniFile.ReadInteger(Section, 'RotationDecAcc', 4);
    OnlyRoundDuringAutoRound := IniFile.ReadBool(Section, 'OnlyRoundDuringAutoRound', True);
    ErrorCheckNormalAngle := IniFile.ReadFloat(Section, 'ErrorCheckNormalAngle', 1);
    ErrorCheckCollinearMaxAngle := IniFile.ReadFloat(Section, 'ErrorCheckCollinearMaxAngle', 179.9);
    ErrorCheckCollinearMinAngle := IniFile.ReadFloat(Section, 'ErrorCheckCollinearMinAngle', 0.025);
    CustomPollInterval := IniFile.ReadFloat(Section, 'CustomPollInterval', 0.5);
    GridCoarseX := IniFile.ReadFloat(Section, 'GridCoarseX', 10);
    GridCoarseY := IniFile.ReadFloat(Section, 'GridCoarseY', 10);
    GridCoarseZ := IniFile.ReadFloat(Section, 'GridCoarseZ', 10);
    GridCoarseAngle := IniFile.ReadFloat(Section, 'GridCoarseAngle', 90);
    GridMedX := IniFile.ReadFloat(Section, 'GridMedX', 5);
    GridMedY := IniFile.ReadFloat(Section, 'GridMedY', 5);
    GridMedZ := IniFile.ReadFloat(Section, 'GridMedZ', 5);
    GridMedAngle := IniFile.ReadFloat(Section, 'GridMedAngle', 45);
    GridFineX := IniFile.ReadFloat(Section, 'GridFineX', 1);
    GridFineY := IniFile.ReadFloat(Section, 'GridFineY', 1);
    GridFineZ := IniFile.ReadFloat(Section, 'GridFineZ', 1);
    GridFineAngle := IniFile.ReadFloat(Section, 'GridFineAngle', 10);
    GridCustomX := IniFile.ReadFloat(Section, 'GridCustomX', 2);
    GridCustomY := IniFile.ReadFloat(Section, 'GridCustomY', 2);
    GridCustomZ := IniFile.ReadFloat(Section, 'GridCustomZ', 2);
    GridCustomAngle := IniFile.ReadFloat(Section, 'GridCustomAngle', 22.5);

    SearchPaths.Clear;
    cnt := IniFile.ReadInteger(Section, 'SearchPathsList_Count', 0);
    for i := 0 to cnt - 1 do
      SearchPaths.Add(IniFile.ReadString(Section, 'SearchPaths_' + IntToStr(i), ''));

    ColorBarList.Clear;
    cnt := IniFile.ReadInteger(Section, 'ColorBarList_Count', 0);
    if cnt = 15 then
      for i := 0 to cnt - 1 do
        ColorBarList.Add(IniFile.ReadString(Section, 'ColorBarList_' + IntToStr(i), ''))
    else
      SetColorListToDefault;

    ExternalProgramList.Clear;
    cnt := IniFile.ReadInteger(Section, 'ExternalProgramList_Count', 0);
    for i := 0 to cnt - 1 do
      ExternalProgramList.Add(IniFile.ReadString(Section, 'ExternalProgramList_' + IntToStr(i), ''));

    EditorStyles.Clear;
    cnt := IniFile.ReadInteger(Section, 'EditorStyles_Count', 0);
    if cnt = 18 then
      for i := 0 to cnt - 1 do
        EditorStyles.Add(IniFile.ReadString(Section, 'EditorStyles_' + IntToStr(i), ''))
    else
      SetEditorStylesToDefault;

end;

procedure TLDDPOptions.Save(IniFilePath, Section: string);
var
  i: Integer;
  IniFile: TIniFile;

begin
  IniFile := TIniFile.Create(IniFilePath);
  IniFile.EraseSection(Section);
  IniFile.WriteString(Section, 'LDrawPath', FLDrawPath);
  IniFile.WriteString(Section, 'LDViewPath', FLDViewPath);
  IniFile.WriteString(Section, 'MLCadPath', FMLCadPath);
  IniFile.WriteString(Section, 'L3LabPath', FL3LabPath);
  IniFile.WriteString(Section, 'LSynthPath', FLSynthPath);
  IniFile.WriteString(Section, 'Username', FUsername);
  IniFile.WriteString(Section, 'UserPTName', FUserPTName);
  IniFile.WriteString(Section, 'UserEmail', FUserEmail);
  IniFile.WriteInteger(Section, 'PositionDecAcc', FPositionDecAcc);
  IniFile.WriteInteger(Section, 'RotationDecAcc', FRotationDecAcc);
  IniFile.WriteBool(Section, 'OnlyRoundDuringAutoRound', FOnlyRoundDuringAutoRound);
  IniFile.WriteFloat(Section, 'ErrorCheckNormalAngle', FErrorCheckNormalAngle);
  IniFile.WriteFloat(Section, 'ErrorCheckCollinearMaxAngle', FErrorCheckCollinearMaxAngle);
  IniFile.WriteFloat(Section, 'ErrorCheckCollinearMinAngle', FErrorCheckCollinearMinAngle);
  IniFile.WriteFloat(Section, 'CustomPollInterval', FCustomPollInterval);
  IniFile.WriteFloat(Section, 'GridCoarseX', FGridCoarseX);
  IniFile.WriteFloat(Section, 'GridCoarseY', FGridCoarseY);
  IniFile.WriteFloat(Section, 'GridCoarseZ', FGridCoarseZ);
  IniFile.WriteFloat(Section, 'GridCoarseAngle', FGridCoarseAngle);
  IniFile.WriteFloat(Section, 'GridMedX', FGridMedX);
  IniFile.WriteFloat(Section, 'GridMedY', FGridMedY);
  IniFile.WriteFloat(Section, 'GridMedZ', FGridMedZ);
  IniFile.WriteFloat(Section, 'GridMedAngle', FGridMedAngle);
  IniFile.WriteFloat(Section, 'GridFineX', FGridFineX);
  IniFile.WriteFloat(Section, 'GridFineY', FGridFineY);
  IniFile.WriteFloat(Section, 'GridFineZ', FGridFineZ);
  IniFile.WriteFloat(Section, 'GridFineAngle', FGridFineAngle);
  IniFile.WriteFloat(Section, 'GridCustomX', FGridCustomX);
  IniFile.WriteFloat(Section, 'GridCustomY', FGridCustomY);
  IniFile.WriteFloat(Section, 'GridCustomZ', FGridCustomZ);
  IniFile.WriteFloat(Section, 'GridCustomAngle', FGridCustomAngle);

  IniFile.WriteInteger(Section, 'SearchPaths_Count', SearchPaths.Count);
  for i := 0 to FSearchPaths.Count - 1 do
    IniFile.WriteString(Section, 'SearchPaths_' + IntToStr(i), FSearchPaths[i]);
  IniFile.WriteInteger(Section, 'ColorBarList_Count', 15);
  for i := 0 to FColorBarList.Count - 1 do
    IniFile.WriteString(Section, 'ColorBarList_' + IntToStr(i), FColorBarList[i]);
  IniFile.WriteInteger(Section, 'ExternalProgramList_Count', ExternalProgramList.Count);
  for i := 0 to FExternalProgramList.Count - 1 do
    IniFile.WriteString(Section, 'ExternalProgramList_' + IntToStr(i), FExternalProgramList[i]);
  IniFile.WriteInteger(Section, 'ColorBarList_Count', 18);
  for i := 0 to FEditorStyles.Count - 1 do
    IniFile.WriteString(Section, 'EditorStyles_' + IntToStr(i), FEditorStyles[i]);
end;

procedure TLDDPOptions.SetColorBarList(const Value: TStringList);
begin
  FColorBarList.Assign(Value);
end;

procedure TLDDPOptions.SetColorListToDefault;
var
  cnt, code: Integer;
  ColorList: TDATColourList;

begin
  ColorBarList.Clear;
  if FileExists(LDrawPath + PathDelim + 'ldconfig.ldr') then
  begin
    ColorList := MakeStandardDATColourList;
    ColorList.SortTerm := ColorComboSortTerm;
    ColorList.Sort;
    cnt := 0;
    while cnt < 16 do
    begin
      code := ColorList.IndexOfColourCode(cnt);
      if code >= 0 then
      begin
        ColorBarList.Add('"' + StringReplace(ColorList[code].ColourName, '_', ' ', [rfReplaceAll]) + '",' +
                           IntToStr(ColorList[code].Code) + ',' +
                           IntToStr(ColorList[code].MainColour));
        inc(cnt);
      end;
    end;
    ColorList.Free;
  end
  else
  begin
    for cnt := 0 to 15 do
      ColorBarList.Add('"Black",0,0');
  end;
end;

procedure TLDDPOptions.SetEditorStyles(const Value: TStringList);
begin
  FEditorStyles.Assign(Value);
end;

procedure TLDDPOptions.SetEditorStylesToDefault;
begin
  EditorStyles.Clear;
  // Default
  EditorStyles.Add('"Courier New",10,0,16777215,0,0,0');
  // Comment
  EditorStyles.Add('"Courier New",10,16711680,16777215,0,0,0');
  // Subfile command (1)
  EditorStyles.Add('"Courier New",10,0,16777215,0,0,0');
  // Line command (2)
  EditorStyles.Add('"Courier New",10,0,16777215,0,0,0');
  // Triangle command (3)
  EditorStyles.Add('"Courier New",10,0,16777215,0,0,0');
  // Quad command (4)
  EditorStyles.Add('"Courier New",10,255,16777215,0,0,0');
  // OpLine command (5)
  EditorStyles.Add('"Courier New",10,0,16777215,0,0,0');
  // Color number
  EditorStyles.Add('"Courier New",10,8388608,16777215,0,0,0');
  // Position triple
  EditorStyles.Add('"Courier New",10,4812750,16777215,0,0,0');
  // Triple 1
  EditorStyles.Add('"Courier New",10,4812750,16777215,0,0,0');
  // Triple 2
  EditorStyles.Add('"Courier New",10,811830,16777215,0,0,0');
  // Triple 3
  EditorStyles.Add('"Courier New",10,4812750,16777215,0,0,0');
  // Triple 4
  EditorStyles.Add('"Courier New",10,811830,16777215,0,0,0');
  // Matrix 1
  EditorStyles.Add('"Courier New",10,811830,16777215,0,0,0');
  // Matrix 2
  EditorStyles.Add('"Courier New",10,4812750,16777215,0,0,0');
  // Matrix 3
  EditorStyles.Add('"Courier New",10,811830,16777215,0,0,0');
  // Official File Ref
  EditorStyles.Add('"Courier New",10,0,16777215,1,0,0');
  // Unofficial File Ref
  EditorStyles.Add('"Courier New",10,0,16777215,0,1,0');
  // Meta
  EditorStyles.Add('"Courier New",10,16711680,16777215,1,0,0');
end;

procedure TLDDPOptions.SetExternalProgramList(const Value: TStringList);
begin
  FExternalProgramList.Assign(Value);
end;

procedure TLDDPOptions.SetLDrawPath(const Value: string);
begin
  FLDrawPath := Value;
  LDrawBasePath := Value;
end;

procedure TLDDPOptions.SetSearchPaths(const Value: TStringList);
begin
  FSearchPaths.Assign(Value);
end;

end.
