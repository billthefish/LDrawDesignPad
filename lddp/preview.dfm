object Form1: TForm1
  Left = 318
  Top = 166
  Width = 801
  Height = 540
  VertScrollBar.Range = 29
  ActiveControl = ScrollBar
  AutoScroll = False
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 793
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 28
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'Print'
      ImageIndex = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 793
    Height = 477
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object PaintBox1: TPaintBox
      Left = 1
      Top = 1
      Width = 773
      Height = 475
      Align = alClient
    end
    object ScrollBar: TScrollBar
      Left = 774
      Top = 1
      Width = 18
      Height = 475
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      TabOrder = 0
    end
  end
end
