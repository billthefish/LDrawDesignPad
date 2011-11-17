{These sources are copyright (C) 2003-2011 Orion Pobursky

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
unit ReplaceDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, SynEditTypes;

type
  TLDDPReplaceDlg = class(TForm)
    Label1: TLabel;
    cbSearchText: TComboBox;
    rgSearchDirection: TRadioGroup;
    gbSearchOptions: TGroupBox;
    cbSearchCaseSensitive: TCheckBox;
    btnOK: TButton;
    btnCancel: TButton;
    Label2: TLabel;
    cbReplaceText: TComboBox;
    rgScope: TRadioGroup;
    rgOrigin: TRadioGroup;
    cbWholeWords: TCheckBox;
    cbPromptOnReplace: TCheckBox;
    btnAll: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    function GetReplaceHistory: string;
    function GetSearchHistory: string;
    procedure SetReplaceHistory(const Value: string);
    procedure SetSearchHistory(const Value: string);
    function GetSearchOptions: TSynSearchOptions;
    procedure UpdateCombo(combo: TComboBox);

  public
    property ReplaceHistory: string read GetReplaceHistory write SetReplaceHistory;
    property SearchHistory: string read GetSearchHistory write SetSearchHistory;
    property SearchOptions: TSynSearchOptions read GetSearchOptions;
  end;

var
  LDDPReplaceDlg: TLDDPReplaceDlg;

implementation

{$R *.DFM}

{ TLDDPReplaceForm }

procedure TLDDPReplaceDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrOK then
  begin
    UpdateCombo(cbSearchText);
    UpdateCombo(cbReplaceText);
  end;
end;

function TLDDPReplaceDlg.GetReplaceHistory: string;
begin
  Result := cbReplaceText.Items.CommaText;
end;

function TLDDPReplaceDlg.GetSearchHistory: string;
begin
  Result := cbSearchText.Items.CommaText;
end;

function TLDDPReplaceDlg.GetSearchOptions: TSynSearchOptions;
begin
    Result := [ssoReplace];
    if cbSearchCaseSensitive.Checked then
      Include(Result, ssoMatchCase);
    if cbWholeWords.Checked then
      Include(Result, ssoWholeWord);
    if cbPromptOnReplace.Checked then
      Include(Result, ssoPrompt);
    if rgOrigin.ItemIndex = 1 then
      Include(Result, ssoEntireScope);
    if rgSearchDirection.ItemIndex = 1 then
      Include(Result, ssoBackwards);
    if rgScope.ItemIndex = 1 then
      Include(Result, ssoSelectedOnly);
end;

procedure TLDDPReplaceDlg.SetReplaceHistory(const Value: string);
begin
  cbReplaceText.Items.CommaText := Value;
end;

procedure TLDDPReplaceDlg.SetSearchHistory(const Value: string);
begin
  cbSearchText.Items.CommaText := Value;
end;

procedure TLDDPReplaceDlg.UpdateCombo(combo: TComboBox);
var
  Text: string;
  Idx: Integer;

begin
  Text := combo.Text;
  if Text <> '' then
  begin
    Idx := combo.Items.IndexOf(Text);
    if Idx > -1 then
    begin
      combo.Items.Delete(Idx);
      combo.Items.Insert(0, Text);
      combo.Text := Text;
    end
    else
      combo.Items.Insert(0, Text);
  end;
end;

end.

 