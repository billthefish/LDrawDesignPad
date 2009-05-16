{These sources are copyright (C) 2003-2009 the LDDP project contributors.

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
  Classes, DATColour;

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
    ColourList: TDATColourList;

  public
    function GetLDrawColor(const color: TColor): Integer;
  end;

var
  frBMP2LDrawMain: TfrBMP2LDrawMain;

implementation

uses
  main, DATBase, DATUtils;


{$R *.dfm}

function TfrBMP2LDrawMain.GetLDrawColor(const color: TColor): Integer;

var
  DistanceSquared, i, B1, B2, G1, G2, R1, R2, SmallestDistanceSquared: Integer;

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


begin
  Result := clBlack;                       // Assume black is closest color
  SmallestDistanceSquared := 256 * 256 * 256;  // Any distance would be shorter

  R1 := GetRValue(color);
  G1 := GetGValue(color);
  B1 := GetBValue(color);

  for i := 0 to ColourList.Count - 1 do
  begin
    R2 := GetRValue(ColourList[i].MainColor);
    G2 := GetGValue(ColourList[i].MainColor);
    B2 := GetBValue(ColourList[i].MainColor);

    DistanceSquared := Sqr(R1 - R2) + Sqr(G1 - G2) + Sqr(B1 - B2);
    if DistanceSquared < SmallestDistanceSquared then
    begin
      Result := ColourList[i].Code;
      SmallestDistanceSquared := DistanceSquared;
    end;
  end;
end;

procedure TfrBMP2LDrawMain.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenDialog.Files[0]);
    btNext1.Enabled := True;
  end;
end;

procedure TfrBMP2LDrawMain.btSaveClick(Sender: TObject);

var
  sr: TStringList;
  cl, clo: TColor;
  quad, quad2: TDATQuad;
  x, y, i, found, ldc, ps, transclr: Integer;
  pwx, pwy, pwzx, pwzy, x3, z2, z3, y1, y2, y3, y4: Real;

