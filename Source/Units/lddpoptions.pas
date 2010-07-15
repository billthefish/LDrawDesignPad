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
unit lddpoptions;

interface

uses
  Classes, DATColour;

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
    FPostionDecAcc: Integer;
    FRotationDecAcc: Integer;
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
    FSearchPaths: TStringList;
    FColorBarList: TStringList;
    FExternalProgramList: TStringList;
    procedure SetColorBarList(const Value: TStringList);
    procedure SetExternalProgramList(const Value: TStringList);
    procedure SetSearchPaths(const Value: TStringList);

  public
    constructor Create;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    procedure Save(IniFilePath, Section: string);
    procedure Load(IniFilePath, Section: string);

  published
    property LDrawPath: string read FLDrawPath write FLDrawPath;
    property LDViewPath: string read FLDViewPath write FLDViewPath;
    property MLCadPath: string read FMLCadPath write FMLCadPath;
    property L3LabPath: string read FL3LabPath write FL3LabPath;
    property LSynthPath: string read FLSynthPath write FLSynthPath;
    property ErrorCheckNormalAngle: Double read FErrorCheckNormalAngle write FErrorCheckNormalAngle;
    property ErrorCheckCollinearMaxAngle: Double read FErrorCheckCollinearMaxAngle write FErrorCheckCollinearMaxAngle;
    property ErrorCheckCollinearMinAngle: Double read FErrorCheckCollinearMinAngle write FErrorCheckCollinearMinAngle;
    property PostionDecAcc: Integer read FPostionDecAcc write FPostionDecAcc;
    property RotationDecAcc: Integer read FRotationDecAcc write FRotationDecAcc;
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
    property SearchPaths: TStringList read FSearchPaths write SetSearchPaths;
    property ColorBarList: TStringList read FColorBarList write SetColorBarList;
    property ExternalProgramList: TStringList read FExternalProgramList write SetExternalProgramList;
  end;

implementation

uses
  SysUtils, IniFiles;

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
      Self.FPostionDecAcc := PostionDecAcc;
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
      Self.FSearchPaths.Assign(SearchPaths);
      Self.FColorBarList.Assign(ColorBarList);
      Self.FExternalProgramList.Assign(ExternalProgramList);
    end
  else
    inherited;
end;

constructor TLDDPOptions.Create;
begin
  FSearchPaths := TStringList.Create;
  FColorBarList := TStringList.Create;
  FExternalProgramList := TStringList.Create;
end;

destructor TLDDPOptions.Destroy;
begin
  if Assigned(FSearchPaths) then
    FSearchPaths.Free;
  if Assigned(FColorBarList) then
    FColorBarList.Free;
  if Assigned(FExternalProgramList) then
    FExternalProgramList.Free;
  inherited;
end;

procedure TLDDPOptions.Load(IniFilePath, Section: string);
var
  i, cnt: Integer;
  IniFile: TIniFile;

