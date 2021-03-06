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

unit DATModel;

interface

uses
  DATBase, Generics.Collections, Classes;

type

  TDATSortTerm = (dsNil, dsColor,
                  dsMidX, dsMidY, dsMidZ,
                  dsMaxX, dsMaxY, dsMaxZ,
                  dsMinX, dsMinY, dsMinZ ,
                  dsLineType, dsSubpart);

  TDATSortArray = array[1..3] of TDATSortTerm;

{ An Object for holding and manipulating an LDraw model }

  TDATModel=class(TObject)
    private
      strFilePath: string;
      strFileName: string;
      FDuplicates: Boolean;
      FModelCollection: TObjectList<TDATType>;
      FPntAcc: TDATPositionAccuracy;
      FRotAcc: TDATRotationAccuracy;
      FSortTerms: TDATSortArray;
      procedure DoSort(Start, Finish: Integer; Reverse: Boolean = False);
      function Compare(Line1, Line2: TDATType; Reverse: Boolean = False): Integer;
      function GetSortTerm(Idx: Byte): TDATSortTerm;
      procedure SetSortTerm(Idx: Byte; Val: TDATSortTerm);
      procedure SetFilePath(fPath: string);
      procedure SetFileName(fName: string);
      procedure SetIdentLines(fILines: Boolean);
      procedure SetModelFromStringlist(sList: TStringList);
      procedure SetLine(Idx: Integer; Value: TDATType);
      function GetLine(Idx: Integer): TDATType;
      function GetCount: Integer;
      function GetModelText: string;
      procedure SetModelText(mText: string);

    public
      constructor Create(RotAcc: Integer = 13; PntAcc: Integer = 13); virtual;
      destructor Destroy; override;

      property FilePath: string read strFilePath write SetFilePath;
      property FileName: string read strFileName write SetFileName;
      property ModelText: string read GetModelText write SetModelText;

      property Lines[Idx:Integer]: TDATType read GetLine write SetLine; default;
      property Count:Integer read GetCount;

      property Duplicates: Boolean read FDuplicates write SetIdentLines;

      property PositionDecimalPlaces: TDATPositionAccuracy read FPntAcc write FPntAcc;
      property RotationDecimalPlaces: TDATRotationAccuracy read FRotAcc write FRotAcc;
      property SortTerms: TDATSortArray read FSortTerms write FSortTerms;
      property SortTerm[Idx: Byte]: TDATSortTerm read GetSortTerm write SetSortTerm;

      function RemoveDuplicateLines: Boolean;

      { Load a model from a dat or ldr file.  MPD support not yet added}
      procedure LoadModel(DATFile: string);

      { Save a model to dat or ldr format.  MPD support not yet added}
      procedure SaveModel(fname: string);

      {Delete line at index}
      procedure Delete(Index: Integer);

      {Inline part at index}
      procedure InlinePart(Index: Integer; SearchPaths: TStringList = nil);

      {Inline all parts (linetype 1) in the model}
      procedure InlineAll;

      {Finds the first instance of the supplied line starting from the supplied
       index (default 0)}
      function IndexOfLine(strLine: string; StartIndex: Integer = 0): Integer;

      {Add all the lines from the supplied DATModel}
      procedure AddLines(ModelObj: TDATModel; Index: Integer = -1);

      procedure CommentLine(Index: Integer);
      procedure UnCommentLine(Index: Integer);

      procedure Add(strLine: string); overload;
      procedure Add(objLine: TDATType); overload;
      procedure Insert(Index: Integer; strLine: string); overload;
      procedure Insert(Index: Integer; objLine: TDATType); overload;
      procedure Exchange(Index1, Index2: Integer);
      procedure Rotate(w,x,y,z: Double);
      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); overload;
      procedure Translate(x,y,z: Double);
      procedure Clear;

      procedure Sort(Reverse: Boolean = False);
  end;

  // An MPD model is essentially a collection of TDATModels
  // Many of the class procedures work in a similar manner to TDATModel
  TDATMPDModel = class(TPersistent)
    private
      FModelCollection: TObjectList<TDATModel>;
      FDuplicates: Boolean;

    protected
      procedure SetModel(Idx: Integer; Value: TDATModel);
      function GetModel(Idx: Integer): TDATModel;
      function GetCount: Integer;
      function GetModelText: string;
      procedure SetModelText(mText: string);

    public
      constructor Create;
      destructor Destroy; override;
      property Models[Idx:Integer]: TDATModel read GetModel write SetModel; default;
      property Count:Integer read GetCount;
      property ModelText: string read GetModelText write SetModelText;
      property Duplicates: Boolean read FDuplicates write FDuplicates;
      procedure Add(objLine: TDATModel); overload;
      procedure Add(fName, mText: string); overload;
      procedure Replace(OldModelName: string; NewModel: TDATModel); overload;
      procedure Replace(OldModelName,NewModelName,NewModelText: string); overload;
      procedure Insert(Index: Integer; objLine: TDATModel); overload;
      procedure Insert(Index: Integer; fName, mText: string); overload;
      procedure Clear;
      procedure LoadModel(Filename: string);
      procedure SaveModel(Filename: string);
      procedure Delete(Index: Integer);
      function IndexOfModel(strName: string; StartIndex: Integer = 0): Integer;

  end;

