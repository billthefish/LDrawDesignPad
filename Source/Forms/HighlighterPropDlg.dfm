object LDDPHighterEditorPropertiesDlg: TLDDPHighterEditorPropertiesDlg
  Left = 0
  Top = 0
  Caption = 'LDDPHighterEditorPropertiesDlg'
  ClientHeight = 254
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 135
    Top = 8
    Width = 84
    Height = 13
    Caption = 'Foreground Color'
  end
  object Label2: TLabel
    Left = 135
    Top = 55
    Width = 84
    Height = 13
    Caption = 'Background Color'
  end
  object AttrList: TListBox
    Left = 8
    Top = 8
    Width = 121
    Height = 203
    ItemHeight = 13
    TabOrder = 0
    OnClick = AttrListClick
  end
  object BackColor: TColorBox
    Left = 135
    Top = 74
    Width = 145
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
    TabOrder = 1
    OnChange = ValueChange
  end
  object GroupBox1: TGroupBox
    Left = 135
    Top = 102
    Width = 145
    Height = 109
    Caption = 'Text Attributes'
    TabOrder = 2
    object cbItalic: TCheckBox
      Left = 3
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Italic'
      TabOrder = 0
      OnClick = ValueChange
    end
    object cbStrike: TCheckBox
      Left = 3
      Top = 85
      Width = 97
      Height = 17
      Caption = 'Strikethrough'
      TabOrder = 1
      OnClick = ValueChange
    end
    object cbUnderline: TCheckBox
      Left = 3
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Underline'
      TabOrder = 2
      OnClick = ValueChange
    end
    object cbBold: TCheckBox
      Left = 3
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Bold'
      TabOrder = 3
      OnClick = ValueChange
    end
  end
  object ForeColor: TColorBox
    Left = 135
    Top = 27
    Width = 145
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
    TabOrder = 3
    OnChange = ValueChange
  end
  object btnCancel: TButton
    Left = 204
    Top = 221
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object btnOk: TButton
    Left = 8
    Top = 221
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 5
  end
  object Highlighter: TSynLDRSyn
    Left = 136
    Top = 216
  end
end
