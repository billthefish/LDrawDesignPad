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
unit sorting;

interface

uses
  gnugettext, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfmSort = class(TForm)
    rgScope: TRadioGroup;
    cbSort1: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    SortPanel: TPanel;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    rgSortDirection: TRadioGroup;
    Label2: TLabel;
    cbSort2: TComboBox;
    Label3: TLabel;
    cbSort3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
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


procedure TfmSort.btnOKClick(Sender: TObject);
var
  DModel: TDATModel;
  startline, endline, i: Integer;
begin
    DModel := LDDPCreateDATModel;

    if fmSort.rgScope.ItemIndex = 0 then
      frMain.editor.SelectAll
    else
      frMain.editor.ExpandSelection(startline, endline);

    DModel.ModelText := frMain.editor.SelText;

    for i := 1 to 3 do
      with (SortPanel.FindChildControl('cbSort' + IntToStr(i)) as TComboBox) do
        if ItemIndex >= 0 then
          DModel.SortTerm[i] := TDATSortTerm(ItemIndex)
        else
          DModel.SortTerm[i] := dsNil;

    DModel.Sort(rgSortDirection.ItemIndex < 1);

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