implementation

uses
  SysUtils, DATUtils;

// Compare Functions
function CompareLineType(Line1, Line2: TDATType): Integer;

begin
  Result := 0;

  if Line1.LineType < Line2.LineType then
    Result := 1
  else if Line2.LineType < Line1.LineType then
    Result := -1;
end;

function CompareSubpart(Line1, Line2: TDATType): Integer;

var
  PartNumber1, PartNumber2, CompStr, i: Integer;
  PartStr1, PartStr2: string;

begin
  Result := 0;

  if (Line1.LineType = ltSubpart) and (Line2.LineType = ltSubPart) then
  begin
    PartStr1 := ExtractFileName((Line1 as TDATSubpart).SubPart);
    PartStr2 := ExtractFileName((Line2 as TDATSubpart).SubPart);

    i := 1;
    while (PartStr1[i] >= '0') and (PartStr1[i] <= '9') do
      inc(i);
    PartNumber1 := StrToInt(Copy(PartStr1, 0, i - 1));

    i := 1;
    while (PartStr2[i] >= '0') and (PartStr2[i] <= '9') do
      inc(i);
    PartNumber2 := StrToInt(Copy(PartStr2, 0, i - 1));

    CompStr := CompareStr(PartStr1, PartStr2);

    if (PartNumber1 = PartNumber2) and (CompStr <> 0) then
      Result := -CompStr
    else if PartNumber1 < PartNumber2 then
      Result := 1
    else if PartNumber2 < PartNumber1 then
      Result := -1;
  end
  else
    Result := CompareLineType(Line1, Line2);

end;

function CompareColor(Line1, Line2: TDATType): Integer;

begin
  Result := 0;

  if (Line1.LineType > ltComment) and (Line2.LineType > ltComment) then
  begin
    if (Line1 as TDATElement).Color > (Line2 as TDATElement).Color then
      Result := -1
    else if (Line2 as TDATElement).Color > (Line1 as TDATElement).Color then
      Result := 1;
  end
  else
    Result := CompareLineType(Line1, Line2);
end;

function CompareMaxX(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).MaxX;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).MaxX;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).X;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).X;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareMaxY(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).MaxY;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).MaxY;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).Y;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).Y;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareMaxZ(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).MaxZ;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).MaxZ;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).Z;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).Z;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareMinX(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).MinX;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).MinX;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).X;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).X;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareMinY(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).MinY;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).MinY;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).Y;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).Y;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareMinZ(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).MinZ;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).MinZ;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).Z;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).Z;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareCenterX(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).CenterX;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).CenterX;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).X;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).X;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareCenterY(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).CenterY;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).CenterY;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).Y;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).Y;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

function CompareCenterZ(Line1, Line2: TDATType): Integer;

var
  val1, val2: Double;

