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


unit dlgsearchreplacetext;

interface

uses
  {$IFDEF MSWINDOWS}
  Windows, Messages,
  {$ENDIF}
  Types, Classes, Variants, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, SysUtils, SynEditTypes;

type
  TfrTextSearchReplaceDialog = class(TForm)
    Label1: TLabel;
    cbSearchText: TComboBox;
    rgSearchDirection: TRadioGroup;
    gbSearchOptions: TGroupBox;
    cbSearchCaseSensitive: TCheckBox;
    cbSearchWholeWords: TCheckBox;
    cbSearchFromCursor: TCheckBox;
    cbSearchSelectedOnly: TCheckBox;
    btnOK: TButton;
    btnCancel: TButton;
    Label2: TLabel;
    cbReplaceText: TComboBox;
    cbReplaceAll: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbSearchFromCursorClick(Sender: TObject);

    public
      SearchOptions: TSynSearchOptions;
      SearchText, ReplaceText: string;
  end;

var
  frTextSearchReplaceDialog: TfrTextSearchReplaceDialog;

implementation

{$R *.dfm}

procedure TfrTextSearchReplaceDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cbSearchText.Text <> '') and
     (cbSearchText.Items.IndexOf(cbSearchText.Text) < 0) then
  begin
    cbSearchText.Items.Append(cbSearchText.Text);
    cbSearchText.Text := '';
    cbSearchText.ItemIndex := cbSearchText.Items.Count - 1;
  end;
  if (cbReplaceText.Text <> '') and
     (cbReplaceText.Items.IndexOf(cbReplaceText.Text) < 0) then
  begin
    cbReplaceText.Items.Append(cbReplaceText.Text);
    cbReplaceText.Text := '';
    cbReplaceText.ItemIndex := cbReplaceText.Items.Count - 1;
  end;

  if cbSearchText.ItemIndex >= 0 then
    SearchText := cbSearchText.Items[cbSearchText.ItemIndex]
  else
    SearchText := '';
  if cbReplaceText.ItemIndex >= 0 then
    ReplaceText := cbReplaceText.Items[cbReplaceText.ItemIndex]
  else
    ReplaceText := '';

  SearchOptions := [ssoPrompt];
  if cbSearchCaseSensitive.Checked then
    SearchOptions := SearchOptions + [ssoMatchCase];
  if cbSearchWholeWords.Checked then
    SearchOptions := SearchOptions + [ssoWholeWord];
  if cbSearchSelectedOnly.Checked then
    SearchOptions := SearchOptions + [ssoSelectedOnly];
  if not cbSearchFromCursor.Checked then
    SearchOptions := SearchOptions + [ssoEntireScope];
  if rgSearchDirection.ItemIndex = 1 then
    SearchOptions := SearchOptions + [ssoBackwards];
  if cbReplaceText.Visible then
  begin
    SearchOptions := SearchOptions + [ssoReplace];
    if cbReplaceAll.Checked then
      SearchOptions := SearchOptions + [ssoReplaceAll];
  end;

end;

procedure TfrTextSearchReplaceDialog.cbSearchFromCursorClick(
  Sender: TObject);
begin
  rgSearchDirection.Enabled := (Sender as TCheckBox).Checked;
end;

end.

