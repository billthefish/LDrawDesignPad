unit BezWindow;

(*
Copyright 2002, 2003 Orion Pobursky

This file is part of the Bendible Objects Creator
(formerly known as Generate DAT Curves) plugin

The Bendible Objects Creator plugin is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

The Bendible Objects Creatorplugin is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DATBase, DATModel, Math, Registry, IniFiles,
  JvEdit, JvTypedEdit, Mask, JvMaskEdit;

type
  TfrmDATCurve = class(TForm)
    lblType: TLabel;
    btnGenerate: TButton;
    btnCancel: TButton;
    gbxStartPoint: TGroupBox;
    gbxCont1: TGroupBox;
    gbxCont2: TGroupBox;
    gbxEndPoint: TGroupBox;
    lblStart1: TLabel;
    lblStart3: TLabel;
    lblStart2: TLabel;
    lblEnd1: TLabel;
    lblEnd2: TLabel;
    lblEnd3: TLabel;
    cbxContEnable: TCheckBox;
    lblContEnable: TLabel;
    gbxACont1: TGroupBox;
    lblACont11: TLabel;
    lblACont13: TLabel;
    lblACont12: TLabel;
    gbxACont2: TGroupBox;
    lblACont21: TLabel;
    lblACont22: TLabel;
    lblACont23: TLabel;
    lblMessage: TLabel;
    feCP2X: TJvFloatEdit2;
    feCP2Y: TJvFloatEdit2;
    feCP2Z: TJvFloatEdit2;
    feCP1X: TJvFloatEdit2;
    feCP1Z: TJvFloatEdit2;
    feCP1Y: TJvFloatEdit2;
    feLength: TJvFloatEdit2;
    lblLength: TLabel;
    lblType2: TLabel;
    procedure feLengthChange(Sender: TObject);
    procedure cbxContEnableClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure feCP1XChange(Sender: TObject);

  public
    HoseDATCode: TDATBendibleObject;
    Line1, Line2: TDATSubPart
  end;

var
  frmDATCurve: TfrmDATCurve;

implementation

{$R *.dfm}

procedure TfrmDATCurve.feLengthChange(Sender: TObject);

begin
  if feLength.Value > 0 then
  begin
    HoseDATCode.Length := feLength.Value;
    if HoseDATCode.ModelText <> '' then
    begin
      lblMessage.Caption := '';
      btnGenerate.Enabled := True;
      cbxContEnable.Enabled := True;
    end
    else
    begin
      lblMessage.Caption := 'Distance between the end points is longer than the specified length';
      btnGenerate.Enabled := False;
      cbxContEnable.Enabled := False;
      gbxCont1.Enabled := False;
      gbxCont2.Enabled := False;
    end;
  end;
end;

procedure TfrmDATCurve.cbxContEnableClick(Sender: TObject);
begin
   gbxCont1.Enabled := cbxContEnable.Checked;
   gbxCont2.Enabled := cbxContEnable.Checked;
   HoseDATCode.DefinedControlPoints := cbxContEnable.Checked;
end;

procedure TfrmDATCurve.FormCreate(Sender: TObject);
begin
  Line1:=TDATSubPart.Create;
  Line2:=TDATSubPart.Create;
  HoseDATCode := TDATBendibleObject.Create;
end;

procedure TfrmDATCurve.FormActivate(Sender: TObject);

begin
  HoseDATCode.StartMatrix := Line1.RotationMatrix;
  HoseDATCode.EndMatrix := Line2.RotationMatrix;
  HoseDATCode.Color := Line1.Color;
  HoseDATCode.DefinedControlPoints := False;
  if ((Line1.Filename = '750.dat') and (Line2.Filename = '750.dat')) then
  begin
    lblType2.Caption := 'Hose Flexible 8.5L With Tabs';
    feLength.Value := 130;
  end
  else if ((Line1.Filename = '752.dat') and (Line2.Filename = '752.dat')) then
  begin
    lblType2.Caption := 'Hose Flexible 8.5L Without Tabs';
    HoseDATCode.ObjectType := boHoseNoTabs;
    feLength.Value := 130;
  end
  else if ((Line1.Filename = 'x757.dat') and (Line2.Filename = 'x760.dat')) then
  begin
    lblType2.Caption := 'Hose Flexible 12L';
    HoseDATCode.ObjectType := boHose12;
    feLength.Value := 188;
  end
  else if ((Line1.Filename = '79.dat') and (Line2.Filename = '79.dat')) then
  begin
    lblType2.Caption := 'Technic Ribbed Hose';
    lblLength.Caption := 'Enter number of notches to use:';
    HoseDATCode.ObjectType := boRibbedHose;
    feLength.Visible := True;
  end

  else if ((Line1.Filename = 'stud3a.dat') and (Line2.Filename = 'stud3a.dat')) then
  begin
    lblType2.Caption := 'Technic Flexible Axle';
    lblLength.Caption :=
      'Enter total length of the axle in LDU (1 Brick Width = 20 LDU) :';
    feLength.Visible := True;
    HoseDATCode.ObjectType := boFlexAxle;
  end

  else if ((Line1.Filename = '76.dat') and (Line2.Filename = '76.dat')) then
  begin
    lblType2.Caption := 'Technic Flex-System Hose';
    lblLength.Caption :=
      'Enter total length of the hose in LDU (1 Brick Width = 20 LDU) :';
    feLength.Visible := True;
    HoseDATCode.ObjectType := boFlexHose;
  end

  else
  begin
    lblMessage.Caption :=
      'Unsupported File Types.  Read the ReadMe file for supported file types';
  end;
end;

procedure TfrmDATCurve.FormDestroy(Sender: TObject);

begin
  Line1.Free;
  Line2.Free;
  HoseDATCode.Free;
end;

procedure TfrmDATCurve.feCP1XChange(Sender: TObject);

var
  tmpPoint: TDATPoint;

begin
  tmpPoint[1] := feCP1X.Value;
  tmpPoint[2] := feCP1Y.Value;
  tmpPoint[3] := feCP1Z.Value;
  HoseDATCode.ControlPoint1 := tmpPoint;
  tmpPoint[1] := feCP2X.Value;
  tmpPoint[2] := feCP2Y.Value;
  tmpPoint[3] := feCP2Z.Value;
  HoseDATCode.ControlPoint2 := tmpPoint;
end;

end.


