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
  DModel.Free
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