begin
  quad := TDATQuad.Create;
  if RadioButton1.Checked then
  begin
    pwx := StrToFloat(edWidth.Text);
    pwy := pwx;
    pwzx := 0;
    pwzy := 0;
    z2 := 0;
    x3 := 0;
    z3 := 0;
    y1 := 0;
    y2 := 0;
    y3 := 0;
    y4 := 0;
    if StrToFloat(edWidth.Text) = 0 then
    begin
      MessageDlg(_('LDraw unit size cannot be 0.0 !'), mtError, [mbOK], 0);
      Exit;
    end;
  end
  else
  begin
    try
      quad.DATString := edQuad.text;
    except
      MessageDlg(_('You entered an invalid Quadliteral line!'), mtError, [mbOK], 0);
      Exit;
    end;

    try
      x3 := quad.x3;

      y1 := quad.y1;
      y2 := quad.y2;
      y3 := quad.y3;
      y4 := quad.y4;

      z2 := quad.z2;
      z3 := quad.z3;

      pwx := (quad.x1 - x3) / Image1.Width;
      pwy := (quad.y1 - y3) / Image1.Height;
      pwzx := (quad.z1 - z3) / Image1.Width;
      pwzy := (quad.z1 - z3) / Image1.Height;
    except
      MessageDlg(_('You entered an invalid Quadliteral line!'), mtError, [mbOK], 0);
      Exit;
    end;
  end;

  frBMP2LDrawMain.Enabled := False;
  pnProgress.Visible := true;
  ColourList := MakeStandardDATColourList;
  transclr := -1;
  if Edit1.Text <> 'None' then
  begin
    clo := StrToInt('$' + Edit1.Text);
    transclr := GetLDrawColor(clo);
  end;
  clo := Image1.Canvas.Pixels[0,0];
  ps := 0;
  sr := TStringList.Create;
  sr.Add('0 Image converted by LDrawDesignPad');
  pb.Position := 0;
  with Image1 do
  begin
    pb.Max := Height;
    for y := 0 to Height - 1 do
    begin
      pb.Position := y + 1;
      Application.ProcessMessages;
      for x := 0 to Width do
      begin
        cl := Canvas.Pixels[x,y];
        if (cl <> clo) or (x = Width) then
        begin
          ldc := GetLDrawColor(clo);
          if (rbTrans1.Checked) or (rbTrans2.Checked and not (ldc = transclr)) then
          begin
            if rbTrans1.Checked and (ldc = transclr) then
              ldc := 16;
            found := 0;
            if sr.Count > 2 then
              if (z2 <> z3) and not ((y1 = y2) and (y2 = y3) and (y3 = y4)) then
              begin
                for i := sr.Count - 1 downto 2 do
                begin
                  Quad.DATString := sr[i];
                  if (quad.Color = ldc) and
                     (quad.x1 = (pwx * ps) + x3) and
                     (quad.x2 = (pwx * x) + x3) and
                     (quad.x3 = (pwy * (y - 1)) + y3 + pwy) then
                  begin
                    found := i;
                    Break;
                  end;
                end;
              end
              else
              begin
                for i := sr.Count - 1 downto 2 do
                begin
                  quad.DATString := sr[i];
                  if (quad.Color = ldc) and
                     (quad.x1 = (pwx * ps) + x3) and
                     (quad.x2 = (pwx * x) + x3) and
                     (quad.x3 = (pwy * (y - 1)) + y3 + pwy) then
                  begin
                    found:=i;
                    Break;
                  end;
                end;
              end;
            if found > 0 then
            begin
              quad.DATString := sr[found];
              if (z2 <> z3) and not ((y1 = y2) and (y2 = y3) and (y3 = y4)) then
              begin
                quad2 := TDATQuad.Create;
                quad2.Color := ldc;
                quad2.Matrix := DATMatrix((pwx * ps) + x3, quad.y1, quad.z1, 0,
                                          (pwx * x) + x3, quad.y2, (pwzx * x) + z3, 0,
                                          (pwx * x) + x3, (pwy * y) + pwy + y3, (pwzx * x) + z3, 0,
                                          (pwx * ps) + x3, (pwy * y) + pwy + y3, quad.z3, 1);
                sr.Add(quad2.DATString);
                quad2.Free;
              end
              else
              begin
                quad2 := TDATQuad.Create;
                quad2.Color := ldc;
                quad2.Matrix := DATMatrix((pwx * ps) + x3, quad.y1, quad.z1, 0,
                                          (pwx * x) + x3, quad.y2, quad.z2, 0,
                                          (pwx * x) + x3, (pwy * y) + pwy + y3, (pwzy * (y + 1)) + z3, 0,
                                          (pwx * ps) + x3, (pwy * y) + pwy + y3, (pwzy *( y + 1)) + z3, 1);
                sr.Add(quad2.DATString);
                sr.Delete(found);
                quad2.Free;
              end;
            end
            else
            begin
              if (z2 <> z3) and not ((y1 = y2) and (y2 = y3) and (y3 = y4)) then
              begin
                quad2 := TDATQuad.Create;
                quad2.Color := ldc;
                quad2.Matrix := DATMatrix((pwx * ps) + x3, (pwy * y) + y3, (pwzx * ps) + z3, 0,
                                          (pwx * x) + x3, (pwy * y) + y3, (pwzx * x) + z3, 0,
                                          (pwx * x) + x3, (pwy * y) + pwy + y3, (pwzx * x) + z3, 0,
                                          (pwx * ps) + x3, (pwy * y) + pwy + y3, (pwzx * ps) + z3, 1);
                sr.Add(quad2.DATString);
                quad2.Free;
              end
              else
              begin
                quad2 := TDATQuad.Create;
                quad2.Color := ldc;
                quad2.Matrix := DATMatrix((pwx * ps) + x3, (pwy * y) + y3, (pwzy * y) + z3, 0,
                                          (pwx * x) + x3, (pwy * y) + y3, (pwzy * y) + z3, 0,
                                          (pwx * x) + x3, (pwy * y) + pwy + y3, (pwzy * (y + 1)) + z3, 0,
                                          (pwx * ps) + x3, (pwy * y) + pwy + y3, (pwzy *( y + 1)) + z3, 1);
                sr.Add(quad2.DATString);
                quad2.Free;
              end;
            end;
          end;
          ps := x;
          if x = Width then
          begin
            ps := 0;
            clo := Canvas.Pixels[0,y+1];
          end
          else
            clo := cl;
        end;
      end;
    end;
  end;

  frMain.Editor.Seltext := sr.text;
  sr.Free;
  pnProgress.Visible := False;
  frBMP2LDrawMain.Enabled := true;
  quad.Free;
  ModalResult := mrOK;
end;

procedure TfrBMP2LDrawMain.FormShow(Sender: TObject);
begin
  pc.ActivePage := TabSheet1;
end;

procedure TfrBMP2LDrawMain.btNext1Click(Sender: TObject);
begin
  pc.ActivePage := TabSheet2;
end;

procedure TfrBMP2LDrawMain.BitBtn5Click(Sender: TObject);
begin
  pc.ActivePage := TabSheet3;
end;

procedure TfrBMP2LDrawMain.Button1Click(Sender: TObject);
begin
  Screen.Cursor := crHandPoint;
end;

procedure TfrBMP2LDrawMain.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Screen.Cursor = crHandPoint then
  begin
    Edit1.Color := Image1.Canvas.Pixels[x,y];
    Edit1.Text := IntToHex(image1.Canvas.Pixels[x,y], 6);
    Edit1.Font.Color := ($FFFFFF - Image1.Canvas.Pixels[x,y]);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrBMP2LDrawMain.BitBtn6Click(Sender: TObject);
begin
  Edit1.Text := _('None');
  Edit1.Color := clWindow;
  Edit1.Font.Color := clBlack;
end;

procedure TfrBMP2LDrawMain.BitBtn4Click(Sender: TObject);
begin
  pc.ActivePage := TabSheet1;
end;

procedure TfrBMP2LDrawMain.TabSheet3Show(Sender: TObject);
begin
  edQuad.Enabled := Radiobutton2.Checked;
  if Radiobutton1.Checked then
    btSave.Enabled := (StrToFloat(edWidth.text) > 0)
  else
    btSave.Enabled := (edQuad.Text <> '');

end;

procedure TfrBMP2LDrawMain.FormCreate(Sender: TObject);
begin
  TranslateComponent(Self);
end;

end.
