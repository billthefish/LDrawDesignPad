{-------------------------------------------------------------------------------

These sources are copyrighted (C) by Carsten Schmitz and the LDDP project contributors.

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
unit colordialog;

interface

uses
  QForms, QStdCtrls, QButtons, QExtCtrls,QControls, QComCtrls, Classes,
  QActnList, QDialogs, QGraphics, SysUtils, Math;

type
  TfrColorDialog = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edColornumber: TEdit;
    Label3: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edDescription: TEdit;
    btOldColor: TPanel;
    btNewColor: TPanel;
    Shape11: TShape;
    Shape12: TShape;
    Shape22: TShape;
    Shape32: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape14: TShape;
    Shape24: TShape;
    Shape34: TShape;
    Shape33: TShape;
    Shape44: TShape;
    Shape13: TShape;
    Shape23: TShape;
    Shape21: TShape;
    Shape31: TShape;
    Shape41: TShape;
    ScrollBar1: TScrollBar;
    rgOptions: TRadioGroup;
    procedure btOldCOlorClick(Sender: TObject);
    procedure btNewColorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Shape11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    slColors:TStringlist;
    procedure SetColorBoxes;
  end;

var
  frColorDialog: TfrColorDialog;

implementation

{$R *.xfm}


procedure TfrColorDialog.FormShow(Sender: TObject);

begin
  scrollbar1.max := Ceil(slColors.count / 4)-4;
  ScrollBar1.Min := 0;
  ScrollBar1.Position := 0;
  SetColorBoxes;
end;

procedure TfrColorDialog.SetColorBoxes;

var
  i,j:integer;
  color:TColor;
  name,tmp:string;
  ShapePtr: TShape;

begin
  for i := 1 to 4 do
  begin
    for j := 1 to 4 do
    begin
      if (((ScrollBar1.Position + i) - 1)*4) + (j-1) <= slColors.Count-1 then
        tmp := slColors.Values[slColors.Names[(((ScrollBar1.Position + i) - 1)*4) + (j-1)]]
      else
        tmp := '';  
      name := copy(tmp,1,pos(' ',tmp)-1);
      tmp:=copy(tmp,pos(' ',tmp)+1,30);
      color:=strtoint('$00'+copy(tmp,5,2)+copy(tmp,3,2)+copy(tmp,1,2));
      ShapePtr := FindComponent('Shape'+IntToStr(i)+IntToStr(j)) as TShape;
      ShapePtr.Color := color;
      ShapePtr.HelpKeyword := name;
      ShapePtr.tag:=((i-1)*4) + (j-1);
    end;
  end;
end;

procedure TfrColorDialog.btOldCOlorClick(Sender: TObject);
begin
  btNewcolor.BevelOuter:=bvRaised;
  btOldcolor.BevelOuter:=bvLowered;

end;

procedure TfrColorDialog.btNewColorClick(Sender: TObject);
begin
  btNewcolor.BevelOuter:=bvLowered;
  btOldcolor.BevelOuter:=bvRaised;
end;

procedure TfrColorDialog.FormCreate(Sender: TObject);
begin
  slColors := TStringList.Create;
end;

procedure TfrColorDialog.FormDestroy(Sender: TObject);
begin
  slColors.Free;
end;

procedure TfrColorDialog.ScrollBar1Change(Sender: TObject);
begin
  SetColorBoxes;
end;

procedure TfrColorDialog.Shape11MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

var
  cname,nr,tmp:string;

begin
  nr:=slColors.Names[(Sender as TShape).tag+scrollbar1.position*4];
  tmp:=slColors.Values[nr];
  cname:=copy(tmp,1,pos(' ',tmp)-1);

  if btnewColor.BevelOuter=bvLowered then
  begin
    btNewColor.color:=(Sender as TShape).color;
    btNewColor.tag:=strtoint(nr);
    btNewcolor.caption:=nr+' - '+cname;
    btNewColor.Font.Color:=abs($00999999-(Sender as TShape).color);
    edColornumber.Text:=nr;
  end
    else begin
      btOldColor.color:=(Sender as TShape).Color;
      btOldColor.tag:=strtoint(nr);
      btOldColor.caption:=nr+' - '+cname;
      btOldColor.Font.Color:=abs($00999999-(Sender as TShape).color);
    end
end;

end.









