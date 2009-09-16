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
unit DATBase;

interface

uses
  Classes, SysUtils;

type
  EInvalidDATLine = class(Exception);

  (* These types allow passing of fixed arrays between procedures
     instead of varible length arrays *)
  TDATPoint = array[1..3] of Double;
  TDATMatrix = array[1..4,1..4] of Double;
  TDATRotationMatrix = array[1..3,1..3] of Double;

  // For operations involving axis
  TDATAxis = (axisX = 1, axisY = 2, axisZ = 3);

  // List of DAT file types, the first 5 are official
  TDATFileType = (ftPart, ftSubpart, ftPrimitive, ft48Primitve,
                  ftShortcut, ftModel, ftSubmodel);

  //License Type
  TDATLicenseType = (ltCA, ltNonCA);

  //Line Type
  TDATLineType = (ltNil = -1, ltComment = 0, ltSubpart = 1,
                  ltLine = 2, ltTriangle = 3, ltQuad = 4, ltOpLine = 5);
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
  TDATType=class(TObject)
    protected
      FLineType: TDATLineType;
      function GetDATString: string; virtual; abstract;
      procedure ProcessDATLine(strText: string); virtual; abstract;

    public
      constructor Create; virtual;

      (* Returns the linetype of the object *)
      property LineType: TDATLineType read FLineType;

      (* Get or set a properly formatted DAT text line that represents
         the DAT Object's values *)
      property DATString: string read GetDATString write ProcessDATLine;
  end;

  (* Represent a line with an error *)
  TDATInvalidLine = class(TDATType)
    protected
      FLine: string;
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;
  end;

  (* Represents LineType 0 *)
  TDATComment=class(TDATType)
    private
      FComment: string;

    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; overload; override;
      constructor Create(comment: string); reintroduce; overload;

    published
      (* Get or Set the Comment portion of the DAT text*)
      property Comment: string read FComment write FComment;
  end;

  (* Used as a place holder for a blank line (#13#10) *)
  TDATBlankLine=class(TDATType)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;
  end;

  TDATElement=class(TDATType)
    private
      FColor: Integer;

    protected
      FPntAcc, FRotAcc: ShortInt;
      FDATMatrix: TDATMatrix;
      function GetCoordinate(Index: Integer): Double;
      procedure SetCoordinate(Index: Integer; Value: Double);
      function GetMatrixVal(idx1,idx2: Integer): Double;
      procedure SetMatrixVal(idx1,idx2: Integer; Value: Double);

    public
      constructor Create; override;

      (* Use this property to get or set the matrix (Linetype 1) or
         all points (Linetypes 2-5) in one go using a TDATMatrix type *)
      property Matrix: TDATMatrix read FDATMatrix write FDATMatrix;

      (* Use this property to set individual numbers in the matrix (Linetype 1)
         or point set (Linetypes 2-5) *)
      property MatrixVals[idx1,idx2: Integer]: Double read GetMatrixVal write SetMatrixVal;

      property Color: Integer read FColor write FColor default 0;
      property RotationDecimalPlaces: ShortInt read FRotAcc write FRotAcc default 15;
      property PositionDecimalPlaces: ShortInt read FPntAcc write FPntAcc default 15;

      (* Multiply the current Object by the given Matrix *)
      procedure Transform(M: TDATMatrix;
                            Reverse: Boolean = false); virtual; abstract;
      (* Translate the current Object by x,y,z*)
      procedure Translate(x,y,z: Double);

      (* Rotate the current Object by w around the vector [x,y,z,1] *)
      procedure Rotate(w,x,y,z: Double);

      (* Mirror the part on specified axis *)
      procedure Mirror(axis: TDATAxis); virtual;
  end;

  TDATSubPart=class(TDATElement)
    private
      FSubPart: string;
      function GetPosition: TDATPoint;
      procedure SetPosition(posit: TDATPoint);
      function GetRotationMatrix: TDATRotationMatrix;
      procedure SetRotationMatrix(rotmat: TDATRotationMatrix);

    protected
      function GetDATString: string; override;
      procedure ProcessDATLine(strText: string); override;

    public
      constructor Create; override;
      property Position: TDATPoint read GetPosition write SetPosition;

      (* The file reference without extention *)
      property SubPart: string read FSubPart write FSubPart;

      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); override;

      property RotationMatrix: TDATRotationMatrix read GetRotationMatrix write SetRotationMatrix;
      property X: Double index 13 read GetCoordinate write SetCoordinate;
      property Y: Double index 14 read GetCoordinate write SetCoordinate;
      property Z: Double index 15 read GetCoordinate write SetCoordinate;

      procedure Mirror(axis: TDATAxis); override;
  end;


  TDATGeometric=class(TDATElement)
    protected
      function GetPoint(idx: Integer): TDATPoint;
      procedure SetPoint(idx: Integer; Value: TDATPoint);
      function GetExtremeValue(Index: Integer): Double;
      function GetCenterValue(Index: Integer): Double;

    public
      (* Use this property to get or set the individual points of the Line,
         Triangle, Quad or Optional Line as a TDATPoint type.  To set individual
         values (e.g. x1 only) use the RM property *)
      property Point[idx: Integer]: TDATPoint read GetPoint write SetPoint;
      property MaxX: Double index 1 read GetExtremeValue;
      property MinX: Double index 2 read GetExtremeValue;
      property MaxY: Double index 3 read GetExtremeValue;
      property MinY: Double index 4 read GetExtremeValue;
      property MaxZ: Double index 5 read GetExtremeValue;
      property MinZ: Double index 6 read GetExtremeValue;
      property CenterX: Double index 1 read GetCenterValue;
      property CenterY: Double index 2 read GetCenterValue;
      property CenterZ: Double index 3 read GetCenterValue;

      procedure Transform(M: TDATMatrix; Reverse: Boolean = false); override;
  end;

  TDATLine=class(TDATGeometric)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Double index 1 read GetCoordinate write SetCoordinate;
      property y1: Double index 2 read GetCoordinate write SetCoordinate;
      property z1: Double index 3 read GetCoordinate write SetCoordinate;
      property x2: Double index 4 read GetCoordinate write SetCoordinate;
      property y2: Double index 5 read GetCoordinate write SetCoordinate;
      property z2: Double index 6 read GetCoordinate write SetCoordinate;
  end;

  TDATOpLine=class(TDATGeometric)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Double index 1 read GetCoordinate write SetCoordinate;
      property y1: Double index 2 read GetCoordinate write SetCoordinate;
      property z1: Double index 3 read GetCoordinate write SetCoordinate;
      property x2: Double index 4 read GetCoordinate write SetCoordinate;
      property y2: Double index 5 read GetCoordinate write SetCoordinate;
      property z2: Double index 6 read GetCoordinate write SetCoordinate;
      property x3: Double index 7 read GetCoordinate write SetCoordinate;
      property y3: Double index 8 read GetCoordinate write SetCoordinate;
      property z3: Double index 9 read GetCoordinate write SetCoordinate;
      property x4: Double index 10 read GetCoordinate write SetCoordinate;
      property y4: Double index 11 read GetCoordinate write SetCoordinate;
      property z4: Double index 12 read GetCoordinate write SetCoordinate;
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
      property x1: Double index 1 read GetCoordinate write SetCoordinate;
      property y1: Double index 2 read GetCoordinate write SetCoordinate;
      property z1: Double index 3 read GetCoordinate write SetCoordinate;
      property x2: Double index 4 read GetCoordinate write SetCoordinate;
      property y2: Double index 5 read GetCoordinate write SetCoordinate;
      property z2: Double index 6 read GetCoordinate write SetCoordinate;
      property x3: Double index 7 read GetCoordinate write SetCoordinate;
      property y3: Double index 8 read GetCoordinate write SetCoordinate;
      property z3: Double index 9 read GetCoordinate write SetCoordinate;

  end;

  TDATQuad=class(TDATPolygon)
    protected
      function GetDATString:string; override;
      procedure ProcessDATLine(strText:string); override;

    public
      constructor Create; override;

    published
      property x1: Double index 1 read GetCoordinate write SetCoordinate;
      property y1: Double index 2 read GetCoordinate write SetCoordinate;
      property z1: Double index 3 read GetCoordinate write SetCoordinate;
      property x2: Double index 4 read GetCoordinate write SetCoordinate;
      property y2: Double index 5 read GetCoordinate write SetCoordinate;
      property z2: Double index 6 read GetCoordinate write SetCoordinate;
      property x3: Double index 7 read GetCoordinate write SetCoordinate;
      property y3: Double index 8 read GetCoordinate write SetCoordinate;
      property z3: Double index 9 read GetCoordinate write SetCoordinate;
      property x4: Double index 10 read GetCoordinate write SetCoordinate;
      property y4: Double index 11 read GetCoordinate write SetCoordinate;
      property z4: Double index 12 read GetCoordinate write SetCoordinate;
  end;

var
  LDrawBasePath: string = 'C:\Lego\LDRAW';

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

uses
  Math, DATMath, DATUtils;

{TDATType}

constructor TDATType.Create();

begin
  inherited Create;
  FLineType := ltNil;
end;

{TDATComment}

procedure TDATComment.ProcessDATLine(strText: string);
begin
  strText := Trim(strText);
  if strText <> ''  then
    if ((strText[1] = '0') and (Length(strText) > 1)) then
      FComment := Trim(Copy(strText,2,Length(strText)))
    else
      FComment := '';
end;

constructor TDATComment.Create();
begin
  inherited Create;
  FLineType := ltComment;
end;

constructor TDATComment.Create(comment: string);
begin
  Create;
  FComment := Trim(comment);
end;

function TDATComment.GetDATString: string;
begin
  Result := '0 ' + FComment;
end;

{TDATInvalidLine}
procedure TDATInvalidLine.ProcessDATLine(strText: string);
begin
  Fline := strText;
end;

function TDATInvalidLine.GetDATString: string;
begin
  Result := FLine;
end;

{TDATBlankLine}

function TDATBlankLine.GetDATString: string;

begin
  Result := '';
end;

procedure TDATBlankLine.ProcessDATLine(strText: string);
begin
// do nothing
end;

{TDATElement}

constructor TDATElement.Create;
begin
  inherited Create;
  FColor := 0;
  FPntAcc := 15;
  FRotAcc := 15;
  FDATMatrix[4,4] := 1;
end;

function TDATElement.GetMatrixVal(idx1,idx2: Integer): Double;
begin
  Result := FDATMatrix[idx1,idx2];
end;

procedure TDATElement.Mirror(axis: TDATAxis);
begin
  FDATMatrix[1, Ord(axis)] := -FDATMatrix[1, Ord(axis)];
  FDATMatrix[2, Ord(axis)] := -FDATMatrix[2, Ord(axis)];
  FDATMatrix[3, Ord(axis)] := -FDATMatrix[3, Ord(axis)];
  FDATMatrix[4, Ord(axis)] := -FDATMatrix[4, Ord(axis)];
end;

procedure TDATElement.SetMatrixVal(idx1,idx2: Integer; Value: Double);
begin
  FDATMatrix[idx1,idx2] := Value;
end;

function TDATElement.GetCoordinate(Index: Integer): Double;

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

procedure TDATElement.SetCoordinate(Index: Integer; Value: Double);

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

procedure TDATElement.Translate(x,y,z: Double);

var
  R: TDATMatrix;

begin
  R := FDATIdentityMatrix;

  R[1,4] := x;
  R[2,4] := y;
  R[3,4] := z;

  Transform(R);

end;

procedure TDATElement.Rotate(w,x,y,z: Double);

var
 R: TDATMatrix;
 t: Double;

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

procedure TDATSubPart.Mirror(axis: TDATAxis);

begin
  inherited Mirror(axis);
  FDATMatrix[Ord(axis), 4] := -FDATMatrix[Ord(axis), 4];
end;

procedure TDATSubPart.Transform(M: TDATMatrix; Reverse: Boolean = false);

begin
  if Reverse then
    FDATMatrix := M4Multiply(FDATMatrix, M)
  else
    FDATMatrix := M4Multiply(M, FDATMatrix);
end;

constructor TDATSubPart.Create();

begin
  inherited Create;
  FLineType := ltSubpart;
  Matrix := FDATIdentityMatrix;
  SubPart := 'dummy.dat';
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

function TDATSubPart.GetDATString:string;

var
 strSep: Char;

begin
  strSep := DecimalSeparator;

  Result := '1 ' +
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
            SubPart;

  DecimalSeparator := strSep;
end;

procedure TDATSubPart.ProcessDATLine(strText:string);

var
  TmpMatrix: TDATMatrix;
  TmpLnType, TmpColor: Integer;
  TempList: TStringList;
  TmpSubpart: string;

begin
  TmpMatrix := FDATIdentityMatrix;

  TempList:= TStringList.Create;
  try
    ExtractStrings([#9,#32], [#9,#32], PChar(Trim(strText)), TempList);

    if TempList.Count <> 15 then
      raise EInvalidDATLine.Create('Invalid LDraw line: ' + strText)
    else
      try
        TmpLnType := StrToInt(TempList[0]);
        TmpColor := StrToInt(TempList[1]);
      except
        on E: Exception do
          raise EInvalidDATLine.Create('Invalid LDraw line: ' + strText);
      end;
      if (TmpLnType = 1) and (TmpColor >= 0) then
      begin
        try
          TmpMatrix := DATMatrix(StrToFloat(TempList[5]), StrToFloat(TempList[6]),
                                 StrToFloat(TempList[7]), StrToFloat(TempList[2]),
                                 StrToFloat(TempList[8]), StrToFloat(TempList[9]),
                                 StrToFloat(TempList[10]), StrToFloat(TempList[3]),
                                 StrToFloat(TempList[11]), StrToFloat(TempList[12]),
                                 StrToFloat(TempList[13]), StrToFloat(TempList[4]),
                                 0,0,0,1);
        except
          on E: Exception do
            raise EInvalidDATLine.Create('Invalid LDraw line: ' + strText);
        end;
        TmpSubpart := TempList[14];

        Color := TmpColor;
        Matrix := TmpMatrix;
        SubPart := TmpSubpart;
      end
      else
      raise EInvalidDATLine.Create('Invalid LDraw line: ' + strText);
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

function TDATGeometric.GetExtremeValue(Index: Integer): Double;

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

  j := Integer(LineType);

  if j = 5 then j := 2;

  Result := MatrixVals[1, coord];

  for i := 1 to j do
    case Index of
      1,3,5: if MatrixVals[i, coord] > Result then Result := MatrixVals[i, coord];
      2,4,6: if MatrixVals[i, coord] < Result then Result := MatrixVals[i, coord];
    end;
end;

function TDATGeometric.GetCenterValue(Index: Integer): Double;

begin
  case LineType of
    ltLine,ltOpLine: Result := (MatrixVals[1,Index] + MatrixVals[2,Index]) / 2;
    ltTriangle: Result := (MatrixVals[1,Index] + MatrixVals[2,Index] + MatrixVals[3,Index]) / 3;
    ltQuad: Result := (MatrixVals[1,Index] + MatrixVals[2,Index] + MatrixVals[3,Index] + MatrixVals[4,Index]) / 4;
    else
      result := 0;
  end;  
end;

procedure TDATGeometric.Transform(M: TDATMatrix; Reverse: Boolean = false);

var
  M1: array[1..3] of Double;
  i: Byte;

begin
  for i := 1 to 4 do
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
  FLineType := ltLine;
end;

function TDATLine.GetDATString:string;
begin
  Result := '2 ' +
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
  FLineType := ltOpLine;
end;

function TDATOpLine.GetDATString:string;
begin
  Result := '5 ' +
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
  j := Integer(FLineType);
  for i := 1 to j do
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
  FLineType := ltTriangle;
end;

function TDATTriangle.GetDATString:string;
begin
  Result := '3 ' +
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
  FLineType := ltQuad;
end;

function TDATQuad.GetDATString:string;
begin
  Result := '4 ' +
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

initialization
  {Some locales use "," as the decimal separator
   This changes the decimal separtor to "." as required by the LDraw spec
   without changing the master settings. }
  DecimalSeparator := '.';

finalization
// Nothing

end.
