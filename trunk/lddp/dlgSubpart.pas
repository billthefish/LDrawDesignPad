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
unit dlgSubpart;

interface

uses
  gnugettext, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrSubFile = class(TForm)
    edFilename: TEdit;
    edAuthor: TEdit;
    rgType: TRadioGroup;
    cbUnofficial: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edTitle: TEdit;
    Label5: TLabel;
    edUsername: TEdit;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnCreate: TBitBtn;
    rgBFC: TRadioGroup;
    CategoryCombo: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    edKeywords: TEdit;
    edHelpText: TMemo;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSubFile: TfrSubFile;

implementation

{$R *.dfm}

uses
  main, options, windowsspecific;

procedure TfrSubFile.FormClose(Sender: TObject; var Action: TCloseAction);
var
  SubFile: TStringList;
  FileType, subfilename: string;
  i: Integer;

begin
  if ModalResult = mrOK then
  begin
    case rgType.ItemIndex of
      1: FileType := 'Submodel';
      2: FileType := 'Part';
      3: FileType := 'Subpart';
      4: FileType := 'Primitive';
      5: FileType := '48_Primitive';
      else FileType := 'Model';
    end;

    if cbUnofficial.Checked then
      FileType := 'Unofficial ' + FileType;

    SubFile := TStringList.Create;

    if edTitle.Text <> '' then
      SubFile.Add('0 ' + edTitle.Text);
    if edFileName.Text <> '' then
      SubFile.Add('0 Name: ' + edFileName.Text);
    if (edAuthor.Text <> '') and (edUsername.Text <> '') then
      SubFile.Add('0 Author: ' + edAuthor.Text + '[' + edUsername.text + ']');
    SubFile.Add('0 !LDRAW_ORG ' + FileType);
    SubFile.Add('0 !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt');
    SubFile.Add('');
    if edHelpText.Lines.Count > 0 then
    begin
      for i := 0 to edHelpText.Lines.Count - 1 do
        edHelpText.Lines[i] := '0 !HELP ' + edHelpText.Lines[i];
      SubFile.Add(edHelpText.Lines.Text);
    end;
    SubFile.Add('');
    case rgBFC.ItemIndex of
      0: SubFile.Add('0 BFC CERTIFY CCW');
      1: SubFile.Add('0 BFC CERTIFY CW');
      else SubFile.Add('0 BFC NOCERTIFY');
    end;
    SubFile.Add('');
    if CategoryCombo.ItemIndex > 0 then
      SubFile.Add('0 !CATEGORY ' + CategoryCombo.Text);
    if edKeywords.Text <> '' then
      SubFile.Add('0 !KEYWORDS ' + edKeywords.Text);
    SubFile.Add('');
    SubFile.Add(frMain.editor.SelText);



    subfilename := ExtractFilePath(frMain.DocumentTabs.ActiveDocument.FileName) + edFileName.Text;

    if FileExists(subfilename) and
       (MessageDlg(_('File of same name already exists.  Overwrite?'),
                   mtWarning, mbOKCancel, 0) <> mrOk) then
      Exit;

    SubFile.SaveToFile(subfilename);
    frMain.editor.SelText := '1 16 0 0 0 1 0 0 0 1 0 0 0 1 ' + edFileName.Text;
    frMain.OpenFile(subfilename);
  end;
end;

procedure TfrSubFile.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
  CategoryCombo.Items.CommaText := ReadUIConfigValue('LDrawCategories');
end;

procedure TfrSubFile.FormShow(Sender: TObject);
begin
  edFilename.Text := ExtractFileName(frMain.DocumentTabs.ActiveDocument.Filename);
  edAuthor.Text := frOptions.edName.Text;
  edUsername.Text := frOptions.edUsername.Text;
  edTitle.Text := '';
  edKeywords.Text := '';
  edHelpText.Clear;
  rgType.ItemIndex := -1;
  rgBFC.ItemIndex := -1;
  cbUnofficial.Checked := False;
  CategoryCombo.ItemIndex := -1;
end;

end.