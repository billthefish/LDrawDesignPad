unit DATColour;

interface

uses
  Graphics;

type
  TDATFinish = (finNone, finChrome, finPearlescent, finRubber, finMatteMetallic, finMetal);

  (* Represents the !COLOUR Meta Command *)
  TDATColour=record
      Name: string;
      Code: Integer;
      MainColor, EdgeColor: TColor;
      Alpha: Byte;
      Luminance: Byte;
      Finish: TDATFinish;
      MaterialParams: string;
  end;

  TDATColourList = class(TObject)
    private
      FColorCollection: array of TDATColour;
      procedure SetColour(Idx: Integer; Value: TDATColour);
      function GetColour(Idx: Integer): TDATColour;
      function GetCount: Integer;

    public
      function IndexOfColourCode(Code: Integer): Integer;
      function IndexOfColourName(Name: string): Integer;
      procedure Add(Colour: TDATColour); overload;
      procedure Clear;

      property Colour[idx: Integer]: TDATColour read GetColour write SetColour; default;
      property Count:Integer read GetCount;
  end;

implementation

procedure TDATColourList.Add(Colour: TDATColour);
// if color code of passed color is not already in the collection
// then color is added, otherwise do nothing
var
  i: Integer;

begin
  if Length(FColorCollection) > 0 then
    for i := 0 to Length(FColorCollection) - 1 do
      if (FColorCollection[i].Code = Colour.Code) or
         (FColorCollection[i].Name = Colour.Name) then
         Exit;
  SetLength(FColorCollection, Length(FColorCollection) + 1);
  FColorCollection[High(FColorCollection)] := Colour;
end;

procedure TDATColourList.Clear;
begin
  SetLength(FColorCollection, 0);
end;

function TDATColourList.GetColour(Idx: Integer): TDATColour;
begin
  Result.Code := -1;
  Result.Name := '';
  if (Length(FColorCollection) > 0) and
     (Idx >= 0) and
     (Idx <= High(FColorCollection)) then
    Result := FColorCollection[Idx];

end;

function TDATColourList.GetCount: Integer;
begin
  Result := Length(FColorCollection);
end;

function TDATColourList.IndexOfColourCode(Code: Integer): Integer;

var
  i: Integer;

begin
  Result := -1;
  if Length(FColorCollection) > 0 then
    for i := 0 to Length(FColorCollection) - 1 do
      if (FColorCollection[i].Code = Code) then
        Result := i;
end;

function TDATColourList.IndexOfColourName(Name: string): Integer;

var
  i: Integer;

begin
  Result := -1;
  if Length(FColorCollection) > 0 then
    for i := 0 to Length(FColorCollection) - 1 do
      if (FColorCollection[i].Name = Name) then
        Result := i;
end;

procedure TDATColourList.SetColour(Idx: Integer; Value: TDATColour);
begin
  if (Length(FColorCollection) > 0) and
     (Idx >= 0) and
     (Idx <= High(FColorCollection)) then
    FColorCollection[Idx] := Value;
end;

end.
