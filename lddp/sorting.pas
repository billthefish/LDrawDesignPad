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
unit sorting;

interface

uses
  gnugettext, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfmSort = class(TForm)
    rgScope: TRadioGroup;
    cbSort: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    rgSortDirection: TRadioGroup;
    Label2: TLabel;
    cbSort2: TComboBox;
    Label3: TLabel;
    cbSort3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSort: TfmSort;

implementation

uses DATBase, DATModel, DATUtils, main, options, commonprocs;
{$R *.dfm}


procedure TfmSort.BitBtn1Click(Sender: TObject);
var
  DModel: TDATModel;
  startline, endline: Integer;

  function GetSortVar(idx: Integer): TDATSortTerm;

  begin
    case idx of
      0: Result := dsNil;
      1: Result := dsColor;
      2: Result := dsMidX;
      3: Result := dsMidY;
      4: Result := dsMidZ;
      5: Result := dsMaxX;
      6: Result := dsMaxY;
      7: Result := dsMaxZ;
      8: Result := dsMinX;
      9: Result := dsMinY;
      10: Result := dsMinZ;
      11: Result := dsLineType;
      else Result := dsNil;
    end;
  end;

begin
    DModel := CreateDATModel(frOptions.sePntAcc.Value, frOptions.seRotAcc.Value);

    if fmSort.rgScope.ItemIndex = 0 then
      frMain.editor.SelectAll
    else
      frMain.editor.ExpandSelection(startline, endline);

    DModel.ModelText := frMain.editor.SelText;

    DModel.SortTerm[1] := GetSortVar(fmSort.cbSort.ItemIndex);
    DModel.SortTerm[2] := GetSortVar(fmSort.cbSort2.ItemIndex);
    DModel.SortTerm[3] := GetSortVar(fmSort.cbSort3.ItemIndex);

    DModel.Sort(fmSort.rgSortDirection.ItemIndex < 1);

    frMain.editor.SelText := DModel.ModelText;
end;

procedure TfmSort.FormActivate(Sender: TObject);
begin
    if frMain.editor.SelLength > 0 then
      fmSort.rgScope.ItemIndex := 1
    else
      fmSort.rgScope.ItemIndex := 0;
end;

procedure TfmSort.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
end;

end.