begin
  Result := 0;

  val1 := 0;
  val2 := 0;

  if (Line1.LineType > ltSubpart) then
    val1 := (Line1 as TDATGeometric).CenterZ;
  if (Line2.LineType > ltSubpart) then
    val2 := (Line2 as TDATGeometric).CenterZ;
  if (Line1.LineType = ltSubpart) then
    val1 := (Line1 as TDATSubPart).Z;
  if (Line2.LineType = ltSubpart) then
    val2 := (Line2 as TDATSubPart).Z;

  if val1 > val2 then
      Result := -1
  else if val1 < val2 then
      Result := 1;

  if (Line1.LineType = ltComment) and (Line2.LineType > ltComment) then
    Result := 1;
  if (Line2.LineType = ltComment) and (Line1.LineType > ltComment) then
    Result := -1;
end;

constructor TDATModel.Create(RotAcc: Integer = 13; PntAcc: Integer = 13);

begin
  inherited Create;
  FModelCollection := TObjectList<TDATType>.Create;
  FPntAcc := PntAcc;
  FRotAcc := RotAcc;
end;

destructor TDATModel.Destroy;
begin
  FModelCollection.Free;
  inherited Destroy;
end;

function TDATModel.GetSortTerm(Idx: Byte): TDATSortTerm;
begin
  Result := FSortTerms[Idx];
end;

procedure TDATModel.SetSortTerm(Idx: Byte; Val: TDATSortTerm);
begin
  FSortTerms[Idx] := Val;
end;

function TDATModel.GetLine(Idx:Integer): TDATType;
begin
  if (Idx >= 0) and (Idx < Count) then
  begin
    Result := (FModelCollection[Idx] as TDATType);
    if Result.LineType > ltComment then
    begin
      (Result as TDATElement).RotationDecimalPlaces := RotationDecimalPlaces;
      (Result as TDATElement).PositionDecimalPlaces := PositionDecimalPlaces;
    end;
  end
  else
    Result := nil;
end;

procedure TDATModel.SetLine(Idx:Integer; Value: TDATType);
var
  TempDAT: TObject;

begin
  if (Idx >= 0) and (Idx < Count) then
  begin
    TempDAT := FModelCollection[Idx];
    FModelCollection[Idx] := Value;
    if Assigned(TempDAT) then
      TempDAT.Free;
  end;
end;

function TDATModel.GetModelText: string;

var
  i: Integer;

begin
  Result := '';
  if Count > 0 then
  begin
    for i := 0 to Count - 2 do
      Result := Result + Lines[i].DATString + #13#10;
    Result := Result + Lines[Count-1].DATString;
  end;
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

procedure TDATModel.SetModelFromStringList(sList: TStringList);

var
  i: Integer;

begin
  for i := 0 to sList.Count - 1 do
    Add(sList[i]);
end;

procedure TDATModel.Add(objLine: TDATType);
begin
  Insert(GetCount, objLine);
end;

procedure TDATModel.Add(strLine: string);
begin
  Insert(Count, strLine);
end;

procedure TDATModel.Insert(Index: Integer; objLine: TDATType);

begin
  FModelCollection.Insert(Index, objLine);
end;

procedure TDATModel.Insert(Index: Integer; strLine: string);

begin
  Insert(Index, StrToDAT(strLine))
end;

procedure TDATModel.Exchange(Index1, Index2: Integer);

begin
  FModelCollection.Exchange(Index1, Index2);
end;

procedure TDATModel.Rotate(w,x,y,z: Double);

var
  i: Integer;

begin
  for i := 0 to Count - 1 do
   if (Lines[i] is TDATElement) then
     (Lines[i] as TDATElement).Rotate(w,x,y,z);
end;

procedure TDATModel.Transform(M: TDATMatrix; Reverse: Boolean = false);

var
  i: Integer;

begin
  for i := 0 to Count - 1 do
    if (Lines[i] is TDATElement) then
      (Lines[i] as TDATElement).Transform(M,Reverse);
end;

procedure TDATModel.Translate(x,y,z: Double);

var
  i: Integer;

begin
  for i := 0 to Count - 1 do
   if (Lines[i] is TDATElement) then
     (Lines[i] as TDATElement).Translate(x,y,z);
end;

procedure TDATModel.Clear;

begin
  FModelCollection.Clear;
end;

function TDATModel.GetCount: Integer;
begin
  Result := FModelCollection.Count;
