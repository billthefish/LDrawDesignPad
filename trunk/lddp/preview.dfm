object Form1: TForm1
  Left = 318
  Top = 166
  Width = 783
  Height = 540
  VertScrollBar.Range = 29
  ActiveControl = ScrollBar
  Caption = 'Form1'
  ParentFont = False
  PixelsPerInch = 96
  TextHeight = 13
  TextWidth = 6
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 783
    Height = 29
    ButtonHeight = 20
    ButtonWidth = 30
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 1
      Top = 4
      Height = 20
      Caption = 'Print'
      ImageIndex = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 783
    Height = 511
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object PaintBox1: TPaintBox
      Left = 1
      Top = 1
      Width = 763
      Height = 509
      Align = alClient
    end
    object ScrollBar: TScrollBar
      Left = 764
      Top = 1
      Width = 18
      Height = 509
      Align = alRight
      Kind = sbVertical
      TabOrder = 0
    end
  end
end
