unit DATModel;
(*
Copyright 2002,2003 Orion Pobursky

The DATTools Library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

The DATTools Library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

interface

uses
  DATBase,
  SysUtils,
  Contnrs,
  Classes,
  Math;

type

{ Base class for all DAT Model type Objects
  Essentially this is a specialized Object list for
  DAT Components }
  TDATCustomModel=class(TPersistent)
    private
      FModelCollection: TObjectList;

    protected
      procedure SetLine(Idx: Integer; Value: TDATType);
      function GetLine(Idx: Integer): TDATType;
      function GetCount: Integer;
      property Lines[Idx:Integer]: TDATType read GetLine write SetLine;
      property Count:Integer read GetCount;
      procedure Add(strLine: string); overload; virtual;
      procedure Add(objLine: TDATType); overload; virtual;
      procedure Insert(Index: Integer; strLine: string); overload; virtual;
      procedure Insert(Index: Integer; objLine: TDATType); overload; virtual;
      procedure Rotate(w,x,y,z: Extended); virtual;
      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); overload; virtual;
      procedure Translate(x,y,z: Extended); virtual;
      procedure Clear; virtual;

    public
      constructor Create; virtual;
      destructor Destroy; override;

  end;

{ An Object for holding and manipulating a DAT model }

  TDATModel=class(TDATCustomModel)
    private
      strFilePath: string;
      procedure SetModelFromStringlist(sList: TStringList);

    protected
      function GetModelText: string;
      procedure SetModelText(mText: string);

    public
      property FilePath: string read strFilePath write strFilePath;
      property ModelText: string read GetModelText write SetModelText;

      property Lines; default;{Public redeclare of the inherited Lines property}
      property Count; {Public redeclare of the inherited Count property}

      { Load a model from a dat or ldr file.  MPD support not yet added}
      procedure LoadModel(Filename: string);

      { Save a model to dat or ldr format.  MPD support not yet added}
      procedure SaveModel(Filename: string);

      {Delete line at index}
      procedure Delete(Index: Integer);

      {Inline part at index}
      procedure InlinePart(Index: Integer);

      {Inline all parts (linetype 1) in the model}
      procedure InlineAll;

      {Finds the first instance of the supplied line starting from the supplied
       index (default 0)}
      function IndexOfLine(strLine: string; StartIndex: Integer = 0): Integer;

      {Add all the lines from the supplied DATModel}
      procedure AddLines(ModelObj: TDATModel; Index: Integer = -1);

      procedure CommentLine(Index: Integer);
      procedure UnCommentLine(Index: Integer);

//    Inherited from TDATCustomModel
      procedure Add(strLine: string); overload; override;
      procedure Add(objLine: TDATType); overload; override;
      procedure Insert(Index: Integer; strLine: string); overload; override;
      procedure Insert(Index: Integer; objLine: TDATType); overload; override;
      procedure Rotate(w,x,y,z: Extended); override;
      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); overload; override;
      procedure Translate(x,y,z: Extended); override;
      procedure Clear; override;
  end;

