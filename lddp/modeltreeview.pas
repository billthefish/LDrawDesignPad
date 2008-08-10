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
unit modeltreeview;

interface

uses
  gnugettext, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, JvComponentBase,
  JvDockControlForm;

type
  TfrModelTreeView = class(TForm)
    tvModel: TTreeView;
    JvDockClient1: TJvDockClient;
    procedure FormShow(Sender: TObject);
    procedure tvModelDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
  public
    procedure AddNodes(ANode: TTreeNode; AString: string);
    procedure LoadFormValues;
    procedure SaveFormValues;
    procedure RestorePosition;
  end;

var
  frModelTreeView: TfrModelTreeView;

implementation

{$R *.dfm}

uses
  IniFiles, main, windowsspecific, DATModel, DATBase;


procedure TfrModelTreeView.FormShow(Sender: TObject);

var
  RootNode: TTreeNode;
  i: Integer;
  DModel: TDATModel;

begin
  LoadFormValues;
  tvModel.Items.Clear;
  DModel := TDATModel.Create;
  DModel.ModelText := frMain.editor.Lines.Text;
  with tvModel.Items do
  begin
    RootNode := Add(nil, ExtractFileName(frMain.DocumentTabs.ActiveDocument.FileName));
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
  if FileExists(ExtractFilePath(frMain.DocumentTabs.ActiveDocument.FileName) + AString) then
  begin
    DModel := TDATModel.Create;
    DModel.LoadModel(ExtractFilePath(frMain.DocumentTabs.ActiveDocument.FileName) + AString);
    CurrentNode := tvModel.Items.AddChild(ANode, AString);
    for I:=0 to DModel.Count - 1 do
      if DModel[i] is TDATSubPart then
        AddNodes(CurrentNode, (DModel[i] as TDATSubPart).FileName);
    DModel.Free
  end;
end;

procedure TfrModelTreeView.tvModelDblClick(Sender: TObject);
begin
  frMain.OpenFile(ExtractFilePath(frMain.DocumentTabs.ActiveDocument.FileName) + tvModel.Selected.Text);
end;

procedure TfrModelTreeView.FormCreate(Sender: TObject);
begin
  TranslateComponent (self);
end;

procedure TfrModelTreeView.FormDestroy(Sender: TObject);
begin
  SaveFormValues;
end;

procedure TfrModelTreeView.LoadFormValues;
// Loads form values from the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP ErrorWindow';

  Left := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Left', Left);
  Top := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Top', Top);
  Width := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Width', Width);
  Height := LDDPini.ReadInteger(IniSection, 'frErrorWindow_Height', Height);

  LDDPini.Free;
end;

procedure TfrModelTreeView.SaveFormValues;
// Saves form values to the LDDP.ini file
var
  LDDPini: TMemIniFile;
  IniSection: string;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  // Save Main position, size, and toolbar visibility
  Inisection := 'LDDP ErrorWindow';
  LDDPini.EraseSection(IniSection);

  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Left', Left);
  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Top', Top);
  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Width', Width);
  LDDPini.WriteInteger(IniSection, 'frErrorWindow_Height', Height);
  LDDPini.WriteBool(IniSection, 'frErrorWindow_Floating', Floating);

  LDDPini.UpdateFile;
  LDDPini.Free;
end;

procedure TfrModelTreeView.RestorePosition;

var
  LDDPini: TMemIniFile;
  IniSection: string;
  floating: Boolean;

begin
  LDDPini := TMemIniFile.Create(IniFilePath + '\LDDP.ini');

  Inisection := 'LDDP ErrorWindow';

  floating := LDDPini.ReadBool(IniSection, 'frErrorWindow_Floating', False);

  if Visible and not floating then
    ManualDock(frMain.JvDockServer1.LeftDockPanel, nil, alLeft);

  LDDPini.Free;
end;

end.