begin
    IniFile := TIniFile.Create(IniFilePath);
    FLDrawPath := IniFile.ReadString(Section, 'LDrawPath', '');
    FLDViewPath := IniFile.ReadString(Section, 'LDViewPath', '');
    FMLCadPath := IniFile.ReadString(Section, 'MLCadPath', '');
    FL3LabPath := IniFile.ReadString(Section, 'L3LabPath', '');
    FLSynthPath := IniFile.ReadString(Section, 'LSynthPath', '');
    FUsername := IniFile.ReadString(Section, 'Username', '');
    FUserPTName := IniFile.ReadString(Section, 'UserPTName', '');
    FUserEmail := IniFile.ReadString(Section, 'UserEmail', '');
    FPostionDecAcc := IniFile.ReadInteger(Section, 'PostionDecAcc', 4);
    FRotationDecAcc := IniFile.ReadInteger(Section, 'RotationDecAcc', 4);
    FOnlyRoundDuringAutoRound := IniFile.ReadBool(Section, 'OnlyRoundDuringAutoRound', True);
    FErrorCheckNormalAngle := IniFile.ReadFloat(Section, 'ErrorCheckNormalAngle', 1);
    FErrorCheckCollinearMaxAngle := IniFile.ReadFloat(Section, 'ErrorCheckCollinearMaxAngle', 179.9);
    FErrorCheckCollinearMinAngle := IniFile.ReadFloat(Section, 'ErrorCheckCollinearMinAngle', 0.025);
    FCustomPollInterval := IniFile.ReadFloat(Section, 'CustomPollInterval', 0.5);
    FGridCoarseX := IniFile.ReadFloat(Section, 'GridCoarseX', 10);
    FGridCoarseX := IniFile.ReadFloat(Section, 'GridCoarseY', 10);
    FGridCoarseZ := IniFile.ReadFloat(Section, 'GridCoarseZ', 10);
    FGridCoarseAngle := IniFile.ReadFloat(Section, 'GridCoarseAngle', 90);
    FGridMedX := IniFile.ReadFloat(Section, 'GridMedX', 5);
    FGridMedY := IniFile.ReadFloat(Section, 'GridMedY', 5);
    FGridMedZ := IniFile.ReadFloat(Section, 'GridMedZ', 5);
    FGridMedAngle := IniFile.ReadFloat(Section, 'GridMedAngle', 45);
    FGridFineX := IniFile.ReadFloat(Section, 'GridFineX', 1);
    FGridFineY := IniFile.ReadFloat(Section, 'GridFineY', 1);
    FGridFineZ := IniFile.ReadFloat(Section, 'GridFineZ', 1);
    FGridFineAngle := IniFile.ReadFloat(Section, 'GridFineAngle', 10);

    SearchPaths.Clear;
    cnt := IniFile.ReadInteger(Section, 'SearchPathsList_Count', 0);
    for i := 0 to cnt - 1 do
      SearchPaths.Add(IniFile.ReadString(Section, 'SearchPaths_' + IntToStr(i), FSearchPaths[i]));

    ColorBarList.Clear;
    cnt := IniFile.ReadInteger(Section, 'ColorBarListList_Count', 0);
    for i := 0 to cnt - 1 do
      ColorBarList.Add(IniFile.ReadString(Section, 'ColorBarList_' + IntToStr(i), FColorBarList[i]));

    ExternalProgramList.Clear;
    cnt := IniFile.ReadInteger(Section, 'ExternalProgramListList_Count', 0);
    for i := 0 to cnt - 1 do
      ExternalProgramList.Add(IniFile.ReadString(Section, 'ExternalProgramList_' + IntToStr(i), FExternalProgramList[i]));
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
    IniFile.WriteInteger(Section, 'PostionDecAcc', FPostionDecAcc);
    IniFile.WriteInteger(Section, 'RotationDecAcc', FRotationDecAcc);
    IniFile.WriteBool(Section, 'OnlyRoundDuringAutoRound', FOnlyRoundDuringAutoRound);
    IniFile.WriteFloat(Section, 'ErrorCheckNormalAngle', FErrorCheckNormalAngle);
    IniFile.WriteFloat(Section, 'ErrorCheckCollinearMaxAngle', FErrorCheckCollinearMaxAngle);
    IniFile.WriteFloat(Section, 'ErrorCheckCollinearMinAngle', FErrorCheckCollinearMinAngle);
    IniFile.WriteFloat(Section, 'CustomPollInterval', FCustomPollInterval);
    IniFile.WriteFloat(Section, 'GridCoarseX', FGridCoarseX);
    IniFile.WriteFloat(Section, 'GridCoarseY', FGridCoarseY);
    IniFile.WriteFloat(Section, 'GridCoarseX', FGridCoarseZ);
    IniFile.WriteFloat(Section, 'GridCoarseAngle', FGridCoarseAngle);
    IniFile.WriteFloat(Section, 'GridMedX', FGridMedX);
    IniFile.WriteFloat(Section, 'GridMedY', FGridMedY);
    IniFile.WriteFloat(Section, 'GridMedX', FGridMedZ);
    IniFile.WriteFloat(Section, 'GridMedAngle', FGridMedAngle);
    IniFile.WriteFloat(Section, 'GridFineX', FGridFineX);
    IniFile.WriteFloat(Section, 'GridFineY', FGridFineY);
    IniFile.WriteFloat(Section, 'GridFineX', FGridFineZ);
    IniFile.WriteFloat(Section, 'GridFineAngle', FGridFineAngle);

    IniFile.WriteInteger(Section, 'SearchPaths_Count', SearchPaths.Count);
    for i := 0 to FSearchPaths.Count - 1 do
      IniFile.WriteString(Section, 'SearchPaths_' + IntToStr(i), FSearchPaths[i]);
    IniFile.WriteInteger(Section, 'ColorBarList_Count', ColorBarList.Count);
    for i := 0 to FColorBarList.Count - 1 do
      IniFile.WriteString(Section, 'ColorBarList_' + IntToStr(i), FColorBarList[i]);
    IniFile.WriteInteger(Section, 'ExternalProgramList_Count', ExternalProgramList.Count);
    for i := 0 to FExternalProgramList.Count - 1 do
      IniFile.WriteString(Section, 'ExternalProgramList_' + IntToStr(i), FExternalProgramList[i]);
end;

procedure TLDDPOptions.SetColorBarList(const Value: TStringList);
begin
  FColorBarList.Assign(Value);
end;

procedure TLDDPOptions.SetExternalProgramList(const Value: TStringList);
begin
  FExternalProgramList.Assign(Value);
end;

procedure TLDDPOptions.SetSearchPaths(const Value: TStringList);
begin
  FSearchPaths.Assign(Value);
end;

end.