(*
{ Enumerated type for the Minifig rotate commands}

  TDATMinifigParts = (mfHatAcc, mfHat, mfHead, mfNeck, mfTorso, mfLArm, mfLHand,
                      mfLTool, mfRArm, mfRHand, mfRTool, mfHips, mfLLeg, mfLFoot,
                      mfRLeg, mfRFoot);

{ A Specialized version of a DAT Model for Minifigs }

  TDATMinifig=class(TDATCustomModel)
    private
      OldPart: Boolean;
      HtAccArg,HatArg,NeckArg,RToolArg,LToolArg: string;

    protected
      procedure SetLine(Idx: Integer; Value: TDATSubPart);
      function GetLine(Idx: Integer): TDATSubPart;

    public
      constructor Create; override;
      property Lines; default; {Public redeclare of the inherited Lines property}
      property HatAcc: TDatSubPart index 0 read GetLine write SetLine;
      property Hat: TDATSubPart index 1 read GetLine write SetLine;
      property Head: TDATSubPart index 2 read GetLine write SetLine;
      property Neck: TDATSubpart index 3 read GetLine write SetLine;
      property Torso: TDATSubPart index 4 read GetLine write SetLine;
      property LArm: TDATSubPart index 5 read GetLine write SetLine;
      property LHand: TDATSubPart index 6 read GetLine write SetLine;
      property LTool: TDATSubPart index 7 read GetLine write SetLine;
      property RArm: TDATSubPart index 8 read GetLine write SetLine;
      property RHand: TDATSubPart index 9 read GetLine write SetLine;
      property RTool: TDATSubPart index 10 read GetLine write SetLine;
      property Hips: TDATSubPart index 11 read GetLine write SetLine;
      property LLeg: TDATSubPart index 12 read GetLine write SetLine;
      property LFoot: TDATSubPart index 13 read GetLine write SetLine;
      property RLeg: TDATSubPart index 14 read GetLine write SetLine;
      property RFoot: TDATSubPart index 15 read GetLine write SetLine;
      function GetMinifigDATCode(ha,ht,h,la,lh,lt,ra,rh,rt,hi,ll,rl,lf,rf: Single): string;
      procedure SetTool(Tool: string; Degree: Single; Side: Char; Arguments: string = '');
      procedure SetNeck(Nk: string; Arguments: string = '');
      procedure SetHatAcc(HtAcc: string; Degree: Single; Arguments: string = ''; HatArguments: string = '');
//      procedure RotatePart(Part: TDATMinifigPart; Degree: Extended);
//      procedure RotatePartTo(Part: TDATMinifigPart; w,x,y,z: Extended);
  end;
*)
implementation

constructor TDATCustomModel.Create;

begin
  inherited Create;
  FModelCollection := TObjectList.Create;
end;

destructor TDATCustomModel.Destroy;
begin
  FModelCollection.Free;
  inherited Destroy;
end;

function TDATCustomModel.GetLine(Idx:Integer): TDATType;
begin
  if (Idx >= 0) and (Idx < Count) then
    Result := (FModelCollection[Idx] as TDATType)
  else
    Result := nil;
end;

procedure TDATCustomModel.SetLine(Idx:Integer; Value: TDATType);
begin
  if (Idx >= 0) and (Idx < Count) then
    FModelCollection[Idx] := Value;
end;

procedure TDATCustomModel.Add(objLine: TDATType);
begin
  Insert(GetCount, objLine);
end;

procedure TDATCustomModel.Add(strLine: string);
begin
  Insert(GetCount, strLine);
end;

procedure TDATCustomModel.Insert(Index: Integer; objLine: TDATType);

begin
  FModelCollection.Insert(Index, objLine);
end;

procedure TDATCustomModel.Insert(Index: Integer; strLine: string);

var
  NewDATType: TDATType;

begin
  NewDATType := StrToDAT(strLine);
  Insert(Index, NewDATType)
end;

procedure TDATCustomModel.Rotate(w,x,y,z: Extended);

var
  i: Integer;

begin
  for i := 0 to Count - 1 do
   if (Lines[i] is TDATElement) then
     (Lines[i] as TDATElement).Rotate(w,x,y,z);
end;

procedure TDATCustomModel.Transform(M: TDATMatrix; Reverse: Boolean = false);

var
  i: Integer;

begin
  for i := 0 to Count - 1 do
    if (Lines[i] is TDATElement) then
      (Lines[i] as TDATElement).Transform(M,Reverse);
end;

procedure TDATCustomModel.Translate(x,y,z: Extended);

var
  i: Integer;

begin
  for i := 0 to Count - 1 do
   if (Lines[i] is TDATElement) then
     (Lines[i] as TDATElement).Translate(x,y,z);
end;

procedure TDATCustomModel.Clear;

begin
  FModelCollection.Clear;
end;

function TDATCustomModel.GetCount: Integer;
begin
  Result := FModelCollection.Count;
end;

{ TDATModel Code }
procedure TDATModel.SetModelFromStringList(sList: TStringList);

var
  i: Integer;

begin
  for i := 0 to sList.Count - 1 do
    Add(sList[i]);
end;

function TDATModel.GetModelText: string;

var
  i: Integer;

begin
  Result := '';
  for i := 0 to Count - 2 do
    Result := Result + Lines[i].DATString + #13#10;
  Result := Result + Lines[Count-1].DATString;
end;

