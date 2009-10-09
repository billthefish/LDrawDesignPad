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
  TLDDPSortDlg = class(TForm)
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
    PreserveMPD: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LDDPSortDlg: TLDDPSortDlg;

implementation

uses DATBase, DATModel, DATUtils, main, options, commonprocs;
{$R *.dfm}


procedure TLDDPSortDlg.btnOKClick(Sender: TObject);
var
  DModel: TDATModel;
  DMPDModel: TDATMPDModel;
  startline, endline, i: Integer;
  SortTerms: TDATSortArray;

begin
    if rgScope.ItemIndex = 0 then
      LDDPMain.editor.SelectAll
    else
      LDDPMain.editor.ExpandSelection(startline, endline);

    for i := 1 to 3 do
      with (SortPanel.FindChildControl('cbSort' + IntToStr(i)) as TComboBox) do
        if ItemIndex >= 0 then
          SortTerms[i] := TDATSortTerm(ItemIndex)
        else
          SortTerms[i] := dsNil;

    if PreserveMPD.Checked then
    begin
      DMPDModel := TDATMPDModel.Create;
      DMPDModel.Free;
    end
    else
    begin
      DModel := LDDPCreateDATModel;
      try
        DModel.ModelText := LDDPMain.editor.SelText;
        DModel.SortTerms := SortTerms;
        DModel.Sort(rgSortDirection.ItemIndex < 1);
        LDDPMain.editor.SelText := DModel.ModelText;
      finally
        DModel.Free;
      end;
    end;

end;

procedure TLDDPSortDlg.FormActivate(Sender: TObject);
begin
    if LDDPMain.editor.SelLength > 0 then
      rgScope.ItemIndex := 1
    else
      rgScope.ItemIndex := 0;
end;

procedure TLDDPSortDlg.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
end;

end.
