{These sources are copyright (C) 2003-2005 the LDDP project contributors.

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
unit modeltreeview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfrModelTreeView = class(TForm)
    Panel1: TPanel;
    tvModel: TTreeView;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure tvModelDblClick(Sender: TObject);
  private
  public
    procedure AddNodes(ANode: TTreeNode; AString: string);
  end;

var
  frModelTreeView: TfrModelTreeView;

implementation

{$R *.dfm}

uses
  main, childwin, DATModel, DATBase;


procedure TfrModelTreeView.FormShow(Sender: TObject);

var
  RootNode: TTreeNode;
  i: Integer;
  DModel: TDATModel;

begin
  tvModel.Items.Clear;
  DModel := TDATModel.Create;
  DModel.ModelText := (frMain.ActiveMDIChild as TfrEditorChild).memo.Lines.Text;
  with tvModel.Items do
  begin
    RootNode := Add(nil, ExtractFileName(frMain.ActiveMDIChild.Caption));
    for i := 0 to DModel.Count - 1 do
      if DModel[i] is TDATSubPart then
        AddNodes(RootNode, (DModel[i] as TDATSubPart).FileName);
    RootNode.Expanded := True;
  end;
  DModel.Free;
end;

procedure TfrModelTreeView.AddNodes(ANode: TTreeNode; AString: string);

var
  I: Integer;
  CurrentNode: TTreeNode;
  DModel: TDATModel;

begin
  if FileExists(ExtractFilePath(frMain.ActiveMDIChild.Caption) + AString) then
  begin
    DModel := TDATModel.Create;
    DModel.LoadModel(ExtractFilePath(frMain.ActiveMDIChild.Caption) + AString);
    CurrentNode := tvModel.Items.AddChild(ANode, AString);
    for I:=0 to DModel.Count - 1 do
      if DModel[i] is TDATSubPart then
        AddNodes(CurrentNode, (DModel[i] as TDATSubPart).FileName);
    DModel.Free
  end;
end;

procedure TfrModelTreeView.tvModelDblClick(Sender: TObject);
begin
  frMain.CreateMDIChild(ExtractFilePath(frMain.ActiveMDIChild.Caption) + tvModel.Selected.Text, False);
  ModalResult := mrOK;
end;

end.
