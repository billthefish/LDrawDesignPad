object LDDPReplaceDlg: TLDDPReplaceDlg
  Left = 132
  Top = 168
  BorderStyle = bsDialog
  Caption = 'Search Text'
  ClientHeight = 257
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 52
    Height = 13
    Caption = '&Search for:'
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 65
    Height = 13
    Caption = '&Replace with:'
  end
  object cbSearchText: TComboBox
    Left = 96
    Top = 8
    Width = 228
    Height = 21
    TabOrder = 0
  end
  object gbSearchOptions: TGroupBox
    Left = 8
    Top = 62
    Width = 154
    Height = 89
    Caption = 'Options'
    TabOrder = 1
    object cbSearchCaseSensitive: TCheckBox
      Left = 3
      Top = 17
      Width = 140
      Height = 17
      Caption = 'C&ase sensitivity'
      TabOrder = 0
    end
    object cbWholeWords: TCheckBox
      Left = 3
      Top = 40
      Width = 140
      Height = 17
      Caption = 'Whole words'
      TabOrder = 1
    end
    object cbPromptOnReplace: TCheckBox
      Left = 3
      Top = 63
      Width = 140
      Height = 17
      Caption = 'Prompt on replace'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object rgSearchDirection: TRadioGroup
    Left = 170
    Top = 62
    Width = 154
    Height = 89
    Caption = 'Direction'
    ItemIndex = 0
    Items.Strings = (
      '&Forward'
      '&Backward')
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 8
    Top = 228
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 249
    Top = 226
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object cbReplaceText: TComboBox
    Left = 96
    Top = 35
    Width = 228
    Height = 21
    TabOrder = 5
  end
  object rgScope: TRadioGroup
    Left = 8
    Top = 157
    Width = 154
    Height = 65
    Caption = 'Scope'
    ItemIndex = 0
    Items.Strings = (
      '&Entire text'
      '&Selected only')
    TabOrder = 6
  end
  object rgOrigin: TRadioGroup
    Left = 168
    Top = 157
    Width = 154
    Height = 65
    Caption = 'Origin'
    ItemIndex = 1
    Items.Strings = (
      '&From cursor'
      '&Entire scope')
    TabOrder = 7
  end
  object btnAll: TButton
    Left = 89
    Top = 228
    Width = 75
    Height = 23
    Caption = 'Replace All'
    Default = True
    ModalResult = 8
    TabOrder = 8
  end
end
