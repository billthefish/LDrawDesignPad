{These sources are copyright (C) 2003-2008 the LDDP project contributors.

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
unit BMP2LDraw;

interface

uses
  gnugettext, SysUtils, Graphics, Controls, Forms, Menus,
  Types, Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  Classes, DatBase;

type
  TfrBMP2LDrawMain = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    About1: TMenuItem;
    pnProgress: TPanel;
    pb: TProgressBar;
    Label4: TLabel;
    pc: TPageControl;
    TabSheet1: TTabSheet;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    btNext1: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn6: TBitBtn;
    Button1: TBitBtn;
    Bevel3: TBevel;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btSave: TBitBtn;
    Label6: TLabel;
    rbTrans1: TRadioButton;
    rbTrans2: TRadioButton;
    edWidth: TEdit;
    edQuad: TEdit;
    OpenDialog: TOpenDialog;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btNext1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    slConvertColors:Tstringlist;
  public
    function GetLDrawColor(const color:TCOLOR):integer;
    function BGRtoRGB(clr:TColor):TCoLOR;
    { Public-Deklarationen }
  end;

var
  frBMP2LDrawMain: TfrBMP2LDrawMain;

implementation

uses main;


{$R *.dfm}


function TfrBMP2LDrawMain.BGRtoRGB(clr:TColor):TColor;
var sr:string;
begin
  sr:=IntToHex(ColortoRGB(clr),6);
  Result:=strtoint('$'+Copy(sr,5,2)+Copy(sr,3,2)+Copy(sr,1,2));
end;



function TfrBMP2LDrawMain.GetLDrawColor(const color:TCOLOR):integer;
VAR
    DistanceSquared:  INTEGER;
    i:integer;
    B1, B2:  INTEGER;
    G1, G2:  INTEGER;
    R1, R2:  INTEGER;
    SmallestDistanceSquared:  INTEGER;


    function GetRValue(rgb: TColor): Byte;
    begin
      Result := Byte(rgb);
    end;

    function GetGValue(rgb: TColor): Byte;
    begin
      Result := Byte(rgb shr 8);
    end;

    function GetBValue(rgb: TColor): Byte;
    begin
      Result := Byte(rgb shr 16);
    end;


BEGIN
  RESULT := clBlack;                       // Assume black is closest color
  SmallestDistanceSquared := 256*256*256;  // Any distance would be shorter

  R1 := GetRValue(color);
  G1 := GetGValue(color);
  B1 := GetBValue(color);

  i:=0;
  while i<=slConvertColors.count-1 do
  BEGIN
    R2 := GetRValue(strtoint('$'+copy(slConvertColors[i],Pos(' ',slConvertColors[i]) + 1,6)));
    G2 := GetGValue(strtoint('$'+copy(slConvertColors[i],Pos(' ',slConvertColors[i]) + 1,6)));
    B2 := GetBValue(strtoint('$'+copy(slConvertColors[i],Pos(' ',slConvertColors[i]) + 1,6)));

    DistanceSquared := SQR(R1-R2) + SQR(G1-G2) + SQR(B1-B2);
    IF   DistanceSquared < SmallestDistanceSquared
    THEN BEGIN
      RESULT := strtoint(slConvertColors.Names[i]);
      SmallestDistanceSquared := DistanceSquared
    end;
    inc(i);
  END
end;

procedure TfrBMP2LDrawMain.BitBtn1Click(Sender: TObject);
begin
  if opendialog.execute then begin
    image1.Picture.LoadFromFile(opendialog.files[0]);
    btNext1.Enabled:=True;
  end;
end;

procedure TfrBMP2LDrawMain.btSaveClick(Sender: TObject);

var sr:TStringList;
    cl,clo:TColor;
    Quad:TDatquad;
    ps,transclr:integer;
    x,y,i,found,ldc:integer;
    pwx,pwy,pwzx,pwzy,z2,z3,y1,y2,y3,y4:real;
    x3:real;

begin
  quad:=TDatQuad.Create;
  decimalseparator:='.';
  if Radiobutton1.Checked then begin
    pwx:=strtofloat(edwidth.text);
    pwy:=pwx;
    pwzx:=0; pwzy:=0;
    z2:=0; x3:=0; z3:=0;
    y1:=0; y2:=0; y3:=0; y4:=0;
    if strtofloat(edwidth.text)=0 then begin
      MessageDlg(_('LDraw unit size cannot be 0.0 !'), mtError, [mbOK], 0);
      Exit;
    end;
  end
    else begin
       try
          quad.DATString:=edQuad.text;
        except
          MessageDlg(_('You entered an invalid Quadliteral line!'), mtError, [mbOK], 0);
          exit;
        end;
      try

        x3:=quad.x3;

        y1:=quad.y1;
        y2:=quad.y2;
        y3:=quad.y3;
        y4:=quad.y4;

        z2:=quad.z2;
        z3:=quad.z3;

        pwx:=(quad.x1-x3)/image1.Width;
        pwy:=(quad.y1-y3)/image1.height;
        pwzx:=(quad.z1-z3)/image1.width;
        pwzy:=(quad.z1-z3)/image1.height;


      except
        MessageDlg(_('You entered an invalid Quadliteral line!'), mtError, [mbOK], 0);
        Exit;
      end;
    end;

    frBMP2LDrawMain.Enabled:=False;
    pnProgress.Visible:=true;
    slConvertColors.LoadFromFile(ExtractFilePath(Application.ExeName)+'\colors.pal');
    transclr:=-1;
    if edit1.Text<>'None' then begin
      clo:=strtoint('$'+edit1.Text);
      transclr:=getLDrawColor(clo);
    end;
    decimalseparator:='.';
    clo:=image1.Canvas.pixels[0,0];
    ps:=0;
    sr:=TStringList.Create;
    sr.Add('0 Image converted by LDrawDesignPad');
    pb.Position:=0;
    with image1 do begin
      pb.max:=Height;
      for y:=0 to Height-1 do begin
        pb.Position:=y+1;
        Application.ProcessMessages;
        for x:=0 to Width  do begin
          cl:=Canvas.pixels[x,y];
          if (cl<>clo) or (x=Width) then begin
            ldc:=getLDrawColor(clo);
            if (rbTrans1.Checked) or (rbTrans2.Checked and not (ldc=transclr)) then begin
              if rbTrans1.Checked and (ldc=transclr) then ldc:=16;
              found:=0;
              if sr.Count>2 then
                if (z2<>z3) and not ((y1=y2) and (y2=y3) and (y3=y4)) then
                begin
                  for I:=sr.Count-1 downto 2 do
                  begin
                    quad.DATString:=sr[i];
                    if (quad.Color=ldc) and
                       (quad.x1=(pwx*ps)+x3) and
                       (quad.x2=(pwx*x) +x3) and
                       (quad.x3=(pwy*(y-1))+y3+pwy)
                          then begin
                            found:=i;
                            Break;
                          end;
                  end;
                end
                  else
                  begin
                    for I:=sr.Count-1 downto 2 do
                    begin
                      quad.DATString:=sr[i];
                      if (quad.Color=ldc) and
                         (quad.x1=(pwx*ps)+x3) and
                         (quad.x2=(pwx*x) +x3) and
                         (quad.x3=(pwy*(y-1))+y3+pwy)
                            then
                            begin
                              found:=i;
                              Break;
                            end;
                  end;

                  end;
              if found>0 then begin
                quad.DATString:=sr[found];
                if (z2<>z3) and not ((y1=y2) and (y2=y3) and (y3=y4)) then
                    sr.Add('4 '+IntToStr(ldc)+' '+
                       floattostr((pwx*ps)+x3)+' '+floattostr(quad.y1)+' '+floattostr(quad.z1)+' '+
                       floattostr((pwx*x) +x3)+' '+floattostr(quad.y2)+' '+floattostr((pwzx*x)+z3)+' '+
                       floattostr((pwx*x )+x3)+' '+floattostr((pwy*y)+pwy+y3)  +' '+floattostr((pwzx*x)+z3)+' '+
                       floattostr((pwx*ps)+x3)+' '+floattostr((pwy*y)+pwy+y3)  +' '+floattostr(quad.z3))
                   else
                     sr.Add('4 '+IntToStr(ldc)+' '+
                       floattostr((pwx*ps)+x3)+' '+floattostr(quad.y1)+' '+floattostr(quad.z1)+' '+
                       floattostr((pwx*x) +x3)+' '+floattostr(quad.y2)+' '+floattostr(quad.z2)+' '+
                       floattostr((pwx*x )+x3)+' '+floattostr((pwy*y)+pwy+y3)  +' '+floattostr((pwzy*(y+1))+z3)+' '+
                       floattostr((pwx*ps)+x3)+' '+floattostr((pwy*y)+pwy+y3)  +' '+floattostr((pwzy*(y+1))+z3));
                sr.Delete(found);

              end else  begin

                if (z2<>z3) and not ((y1=y2) and (y2=y3) and (y3=y4)) then
                     sr.Add('4 '+IntToStr(ldc)+' '+
                         floattostr((pwx*ps)+x3)+' '+floattostr((pwy*y)+y3)    +' '+floattostr((pwzx*ps)+z3)+' '+
                         floattostr((pwx*x) +x3)+' '+floattostr((pwy*y)+y3)    +' '+floattostr((pwzx*x)+z3)+' '+
                         floattostr((pwx*x )+x3)+' '+floattostr((pwy*y)+pwy+y3)+' '+floattostr((pwzx*x)+z3)+' '+
                         floattostr((pwx*ps)+x3)+' '+floattostr((pwy*y)+pwy+y3)+' '+floattostr((pwzx*ps)+z3))
                   else
                     sr.Add('4 '+IntToStr(ldc)+' '+
                         floattostr((pwx*ps)+x3)+' '+floattostr((pwy*y)+y3)    +' '+floattostr((pwzy*y)+z3)+' '+
                         floattostr((pwx*x) +x3)+' '+floattostr((pwy*y)+y3)    +' '+floattostr((pwzy*y)+z3)+' '+
                         floattostr((pwx*x )+x3)+' '+floattostr((pwy*y)+pwy+y3)+' '+floattostr((pwzy*(y+1))+z3)+' '+
                         floattostr((pwx*ps)+x3)+' '+floattostr((pwy*y)+pwy+y3)+' '+floattostr((pwzy*(y+1))+z3));

                end;
            end;
            ps:=x;
            if x=Width then begin
              ps:=0;
              clo:=Canvas.pixels[0,y+1]

            end
              else clo:=cl;

          end;
        end;
      end;
    end;

    frMain.editor.Seltext:=sr.text;
    sr.Free;
    pnProgress.Visible:=False;
    frBMP2LDrawMain.Enabled:=true;
    MessageDlg(_('Done!'), mtInformation, [mbOK], 0);
    quad.free;
    ModalResult:=mrOK;
end;



procedure TfrBMP2LDrawMain.FormShow(Sender: TObject);
begin
  pc.ActivePage:=TabSheet1;
  if slConvertColors=nil then slConvertColors:=TStringlist.Create;
end;

procedure TfrBMP2LDrawMain.btNext1Click(Sender: TObject);
begin
  pc.ActivePage:=TabSheet2;
end;

procedure TfrBMP2LDrawMain.BitBtn5Click(Sender: TObject);
begin
  pc.ActivePage:=TabSheet3;
end;

procedure TfrBMP2LDrawMain.Button1Click(Sender: TObject);
begin
  Screen.cursor:=crHandPoint;
end;

procedure TfrBMP2LDrawMain.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Screen.cursor=crHandPoint then begin
    edit1.Color:=image1.Canvas.Pixels[x,y];
    edit1.text:=IntToHex(image1.Canvas.Pixels[x,y],6);
    edit1.Font.color:=($FFFFFF-image1.Canvas.Pixels[x,y]);
    Screen.cursor:=crDefault;
  end;
end;

procedure TfrBMP2LDrawMain.BitBtn6Click(Sender: TObject);
begin
  edit1.Text:=_('None');
  edit1.Color:=clWindow;
  edit1.Font.Color:=clBlack;
end;

procedure TfrBMP2LDrawMain.BitBtn4Click(Sender: TObject);
begin
  pc.ActivePage:=TabSheet1;
end;

procedure TfrBMP2LDrawMain.TabSheet3Show(Sender: TObject);
begin
  edQuad.Enabled:=Radiobutton2.Checked;
  if Radiobutton1.Checked then begin
    btSave.Enabled:=(strtoFloat(edWidth.text)>0);
  end
    else begin
      btSave.Enabled:=(edQuad.Text<>'');
    end;
end;

procedure TfrBMP2LDrawMain.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
end;

end.
