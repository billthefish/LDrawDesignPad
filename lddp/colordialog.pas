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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  JvStrHlder, StdCtrls, Buttons, ExtCtrls, JvComponent,
  JvTransBtn, JvColorBox;

type
  TfrColorDialog = class(TForm)
    GroupBox1: TGroupBox;
    ScrollBar: TScrollBar;
    StrHolder1: TJvStrHolder;
    Label1: TLabel;
    Label2: TLabel;
    edColornumber: TEdit;
    Label3: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rbReplaceLine: TRadioButton;
    rbReplaceSelection: TRadioButton;
    rbReplaceAll: TRadioButton;
    edDescription: TEdit;
    btOldColor: TJvTransparentButton;
    btNewColor: TJvTransparentButton;
    JvColorSquare1: TJvColorSquare;
    JvColorSquare2: TJvColorSquare;
    JvColorSquare3: TJvColorSquare;
    JvColorSquare4: TJvColorSquare;
    JvColorSquare5: TJvColorSquare;
    JvColorSquare6: TJvColorSquare;
    JvColorSquare7: TJvColorSquare;
    JvColorSquare8: TJvColorSquare;
    JvColorSquare9: TJvColorSquare;
    JvColorSquare10: TJvColorSquare;
    JvColorSquare11: TJvColorSquare;
    JvColorSquare12: TJvColorSquare;
    JvColorSquare13: TJvColorSquare;
    JvColorSquare14: TJvColorSquare;
    JvColorSquare15: TJvColorSquare;
    JvColorSquare16: TJvColorSquare;
    procedure FormShow(Sender: TObject);
    procedure btOldCOlorClick(Sender: TObject);
    procedure btNewColorClick(Sender: TObject);
    procedure JvColorSquare1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure JvColorSquare1ColorClick(Sender: TObject;
      Button: TMouseButton; Color: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frColorDialog: TfrColorDialog;

implementation

{$R *.dfm}

procedure TfrColorDialog.FormShow(Sender: TObject);
var i:integer;
    color:TColor;
    name,tmp:string;
begin
  scrollbar.max:=round((strholder1.Strings.count/4)+0.5)-4;
  for i:=0 to 15 do begin
    if scrollbar.Position*4+i<=strholder1.strings.count-1 then tmp:=strHolder1.Strings[scrollbar.Position*4+i]
      else tmp:='';
    tmp:=copy(tmp,pos('=',tmp)+1,30);
    name:=copy(tmp,1,pos(' ',tmp)-1);
    tmp:=copy(tmp,pos(' ',tmp)+1,30);
    color:=strtoint('$00'+copy(tmp,5,2)+copy(tmp,3,2)+copy(tmp,1,2));
    (FindComponent('JVColorSquare'+inttostr(i+1)) as tJVColorSquare).Color:=color;
    (FindComponent('JVColorSquare'+inttostr(i+1)) as tJVColorSquare).helpkeyword:=name;
    (FindComponent('JVColorSquare'+inttostr(i+1)) as tJVColorSquare).tag:=i;
  end;
end;

procedure TfrColorDialog.btOldCOlorClick(Sender: TObject);
begin
  btNewcolor.down:=false;
  btOldcolor.down:=true;

end;

procedure TfrColorDialog.btNewColorClick(Sender: TObject);
begin
  btNewcolor.down:=true;
  btOldcolor.down:=false;
end;

procedure TfrColorDialog.JvColorSquare1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var cname,tmp,nr:string;
begin
  if (Sender as TJvColorSquare).tag+scrollbar.position*4<strholder1.Strings.count then
    tmp:=strholder1.Strings[(Sender as TJvColorSquare).tag+scrollbar.position*4];
  nr:=copy(tmp,1,pos('=',tmp)-1);
  tmp:=copy(tmp,pos('=',tmp)+1,30);
  cname:=copy(tmp,1,pos(' ',tmp)-1);
  edDescription.text:='Nr: '+nr+' - '+cname;
end;

procedure TfrColorDialog.JvColorSquare1ColorClick(Sender: TObject;
  Button: TMouseButton; Color: TColor);
var cname,nr,tmp:string;
begin
  tmp:=strholder1.Strings[(Sender as TJvColorSquare).tag+scrollbar.position*4];
  nr:=copy(tmp,1,pos('=',tmp)-1);
  tmp:=copy(tmp,pos('=',tmp)+1,20);
  cname:=copy(tmp,1,pos(' ',tmp)-1);

  if btnewColor.down then begin
    btNewColor.color:=color;
    btNewColor.tag:=strtoint(nr);
    btNewcolor.caption:=nr+' - '+cname;
    btNewColor.Font.Color:=abs($00999999-color);
    edColornumber.Text:=nr;
  end
    else begin
      btOldColor.color:=color;
      btOldColor.tag:=strtoint(nr);
      btOldColor.caption:=nr+' - '+cname;
      btOldColor.Font.Color:=abs($00999999-color);
    end
end;

end.









