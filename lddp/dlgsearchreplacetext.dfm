object frTextSearchReplaceDialog: TfrTextSearchReplaceDialog
  Left = 536
  Top = 269
  Width = 342
  Height = 237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 52
    Height = 13
    Caption = '&Search for:'
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 68
    Height = 13
    Caption = '&Replace With:'
  end
  object cbSearchText: TComboBox
    Left = 96
    Top = 8
    Width = 228
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object gbSearchOptions: TGroupBox
    Left = 8
    Top = 64
    Width = 154
    Height = 129
    Caption = 'Options'
    TabOrder = 1
    object cbSearchCaseSensitive: TCheckBox
      Left = 8
      Top = 17
      Width = 140
      Height = 17
      Caption = 'C&ase sensitivity'
      TabOrder = 0
    end
    object cbSearchWholeWords: TCheckBox
      Left = 8
      Top = 39
      Width = 140
      Height = 17
      Caption = '&Whole words only'
      TabOrder = 1
    end
    object cbSearchFromCursor: TCheckBox
      Left = 8
      Top = 61
      Width = 140
      Height = 17
      Caption = 'Search from &caret'
      TabOrder = 2
      OnClick = cbSearchFromCursorClick
    end
    object cbSearchSelectedOnly: TCheckBox
      Left = 8
      Top = 83
      Width = 140
      Height = 17
      Caption = 'Selected &text only'
      TabOrder = 3
    end
    object cbReplaceAll: TCheckBox
      Left = 8
      Top = 107
      Width = 140
      Height = 17
      Caption = 'Replace &All'
      TabOrder = 4
    end
  end
  object rgSearchDirection: TRadioGroup
    Left = 170
    Top = 64
    Width = 154
    Height = 65
    Caption = 'Direction'
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      '&Forward'
      '&Backward')
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 170
    Top = 173
    Width = 75
    Height = 23
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 249
    Top = 173
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Ca&ncel'
    ModalResult = 2
    TabOrder = 4
  end
  object cbReplaceText: TComboBox
    Left = 96
    Top = 32
    Width = 228
    Height = 21
    ItemHeight = 13
    TabOrder = 5
  end
end
