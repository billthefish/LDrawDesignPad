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
unit DATBase;

interface

uses
  SysUtils,
  Classes,
  Math,
  Graphics,
  Contnrs;

type
//  EInvalidDATLine = class(Exception);

  (* These types allow passing of fixed arrays between procedures
     instead of varible length arrays *)
  TDATPoint = array[1..3] of Extended;
  TDATMatrix = array[1..4,1..4] of Extended;
  TDATRotationMatrix = array[1..3,1..3] of Extended;

  // For operations involving axis
  TDATAxis = (axisX = 1, axisY = 2, axisZ = 3);

  // List of DAT file types, the first 5 are official
  TDATFileType = (ftPart, ftSubpart, ftPrimitive, ft48Primitve,
                  ftShortcut, ftModel, ftSubmodel);

  //License Type
  TDATLicenseType = (ltCA, ltNonCA);
                  
(*
  The general structure of the DAT Classes is:

                        TDATType---
                         /   \     \
                        /     \     TDATInvalidLine
           TDATComment--       \
                      /       TDATElement
     TDATBlankLine----         /   \
                              /     \
                TDATSubPart---       \
                                    TDATGeometric
                                      /      \
                                     /        \
                              TDATPolygon      ----TDATLine
                                /   \          \
                               /     \          ----TDATOpLine
               TDATTriangle---        ---TDATQuad
*)
  TDATType=class(TPersistent)
    private
      strLine: string;

    protected
      intLineType: Byte;
      function GetDATString:string; virtual;
      procedure ProcessDATLine(strText:string); virtual;

    public
      constructor Create; virtual;

      (* Returns the linetype of the object *)
      property LineType: Byte read intLineType;

      (* Get or set a properly formatted DAT text line that represents
         the DAT Object's values *)
      property DATString: string read GetDATString write ProcessDATLine;
  end;

  TDATInvalidLine = TDATType;

  (* Represents LineType 0 *)
  TDATComment=class(TDATType)
    private
      strComment: string;

    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      (* Get or Set the Comment portion of the DAT text*)
      property Comment: string read strComment write strComment;
  end;

  (* Used as a place holder for a blank line (#13#10) *)
  TDATBlankLine=class(TDATType)
    protected
      function GetDATString:string; override;
  end;

  TDATFinish = (finNone, finChrome, finPearlescent, finRubber, finMatteMettalic, finMetal);

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

  TDATElement=class(TDATType)
    private
      intColor: Integer;

    protected
      PntAcc, RotAcc: ShortInt;
      FDATMatrix: TDATMatrix;
      function GetCoordinate(Index: Integer): Extended;
      procedure SetCoordinate(Index: Integer; Value: Extended);
      function GetMatrixVal(idx1,idx2: Integer): Extended;
      procedure SetMatrixVal(idx1,idx2: Integer; Value: Extended);

    public
      constructor Create; override;

      (* Use this property to get or set the matrix (Linetype 1) or
         all points (Linetypes 2-5) in one go using a TDATMatrix type *)
      property Matrix: TDATMatrix read FDATMatrix write FDATMatrix;

      (* Use this property to set individual numbers in the matrix (Linetype 1)
         or point set (Linetypes 2-5) *)
      property MatrixVals[idx1,idx2: Integer]: Extended read GetMatrixVal write SetMatrixVal;

      (* Multiply the current Object by the given Matrix *)
      procedure Transform(M: TDATMatrix;
                            Reverse: Boolean = false); overload; virtual; abstract;
      (* Translate the current Object by x,y,z*)
      procedure Translate(x,y,z: Extended);

      (* Rotate the current Object by w around the vector [x,y,z,1] *)
      procedure Rotate(w,x,y,z: Extended);

    published
      property Color: Integer read intColor write intColor default 0;
      property RotationDecimalPlaces: ShortInt read RotAcc write RotAcc default 15;
      property PositionDecimalPlaces: ShortInt read PntAcc write PntAcc default 15;
  end;

  TDATSubPart=class(TDATElement)
    private
      strSubPartFile: string;
      strFileExt: string;
      procedure SetSubPartFile(strSP: string);
      function GetFileName: string;
      function GetPosition: TDATPoint;
      procedure SetPosition(posit: TDATPoint);
      function GetRotationMatrix: TDATRotationMatrix;
      procedure SetRotationMatrix(rotmat: TDATRotationMatrix);
      function M4Multiply(M1,M2:TDATMatrix): TDATMatrix;

    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;
      property Position: TDATPoint read GetPosition write SetPosition;

      (* The file reference plus extention *)
      property FileName: string read GetFileName write SetSubPartFile;
      (* The file reference without extention *)
      property SubPart: string read strSubPartFile write SetSubPartFile;

      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); overload; override;

      (* Format for the array fed to this fuction is:
          [x,y,z,rm11,rm12,rm13,rm21,rm22,rm23,rm31,rm32,rm33] *)
      procedure Transform(M: array of Extended;
                            Reverse: Boolean = false); overload;

      property RotationMatrix: TDATRotationMatrix read GetRotationMatrix write SetRotationMatrix;
      property X: Extended index 13 read GetCoordinate write SetCoordinate;
      property Y: Extended index 14 read GetCoordinate write SetCoordinate;
      property Z: Extended index 15 read GetCoordinate write SetCoordinate;
  end;


  TDATGeometric=class(TDATElement)
    protected
      function GetPoint(idx: Integer): TDATPoint;
      procedure SetPoint(idx: Integer; Value: TDATPoint);
      function GetExtremeValue(Index: Integer): Extended;
      function GetCenterValue(Index: Integer): Extended;

    public
      (* Use this property to get or set the individual points of the Line,
         Triangle, Quad or Optional Line as a TDATPoint type.  To set individual
         values (e.g. x1 only) use the RM property *)
      property Point[idx: Integer]: TDATPoint read GetPoint write SetPoint;
      property MaxX: Extended index 1 read GetExtremeValue;
      property MinX: Extended index 2 read GetExtremeValue;
      property MaxY: Extended index 3 read GetExtremeValue;
      property MinY: Extended index 4 read GetExtremeValue;
      property MaxZ: Extended index 5 read GetExtremeValue;
      property MinZ: Extended index 6 read GetExtremeValue;
      property CenterX: Extended index 1 read GetCenterValue;
      property CenterY: Extended index 2 read GetCenterValue;
      property CenterZ: Extended index 3 read GetCenterValue;

      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); override;
  end;

  TDATLine=class(TDATGeometric)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Extended index 1 read GetCoordinate write SetCoordinate;
      property y1: Extended index 2 read GetCoordinate write SetCoordinate;
      property z1: Extended index 3 read GetCoordinate write SetCoordinate;
      property x2: Extended index 4 read GetCoordinate write SetCoordinate;
      property y2: Extended index 5 read GetCoordinate write SetCoordinate;
      property z2: Extended index 6 read GetCoordinate write SetCoordinate;
  end;

  TDATOpLine=class(TDATGeometric)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Extended index 1 read GetCoordinate write SetCoordinate;
      property y1: Extended index 2 read GetCoordinate write SetCoordinate;
      property z1: Extended index 3 read GetCoordinate write SetCoordinate;
      property x2: Extended index 4 read GetCoordinate write SetCoordinate;
      property y2: Extended index 5 read GetCoordinate write SetCoordinate;
      property z2: Extended index 6 read GetCoordinate write SetCoordinate;
      property x3: Extended index 7 read GetCoordinate write SetCoordinate;
      property y3: Extended index 8 read GetCoordinate write SetCoordinate;
      property z3: Extended index 9 read GetCoordinate write SetCoordinate;
      property x4: Extended index 10 read GetCoordinate write SetCoordinate;
      property y4: Extended index 11 read GetCoordinate write SetCoordinate;
      property z4: Extended index 12 read GetCoordinate write SetCoordinate;
  end;

  TDATPolygon=class(TDATGeometric)
    public
      procedure ReverseWinding;
  end;

  TDATTriangle=class(TDATPolygon)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Extended index 1 read GetCoordinate write SetCoordinate;
      property y1: Extended index 2 read GetCoordinate write SetCoordinate;
      property z1: Extended index 3 read GetCoordinate write SetCoordinate;
      property x2: Extended index 4 read GetCoordinate write SetCoordinate;
      property y2: Extended index 5 read GetCoordinate write SetCoordinate;
      property z2: Extended index 6 read GetCoordinate write SetCoordinate;
      property x3: Extended index 7 read GetCoordinate write SetCoordinate;
      property y3: Extended index 8 read GetCoordinate write SetCoordinate;
      property z3: Extended index 9 read GetCoordinate write SetCoordinate;

  end;

  TDATQuad=class(TDATPolygon)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Extended index 1 read GetCoordinate write SetCoordinate;
      property y1: Extended index 2 read GetCoordinate write SetCoordinate;
      property z1: Extended index 3 read GetCoordinate write SetCoordinate;
      property x2: Extended index 4 read GetCoordinate write SetCoordinate;
      property y2: Extended index 5 read GetCoordinate write SetCoordinate;
      property z2: Extended index 6 read GetCoordinate write SetCoordinate;
      property x3: Extended index 7 read GetCoordinate write SetCoordinate;
      property y3: Extended index 8 read GetCoordinate write SetCoordinate;
      property z3: Extended index 9 read GetCoordinate write SetCoordinate;
      property x4: Extended index 10 read GetCoordinate write SetCoordinate;
      property y4: Extended index 11 read GetCoordinate write SetCoordinate;
      property z4: Extended index 12 read GetCoordinate write SetCoordinate;
  end;

var
  LDrawBasePath: string = 'C:\Lego\LDRAW\';

const
  FDATIdentityMatrix: TDATMatrix = ((1,0,0,0),
                                    (0,1,0,0),
                                    (0,0,1,0),
                                    (0,0,0,1));

  FDATIdentityRotationMatrix: TDATRotationMatrix = ((1,0,0),
                                                    (0,1,0),
                                                    (0,0,1));

  FDATOriginPoint: TDATPoint = (0,0,0);

implementation

{TDATType}

constructor TDATType.Create;

begin
  inherited Create;
end;

function TDATType.GetDATString: string;

begin
  Result := strLine;
end;

procedure TDATType.ProcessDATLine(strText:string);
begin
  strLine := strText;
end;

{TDATComment}

procedure TDATComment.ProcessDATLine(strText:string);
begin
  strText := Trim(strText);
  if strText <> ''  then
    if ((strText[1] = '0') and (Length(strText) > 1)) then
      strComment := Trim(Copy(strText,2,Length(strText)))
    else
      strComment := '';
  intLineType := 0;
end;

constructor TDATComment.Create;
begin
  inherited Create;
  intLineType := 0;
end;

function TDATComment.GetDATString:string;
begin
  result := '0 ' + strComment;
end;

{TDATBlankLine}

function TDATBlankLine.GetDATString: string;

begin
  Result := '';
end;

{TDATElement}

constructor TDATElement.Create;
begin
  inherited Create;
  intColor := 0;
  PntAcc := 15;
  RotAcc := 15;
  FDATMatrix[4,4] := 1;
end;

function TDATElement.GetMatrixVal(idx1,idx2: Integer): Extended;
begin
  Result := FDATMatrix[idx1,idx2];
end;

procedure TDATElement.SetMatrixVal(idx1,idx2: Integer; Value: Extended);
begin
  FDATMatrix[idx1,idx2] := Value;
end;

function TDATElement.GetCoordinate(Index: Integer): Extended;

begin
  case Index of
    1: Result := FDATMatrix[1,1];
    2: Result := FDATMatrix[1,2];
    3: Result := FDATMatrix[1,3];
    4: Result := FDATMatrix[2,1];
    5: Result := FDATMatrix[2,2];
    6: Result := FDATMatrix[2,3];
    7: Result := FDATMatrix[3,1];
    8: Result := FDATMatrix[3,2];
    9: Result := FDATMatrix[3,3];
    10: Result := FDATMatrix[4,1];
    11: Result := FDATMatrix[4,2];
    12: Result := FDATMatrix[4,3];
    13: Result := FDATMatrix[1,4];
    14: Result := FDATMatrix[2,4];
    15: Result := FDATMatrix[3,4];
    else Result:=0;
  end
end;

procedure TDATElement.SetCoordinate(Index: Integer; Value: Extended);

begin
  case Index of
    1: FDATMatrix[1,1] := Value;
    2: FDATMatrix[1,2] := Value;
    3: FDATMatrix[1,3] := Value;
    4: FDATMatrix[2,1] := Value;
    5: FDATMatrix[2,2] := Value;
    6: FDATMatrix[2,3] := Value;
    7: FDATMatrix[3,1] := Value;
    8: FDATMatrix[3,2] := Value;
    9: FDATMatrix[3,3] := Value;
    10: FDATMatrix[4,1] := Value;
    11: FDATMatrix[4,2] := Value;
    12: FDATMatrix[4,3] := Value;
    13: FDATMatrix[1,4] := Value;
    14: FDATMatrix[2,4] := Value;
    15: FDATMatrix[3,4] := Value;
  end;
end;

procedure TDATElement.Translate(x,y,z: Extended);

var
  R: TDATMatrix;

begin
  R := FDATIdentityMatrix;

  R[1,4] := x;
  R[2,4] := y;
  R[3,4] := z;

  Transform(R);

end;

procedure TDATElement.Rotate(w,x,y,z: Extended);

var
 R: TDATMatrix;
 t: Extended;

begin
  R := FDATIdentityMatrix;

  t := DegToRad(w) / 2;
  w := Sqrt(x * x + y * y + z * z);
  x := (x / w) * Sin(t);
  y := (y / w) * Sin(t);
  z := (z / w) * Sin(t);
  w := Cos(t);

  R[1,1] := 1 - 2 * (y * y + z * z);
  R[1,2] := 2 * (x * y + w * z);
  R[1,3] := 2 * (x * z - w * y);

  R[2,1] := 2 * (x * y - w * z);
  R[2,2] := 1 - 2 * (x * x + z * z);
  R[2,3] := 2 * (y * z + w * x);

  R[3,1] := 2 * (x * z + w * y);
  R[3,2] := 2 * (y * z - w * x);
  R[3,3] := 1 - 2 * (x * x + y * y);

  Transform(R);

end;

function TDATSubPart.M4Multiply(M1,M2:TDATMatrix): TDATMatrix;

var
  i,j: Byte;

begin
  for i:= 1 to 4 do
    for j:= 1 to 4 do
      Result[i,j] := M1[i,1] * M2[1,j] +
                     M1[i,2] * M2[2,j] +
                     M1[i,3] * M2[3,j] +
                     M1[i,4] * M2[4,j];
end;

procedure TDATSubPart.Transform(M: TDATMatrix; Reverse: Boolean = false);

begin
  if Reverse then
    FDATMatrix := M4Multiply(FDATMatrix, M)
  else
    FDATMatrix := M4Multiply(M, FDATMatrix);
end;

procedure TDATSubPart.Transform(M: array of Extended; Reverse: Boolean = false);

var
  M1: TDATMatrix;

begin
  M1[1,1] := M[3];
  M1[1,2] := M[4];
  M1[1,3] := M[5];
  M1[1,4] := M[0];

  M1[2,1] := M[6];
  M1[2,2] := M[7];
  M1[2,3] := M[8];
  M1[2,4] := M[1];

  M1[3,1] := M[9];
  M1[3,2] := M[10];
  M1[3,3] := M[11];
  M1[3,4] := M[2];

  M1[4,1] := 0;
  M1[4,2] := 0;
  M1[4,3] := 0;
  M1[4,4] := 1;
  Transform(M1,Reverse);
end;

constructor TDATSubPart.Create;

begin
  inherited Create;
  intLineType := 1;
  Matrix := FDATIdentityMatrix;
  FileName := 'dummy.dat'
end;

procedure TDATSubPart.SetPosition(posit:TDATPoint);

begin
  FDATMatrix[1,4] := posit[1];
  FDATMatrix[2,4] := posit[2];
  FDATMatrix[3,4] := posit[3];
end;

function TDATSubPart.GetPosition: TDATPoint;

begin
  result[1] := FDATMatrix[1,4];
  result[2] := FDATMatrix[2,4];
  result[3] := FDATMatrix[3,4];
end;

function TDATSubPart.GetRotationMatrix: TDATRotationMatrix;
begin
  Result[1,1] := FDATMatrix[1,1];
  Result[1,2] := FDATMatrix[1,2];
  Result[1,3] := FDATMatrix[1,3];
  Result[2,1] := FDATMatrix[2,1];
  Result[2,2] := FDATMatrix[2,2];
  Result[2,3] := FDATMatrix[2,3];
  Result[3,1] := FDATMatrix[3,1];
  Result[3,2] := FDATMatrix[3,2];
  Result[3,3] := FDATMatrix[3,3];
end;

procedure TDATSubPart.SetRotationMatrix(rotmat: TDATRotationMatrix);
begin
  FDATMatrix[1,1] := rotmat[1,1];
  FDATMatrix[1,2] := rotmat[1,2];
  FDATMatrix[1,3] := rotmat[1,3];
  FDATMatrix[2,1] := rotmat[2,1];
  FDATMatrix[2,2] := rotmat[2,2];
  FDATMatrix[2,3] := rotmat[2,3];
  FDATMatrix[3,1] := rotmat[3,1];
  FDATMatrix[3,2] := rotmat[3,2];
  FDATMatrix[3,3] := rotmat[3,3];
end;

procedure TDATSubPart.SetSubPartFile(strSP: string);
begin
  strFileExt := LowerCase(ExtractFileExt(strSP));
  if strFileExt = '' then strFileExt := '.dat';
  strSubPartFile := LowerCase(ChangeFileExt(strSP,''));
end;

function TDATSubPart.GetFileName;
begin
  Result := ChangeFileExt(strSubPartFile,strFileExt);
end;

function TDATSubPart.GetDATString:string;

var
 strSep: Char;

begin
  strSep := DecimalSeparator;

  Result := IntToStr(LineType) + ' ' +
            IntToStr(Color) + ' ' +
            FloatToStr(RoundTo(Matrix[1,4], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,4], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,4], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,1], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,2], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,3], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,1], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,2], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,3], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,1], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,2], -Abs(RotationDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,3], -Abs(RotationDecimalPlaces))) + ' ' +
            FileName;

  DecimalSeparator := strSep;