end;

function TDATModel.Compare(Line1, Line2: TDATType; Reverse: Boolean = False): Integer;

var
  i: Integer;

begin
  Result := 0;

  for i := 1 to 3 do
    if Result = 0 then
      case FSortTerms[i] of
        dsMaxX: Result := CompareMaxX(Line1,Line2);
        dsMinX: Result := CompareMinX(Line1,Line2);
        dsMidX: Result := CompareCenterX(Line1,Line2);
        dsMaxY: Result := CompareMaxY(Line1,Line2);
        dsMinY: Result := CompareMinY(Line1,Line2);
        dsMidY: Result := CompareCenterY(Line1,Line2);
        dsMaxZ: Result := CompareMaxZ(Line1,Line2);
        dsMinZ: Result := CompareMinZ(Line1,Line2);
        dsMidZ: Result := CompareCenterZ(Line1,Line2);
        dsColor: Result := CompareColor(Line1,Line2);
        dsLineType: Result := CompareLineType(Line1,Line2);
        dsSubpart: Result := CompareSubpart(Line1,Line2);
        else Result := 0;
      end;

  if Reverse then Result := -Result;
end;

procedure TDATModel.DoSort(Start, Finish: Integer; Reverse: Boolean = False);

var
  i, j: Integer;
  Line1: TDATType;

begin
  repeat
    i := Start;
    j := Finish;

    Line1 := Lines[(Start + Finish) shr 1];
    repeat
      while Compare(Lines[i], Line1, Reverse) < 0 do
        Inc(i);
      while Compare(Lines[j], Line1, Reverse) > 0 do
        Dec(j);
      if i <= j then
      begin
        Exchange(i,j);
        Inc(i);
        Dec(j);
      end;
    until i > j;
    if Start < j then
      DoSort(Start, j, Reverse);
    Start := i;
  until i >= Finish;
end;

procedure TDATModel.Sort(Reverse: Boolean = False);
begin
  DoSort(0, Count-1, Reverse);
end;

procedure TDATModel.SetFilePath(fPath: string);
begin
  strFilePath := Lowercase(fPath);
end;

procedure TDATModel.SetFileName(fName: string);
begin
  strFileName := Lowercase(fName);
end;

procedure TDATModel.SetIdentLines(fILines: Boolean);
begin
  FDuplicates := fILines;
  if not Duplicates then
    RemoveDuplicateLines;
end;

function TDATModel.RemoveDuplicateLines: Boolean;

var
  j, line: Integer;

begin
  Result := False;
  for line := Count - 1 downto 0 do
    for j := line downto 0 do
      if SameDATLine(Lines[j], Lines[line]) then
      begin
        Delete(line);
        Result := True;
        Break;
      end;
end;

