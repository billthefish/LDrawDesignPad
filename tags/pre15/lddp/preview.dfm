object Form1: TForm1
  Left = 318
  Top = 166
  Width = 783
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 775
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
    Width = 775
    Height = 484
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object PaintBox1: TPaintBox
      Left = 1
      Top = 1
      Width = 755
      Height = 482
      Align = alClient
    end
    object ScrollBar: TScrollBar
      Left = 756
      Top = 1
      Width = 18
      Height = 482
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      TabOrder = 0
    end
  end
  object PrintDialog: TPrintDialog
    Options = [poPageNums]
    Left = 68
  end
end