end;

procedure TDATSubPart.ProcessDATLine(strText:string);

var
  TmpMatrix: TDATRotationMatrix;
  TmpPosit: TDATPoint;
  TmpLnType, TmpColor: Integer;
  TempList: TStringList;
  TmpSubpart: string;

begin
  TempList:= TStringList.Create;
  TmpMatrix := FDATIdentityRotationMatrix;
  TmpPosit := FDATOriginPoint;

  try
    ExtractStrings([#9,#32], [#9,#32], PChar(Trim(strText)), TempList);

    try
      TmpLnType := StrToInt(TempList[0]);
      if TmpLnType = 1 then
      begin
        TmpColor := StrToInt(TempList[1]);

        TmpPosit[1] := StrToFloat(TempList[2]);
        TmpPosit[2] := StrToFloat(TempList[3]);
        TmpPosit[3] := StrToFloat(TempList[4]);

        TmpMatrix[1,1] := StrToFloat(TempList[5]);
        TmpMatrix[1,2] := StrToFloat(TempList[6]);
        TmpMatrix[1,3] := StrToFloat(TempList[7]);
        TmpMatrix[2,1] := StrToFloat(TempList[8]);
        TmpMatrix[2,2] := StrToFloat(TempList[9]);
        TmpMatrix[2,3] := StrToFloat(TempList[10]);
        TmpMatrix[3,1] := StrToFloat(TempList[11]);
        TmpMatrix[3,2] := StrToFloat(TempList[12]);
        TmpMatrix[3,3] := StrToFloat(TempList[13]);

        TmpSubpart := TempList[14];

        intLineType := TmpLnType;
        Color := TmpColor;
        RotationMatrix := TmpMatrix;
        Position := TmpPosit;
        SubPart := TmpSubpart;
      end;
    except
    end;
  finally
    TempList.Free;
  end;
end;

function TDATGeometric.GetPoint(idx: Integer): TDATPoint;
begin
  Result[1] := FDATMatrix[idx,1];
  Result[2] := FDATMatrix[idx,2];
  Result[3] := FDATMatrix[idx,3];
end;

procedure TDATGeometric.SetPoint(idx: Integer; Value: TDATPoint);
begin
  FDATMatrix[idx,1] := Value[1];
  FDATMatrix[idx,2] := Value[2];
  FDATMatrix[idx,3] := Value[3];
end;

function TDATGeometric.GetExtremeValue(Index: Integer): Extended;

var
  coord, i, j: Integer;

begin
  case Index of
    1,2: coord := 1;
    3,4: coord := 2;
    5,6: coord := 3;
    else
      coord := 1;
  end;

  j := LineType;

  if j = 5 then j := 2;

  Result := MatrixVals[1, coord];

  for i := 1 to j do
    case Index of
      1,3,5: if MatrixVals[i, coord] > Result then Result := MatrixVals[i, coord];
      2,4,6: if MatrixVals[i, coord] < Result then Result := MatrixVals[i, coord];
    end;
end;

function TDATGeometric.GetCenterValue(Index: Integer): Extended;

begin
  case LineType of
    2,5: Result := (MatrixVals[1,Index] + MatrixVals[2,Index]) / 2;
    3: Result := (MatrixVals[1,Index] + MatrixVals[2,Index] + MatrixVals[3,Index]) / 3;
    4: Result := (MatrixVals[1,Index] + MatrixVals[2,Index] + MatrixVals[3,Index] + MatrixVals[4,Index]) / 4;
    else
      result := 0;
  end;  
end;

procedure TDATGeometric.Transform(M: TDATMatrix; Reverse: Boolean = false);

var
  M1: array[1..3] of Single;
  i: Byte;

begin
  for i:= 1 to 4 do
  begin
    M1[1] := (M[1,1] * FDATMatrix[i,1]) +
             (M[1,2] * FDATMatrix[i,2]) +
             (M[1,3] * FDATMatrix[i,3]) + (M[1,4]);
    M1[2] := (M[2,1] * FDATMatrix[i,1]) +
             (M[2,2] * FDATMatrix[i,2]) +
             (M[2,3] * FDATMatrix[i,3]) + (M[2,4]);
    M1[3] := (M[3,1] * FDATMatrix[i,1]) +
             (M[3,2] * FDATMatrix[i,2]) +
             (M[3,3] * FDATMatrix[i,3]) + (M[3,4]);
    FDATMatrix[i,1] := M1[1];
    FDATMatrix[i,2] := M1[2];
    FDATMatrix[i,3] := M1[3];
  end;
end;

constructor TDATLine.Create;
begin
  inherited Create;
  intLineType := 2;
end;

function TDATLine.GetDATString:string;
begin
  Result := IntToStr(LineType) + ' ' +
            IntToStr(Color) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,3], -Abs(PositionDecimalPlaces)));
