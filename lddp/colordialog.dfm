object frColorDialog: TfrColorDialog
  Left = 329
  Top = 303
  Width = 423
  Height = 294
  Caption = 'Change Color'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 415
    Height = 226
    Align = alClient
    Caption = 'Pick your color'
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 35
      Width = 45
      Height = 13
      Caption = 'Old color:'
    end
    object Label2: TLabel
      Left = 20
      Top = 68
      Width = 52
      Height = 13
      Caption = 'New Color:'
    end
    object Label3: TLabel
      Left = 20
      Top = 104
      Width = 74
      Height = 13
      Caption = 'Custom Colornr:'
    end
    object JvColorSquare1: TJvColorSquare
      Left = 216
      Top = 24
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare2: TJvColorSquare
      Left = 256
      Top = 24
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare3: TJvColorSquare
      Left = 296
      Top = 24
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare4: TJvColorSquare
      Left = 336
      Top = 24
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare5: TJvColorSquare
      Left = 216
      Top = 64
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare6: TJvColorSquare
      Left = 256
      Top = 64
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare7: TJvColorSquare
      Left = 296
      Top = 64
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare8: TJvColorSquare
      Left = 336
      Top = 64
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare9: TJvColorSquare
      Left = 216
      Top = 104
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare10: TJvColorSquare
      Left = 256
      Top = 104
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare11: TJvColorSquare
      Left = 296
      Top = 104
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare12: TJvColorSquare
      Left = 336
      Top = 104
      Width = 41
      Height = 41
      HelpType = htKeyword
      HelpKeyword = 'dfgh'
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare13: TJvColorSquare
      Left = 216
      Top = 144
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare14: TJvColorSquare
      Left = 256
      Top = 144
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare15: TJvColorSquare
      Left = 296
      Top = 144
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object JvColorSquare16: TJvColorSquare
      Left = 336
      Top = 144
      Width = 41
      Height = 41
      BorderStyle = bsSingle
      OnColorClick = JvColorSquare1ColorClick
      OnMouseMove = JvColorSquare1MouseMove
    end
    object btOldColor: TPanel
      Left = 96
      Top = 24
      Width = 113
      Height = 32
      BevelOuter = bvLowered
      BevelWidth = 3
      Caption = 'Unknown'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btOldCOlorClick
    end
    object btNewColor: TPanel
      Left = 96
      Top = 58
      Width = 113
      Height = 32
      BevelWidth = 3
      Caption = '0 - Black'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btNewColorClick
    end
    object ScrollBar: TScrollBar
      Left = 376
      Top = 26
      Width = 17
      Height = 156
      Kind = sbVertical
      LargeChange = 4
      Max = 10
      PageSize = 0
      TabOrder = 0
      OnChange = FormShow
    end
    object edColornumber: TEdit
      Left = 97
      Top = 100
      Width = 57
      Height = 21
      TabOrder = 1
    end
    object rbReplaceLine: TRadioButton
      Left = 36
      Top = 145
      Width = 157
      Height = 17
      Caption = 'Replace in actual line only'
      TabOrder = 2
    end
    object rbReplaceSelection: TRadioButton
      Left = 36
      Top = 167
      Width = 141
      Height = 17
      Caption = 'Replace for selection'
      TabOrder = 3
    end
    object rbReplaceAll: TRadioButton
      Left = 36
      Top = 188
      Width = 109
      Height = 17
      Caption = 'Replace all'
      TabOrder = 4
    end
    object edDescription: TEdit
      Left = 216
      Top = 184
      Width = 177
      Height = 21
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 226
    Width = 415
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      415
      41)
    object BitBtn1: TBitBtn
      Left = 244
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        000000FDFDFDFDFDFDFDFDFDFDFDFD00B0A8A800FDFDFDFDFDFDFDFDFDFD00B0
        B0B0B0A800FDFDFDFDFDFDFDFD00B0A8B0B0B0B000FDFDFDFDFDFDFD00B0A8B0
        B8B0B0B0B000FDFDFDFDFD00B0A8B8B8A800B0B0B000FDFDFDFDFD00A9B8A8A9
        00FD00B0B0B000FDFDFDFD00A1A8A900FDFD00B0B8B000FDFDFDFDFD000000FD
        FDFDFD00B8B8B000FDFDFDFDFDFDFDFDFDFDFD00B8B8B000FDFDFDFDFDFDFDFD
        FDFDFDFD00B8B8B000FDFDFDFDFDFDFDFDFDFDFD00B8B8B000FDFDFDFDFDFDFD
        FDFDFDFDFD00B8B8B000FDFDFDFDFDFDFDFDFDFDFD00B8B0B800FDFDFDFDFDFD
        FDFDFDFDFDFD000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    end
    object BitBtn2: TBitBtn
      Left = 327
      Top = 8
      Width = 77
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
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
    end
  end
end
