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
unit BezWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math, Registry, IniFiles, DATBase, DATFlexObject,
  JvEdit, Mask, JvMaskEdit, JvExStdCtrls, JvValidateEdit, Buttons;

type
  TFlexObjectDlg = class(TForm)
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
    lblMessage: TLabel;
    lblLength: TLabel;
    lblType2: TLabel;
    feCP1X: TJvValidateEdit;
    feCP1Y: TJvValidateEdit;
    feCP1Z: TJvValidateEdit;
    feCP2X: TJvValidateEdit;
    feCP2Y: TJvValidateEdit;
    feCP2Z: TJvValidateEdit;
    feLength: TJvValidateEdit;
    procedure ChangeLength(Sender: TObject);
    procedure EnableUserControlPoints(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ControlPointChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  public
    HoseDATCode: TDATFlexObject;
    Line1, Line2: TDATSubPart;
  end;

implementation

{$R *.dfm}

uses
  DATUtils;

procedure TFlexObjectDlg.ChangeLength(Sender: TObject);
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

procedure TFlexObjectDlg.EnableUserControlPoints(Sender: TObject);
begin
   gbxCont1.Enabled := cbxContEnable.Checked;
   gbxCont2.Enabled := cbxContEnable.Checked;
   HoseDATCode.DefinedControlPoints := cbxContEnable.Checked;
end;

procedure TFlexObjectDlg.FormCreate(Sender: TObject);
begin
  Line1 := TDATSubPart.Create;
  Line2 := TDATSubPart.Create;
  HoseDATCode := TDATFlexObject.Create;
end;

procedure TFlexObjectDlg.FormActivate(Sender: TObject);

begin
  HoseDATCode.StartMatrix := Line1.Matrix;
  HoseDATCode.EndMatrix := Line2.Matrix;
  HoseDATCode.Color := Line1.Color;

  HoseDATCode.DefinedControlPoints := cbxContEnable.Checked;
  ControlPointChange(nil);

  if ((Line1.SubPart = '750.dat') and (Line2.SubPart = '750.dat')) then
  begin
    lblType2.Caption := 'Hose Flexible 8.5L With Tabs';
    HoseDATCode.ObjectType := boHoseTabs;
  end
  else if ((Line1.SubPart = '752.dat') and (Line2.SubPart = '752.dat')) then
  begin
    lblType2.Caption := 'Hose Flexible 8.5L Without Tabs';
    HoseDATCode.ObjectType := boHoseNoTabs;
  end
  else if ((Line1.SubPart = '757.dat') and (Line2.SubPart = '760.dat')) or
          ((Line1.SubPart = '760.dat') and (Line2.SubPart = '757.dat')) then
  begin
    lblType2.Caption := 'Hose Flexible 12L';
    if Line1.SubPart = '760.dat' then
    begin
      HoseDATCode.StartMatrix := Line2.Matrix;
      HoseDATCode.EndMatrix := Line1.Matrix;
    end;
    HoseDATCode.ObjectType := boHose12;
  end
  else if ((Line1.SubPart = '79.dat') and (Line2.SubPart = '79.dat')) then
  begin
    lblType2.Caption := 'Technic Ribbed Hose';
    lblLength.Caption := 'Enter number of segments to use:';
    HoseDATCode.ObjectType := boRibbedHose;
    feLength.Visible := True;
  end
  else if ((Line1.SubPart = 'stud3a.dat') and (Line2.SubPart = 'stud3a.dat')) then
  begin
    lblType2.Caption := 'Technic Flexible Axle';
    lblLength.Caption :=
      'Enter total length of the axle in LDU (1 Brick Width = 20 LDU) :';
    HoseDATCode.ObjectType := boFlexAxle;
    feLength.Visible := True;
  end
  else if ((Line1.SubPart = '76.dat') and (Line2.SubPart = '76.dat')) then
  begin
    lblType2.Caption := 'Technic Flex-System Hose';
    lblLength.Caption :=
      'Enter total length of the hose in LDU (1 Brick Width = 20 LDU) :';
    HoseDATCode.ObjectType := boFlexHose;
    feLength.Visible := True;
  end
  else
  begin
    lblMessage.Caption :=
      'Unsupported File Types.  Read the ReadMe file for supported file types';
  end;

  ChangeLength(nil);
end;

procedure TFlexObjectDlg.FormDestroy(Sender: TObject);
begin
  Line1.Free;
  Line2.Free;
  HoseDATCode.Free;
end;

procedure TFlexObjectDlg.ControlPointChange(Sender: TObject);
begin
  if cbxContEnable.Checked then
  begin
    HoseDATCode.ControlPoint1 := DATPoint(feCP1X.Value, feCP1Y.Value, feCP1Z.Value);
    HoseDATCode.ControlPoint2 := DATPoint(feCP2X.Value, feCP2Y.Value, feCP2Z.Value);
  end;
end;

end.