end;

procedure TDATLine.ProcessDATLine(strText:string);

var
  TmpMatrix: TDATMatrix;
  TmpLnType, TmpColor: Integer;
  TempList: TStringList;

begin
  TempList:= TStringList.Create;
  TmpMatrix := FDATIdentityMatrix;

  try
    ExtractStrings([#9,#32], [#9,#32], PChar(Trim(strText)), TempList);

    try
      TmpLnType := StrToInt(TempList[0]);
      if TmpLnType = 2 then
      begin
        TmpColor := StrToInt(TempList[1]);

        TmpMatrix[1,1] := StrToFloat(TempList[2]);
        TmpMatrix[1,2] := StrToFloat(TempList[3]);
        TmpMatrix[1,3] := StrToFloat(TempList[4]);
        TmpMatrix[2,1] := StrToFloat(TempList[5]);
        TmpMatrix[2,2] := StrToFloat(TempList[6]);
        TmpMatrix[2,3] := StrToFloat(TempList[7]);

        intLineType := TmpLnType;
        Color := TmpColor;
        Matrix := TmpMatrix;
      end;
    except
      Exit;
    end;
  finally
    TempList.Free;
  end;
end;

constructor TDATOpLine.Create;
begin
  inherited Create;
  intLineType := 5;
end;

function TDATOpLine.GetDATString:string;
begin
  Result := IntToStr(LineType) + ' ' +
            IntToStr(Color) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[4,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[4,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[4,3], -Abs(PositionDecimalPlaces)));
end;

procedure TDATOpLine.ProcessDATLine(strText:string);

var
  TmpMatrix: TDATMatrix;
  TmpLnType, TmpColor: Integer;
  TempList: TStringList;

begin
  TempList:= TStringList.Create;
  TmpMatrix := FDATIdentityMatrix;

  try
    ExtractStrings([#9,#32], [#9,#32], PChar(Trim(strText)), TempList);

    try
      TmpLnType := StrToInt(TempList[0]);
      if TmpLnType = 5 then
      begin
        TmpColor := StrToInt(TempList[1]);

        TmpMatrix[1,1] := StrToFloat(TempList[2]);
        TmpMatrix[1,2] := StrToFloat(TempList[3]);
        TmpMatrix[1,3] := StrToFloat(TempList[4]);
        TmpMatrix[2,1] := StrToFloat(TempList[5]);
        TmpMatrix[2,2] := StrToFloat(TempList[6]);
        TmpMatrix[2,3] := StrToFloat(TempList[7]);
        TmpMatrix[3,1] := StrToFloat(TempList[8]);
        TmpMatrix[3,2] := StrToFloat(TempList[9]);
        TmpMatrix[3,3] := StrToFloat(TempList[10]);
        TmpMatrix[4,1] := StrToFloat(TempList[11]);
        TmpMatrix[4,2] := StrToFloat(TempList[12]);
        TmpMatrix[4,3] := StrToFloat(TempList[13]);

        intLineType := TmpLnType;
        Color := TmpColor;
        Matrix := TmpMatrix;
      end;
    except
      Exit;
    end;
  finally
    TempList.Free;
  end;
end;

procedure TDATPolygon.ReverseWinding;

var
  tempArray: TDATMatrix;
  i,j: Integer;

begin
  j:=intLineType;
  for i := 1 to intLineType do
  begin
    tempArray[j,1] := FDATMatrix[i,1];
    tempArray[j,2] := FDATMatrix[i,2];
    tempArray[j,3] := FDATMatrix[i,3];
    dec(j);
  end;
  FDATMatrix := tempArray;
end;

constructor TDATTriangle.Create;
begin
  inherited Create;
  intLineType := 3;
end;

function TDATTriangle.GetDATString:string;
begin
  Result := IntToStr(LineType) + ' ' +
            IntToStr(Color) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,3], -Abs(PositionDecimalPlaces)));
end;

procedure TDATTriangle.ProcessDATLine(strText:string);

var
  TmpMatrix: TDATMatrix;
  TmpLnType, TmpColor: Integer;
  TempList: TStringList;

begin
  TempList:= TStringList.Create;
  TmpMatrix := FDATIdentityMatrix;

  try
    ExtractStrings([#9,#32], [#9,#32], PChar(Trim(strText)), TempList);

    try
      TmpLnType := StrToInt(TempList[0]);
      if TmpLnType = 3 then
      begin
        TmpColor := StrToInt(TempList[1]);

        TmpMatrix[1,1] := StrToFloat(TempList[2]);
        TmpMatrix[1,2] := StrToFloat(TempList[3]);
        TmpMatrix[1,3] := StrToFloat(TempList[4]);
        TmpMatrix[2,1] := StrToFloat(TempList[5]);
        TmpMatrix[2,2] := StrToFloat(TempList[6]);
        TmpMatrix[2,3] := StrToFloat(TempList[7]);
        TmpMatrix[3,1] := StrToFloat(TempList[8]);
        TmpMatrix[3,2] := StrToFloat(TempList[9]);
        TmpMatrix[3,3] := StrToFloat(TempList[10]);

        intLineType := TmpLnType;
        Color := TmpColor;
        Matrix := TmpMatrix;
      end;
    except
      Exit;
    end;
  finally
    TempList.Free;
  end;
end;

constructor TDATQuad.Create;
begin
  inherited Create;
  intLineType := 4;
end;

function TDATQuad.GetDATString:string;
begin
  Result := IntToStr(LineType) + ' ' +
            IntToStr(Color) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[1,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[2,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[3,3], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[4,1], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[4,2], -Abs(PositionDecimalPlaces))) + ' ' +
            FloatToStr(RoundTo(MatrixVals[4,3], -Abs(PositionDecimalPlaces)));
end;

procedure TDATQuad.ProcessDATLine(strText:string);

var
  TmpMatrix: TDATMatrix;
  TmpLnType, TmpColor: Integer;
  TempList: TStringList;

begin
  TempList:= TStringList.Create;
  TmpMatrix := FDATIdentityMatrix;

  try
    ExtractStrings([#9,#32], [#9,#32], PChar(Trim(strText)), TempList);

    try
      TmpLnType := StrToInt(TempList[0]);
      if TmpLnType = 4 then
      begin
        TmpColor := StrToInt(TempList[1]);

        TmpMatrix[1,1] := StrToFloat(TempList[2]);
        TmpMatrix[1,2] := StrToFloat(TempList[3]);
        TmpMatrix[1,3] := StrToFloat(TempList[4]);
        TmpMatrix[2,1] := StrToFloat(TempList[5]);
        TmpMatrix[2,2] := StrToFloat(TempList[6]);
        TmpMatrix[2,3] := StrToFloat(TempList[7]);
        TmpMatrix[3,1] := StrToFloat(TempList[8]);
        TmpMatrix[3,2] := StrToFloat(TempList[9]);
        TmpMatrix[3,3] := StrToFloat(TempList[10]);
        TmpMatrix[4,1] := StrToFloat(TempList[11]);
        TmpMatrix[4,2] := StrToFloat(TempList[12]);
        TmpMatrix[4,3] := StrToFloat(TempList[13]);

        intLineType := TmpLnType;
        Color := TmpColor;
        Matrix := TmpMatrix;
      end;
    except
      Exit;
    end;
  finally
    TempList.Free;
  end;
end;

{ TDATColourList }

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

initialization
  {Some locales use "," as the decimal separator
   This changes the decimal separtor to "." as required by the LDraw spec
   without changing the master settings. }
  DecimalSeparator := '.';

finalization
// Nothing

end.
