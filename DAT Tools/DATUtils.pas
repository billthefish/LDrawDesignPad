{These sources are copyright (C) 2003-2008 Orion Pobursky.

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
unit DATUtils;

interface

uses
  DATModel, DATBase, Graphics;

function CheckSamePoint(const p1,p2: TDATPoint): Boolean;
function StrToDAT(strLine: string): TDATType;
function CreateDATModel(const PAcc, RAcc: Integer): TDATModel;
function PositionFromMatrix(const DMatrix: TDATMatrix): TDATPoint;
function RotationMatrixFromMatrix(const DMatrix: TDATMatrix): TDATRotationMatrix;
function DATPoint(const X,Y,Z: Extended): TDATPoint;
function DATMatrix(const M11,M12,M13,M14,
                   M21,M22,M23,M24,
                   M31,M32,M33,M34,
                   M41,M42,M43,M44: Extended): TDATMatrix;
function DATRotationMatrix(const M11,M12,M13,
                           M21,M22,M23,
                           M31,M32,M33: Extended): TDATRotationMatrix;
function DATColour(const Code: Integer; const Name: string;
                   const MainColor, EdgeColor: TColor;
                   const Alpha: Byte = 0;
                   const Luminance: Byte = 0;
                   const Finish: TDATFinish = finNone;
                   const MaterialParams: string = ''): TDATColour;
function CheckIdentPoints(const points1, points2: array of TDATPoint): Boolean;
function BGRtoRGB(clr: TColor): TColor;
function MakeStandardDATColourList: TDATColourList;

implementation

uses
  SysUtils, Classes;

function CheckSamePoint(const p1,p2: TDATPoint): Boolean;
begin
  Result := (p1[1] = p2[1]) and (p1[2] = p2[2]) and (p1[3] = p2[3]);
end;

function StrToDAT(strLine: string): TDATType;

var
  strCurrentLine: string;

begin
  strCurrentLine := Trim(strLine);

  if (strCurrentLine = '') or (strCurrentLine = #13#10) or
     (strCurrentLine = #13) or (strCurrentLine = #10) or
     (strCurrentLine = #10#13) then
    Result := TDATBlankLine.Create
  else
    if (Length(strCurrentLine) > 1) and
       (strCurrentLine[2] = ' ') then
      case strCurrentLine[1] of
        '0': Result := TDATComment.Create;
        '1': Result := TDATSubPart.Create;
        '2': Result := TDATLine.Create;
        '3': Result := TDATTriangle.Create;
        '4': Result := TDATQuad.Create;
        '5': Result := TDATOpLine.Create;
      else Result := TDATInvalidLine.Create;
    end
    else
      Result := TDATInvalidLine.Create;
  try
    Result.DATString := strLine;
  except
    Result.Free;
    Result := TDATInvalidLine.Create;
    Result.DATString := strLine;
  end;
end;

function BGRtoRGB(clr: TColor): TColor;

var
  sr: string;

begin
  sr := IntToHex(ColortoRGB(clr),6);
  Result := strtoint('$' + Copy(sr,5,2) + Copy(sr,3,2) + Copy(sr,1,2));
end;

function MakeStandardDATColourList: TDATColourList;
var
  LDConfig, TempList: TStringList;
  TempColor: TDATColour;
  i, j, dithercode: Integer;
  color1, color2: Integer;
  dcolor: string;

begin
  Result := TDATColourList.Create;
  if FileExists(LDrawBasePath + 'ldconfig.ldr') then
  begin
    LDConfig := TStringList.Create;
    TempList:= TStringList.Create;
    try
      LDConfig.LoadFromFile(LDrawBasePath + 'ldconfig.ldr');
      for i := 0 to 511 do
        Result.Add(DATColour(i, 'Color' + IntToStr(i), 0, 0));

      // We have to do 2 passes through LDConfig since edge colors can reference
      // a main color by color code

      // Pass 1
      for i := 0 to LDConfig.Count - 1 do
        if pos('0 !COLOUR', LDConfig[i]) > 0 then
        begin
          TempList.Clear;
          ExtractStrings([#9,#32], [#9,#32], PChar(Trim(LDConfig[i])), TempList);
          if (TempList[0] = '0') and (TempList[1] = '!COLOUR') and
             (TempList[3] = 'CODE') and (TempList[5] = 'VALUE') and
             (TempList[7] = 'EDGE') then
          begin
            TempColor := Result[Result.IndexOfColourCode(StrToInt(TempList[4]))];
            TempColor.MainColor := BGRtoRGB(StringToColor(StringReplace(TempList[6], '#', '$', [rfReplaceAll])));
            TempColor.Name := TempList[2];
            Result[Result.IndexOfColourCode(StrToInt(TempList[4]))] := TempColor;
          end;
        end;
      // Pass 2
      for i := 0 to LDConfig.Count - 1 do
        if pos('0 !COLOUR', LDConfig[i]) > 0 then
        begin
          ExtractStrings([#9,#32], [#9,#32], PChar(Trim(LDConfig[i])), TempList);
          if (TempList[0] = '0') and (TempList[1] = '!COLOUR') and
             (TempList[3] = 'CODE') and (TempList[5] = 'VALUE') and
             (TempList[7] = 'EDGE') then
          begin
            if pos(TempList[8], '#') > 0 then
            begin
              TempColor := Result[Result.IndexOfColourCode(StrToInt(TempList[4]))];
              TempColor.EdgeColor := BGRtoRGB(StringToColor(StringReplace(TempList[6], '#', '$', [rfReplaceAll])));
              Result[Result.IndexOfColourCode(StrToInt(TempList[4]))] := TempColor;
            end
            else
            begin
              TempColor := Result[Result.IndexOfColourCode(StrToInt(TempList[4]))];
              TempColor.EdgeColor := Result[Result.IndexOfColourCode(StrToInt(TempList[8]))].MainColor;
              Result[Result.IndexOfColourCode(StrToInt(TempList[4]))] := TempColor;
            end;
          end;
        end;
      // Finally pass through the result to generate standard dithered colors
      for i := 0 to 15 do
        for j := 0 to 15 do
        begin
          dithercode := i + j * 16 + 256;
          if Result[Result.IndexOfColourCode(dithercode)].Name =
               'Color' + IntToStr(dithercode) then
          begin
            TempColor := Result[Result.IndexOfColourCode(dithercode)];
            color1 := ColorToRGB(Result[Result.IndexOfColourCode(i)].MainColor);
            color2 := ColorToRGB(Result[Result.IndexOfColourCode(j)].MainColor);
            dcolor := IntToHex((Color1 + Color2) div 2, 6);
            TempColor.MainColor :=
              StringToColor('$' + dcolor);
            TempColor.EdgeColor :=
              Result[Result.IndexOfColourCode(i)].MainColor;
            TempColor.Name :=
              Result[Result.IndexOfColourCode(i)].Name + ' - ' +
              Result[Result.IndexOfColourCode(j)].Name;
            Result[Result.IndexOfColourCode(dithercode)] := TempColor;
          end;

        end;

    finally
      TempList.Free;
      LDConfig.Free;
    end;
  end;
end;

function CreateDATModel(const PAcc, RAcc: Integer): TDATModel;

begin
  Result := TDATModel.Create;
  Result.RotationDecimalPlaces := RAcc;
  Result.PositionDecimalPlaces := PAcc;
end;

function PositionFromMatrix(const DMatrix: TDATMatrix): TDATPoint;

begin
  Result[1] := DMatrix[1,4];
  Result[2] := DMatrix[2,4];
  Result[3] := DMatrix[3,4];
end;

function RotationMatrixFromMatrix(const DMatrix: TDATMatrix): TDATRotationMatrix;
begin
  Result[1,1] := DMatrix[1,1];
  Result[1,2] := DMatrix[1,2];
  Result[1,3] := DMatrix[1,3];
  Result[2,1] := DMatrix[2,1];
  Result[2,2] := DMatrix[2,2];
  Result[2,3] := DMatrix[2,3];
  Result[3,1] := DMatrix[3,1];
  Result[3,2] := DMatrix[3,2];
  Result[3,3] := DMatrix[3,3];
end;

function DATPoint(const X,Y,Z: Extended): TDATPoint;
begin
  Result[1] := X;
  Result[2] := Y;
  Result[3] := Z;
end;

function DATMatrix(const M11,M12,M13,M14,
                         M21,M22,M23,M24,
                         M31,M32,M33,M34,
                         M41,M42,M43,M44: Extended): TDATMatrix;
begin
  Result[1,1] := M11;
  Result[1,2] := M12;
  Result[1,3] := M13;
  Result[1,4] := M14;
  Result[2,1] := M21;
  Result[2,2] := M22;
  Result[2,3] := M23;
  Result[2,4] := M24;
  Result[3,1] := M31;
  Result[3,2] := M32;
  Result[3,3] := M33;
  Result[3,4] := M34;
  Result[4,1] := M41;
  Result[4,2] := M42;
  Result[4,3] := M43;
  Result[4,4] := M44;
end;

function DATRotationMatrix(const M11,M12,M13,
                                 M21,M22,M23,
                                 M31,M32,M33: Extended): TDATRotationMatrix;
begin
  Result[1,1] := M11;
  Result[1,2] := M12;
  Result[1,3] := M13;
  Result[2,1] := M21;
  Result[2,2] := M22;
  Result[2,3] := M23;
  Result[3,1] := M31;
  Result[3,2] := M32;
  Result[3,3] := M33;
end;

function DATColour(const Code: Integer; const Name: string;
                   const MainColor, EdgeColor: TColor;
                   const Alpha: Byte = 0;
                   const Luminance: Byte = 0;
                   const Finish: TDATFinish = finNone;
                   const MaterialParams: string = ''): TDATColour;
begin
  Result.Code := Code;
  Result.Name := Name;
  Result.MainColor := MainColor;
  Result.EdgeColor := EdgeColor;
  Result.Alpha := Alpha;
  Result.Luminance := Luminance;
  Result.Finish := Finish;
  Result.MaterialParams := MaterialParams;
end;

function CheckIdentPoints(const points1, points2: array of TDATPoint): Boolean;

var
  i,j, samecount, numpoints: Integer;
  samepoints: set of 1..4;

begin
  samecount := 0;
  samepoints := [];
  numpoints := Length(points1);

  if numpoints = Length(points2) then
  begin
    for i := 0 to numpoints - 1 do
      for j := 0 to numpoints - 1 do
        if (CheckSamePoint(points1[i], points2[j])) and
           (not (j in samepoints)) then
        begin
          inc(samecount);
          samepoints := samepoints + [j];
          Break;
        end;
    Result := (samecount = numpoints);
  end
  else
    Result := false;
end;

end.
