object LDDPSubFileDlg: TLDDPSubFileDlg
  Left = 516
  Top = 376
  BorderStyle = bsDialog
  Caption = 'Move Selection to Subfile'
  ClientHeight = 414
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 45
    Height = 13
    Caption = 'Filename:'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Model Title:'
  end
  object Label3: TLabel
    Left = 8
    Top = 62
    Width = 34
    Height = 13
    Caption = 'Author:'
  end
  object Label5: TLabel
    Left = 8
    Top = 89
    Width = 103
    Height = 13
    Caption = 'LDraw.org Username:'
  end
  object Label4: TLabel
    Left = 8
    Top = 322
    Width = 45
    Height = 13
    Caption = 'Category:'
  end
  object Label6: TLabel
    Left = 8
    Top = 349
    Width = 49
    Height = 13
    Caption = 'Keywords:'
  end
  object Label7: TLabel
    Left = 8
    Top = 194
    Width = 25
    Height = 13
    Caption = 'Help:'
  end
  object edFilename: TEdit
    Left = 115
    Top = 32
    Width = 398
    Height = 21
    TabOrder = 0
  end
  object edAuthor: TEdit
    Left = 115
    Top = 59
    Width = 398
    Height = 21
    TabOrder = 1
  end
  object rgType: TRadioGroup
    Left = 8
    Top = 113
    Width = 505
    Height = 49
    Caption = 'Model Type'
    Columns = 6
    Items.Strings = (
      'Model'
      'Submodel'
      'Part'
      'Subpart'
      'Primitive'
      '48_Primitive')
    TabOrder = 2
  end
  object cbUnofficial: TCheckBox
    Left = 8
    Top = 168
    Width = 153
    Height = 17
    Caption = 'Mark as Unofficial'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object edTitle: TEdit
    Left = 115
    Top = 5
    Width = 398
    Height = 21
    TabOrder = 4
  end
  object edUsername: TEdit
    Left = 115
    Top = 86
    Width = 398
    Height = 21
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 373
    Width = 521
    Height = 41
    Align = alBottom
    TabOrder = 6
    object btnCancel: TBitBtn
      Left = 438
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD000000FD
        FDFDFD0000FDFDFDFDFDFD000E0E0E00FDFD000E0E00FDFDFDFDFD00575F5700
        FD000E9F9F4F00FDFDFDFD00579F9F57000E5F9F9F5700FDFDFDFD00575F5F9F
        575F9F9F5F0E00FDFDFDFDFD00575F5F5F9F5F9F570E00FDFDFDFDFDFD005757
        5F5F9F570E00FDFDFDFDFDFDFDFD0057575757570E00FDFDFDFDFDFDFDFD0057
        575757575700FDFDFDFDFDFDFDFD00574F575757570E00FDFDFDFDFDFD005757
        4F57575757570E00FDFDFDFDFD0057574E4F57575757570E00FDFDFD005F570E
        5757004F5757570E00FDFDFD00575757575700004E57574F00FDFDFDFD005757
        5700FDFD00000000FDFDFDFDFDFD000000FDFDFDFDFDFDFDFDFD}
      ModalResult = 2
      TabOrder = 0
    end
    object btnCreate: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Create'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        000000FDFDFDFDFDFDFDFDFDFDFDFD00B0A8A800FDFDFDFDFDFDFDFDFDFD00B0
        B0B0B0A800FDFDFDFDFDFDFDFD00B0A8B0B0B0B000FDFDFDFDFDFDFD00B0A8B0
        B8B0B0B0B000FDFDFDFDFD00B0A8B8B8A800B0B0B000FDFDFDFDFD00A9B8A8A9
        00FD00B0B0B000FDFDFDFD00A1A8A900FDFD00B0B8B000FDFDFDFDFD000000FD
        FDFDFD00B8B8B000FDFDFDFDFDFDFDFDFDFDFD00B8B8B000FDFDFDFDFDFDFDFD
        FDFDFDFD00B8B8B000FDFDFDFDFDFDFDFDFDFDFD00B8B8B000FDFDFDFDFDFDFD
        FDFDFDFDFD00B8B8B000FDFDFDFDFDFDFDFDFDFDFD00B8B0B800FDFDFDFDFDFD
        FDFDFDFDFDFD000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      ModalResult = 1
      TabOrder = 1
    end
  end
  object rgBFC: TRadioGroup
    Left = 8
    Top = 264
    Width = 505
    Height = 49
    Caption = 'BFC'
    Columns = 3
    Items.Strings = (
      'CERTIFY CCW'
      'CERTIFY CW'
      'NO CERTIFY')
    TabOrder = 7
  end
  object CategoryCombo: TComboBox
    Left = 115
    Top = 319
    Width = 145
    Height = 21
    Style = csDropDownList
    Sorted = True
    TabOrder = 8
  end
  object edKeywords: TEdit
    Left = 115
    Top = 346
    Width = 398
    Height = 21
    TabOrder = 9
  end
  object edHelpText: TMemo
    Left = 115
    Top = 191
    Width = 398
    Height = 67
    ScrollBars = ssBoth
    TabOrder = 10
  end
end