procedure TDATModel.LoadModel(DATFile: string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  Clear;
  if FileExists(DATFile) then
  begin
    ModelFile.LoadFromFile(DATFile);
    FilePath := ExtractFilePath(DATFile);
    FileName := ExtractFileName(DATFile);
  end;

  SetModelFromStringlist(ModelFile);
  ModelFile.Free;
end;

procedure TDATModel.SaveModel(fname:string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  ModelFile.Text := GetModelText;
  ModelFile.SaveToFile(fname);
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
  ModelObj.PositionDecimalPlaces := PositionDecimalPlaces;
  ModelObj.RotationDecimalPlaces := RotationDecimalPlaces;
  if Index < 0 then Index := Count;
  for i := ModelObj.Count - 1 downto 0 do
    Insert(Index, ModelObj[i].DATString);
end;

procedure TDATModel.InlinePart(Index: Integer; SearchPaths: TStringList = nil);

var
  InlineFile: TDATModel;
  i: Integer;

begin
  if Count > 0 then
  begin
    InlineFile := TDATModel.Create;
    InlineFile.PositionDecimalPlaces := PositionDecimalPlaces;
    InlineFile.RotationDecimalPlaces := RotationDecimalPlaces;

    if (Lines[Index] is TDATSubPart) then
    begin
      with (Lines[Index] as TDATSubPart) do
      begin
        if (not Assigned(SearchPaths)) or (SearchPaths.Count = 0) then
        begin
          if FileExists(strFilePath + SubPart) then
            InlineFile.LoadModel(strFilePath + SubPart)
          else if FileExists(LDrawBasePath + PathDelim + 'PARTS' + PathDelim + SubPart) then
            InlineFile.LoadModel(LDrawBasePath + PathDelim + 'PARTS' + PathDelim + SubPart)
          else if FileExists(LDrawBasePath + PathDelim + 'P' + PathDelim + SubPart) then
            InlineFile.LoadModel(LDrawBasePath + PathDelim + 'P' + PathDelim + SubPart)
        end
        else
        begin
          if FileExists(strFilePath + SubPart) then
            InlineFile.LoadModel(strFilePath + SubPart)
          else
            for i := 0 to SearchPaths.Count - 1 do
              if FileExists(SearchPaths[i] + PathDelim + SubPart) then
              begin
                InlineFile.LoadModel(SearchPaths[i] + PathDelim + SubPart);
                Break;
              end;
        end;
      end;


      if InlineFile.Count > 0 then
      begin
        for i := 0 to InlineFile.Count - 1 do
          if (InlineFile[i] is TDATElement) then
          begin
            if (InlineFile[i] as TDATElement).Color = 16 then
              (InlineFile[i] as TDATElement).Color := (Lines[Index] as TDATElement).Color;
          end;
        InlineFile.Transform((Lines[Index] as TDATSubPart).Matrix);
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
  if Lines[Index] is TDATElement then
  begin
    DLine := Lines[Index].DATString;
    Delete(Index);
    Insert(Index, '0 ' + DLine);
  end;
end;

procedure TDATModel.UnCommentLine(Index: Integer);

var
  DLine: string;

begin
  if Lines[Index] is TDATComment then
  begin
    DLine := TDATComment(Lines[Index]).Comment;
    Delete(Index);
    Insert(Index, DLine);
    if Lines[Index] is TDATInvalidLine then
    begin
      Delete(Index);
      Insert(Index, '0 ' + DLine);
    end;
  end;
end;

// TDATMPDModel
constructor TDATMPDModel.Create;

begin
  inherited Create;
  FModelCollection := TObjectList<TDATModel>.Create;
end;

destructor TDATMPDModel.Destroy;
begin
  FModelCollection.Free;
  inherited Destroy;
end;

function TDATMPDModel.GetModel(Idx:Integer): TDATModel;
begin
  if (Idx >= 0) and (Idx < Count) then
    Result := (FModelCollection[Idx] as TDATModel)
  else
    Result := nil;
end;

procedure TDATMPDModel.SetModel(Idx:Integer; Value: TDATModel);
var
  TempModel: TObject;

begin
  if (Idx >= 0) and (Idx < Count) then
  begin
    TempModel := FModelCollection[Idx];
    FModelCollection[Idx] := Value;
    if Assigned(TempModel) then
      TempModel.Free;
  end;
end;

function TDATMPDModel.GetModelText: string;

var
  i: Integer;

begin
  Result := '';
  if Count > 0 then
  begin
    for i := 0 to Count - 2 do
      Result := Result + '0 FILE ' + Models[i].FileName + #13#10 +
                Models[i].ModelText + #13#10;
    Result := Result + '0 FILE ' + Models[Count - 1].FileName + #13#10 +
              Models[Count - 1].ModelText;
  end;
end;

procedure TDATMPDModel.SetModelText(mText: string);

var
  ModelTxt, Parse: TStringList;
  ModelIndexList: array of Integer;
  i,j: Integer;
  DModel: TDATModel;

begin
  ModelTxt := TSTringList.Create;
  DModel := TDATModel.Create;

  ModelTxt.Text := mText;

  for i := 0 to ModelTxt.Count - 1 do
    if Pos('0 FILE', ModelTxt[i]) > 0 then
    begin
      SetLength(ModelIndexList, Length(ModelIndexList) + 1);
      ModelIndexList[Length(ModelIndexList) - 1] := i;
    end;

  if Length(ModelIndexList) > 0 then
  begin
    Parse := TStringList.Create;

    SetLength(ModelIndexList, Length(ModelIndexList) + 1);
    ModelIndexList[Length(ModelIndexList) - 1] := ModelTxt.Count;

    for i := 0 to Length(ModelIndexList) - 2 do
    begin
      Parse.Clear;
      DModel.Clear;
      for j := ModelIndexList[i] + 1 to ModelIndexList[i+1] - 1 do
        DModel.Add(ModelTxt[j]);
      ExtractStrings([#9,#32],[#9,#32],PChar(ModelTxt[ModelIndexList[i]]), Parse);
      DModel.FileName := Parse[2];

      if IndexOfModel(DModel.FileName) < 0 then
        Add(DModel.FileName, DModel.ModelText);
    end;

    Parse.Free;
  end;

  DModel.Clear;
  ModelTxt.Free;
end;

procedure TDATMPDModel.Add(objLine: TDATModel);
begin
  Insert(Count, objLine);
end;

procedure TDATMPDModel.Add(fName, mText: string);
begin
  Insert(Count,fName, mText);
end;

procedure TDATMPDModel.Replace(OldModelName: string; NewModel: TDATModel);
var
  i,j: Integer;

begin
  OldModelName := LowerCase(OldModelName);
  if (IndexOfModel(OldModelName) >= 0) and
     (IndexOfModel(NewModel.FileName) < 0) then
  begin
    for i := 0 to Count - 1 do
      for j := 0 to Models[i].Count - 1 do
        if (Models[i].Lines[j] is TDATSubPart) then
           if (Models[i].Lines[j] as TDATSubPart).SubPart = OldModelName then
             (Models[i].Lines[j] as TDATSubPart).SubPart := NewModel.FileName;
    Delete(IndexOfModel(OldModelName));
    Add(NewModel);
  end;
end;

procedure TDATMPDModel.Replace(OldModelName,NewModelName,NewModelText: string);

var
 TempModel: TDATModel;

begin
  TempModel := TDATModel.Create;
  TempModel.FileName := NewModelName;
  TempModel.ModelText := NewModelText;
  Replace(OldModelName, TempModel);

  if IndexOfModel(NewModelName) < 0 then
    TempModel.Free;
end;

procedure TDATMPDModel.Insert(Index: Integer; objLine: TDATModel);
begin
  if not Duplicates then
  begin
    if IndexOfModel(objLine.FileName) < 0 then
      FModelCollection.Insert(Index, objLine);
  end
  else
    FModelCollection.Insert(Index, objLine);
end;

procedure TDATMPDModel.Insert(Index: Integer; fName, mText: string);
var
  TempModel: TDATModel;

begin
  TempModel := TDATModel.Create;
  TempModel.FileName := fName;
  TempModel.ModelText := mText;
  Insert(Index,TempModel);

  if IndexOfModel(fName) < 0 then
    TempModel.Free;
end;

function TDATMPDModel.GetCount: Integer;
begin
  Result := FModelCollection.Count;
end;

procedure TDATMPDModel.Clear;

begin
  FModelCollection.Clear;
end;

procedure TDATMPDModel.Delete(Index: Integer);
begin
  FModelCollection.Delete(Index);
end;

function TDATMPDModel.IndexOfModel(strName: string; StartIndex: Integer = 0): Integer;

begin
  strName := LowerCase(strName);
  Result := StartIndex;
  while Result < Count do
  begin
    if Models[Result].FileName = strName then
      Break;
    inc(Result);
  end;
  if Result = Count then Result := -1;
end;

procedure TDATMPDModel.LoadModel(Filename: string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  Clear;
  if FileExists(Filename) then
    ModelFile.LoadFromFile(Filename);
  ModelText := ModelFile.Text;
  ModelFile.Free;
end;

procedure TDATMPDModel.SaveModel(Filename:string);

var
  ModelFile: TStringList;

begin
  ModelFile := TStringList.Create;
  ModelFile.Text := ModelText;
  ModelFile.SaveToFile(Filename);
  ModelFile.Free;
end;

initialization
  {Some locales use "," as the decimal separator
   This changes the decimal separtor to "." as required by the LDraw spec
   without changing the master settings. }
  FormatSettings.DecimalSeparator := '.';

finalization
// Nothing

end.