procedure TDATModel.SetModelText(mText: string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  Clear;

  ModelFile.Text := mText;

  SetModelFromStringlist(ModelFile);
  ModelFile.Free;
end;

procedure TDATModel.LoadModel(Filename:string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  Clear;
  if FileExists(Filename) then
  begin
    ModelFile.LoadFromFile(Filename);
    strFilePath := ExtractFilePath(Filename);
  end;

  SetModelFromStringlist(ModelFile);
  ModelFile.Free;
end;

procedure TDATModel.SaveModel(Filename:string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  ModelFile.Text := GetModelText;
  ModelFile.SaveToFile(Filename);
  ModelFile.Free;
end;

procedure TDATModel.Delete(Index: Integer);
begin
  FModelCollection.Delete(Index);
end;

procedure TDATModel.AddLines(ModelObj: TDATModel; Index: Integer = -1);

var
  i: Integer;

begin
  if Index < 0 then Index := Count;
  for i := ModelObj.Count - 1 downto 0 do
    Insert(Index, ModelObj[i].DATString);
end;

procedure TDATModel.Clear;

begin
  inherited Clear;
end;

procedure TDATModel.InlinePart(Index: Integer);

var
  InlineFile: TDATModel;
  i: Integer;

begin
  if Count > 0 then
  begin
    InlineFile := TDATModel.Create;
    if (Lines[Index] is TDATSubPart) then
    begin
      with (Lines[Index] as TDATSubPart) do
      begin
        if FileExists(strFilePath + FileName) then
          InlineFile.LoadModel(strFilePath + FileName)
        else if FileExists(LDrawBasePath + 'PARTS' + PathDelim + FileName) then
          InlineFile.LoadModel(LDrawBasePath + 'PARTS' + PathDelim + FileName)
        else if FileExists(LDrawBasePath + 'P' + PathDelim + FileName) then
          InlineFile.LoadModel(LDrawBasePath + 'P' + PathDelim + FileName);
      end;


      if InlineFile.Count > 0 then
      begin
        for i := 0 to InlineFile.Count - 1 do
          if (InlineFile[i] is TDATElement) then
          begin
            if (InlineFile[i] as TDATElement).Color = 16 then
              (InlineFile[i] as TDATElement).Color := (Lines[Index] as TDATElement).Color;
            (InlineFile[i] as TDATElement).PositionDecimalPlaces :=
              (Lines[Index] as TDATElement).PositionDecimalPlaces;
            (InlineFile[i] as TDATElement).RotationDecimalPlaces :=
              (Lines[Index] as TDATElement).RotationDecimalPlaces;
          end;
        InlineFile.Transform((Lines[Index] as TDATSubPart).RotationMatrix);
        Delete(Index);
        AddLines(InlineFile, Index);
      end;
    end;
    InlineFile.Free;
  end;
end;

procedure TDATModel.InlineAll;

var
  i: Integer;

begin
  i := 0;
  while i < Count do
    if Lines[i] is TDATSubPart then
      InlinePart(i)
    else
      inc(i);
end;

function TDATModel.IndexOfLine(strLine: string; StartIndex: Integer = 0): Integer;

begin
  Result := StartIndex;
  while Result < Count do
  begin
    if Lines[Result].DATString = strLine then
      Break;
    inc(Result);
  end;
  if Result = Count then Result := -1;
end;

procedure TDATModel.CommentLine(Index: Integer);

var
  DLine: string;

begin
  if (not (Lines[Index] is TDATComment)) and
     (not (Lines[Index] is TDATBlankLine)) then
  begin
    DLine := Lines[Index].DATString;
    Delete(Index);
    Insert(Index, DLine);
  end;
end;

procedure TDATModel.UnCommentLine(Index: Integer);

var
  DLine: string;

begin
  if Lines[Index] is TDATComment then
  begin
    Dline := (Lines[Index] as TDATComment).Comment;
    Delete(Index);
    Insert(Index, DLine);
    if Lines[Index] is TDATBlankLine then
    begin
      Delete(Index);
      Insert(Index, '0 ' + DLine);
    end;
  end;
end;

procedure TDATModel.Add(objLine: TDATType);
begin
  inherited Add(objLine);
end;

procedure TDATModel.Add(strLine: string);
begin
  inherited Add(strLine);
end;

procedure TDATModel.Insert(Index: Integer; objLine: TDATType);

begin
  inherited Insert(Index, objLine);
end;

procedure TDATModel.Insert(Index: Integer; strLine: string);
begin
  inherited Insert(Index, strLine);
end;

procedure TDATModel.Rotate(w,x,y,z: Extended);
begin
  inherited Rotate(w,x,y,z);
end;

procedure TDATModel.Transform(M: TDATMatrix; Reverse: Boolean = false);
begin
  inherited Transform(M, Reverse);
end;

procedure TDATModel.Translate(x,y,z: Extended);
begin
  inherited Translate(x,y,z);
end;

{
// TDATMinifig Code

constructor TDATMinifig.Create;

var
  i: Integer;

begin
  inherited Create;
  for i := 1 to 16 do
    Add('1 16 0 0 0 1 0 0 0 1 0 0 0 1 dummy.dat');

  OldPart := False;

  Head.SubPart := '3626BP01.dat';
  Head.Color := 14;
  Torso.SubPart := '973.dat';
  Hips.SubPart := '970.dat';
  LLeg.SubPart := '972.dat';
  RLeg.SubPart := '971.dat';
  LArm.SubPart := '981.dat';
  LHand.SubPart := '983.dat';
  LHand.Color := 14;
  RArm.SubPart := '982.dat';
  RHand.SubPart := '983.dat';
  RHand.Color := 14;
end;

function TDATMinifig.GetLine(Idx:Integer): TDATSubPart;
begin
  Result := (Lines[Idx] as TDATSubPart);
end;

procedure TDATMinifig.SetLine(Idx:Integer; Value: TDATSubPart);
begin
  Lines[Idx] := Value;
end;

function TDATMinifig.GetMinifigDATCode(ha,ht,h,la,lh,lt,ra,rh,rt,hi,ll,rl,lf,rf: Single): string;

var
  i: Integer;

begin
  for i := 0 to 15 do
    (Lines[i] as TDATSubPart).RotationMatrix := FDATIdentityMatrix;

  SetTool(LTool.SubPart,lt,'l');
  SetTool(RTool.SubPart,rt,'r');

  Hips.Translate(0,-12,0);
  Hips.Rotate(hi,-1,0,0);

  Torso.Translate(0,-44,0);
  Torso.Rotate(hi,-1,0,0);

  SetHatAcc(HatAcc.SubPart, ha);
  Hat.Rotate(ht,0,-1,0);
  HatAcc.Rotate(ht,0,-1,0);
  Head.Rotate(h,0,-1,0);
  Hat.Rotate(h,0,-1,0);
  HatAcc.Rotate(h,0,-1,0);
  Head.Translate(0,-68,0);
  Hat.Translate(0,-68,0);
  HatAcc.Translate(0,-68,0);
  Head.Rotate(hi,-1,0,0);
  Hat.Rotate(hi,-1,0,0);
  HatAcc.Rotate(hi,-1,0,0);

  SetNeck(Neck.SubPart);
  Neck.Rotate(hi,-1,0,0);

  if not OldPart then
  begin
    LArm.SubPart := '981.dat';
    LHand.SubPart := '983.dat';
    RArm.SubPart := '982.dat';
    RHand.SubPart := '983.dat';

    LHand.Rotate(lh,0,0,-1);
    LTool.Rotate(lh,0,0,-1);
    LHand.Transform([4.99, 18.673, -9.612, 1, 0, 0, 0, 0.707071, -0.707071, 0, 0.707071, 0.707071]);
    LTool.Transform([4.99, 18.673, -9.612, 1, 0, 0, 0, 0.707071, -0.707071, 0, 0.707071, 0.707071]);
    LArm.Rotate(la,-1,0,0);
    LHand.Rotate(la,-1,0,0);
    LTool.Rotate(la,-1,0,0);
    LArm.Transform([15.552, -23, 0, 0.985193, 0.171448, 0, -0.171448, 0.985193, 0, 0, 0, 1]);
    LHand.Transform([15.552, -23, 0, 0.985193, 0.171448, 0, -0.171448, 0.985193, 0, 0, 0, 1]);
    LTool.Transform([15.552, -23, 0, 0.985193, 0.171448, 0, -0.171448, 0.985193, 0, 0, 0, 1]);
    LArm.Translate(0,-12,0);
    LHand.Translate(0,-12,0);
    LTool.Translate(0,-12,0);
    LArm.Rotate(hi,-1,0,0);
    LHand.Rotate(hi,-1,0,0);
    LTool.Rotate(hi,-1,0,0);

    RHand.Rotate(rh,0,0,-1);
    RTool.Rotate(rh,0,0,-1);
    RHand.Transform([-4.99, 18.673, -9.612, 1, 0, 0, 0, 0.707071, -0.707071, 0, 0.707071, 0.707071]);
    RTool.Transform([-4.99, 18.673, -9.612, 1, 0, 0, 0, 0.707071, -0.707071, 0, 0.707071, 0.707071]);
    RArm.Rotate(ra,-1,0,0);
    RHand.Rotate(ra,-1,0,0);
    RTool.Rotate(ra,-1,0,0);
    RArm.Transform([-15.552, -24, 0, 0.985193, -0.171448, 0, 0.171448, 0.985193, 0, 0, 0, 1]);
    RHand.Transform([-15.552, -24, 0, 0.985193, -0.171448, 0, 0.171448, 0.985193, 0, 0, 0, 1]);
    RTool.Transform([-15.552, -24, 0, 0.985193, -0.171448, 0, 0.171448, 0.985193, 0, 0, 0, 1]);
    RArm.Translate(0,-12,0);
    RHand.Translate(0,-12,0);
    RTool.Translate(0,-12,0);
    RArm.Rotate(hi,-1,0,0);
    RHand.Rotate(hi,-1,0,0);
    RTool.Rotate(hi,-1,0,0);
  end
  else
  begin
    LArm.SubPart := '976.dat';
    LHand.SubPart := '977.dat';
    RArm.SubPart := '975.dat';
    RHand.SubPart := '977.dat';

    LHand.Translate(0,-4,0);
    LTool.Translate(0,-4,0);
    LHand.Rotate(lh,-1,0,0);
    LTool.Rotate(lh,-1,0,0);
    LHand.Transform([23, 22.828, -12.672, 0, 0, 1, -0.707, 0.707, 0, 0.707, 0.707, 0]);
    LTool.Transform([23, 22.828, -12.672, 0, 0, 1, -0.707, 0.707, 0, 0.707, 0.707, 0]);
    LArm.Transform([-15.309, -2.425, 0, 0.988, -0.156, 0, 0.156, 0.988, 0, 0, 0, 1]);
    LHand.Transform([-15.309, -2.425, 0, 0.988, -0.156, 0, 0.156, 0.988, 0, 0, 0, 1]);
    LTool.Transform([-15.309, -2.425, 0, 0.988, -0.156, 0, 0.156, 0.988, 0, 0, 0, 1]);
    LArm.Rotate(la,-1,0,0);
    LHand.Rotate(la,-1,0,0);
    LTool.Rotate(la,-1,0,0);
    LArm.Transform([15.5, -24, 0, 0.988, 0.156, 0, -0.156, 0.988, 0, 0, 0, 1]);
    LHand.Transform([15.5, -24, 0, 0.988, 0.156, 0, -0.156, 0.988, 0, 0, 0, 1]);
    LTool.Transform([15.5, -24, 0, 0.988, 0.156, 0, -0.156, 0.988, 0, 0, 0, 1]);
    LArm.Translate(0,-12,0);
    LHand.Translate(0,-12,0);
    LTool.Translate(0,-12,0);
    LArm.Rotate(hi,-1,0,0);
    LHand.Rotate(hi,-1,0,0);
    LTool.Rotate(hi,-1,0,0);

    RHand.Translate(0,-4,0);
    RTool.Translate(0,-4,0);
    RHand.Rotate(rh,-1,0,0);
    RTool.Rotate(rh,-1,0,0);
    RHand.Transform([-23, 22.828, -12.672, 0, 0, 1, -0.707, 0.707, 0, 0.707, 0.707, 0]);
    RTool.Transform([-23, 22.828, -12.672, 0, 0, 1, -0.707, 0.707, 0, 0.707, 0.707, 0]);
    RArm.Transform([15.309, -2.425, 0, 0.988, 0.156, 0, -0.156, 0.988, 0, 0, 0, 1]);
    RHand.Transform([15.309, -2.425, 0, 0.988, 0.156, 0, -0.156, 0.988, 0, 0, 0, 1]);
    RTool.Transform([15.309, -2.425, 0, 0.988, 0.156, 0, -0.156, 0.988, 0, 0, 0, 1]);
    RArm.Rotate(ra,-1,0,0);
    RHand.Rotate(ra,-1,0,0);
    RTool.Rotate(ra,-1,0,0);
    RArm.Transform([-15.5, -24, 0, 0.988, -0.156, 0, 0.156, 0.988, 0, 0, 0, 1]);
    RHand.Transform([-15.5, -24, 0, 0.988, -0.156, 0, 0.156, 0.988, 0, 0, 0, 1]);
    RTool.Transform([-15.5, -24, 0, 0.988, -0.156, 0, 0.156, 0.988, 0, 0, 0, 1]);
    RArm.Translate(0,-12,0);
    RHand.Translate(0,-12,0);
    RTool.Translate(0,-12,0);
    RArm.Rotate(hi,-1,0,0);
    RHand.Rotate(hi,-1,0,0);
    RTool.Rotate(hi,-1,0,0);
  end;

  LFoot.Rotate(lf,0,-1,0);
  LFoot.Translate(11,28,1);
  LLeg.Rotate(ll,-1,0,0);
  LFoot.Rotate(ll,-1,0,0);
  LFoot.Transform(FDATIdentityMatrix);

  RFoot.Rotate(rf,0,-1,0);
  RFoot.Translate(-11,28,1);
  RLeg.Rotate(rl,-1,0,0);
  RFoot.Rotate(rl,-1,0,0);
  RFoot.Transform(FDATIdentityMatrix);

  Result := '';

  for i := 0 to 15 do
    if ((Lines[i] as TDATSubPart).SubPart <> 'DUMMY') then
      Result := Result + Lines[i].DATString + #13#10;
end;


procedure TDATMinifig.SetTool(Tool: string; Degree: Single; Side: Char; Arguments: string = '');

var
  DATTool: TDATSubPart;
  RotMod: ShortInt;
  Arg: TStringList;
  i: Byte;

begin
//  Side := LowerCase(Side);
  Arguments := LowerCase(Arguments);
  if ((Tool <> '') and ((Side = 'r') or (Side = 'l'))) then
  begin
    case Side of
      'l': begin
             DATTool := LTool;
             RotMod := -1;
             if Arguments <> '' then LToolArg := Arguments;
             Arguments := LToolArg;
           end;
      'r': begin
             DATTool := RTool;
             RotMod := 1;
             if Arguments <> '' then RToolArg := Arguments;
             Arguments := RToolArg;
           end;
    end;

    DATTool.SubPart := Tool;

    Arg := TStringList.Create;

    try
      Arg.CommaText := Arguments;
      if OldPart then DATTool.Rotate(90,0,-1,0);
      i := 0;
      while i < Arg.Count do
      begin
        if Arg[i] = 'x' then
        begin
          DATTool.Rotate(StrToFloat(Arg[i+1]),1,0,0);
          i:=i+2;
        end
        else if Arg[i] = 'y' then
        begin
          DATTool.Rotate(StrToFloat(Arg[i+1]),0,1,0);
          i:=i+2;
        end
        else if Arg[i] = 'z' then
        begin
          DATTool.Rotate(StrToFloat(Arg[i+1]),0,0,1);
          i:=i+2;
        end
        else if Arg[i] = 'rx' then
        begin
          DATTool.Rotate(StrToFloat(Arg[i+1]),RotMod,0,0);
          i:=i+2;
        end
        else if Arg[i] = 'ry' then
        begin
          DATTool.Rotate(StrToFloat(Arg[i+1]),0,RotMod,0);
          i:=i+2;
        end
        else if Arg[i] = 'rz' then
        begin
          DATTool.Rotate(StrToFloat(Arg[i+1]),0,0,RotMod);
          i:=i+2;
        end
        else if Arg[i] = 't' then
        begin
          if not OldPart then
            DATTool.Translate(0 + StrToFloat(Arg[i+1]), -9.7741 + StrToFloat(Arg[i+2]), -9.3739 + StrToFloat(Arg[i+3]))
          else
            DATTool.Translate(StrToFloat(Arg[i+1]),StrToFloat(Arg[i+2]),StrToFloat(Arg[i+3]));
          i:=i+4;
        end;
      end;
    finally
      Arg.Free;
    end;

    Degree := DegToRad(Degree);

    if not OldPart then
    begin
      DATTool.Transform([0,9.7741,9.3739,1,0,0,0,1,0,0,0,1]);
      DATTool.Transform([0,0,0,Cos(Degree),0,Sin(Degree),0,1,0,-Sin(Degree),0,Cos(Degree)]);
      DATTool.Transform([0,-9.7741,-9.3739,1,0,0,0,1,0,0,0,1]);
      DATTool.Transform([0, 0, 0, 1, 0, 0, 0, 0.968148, -0.25038, 0, 0.25038, 0.968148]);
    end
    else
      DATTool.Transform([0,0,0,Cos(Degree),0,Sin(Degree),0,1,0,-Sin(Degree),0,Cos(Degree)]);
  end;
end;

procedure TDATMinifig.SetNeck(Nk: string; Arguments: string = '');

var
  Arg: TStringList;
  i: Byte;

begin
  Arguments := LowerCase(Arguments);
  if Nk <> '' then
  begin
    Neck.SubPart := Nk;
    if Arguments <> '' then NeckArg := Arguments;
    Arguments := NeckArg;
    Arg := TStringList.Create;
    try
      Arg.CommaText := Arguments;
      i := 0;
      while i < Arg.Count do
      begin
        if Arg[i] = 'x' then
        begin
          Neck.Rotate(StrToFloat(Arg[i+1]),1,0,0);
          i:=i+2;
        end
        else if Arg[i] = 'y' then
        begin
          Neck.Rotate(StrToFloat(Arg[i+1]),0,1,0);
          i:=i+2;
        end
        else if Arg[i] = 'z' then
        begin
          Neck.Rotate(StrToFloat(Arg[i+1]),0,0,1);
          i:=i+2;
        end
        else if Arg[i] = 'th' then
        begin
          Head.Translate(StrToFloat(Arg[i+1]),StrToFloat(Arg[i+2]),StrToFloat(Arg[i+3]));
          Hat.Translate(StrToFloat(Arg[i+1]),StrToFloat(Arg[i+2]),StrToFloat(Arg[i+3]));
          HatAcc.Translate(StrToFloat(Arg[i+1]),StrToFloat(Arg[i+2]),StrToFloat(Arg[i+3]));
          i:=i+4;
        end
        else if Arg[i] = 'tn' then
        begin
          Neck.Translate(StrToFloat(Arg[i+1]),StrToFloat(Arg[i+2]),StrToFloat(Arg[i+3]));
          i:=i+4;
        end;
      end;
    finally
      Arg.Free;
    end;
  end;
end;

procedure TDATMinifig.SetHatAcc(HtAcc: string; Degree: Single; Arguments: string = ''; HatArguments: string = '');

var
  HtAArg,HtArg: TStringList;

begin
  Arguments := LowerCase(Arguments);
  if Arguments <> '' then HtAccArg := Arguments;
  if HatArguments <> '' then HatArg := HatArguments;
  if (HtAcc <> '') and (HatArg <> '') then
  begin
    HatAcc.SubPart := HtAcc;
    Arguments := HtAccArg;
    HatArguments := HatArg;
    HtAArg := TStringList.Create;
    HtArg := TStringList.Create;
    try
      HtAArg.CommaText := Arguments;
      HtArg.CommaText := HatArguments;
      if HtAArg[0] = 'f' then
      begin
        HatAcc.Rotate(Degree,0,-1,0);
        HatAcc.Translate((StrToFloat(HtArg[1])-StrToFloat(HtAArg[1])),
                         (StrToFloat(HtArg[2])-StrToFloat(HtAArg[2])),
                         (StrToFloat(HtArg[3])-StrToFloat(HtAArg[3])));
      end
      else if HtAArg[0] = 'v' then
      begin
        HatAcc.Translate(0,-(StrToFloat(HtAArg[1])),-(StrToFloat(HtAArg[2])));
        Degree := DegToRad(Degree);
        HatAcc.Transform([0,(StrToFloat(HtAArg[1])),(StrToFloat(HtAArg[2])),1,0,0,0,Cos(Degree),-Sin(Degree),0,Sin(Degree),Cos(Degree)]);
        HatAcc.Translate(0,(StrToFloat(HtArg[1])-StrToFloat(HtAArg[1]))
                          ,(StrToFloat(HtArg[2])-StrToFloat(HtAArg[2])));
      end;
    finally
      HtAArg.Free;
      HtArg.Free;
    end;
  end;
end;
}
end.
