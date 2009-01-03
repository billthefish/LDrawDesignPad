object frMPDExplorer: TfrMPDExplorer
  Left = 688
  Top = 149
  BorderStyle = bsSizeToolWin
  Caption = 'Model Tree View'
  ClientHeight = 348
  ClientWidth = 344
  Color = clBtnFace
  DockSite = True
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tvModel: TTreeView
    Left = 0
    Top = 0
    Width = 344
    Height = 348
    Align = alClient
    Indent = 19
    TabOrder = 0
    OnDblClick = tvModelDblClick
  end
  object JvDockClient1: TJvDockClient
    DirectDrag = False
    DockStyle = frMain.JvDockDelphiStyle1
    CustomDock = False
    Left = 8
    Top = 8
  end
end
