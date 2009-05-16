{These sources are copyright (C) 2003-2009 Orion Pobursky.

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
