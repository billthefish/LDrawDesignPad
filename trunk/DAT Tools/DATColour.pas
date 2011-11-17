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

unit DATColour;

interface

uses
  Graphics, Contnrs, DATBase;

type
  TDATFinish = (finNone, finChrome, finPearlescent, finRubber, finMatteMetallic, finMetal);

  (* Represents the !COLOUR Meta Command *)
  TDATColour = class(TDATType)
    protected
      FName: string;
      FCode: Integer;
      FMainColour, FEdgeColour: TColor;
      FAlpha: Byte;
      FLuminance: Byte;
      FFinish: TDATFinish;
      FMaterial: string;
      function GetDATString: string; override;
      procedure ProcessDATLine(strText: string); override;

    public
      constructor Create; override;
      property ColourName: string read FName write FName;
      property Code: Integer read FCode write FCode;
      property MainColour: TColor read FMainColour write FMainColour;
      property EdgeColour: TColor read FEdgeColour write FEdgeColour;
      property Alpha: Byte read FAlpha write FAlpha;
      property Luminance: Byte read FLuminance write FLuminance;
      property Finish: TDATFinish read FFinish write FFinish;
      property Material: string read FMaterial write FMaterial;
  end;

  TDATColourSortTerm = (csCode, csColourName, csMainColour);

  TDATColourList = class(TObject)
    private
      FColorCollection: TObjectList;
      FSortTerm: TDATColourSortTerm;
      procedure SetColour(Idx: Integer; Value: TDATColour);
      function GetColour(Idx: Integer): TDATColour;
      function GetCount: Integer;
      procedure DoSort(Start, Finish: Integer; Reverse: Boolean = False);
      function Compare(Color1, Color2: TDATColour; Reverse: Boolean = False): Integer;

    public
      constructor Create;
      destructor Destroy; override;

      function IndexOfColourCode(const RCode: Integer): Integer;
      function IndexOfColourName(const RName: string): Integer;
      procedure Add(Colour: TDATColour);
      procedure Sort(Reverse: Boolean = False);
      procedure Clear;

      property SortTerm: TDATColourSortTerm read FSortTerm write FSortTerm;
      property Colour[idx: Integer]: TDATColour read GetColour write SetColour; default;
      property Count:Integer read GetCount;
  end;

implementation

uses
  Classes, SysUtils;
// Color Compare Fuctions for sorting

function CompareCode(const Code1, Code2: Integer): Integer;

begin
  Result := 0;

  if Code1 < Code2 then
    Result := -1
  else if Code2 < Code1 then
    Result := 1;
end;

function CompareName(const Name1, Name2: string): Integer;

begin
  Result := CompareText(Name1, Name2);
end;

function CompareMainColor(const Color1, Color2: Integer): Integer;

begin
  Result := 0;

  if Color1 < Color2 then
    Result := 1
  else if Color2 < Color1 then
    Result := -1;
end;

{TDATColourList}

procedure TDATColourList.Add(Colour: TDATColour);
// if color code of passed color is not already in the collection
// then color is added, otherwise do nothing
var
  i: Integer;

begin
  if FColorCollection.Count > 0 then
    for i := 0 to FColorCollection.Count - 1 do
      if ((FColorCollection[i] as TDATColour).Code = Colour.Code) or
         ((FColorCollection[i] as TDATColour).ColourName = Colour.ColourName) then
         Exit;
  FColorCollection.Add(Colour);
  Sort;
end;

procedure TDATColourList.Clear;
begin
  FColorCollection.Clear;
end;

function TDATColourList.Compare(Color1, Color2: TDATColour; Reverse: Boolean): Integer;
begin
  case FSortTerm of
    csCode: Result := CompareCode(Color1.Code, Color2.Code);
    csColourName: Result := CompareName(Color1.ColourName, Color2.ColourName);
    csMainColour: Result := CompareMainColor(Color1.MainColour, Color2.MainColour);
    else Result := 0;
  end;
  if Reverse then Result := -Result;
end;

constructor TDATColourList.Create;
begin
  inherited;
  FColorCollection := TObjectList.Create;
  FSortTerm := csCode;
end;

destructor TDATColourList.Destroy;
begin
  FColorCollection.Free;
  inherited;
end;

procedure TDATColourList.DoSort(Start, Finish: Integer; Reverse: Boolean);
var
  i, j: Integer;
  Color1: TDATColour;

begin
  repeat
    i := Start;
    j := Finish;

    Color1 := Colour[(Start + Finish) shr 1];
    repeat
      while Compare(Colour[i], Color1, Reverse) < 0 do
        Inc(i);
      while Compare(Colour[j], Color1, Reverse) > 0 do
        Dec(j);
      if i <= j then
      begin
        FColorCollection.Exchange(i,j);
        Inc(i);
        Dec(j);
      end;
    until i > j;
    if Start < j then
      DoSort(Start, j, Reverse);
    Start := i;
  until i >= Finish;
end;

function TDATColourList.GetColour(Idx: Integer): TDATColour;
begin
  if (FColorCollection.Count > 0) and
     (Idx <= FColorCollection.Count - 1) then
    Result := (FColorCollection[Idx] as TDATColour)
  else
    Result := nil;
end;

function TDATColourList.GetCount: Integer;
begin
  Result := FColorCollection.Count;
end;

function TDATColourList.IndexOfColourCode(const RCode: Integer): Integer;

var
  i: Integer;

begin
  Result := -1;
  for i := 0 to FColorCollection.Count - 1 do
    if ((FColorCollection[i] as TDATColour).Code = RCode) then
      Result := i;
end;

function TDATColourList.IndexOfColourName(const RName: string): Integer;

var
  i: Integer;

begin
  Result := -1;
  for i := 0 to FColorCollection.Count - 1 do
    if ((FColorCollection[i] as TDATColour).ColourName = RName) then
      Result := i;
end;

procedure TDATColourList.SetColour(Idx: Integer; Value: TDATColour);
var
  TempColor: TObject;

begin
  if (FColorCollection.Count > 0) and
     (Idx <= FColorCollection.Count - 1) and
     (IndexOfColourCode(Value.Code) < 0) and
     (IndexOfColourName(Value.ColourName) < 0) then
  begin
    TempColor := FColorCollection[Idx];
    FColorCollection[Idx] := Value;
    if Assigned(TempColor) then
      TempColor.Free;
  end;
end;

procedure TDATColourList.Sort(Reverse: Boolean = False);
begin
  DoSort(0, Count-1, Reverse);
end;

{ TDATColour }

constructor TDATColour.Create;
begin
  inherited;
  FLineType := ltComment;
end;

function TDATColour.GetDATString: string;
begin
  // Returns empty string for now
  Result := '';
end;

procedure TDATColour.ProcessDATLine(strText: string);
begin
 // Blank for now
end;

end.
