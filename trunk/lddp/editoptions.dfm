object frEditOptions: TfrEditOptions
  Left = 231
  Top = 332
  Width = 446
  Height = 462
  Caption = 'Editor Options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 438
    Height = 391
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Highlighting'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 38
        Height = 13
        Caption = 'Element'
      end
      object Label2: TLabel
        Left = 112
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Foreground'
      end
      object Label3: TLabel
        Left = 112
        Top = 64
        Width = 58
        Height = 13
        Caption = 'Background'
      end
      object lstElement: TListBox
        Left = 0
        Top = 16
        Width = 105
        Height = 177
        ItemHeight = 13
        Items.Strings = (
          'Default'
          'Color'
          'Comment'
          'Triple 1'
          'Triple 2'
          'Triple 3'
          'Triple 4'
          'Line'
          'Triangle'
          'Quad'
          'Optional Line')
        TabOrder = 0
        OnClick = lstElementClick
      end
      object SynMemo1: TSynMemo
        Left = 0
        Top = 200
        Width = 425
        Height = 153
        Cursor = crIBeam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Terminal'
        Gutter.Font.Style = []
        Highlighter = SynLDRSyn1
        Keystrokes = <
          item
            Command = ecUp
            ShortCut = 38
          end
          item
            Command = ecSelUp
            ShortCut = 8230
          end
          item
            Command = ecScrollUp
            ShortCut = 16422
          end
          item
            Command = ecDown
            ShortCut = 40
          end
          item
            Command = ecSelDown
            ShortCut = 8232
          end
          item
            Command = ecScrollDown
            ShortCut = 16424
          end
          item
            Command = ecLeft
            ShortCut = 37
          end
          item
            Command = ecSelLeft
            ShortCut = 8229
          end
          item
            Command = ecWordLeft
            ShortCut = 16421
          end
          item
            Command = ecSelWordLeft
            ShortCut = 24613
          end
          item
            Command = ecRight
            ShortCut = 39
          end
          item
            Command = ecSelRight
            ShortCut = 8231
          end
          item
            Command = ecWordRight
            ShortCut = 16423
          end
          item
            Command = ecSelWordRight
            ShortCut = 24615
          end
          item
            Command = ecPageDown
            ShortCut = 34
          end
          item
            Command = ecSelPageDown
            ShortCut = 8226
          end
          item
            Command = ecPageBottom
            ShortCut = 16418
          end
          item
            Command = ecSelPageBottom
            ShortCut = 24610
          end
          item
            Command = ecPageUp
            ShortCut = 33
          end
          item
            Command = ecSelPageUp
            ShortCut = 8225
          end
          item
            Command = ecPageTop
            ShortCut = 16417
          end
          item
            Command = ecSelPageTop
            ShortCut = 24609
          end
          item
            Command = ecLineStart
            ShortCut = 36
          end
          item
            Command = ecSelLineStart
            ShortCut = 8228
          end
          item
            Command = ecEditorTop
            ShortCut = 16420
          end
          item
            Command = ecSelEditorTop
            ShortCut = 24612
          end
          item
            Command = ecLineEnd
            ShortCut = 35
          end
          item
            Command = ecSelLineEnd
            ShortCut = 8227
          end
          item
            Command = ecEditorBottom
            ShortCut = 16419
          end
          item
            Command = ecSelEditorBottom
            ShortCut = 24611
          end
          item
            Command = ecToggleMode
            ShortCut = 45
          end
          item
            Command = ecCopy
            ShortCut = 16429
          end
          item
            Command = ecCut
            ShortCut = 8238
          end
          item
            Command = ecPaste
            ShortCut = 8237
          end
          item
            Command = ecDeleteChar
            ShortCut = 46
          end
          item
            Command = ecDeleteLastChar
            ShortCut = 8
          end
          item
            Command = ecDeleteLastChar
            ShortCut = 8200
          end
          item
            Command = ecDeleteLastWord
            ShortCut = 16392
          end
          item
            Command = ecUndo
            ShortCut = 32776
          end
          item
            Command = ecRedo
            ShortCut = 40968
          end
          item
            Command = ecLineBreak
            ShortCut = 13
          end
          item
            Command = ecLineBreak
            ShortCut = 8205
          end
          item
            Command = ecTab
            ShortCut = 9
          end
          item
            Command = ecShiftTab
            ShortCut = 8201
          end
          item
            Command = ecContextHelp
            ShortCut = 16496
          end
          item
            Command = ecSelectAll
            ShortCut = 16449
          end
          item
            Command = ecCopy
            ShortCut = 16451
          end
          item
            Command = ecPaste
            ShortCut = 16470
          end
          item
            Command = ecCut
            ShortCut = 16472
          end
          item
            Command = ecBlockIndent
            ShortCut = 24649
          end
          item
            Command = ecBlockUnindent
            ShortCut = 24661
          end
          item
            Command = ecLineBreak
            ShortCut = 16461
          end
          item
            Command = ecInsertLine
            ShortCut = 16462
          end
          item
            Command = ecDeleteWord
            ShortCut = 16468
          end
          item
            Command = ecDeleteLine
            ShortCut = 16473
          end
          item
            Command = ecDeleteEOL
            ShortCut = 24665
          end
          item
            Command = ecUndo
            ShortCut = 16474
          end
          item
            Command = ecRedo
            ShortCut = 24666
          end
          item
            Command = ecGotoMarker0
            ShortCut = 16432
          end
          item
            Command = ecGotoMarker1
            ShortCut = 16433
          end
          item
            Command = ecGotoMarker2
            ShortCut = 16434
          end
          item
            Command = ecGotoMarker3
            ShortCut = 16435
          end
          item
            Command = ecGotoMarker4
            ShortCut = 16436
          end
          item
            Command = ecGotoMarker5
            ShortCut = 16437
          end
          item
            Command = ecGotoMarker6
            ShortCut = 16438
          end
          item
            Command = ecGotoMarker7
            ShortCut = 16439
          end
          item
            Command = ecGotoMarker8
            ShortCut = 16440
          end
          item
            Command = ecGotoMarker9
            ShortCut = 16441
          end
          item
            Command = ecSetMarker0
            ShortCut = 24624
          end
          item
            Command = ecSetMarker1
            ShortCut = 24625
          end
          item
            Command = ecSetMarker2
            ShortCut = 24626
          end
          item
            Command = ecSetMarker3
            ShortCut = 24627
          end
          item
            Command = ecSetMarker4
            ShortCut = 24628
          end
          item
            Command = ecSetMarker5
            ShortCut = 24629
          end
          item
            Command = ecSetMarker6
            ShortCut = 24630
          end
          item
            Command = ecSetMarker7
            ShortCut = 24631
          end
          item
            Command = ecSetMarker8
            ShortCut = 24632
          end
          item
            Command = ecSetMarker9
            ShortCut = 24633
          end
          item
            Command = ecNormalSelect
            ShortCut = 24654
          end
          item
            Command = ecColumnSelect
            ShortCut = 24643
          end
          item
            Command = ecLineSelect
            ShortCut = 24652
          end
          item
            Command = ecMatchBracket
            ShortCut = 24642
          end>
        Lines.Strings = (
          '')
        ReadOnly = True
        ScrollBars = ssNone
      end
      object clbForeground: TColorBox
        Left = 112
        Top = 32
        Width = 129
        Height = 22
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
        ItemHeight = 16
        TabOrder = 2
        OnChange = clbForegroundChange
      end
      object clbBackground: TColorBox
        Left = 112
        Top = 80
        Width = 129
        Height = 22
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
        ItemHeight = 16
        TabOrder = 3
        OnChange = clbBackgroundChange
      end
      object GroupBox1: TGroupBox
        Left = 248
        Top = 16
        Width = 105
        Height = 113
        Caption = 'Style'
        TabOrder = 4
        object cbxBold: TCheckBox
          Left = 8
          Top = 16
          Width = 89
          Height = 17
          Caption = 'Bold'
          TabOrder = 0
          OnClick = cbxBoldClick
        end
        object cbxItalic: TCheckBox
          Left = 8
          Top = 40
          Width = 89
          Height = 17
          Caption = 'Italic'
          TabOrder = 1
          OnClick = cbxItalicClick
        end
        object cbxUnderline: TCheckBox
          Left = 8
          Top = 64
          Width = 89
          Height = 17
          Caption = 'Underline'
          TabOrder = 2
          OnClick = cbxUnderlineClick
        end
        object cbxStrikeOut: TCheckBox
          Left = 8
          Top = 88
          Width = 89
          Height = 17
          Caption = 'Strikeout'
          TabOrder = 3
          OnClick = cbxStrikeOutClick
        end
      end
      object Button1: TButton
        Left = 120
        Top = 160
        Width = 105
        Height = 33
        Caption = 'Restore Defaults...'
        TabOrder = 5
        OnClick = Button1Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 391
    Width = 438
    Height = 37
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
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
    object BitBtn2: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      ModalResult = 1
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
  end
  object fstEditOptions: TJvFormStorage
    Active = False
    IniFileName = 'Software\Waterproof Productions\LDDesignPad'
    Options = []
    UseRegistry = True
    StoredProps.Strings = (
      'SynLDRSyn1.ColorAttri'
      'SynLDRSyn1.CommentAttri'
      'SynLDRSyn1.FirstTriAttri'
      'SynLDRSyn1.FourthTriAttri'
      'SynLDRSyn1.IdentifierAttri'
      'SynLDRSyn1.KeyAttri'
      'SynLDRSyn1.LineAttri'
      'SynLDRSyn1.OpLineAttri'
      'SynLDRSyn1.QuadAttri'
      'SynLDRSyn1.SecondTriAttri'
      'SynLDRSyn1.ThirdTriAttri'
      'SynLDRSyn1.TriangleAttri')
    StoredValues = <>
    Left = 8
    Top = 392
  end
  object SynLDRSyn1: TSynLDRSyn
    Left = 44
    Top = 395
  end
end
