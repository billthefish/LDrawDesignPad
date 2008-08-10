object frOptions: TfrOptions
  Left = 360
  Top = 236
  Width = 528
  Height = 404
  VertScrollBar.Range = 37
  Caption = 'Misc. Options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 520
    Height = 333
    ActivePage = TabSheet1
    Align = alClient
    Images = ImageList1
    MultiLine = True
    TabOrder = 0
    OnChange = PageControl1Change
    object tsExternal: TTabSheet
      Caption = '&External Progs'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 304
        Align = alClient
        Caption = 'External Progam Locations'
        TabOrder = 0
        object lbL3Lab: TLabel
          Left = 404
          Top = 141
          Width = 38
          Height = 13
          Caption = 'lbL3Lab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 141
          Width = 89
          Height = 13
          Caption = 'L3Lab (L3Lab.exe)'
        end
        object Label5: TLabel
          Left = 8
          Top = 22
          Width = 76
          Height = 13
          Caption = 'LDraw (parts.lst)'
        end
        object lbMLCAD: TLabel
          Left = 404
          Top = 101
          Width = 45
          Height = 13
          Caption = 'lbMLCAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 101
          Width = 97
          Height = 13
          Caption = 'MLCad (MLCad.exe)'
        end
        object lbLDVIew: TLabel
          Left = 404
          Top = 62
          Width = 45
          Height = 13
          Caption = 'lbLDView'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 63
          Width = 103
          Height = 13
          Caption = 'LDView (LDView.exe)'
        end
        object lbLdraw: TLabel
          Left = 404
          Top = 23
          Width = 37
          Height = 13
          Caption = 'lbLdraw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbLSynth: TLabel
          Left = 404
          Top = 178
          Width = 41
          Height = 13
          Caption = 'lbLSynth'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 178
          Width = 101
          Height = 13
          Caption = 'LSynth (lsynthcp.exe)'
        end
        object btL3Lab: TBitBtn
          Left = 376
          Top = 137
          Width = 25
          Height = 22
          TabOrder = 7
          OnClick = btL3LabClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000010000000000000000
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
            FDFDFDFDFDFDFDFDFDFDFD4949494949494949494949494949FDFD49BFBFBFBF
            BFBFBFBFBFBFBFBF49FDFD49F6777777777777776F6F6FBF49FDFD49F6777777
            777777776F6F6FBF49FDFD49F677777777777777777777BF49FDFD49F6777777
            77777777777777BF49FDFD49F677777777777777777777BF49FDFD49F6B77777
            77BFF6F6F6F6F6BF49FDFD49F6BFB7B7B7F649494949494949FDFD49F6F6F6F6
            F649FDFDFDFDFDFDFDFDFDFD4949494949FDFD0000FDFD0000FDFDFDFDFDFDFD
            FDFD0009D80000E8D800FDFDFDFDFDFDFDFDFD0009E9E9E800FDFDFDFDFDFDFD
            FDFDFDFD0009D800FDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFD}
        end
        object btMLCad: TBitBtn
          Left = 376
          Top = 97
          Width = 25
          Height = 22
          TabOrder = 5
          OnClick = btMLCadClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000010000000000000000
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
            FDFDFDFDFDFDFDFDFDFDFD4949494949494949494949494949FDFD49BFBFBFBF
            BFBFBFBFBFBFBFBF49FDFD49F6777777777777776F6F6FBF49FDFD49F6777777
            777777776F6F6FBF49FDFD49F677777777777777777777BF49FDFD49F6777777
            77777777777777BF49FDFD49F677777777777777777777BF49FDFD49F6B77777
            77BFF6F6F6F6F6BF49FDFD49F6BFB7B7B7F649494949494949FDFD49F6F6F6F6
            F649FDFDFDFDFDFDFDFDFDFD4949494949FDFD0000FDFD0000FDFDFDFDFDFDFD
            FDFD0009D80000E8D800FDFDFDFDFDFDFDFDFD0009E9E9E800FDFDFDFDFDFDFD
            FDFDFDFD0009D800FDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFD}
        end
        object btLDView: TBitBtn
          Left = 376
          Top = 57
          Width = 25
          Height = 22
          TabOrder = 3
          OnClick = btLDViewClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000010000000000000000
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
            FDFDFDFDFDFDFDFDFDFDFD4949494949494949494949494949FDFD49BFBFBFBF
            BFBFBFBFBFBFBFBF49FDFD49F6777777777777776F6F6FBF49FDFD49F6777777
            777777776F6F6FBF49FDFD49F677777777777777777777BF49FDFD49F6777777
            77777777777777BF49FDFD49F677777777777777777777BF49FDFD49F6B77777
            77BFF6F6F6F6F6BF49FDFD49F6BFB7B7B7F649494949494949FDFD49F6F6F6F6
            F649FDFDFDFDFDFDFDFDFDFD4949494949FDFD0000FDFD0000FDFDFDFDFDFDFD
            FDFD0009D80000E8D800FDFDFDFDFDFDFDFDFD0009E9E9E800FDFDFDFDFDFDFD
            FDFDFDFD0009D800FDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFD}
        end
        object btLDraw: TBitBtn
          Left = 376
          Top = 18
          Width = 25
          Height = 22
          TabOrder = 1
          OnClick = btLDrawClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000010000000000000000
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
            FDFDFDFDFDFDFDFDFDFDFD4949494949494949494949494949FDFD49BFBFBFBF
            BFBFBFBFBFBFBFBF49FDFD49F6777777777777776F6F6FBF49FDFD49F6777777
            777777776F6F6FBF49FDFD49F677777777777777777777BF49FDFD49F6777777
            77777777777777BF49FDFD49F677777777777777777777BF49FDFD49F6B77777
            77BFF6F6F6F6F6BF49FDFD49F6BFB7B7B7F649494949494949FDFD49F6F6F6F6
            F649FDFDFDFDFDFDFDFDFDFD4949494949FDFD0000FDFD0000FDFDFDFDFDFDFD
            FDFD0009D80000E8D800FDFDFDFDFDFDFDFDFD0009E9E9E800FDFDFDFDFDFDFD
            FDFDFDFD0009D800FDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFD}
        end
        object edL3LabDir: TEdit
          Left = 116
          Top = 137
          Width = 260
          Height = 21
          TabOrder = 6
        end
        object edMLCadDir: TEdit
          Left = 116
          Top = 97
          Width = 260
          Height = 21
          TabOrder = 4
        end
        object edLDViewDir: TEdit
          Left = 116
          Top = 58
          Width = 260
          Height = 21
          TabOrder = 2
        end
        object edLdrawDir: TEdit
          Left = 116
          Top = 18
          Width = 260
          Height = 21
          TabOrder = 0
        end
        object edLSynthDir: TEdit
          Left = 116
          Top = 174
          Width = 260
          Height = 21
          TabOrder = 8
        end
        object btLSynth: TBitBtn
          Left = 376
          Top = 173
          Width = 25
          Height = 22
          TabOrder = 9
          OnClick = btLSynthClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000010000000000000000
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
            FDFDFDFDFDFDFDFDFDFDFD4949494949494949494949494949FDFD49BFBFBFBF
            BFBFBFBFBFBFBFBF49FDFD49F6777777777777776F6F6FBF49FDFD49F6777777
            777777776F6F6FBF49FDFD49F677777777777777777777BF49FDFD49F6777777
            77777777777777BF49FDFD49F677777777777777777777BF49FDFD49F6B77777
            77BFF6F6F6F6F6BF49FDFD49F6BFB7B7B7F649494949494949FDFD49F6F6F6F6
            F649FDFDFDFDFDFDFDFDFDFD4949494949FDFD0000FDFD0000FDFDFDFDFDFDFD
            FDFD0009D80000E8D800FDFDFDFDFDFDFDFDFD0009E9E9E800FDFDFDFDFDFDFD
            FDFDFDFD0009D800FDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFD}
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'User-&defined Program'
      ImageIndex = -1
      object GroupBox7: TGroupBox
        Left = 151
        Top = 0
        Width = 361
        Height = 304
        Align = alRight
        Caption = 'User Defined Program Configuration'
        TabOrder = 0
        object rgStyle: TRadioGroup
          Left = 2
          Top = 241
          Width = 357
          Height = 61
          Align = alBottom
          Caption = 'Style'
          Columns = 2
          Items.Strings = (
            'Normal'
            'Hidden'
            'Normal, LDDP Retains Focus'
            'Maximized')
          TabOrder = 0
          OnClick = edExternalNameChange
        end
        object Panel2: TPanel
          Left = 2
          Top = 161
          Width = 207
          Height = 80
          Align = alLeft
          TabOrder = 1
          object Memo5: TMemo
            Left = 1
            Top = 1
            Width = 205
            Height = 78
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            Lines.Strings = (
              'You can use the following shortcuts in the '
              'parameters:'
              '%0: Path and filename of the current file'
              '%1: Path only'
              '%2: Filename without extension'
              '%3: Path and Filename without extension'
              '%4 - %7: The 8.3 notation of %0 - %3')
            TabOrder = 0
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 357
          Height = 146
          Align = alTop
          TabOrder = 2
          object Label19: TLabel
            Left = 4
            Top = 3
            Width = 70
            Height = 13
            Caption = 'Program Name'
          end
          object Label11: TLabel
            Left = 4
            Top = 30
            Width = 79
            Height = 13
            Caption = 'Path && Filename:'
          end
          object Label10: TLabel
            Left = 4
            Top = 57
            Width = 56
            Height = 13
            Caption = 'Parameters:'
          end
          object lbExternal: TLabel
            Left = 275
            Top = 81
            Width = 46
            Height = 13
            Caption = 'lbExternal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edExternalName: TEdit
            Left = 88
            Top = 0
            Width = 237
            Height = 21
            TabOrder = 0
            OnChange = edExternalNameChange
          end
          object edExternal: TEdit
            Left = 88
            Top = 27
            Width = 237
            Height = 21
            TabOrder = 1
            OnChange = edExternalNameChange
          end
          object edParameters: TEdit
            Left = 88
            Top = 54
            Width = 237
            Height = 21
            TabOrder = 2
            OnChange = edExternalNameChange
          end
          object btExternal: TBitBtn
            Left = 331
            Top = 0
            Width = 25
            Height = 21
            TabOrder = 3
            OnClick = btExternalClick
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000120B0000120B00000001000000010000000000000000
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
              FDFDFDFDFDFDFDFDFDFDFD4949494949494949494949494949FDFD49BFBFBFBF
              BFBFBFBFBFBFBFBF49FDFD49F6777777777777776F6F6FBF49FDFD49F6777777
              777777776F6F6FBF49FDFD49F677777777777777777777BF49FDFD49F6777777
              77777777777777BF49FDFD49F677777777777777777777BF49FDFD49F6B77777
              77BFF6F6F6F6F6BF49FDFD49F6BFB7B7B7F649494949494949FDFD49F6F6F6F6
              F649FDFDFDFDFDFDFDFDFDFD4949494949FDFD0000FDFD0000FDFDFDFDFDFDFD
              FDFD0009D80000E8D800FDFDFDFDFDFDFDFDFD0009E9E9E800FDFDFDFDFDFDFD
              FDFDFDFD0009D800FDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFD}
          end
          object cboWaitForFinish: TCheckBox
            Left = 4
            Top = 104
            Width = 161
            Height = 17
            Caption = 'Wait until program is finished'
            TabOrder = 4
            OnClick = edExternalNameChange
          end
          object cboShowCommand: TCheckBox
            Left = 4
            Top = 123
            Width = 209
            Height = 17
            Caption = 'Show command line before execution'
            TabOrder = 5
            OnClick = edExternalNameChange
          end
        end
        object Panel4: TPanel
          Left = 209
          Top = 161
          Width = 150
          Height = 80
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 3
          object btnAddExternal: TButton
            Left = 1
            Top = 13
            Width = 148
            Height = 33
            Align = alBottom
            Caption = 'Add New Program'
            TabOrder = 0
            OnClick = lbxExternalDblClick
          end
          object btnDelExternal: TButton
            Left = 1
            Top = 46
            Width = 148
            Height = 33
            Align = alBottom
            Caption = 'Delete Current Program'
            TabOrder = 1
            OnClick = btnDelExternalClick
          end
        end
      end
      object lbxExternal: TListBox
        Left = 0
        Top = 0
        Width = 151
        Height = 304
        Align = alClient
        ItemHeight = 13
        TabOrder = 1
        OnClick = lbxExternalClick
        OnDblClick = lbxExternalDblClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configuration &Values'
      ImageIndex = -1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 169
        Align = alTop
        Caption = 'Error Check Options'
        TabOrder = 0
        object Label6: TLabel
          Left = 73
          Top = 133
          Width = 125
          Height = 13
          Caption = 'Collinear Points Threshold:'
        end
        object cboDet: TCheckBox
          Left = 20
          Top = 56
          Width = 185
          Height = 17
          Caption = 'Det Coplanarity Check Threshold:'
          TabOrder = 1
        end
        object cboDist: TCheckBox
          Left = 20
          Top = 22
          Width = 181
          Height = 17
          Caption = 'Dist Coplanarity Check Threshold:'
          TabOrder = 0
        end
        object Memo1: TMemo
          Left = 287
          Top = 20
          Width = 217
          Height = 33
          TabStop = False
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'General files (parts, subparts and some '
            'primitives) typically use a value of 0.1.')
          ReadOnly = True
          TabOrder = 3
        end
        object Memo2: TMemo
          Left = 287
          Top = 49
          Width = 217
          Height = 33
          TabStop = False
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'Geometric primitives typically use 0.01. '
            'Hi-res primitives typically use 0.001.')
          ReadOnly = True
          TabOrder = 4
        end
        object Memo3: TMemo
          Left = 287
          Top = 122
          Width = 218
          Height = 41
          TabStop = False
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'Only adjust this value if you want to change '
            'the pecent deviation used for collinear point '
            'determination. (L3P uses 0.0001 by defualt)')
          ReadOnly = True
          TabOrder = 2
        end
        object seDist: TJvValidateEdit
          Left = 200
          Top = 20
          Width = 81
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          TrimDecimals = True
          DisplayFormat = dfFloat
          DecimalPlaces = 9
          EditText = '0.1'
          TabOrder = 5
        end
        object seDet: TJvValidateEdit
          Left = 200
          Top = 53
          Width = 81
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          TrimDecimals = True
          DisplayFormat = dfFloat
          DecimalPlaces = 9
          EditText = '0.001'
          TabOrder = 6
        end
        object seCollinear: TJvValidateEdit
          Left = 200
          Top = 130
          Width = 81
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          TrimDecimals = True
          DisplayFormat = dfFloat
          DecimalPlaces = 9
          EditText = '0.0001'
          TabOrder = 7
        end
        object cboNormalAngle: TCheckBox
          Left = 20
          Top = 90
          Width = 174
          Height = 19
          Caption = 'Normal Angle Coplanarity Limit:'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object Memo4: TMemo
          Left = 287
          Top = 80
          Width = 217
          Height = 43
          TabStop = False
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'Quads considered coplaner if the angle is less '
            'than or equal to 3 degrees. An angle of less '
            'than 1 degree is recommended')
          ReadOnly = True
          TabOrder = 9
        end
        object seNormalAngle: TJvValidateEdit
          Left = 200
          Top = 89
          Width = 81
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          TrimDecimals = True
          DisplayFormat = dfFloat
          DecimalPlaces = 9
          EditText = '1.000000000'
          TabOrder = 10
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 169
        Width = 512
        Height = 135
        Align = alClient
        Caption = 'Decimal Accuracy'
        TabOrder = 1
        object lbPntAcc: TLabel
          Left = 8
          Top = 20
          Width = 126
          Height = 13
          Caption = 'Position Decimal Accuracy'
        end
        object lbRotAcc: TLabel
          Left = 8
          Top = 44
          Width = 160
          Height = 13
          Caption = 'Rotation Matrix Decimal Accuracy'
        end
        object sePntAcc: TJvValidateEdit
          Left = 184
          Top = 18
          Width = 81
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          EditText = '3'
          TabOrder = 0
        end
        object seRotAcc: TJvValidateEdit
          Left = 184
          Top = 42
          Width = 81
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          EditText = '3'
          TabOrder = 1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&User'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 304
        Align = alClient
        Caption = 'User Details For Macros'
        TabOrder = 0
        object Label16: TLabel
          Left = 16
          Top = 80
          Width = 28
          Height = 13
          Caption = 'Email:'
        end
        object Label14: TLabel
          Left = 16
          Top = 51
          Width = 118
          Height = 13
          Caption = 'Parts Tracker Username:'
        end
        object Label13: TLabel
          Left = 16
          Top = 22
          Width = 50
          Height = 13
          Caption = 'Full Name:'
        end
        object edEmail: TEdit
          Left = 136
          Top = 73
          Width = 285
          Height = 21
          TabOrder = 2
        end
        object edUsername: TEdit
          Left = 136
          Top = 46
          Width = 185
          Height = 21
          TabOrder = 1
        end
        object edName: TEdit
          Left = 136
          Top = 19
          Width = 285
          Height = 21
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Plugins'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 304
        Align = alClient
        Caption = 'Configure Plugins'
        TabOrder = 0
        object Label9: TLabel
          Left = 308
          Top = 24
          Width = 185
          Height = 89
          AutoSize = False
          Caption = 
            'Mark/Unmark a plugin to en-/disable it.'#13#10#13#10'If a plugin is disabl' +
            'ed it won'#39't show up in the editors popup menu (right-click in ed' +
            'itor to bring it up)'
          WordWrap = True
        end
        object Button1: TBitBtn
          Left = 308
          Top = 201
          Width = 181
          Height = 25
          Caption = 'Rescan for Plugins'
          TabOrder = 1
          OnClick = Button1Click
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF004040
            4000404040004040400040404000404040004040400040404000404040004040
            400040404000404040004040400040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC00040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC00040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC00040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC00040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC00040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00C0DCC00000000000000000000000000000000000000000000000
            0000F0FBFF00F0FBFF00C0DCC0004060600040606000FF00FF00FF00FF004040
            4000F0FBFF00C0DCC00040404000C0C06000C0C0400080E0400080C020004060
            6000F0FBFF00F0FBFF0040606000408000004080000040606000FF00FF004040
            4000F0FBFF00F0FBFF0040404000C0C08000C0C06000C0C0400040606000F0FB
            FF00F0FBFF00F0FBFF0040606000408000004080000040606000FF00FF004040
            4000F0FBFF00F0FBFF0040404000C0DCC000C0C08000C0C0600080A000004060
            6000F0FBFF00F0FBFF004060600080A0000080A0000040202000FF00FF004040
            4000F0FBFF00F0FBFF0040404000C0DCC00040606000C0C08000C0C0600080A0
            0000404040004040400080A0000080C0000080C0000040606000FF00FF004040
            4000F0FBFF00F0FBFF004060600040606000A4A0A00040606000C0C06000C0C0
            400080E0400080C0200080C0000080C0000080A0000080808000FF00FF004040
            4000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A4A0A0004060600080C0
            0000C0C0400080E0400080C0200080A0000040606000FF00FF00FF00FF004040
            4000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A4A0A0008080
            800040606000406060004060600040404000FF00FF00FF00FF00FF00FF004040
            4000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00F0FBFF0040404000FF00FF00FF00FF00FF00FF004040
            4000404040004040400040404000404040004040400040404000404040004040
            400040404000404040004040400040404000FF00FF00FF00FF00}
        end
        object cblPlugins: TCheckListBox
          Left = 2
          Top = 15
          Width = 285
          Height = 287
          OnClickCheck = cblPluginsClickCheck
          Align = alLeft
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Color Bar'
      ImageIndex = -1
      ExplicitTop = 24
      ExplicitHeight = 305
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 304
        Align = alClient
        Caption = 'Color Bar Colors'
        TabOrder = 0
        ExplicitHeight = 305
        object shpColor: TShape
          Left = 144
          Top = 32
          Width = 73
          Height = 57
          Brush.Color = clBtnFace
        end
        object Label15: TLabel
          Left = 144
          Top = 16
          Width = 24
          Height = 13
          Caption = 'Color'
        end
        object Label18: TLabel
          Left = 144
          Top = 168
          Width = 64
          Height = 13
          Caption = 'Color Number'
        end
        object lbxColors: TListBox
          Left = 2
          Top = 15
          Width = 137
          Height = 287
          Align = alLeft
          ItemHeight = 13
          TabOrder = 0
          OnClick = lbxColorsClick
        end
        object btnColorSelect: TButton
          Left = 144
          Top = 96
          Width = 73
          Height = 25
          Caption = 'Select Color'
          TabOrder = 1
          OnClick = btnColorSelectClick
        end
        object edColorName: TLabeledEdit
          Left = 144
          Top = 144
          Width = 105
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Color Name'
          TabOrder = 2
          OnChange = edColorNameChange
        end
        object edColorNumber: TJvValidateEdit
          Left = 144
          Top = 184
          Width = 105
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          EditText = '0'
          TabOrder = 3
          OnChange = edColorNameChange
        end
        object btnColorRestore: TBitBtn
          Left = 392
          Top = 16
          Width = 113
          Height = 25
          Caption = '&Restore Defaults'
          TabOrder = 4
          OnClick = btnColorRestoreClick
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
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
            FD00000000FDFDFDFDFDFDFDFDFD0000FD000808080000FDFDFDFDFDFD00BC70
            00FD000808080800FDFDFDFD00BC79387000FD0000080800FDFDFD0008087979
            387000FDFD00F4F400FDFD0000587879580000FDFD00BCF400FDFDFDFD007879
            00FDFDFDFD00BCF400FDFDFDFD00787900FDFDFDFD00BBBB00FDFDFDFDFD0078
            B900000000BABB00FDFDFDFDFDFD007879B9BABABABABA00FDFDFDFDFDFDFD00
            0079B9B9B90000FDFDFDFDFDFDFDFDFDFD00000000FDFDFDFDFDFDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 520
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      520
      37)
    object BitBtn1: TBitBtn
      Left = 304
      Top = 4
      Width = 95
      Height = 25
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
      Left = 412
      Top = 4
      Width = 99
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
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
  object ImageList1: TImageList
    Left = 40
    Top = 328
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6DEC600A5A5A500A5A5
      A500A5A5A500A5A5A50000000000C6DEC600A5A5A500A5A5A500A5A5A500A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084C6000063A5000084C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600A5A5A50000000000F7FFFF00C6C6C600C6C6C600C6C6C600A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084C6000063A5000084E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600A5A5A50000000000F7FFFF00C6C6C600C6C6C600C6C6C600A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084C6000084C60000A5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084A5A500848484008484840084848400848484000000
      0000C6C6C6008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60000000000F7FFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084E70000A5E70000A5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084A5A500C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000C6C6C60084848400C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0000000000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E70000A5E70000A5E70000A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000C6C6C6008484840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E70000A5E70000A5E70000A5E7000000
      0000000000000000000000000000000000008484840084848400848484008484
      840042636300C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500848484000000
      0000C6C6C6008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6DEC600A5A5A500A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E70000A5E70042A5E70042A5E7000000
      000000000000000000000000000000000000C6DEC600C6DEC600C6DEC600C6DE
      C60084636300C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500848484000000
      0000A5A5A50084848400C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70042A5E70042C6E70042C6E70042C6E7000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60084636300C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500848484000000
      0000A5A5A5008463630000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600A5A5A500000000000000000000000000F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500848484000000
      0000A5A5A50084636300C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008463630042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600A5A5A500A5A5A500A5A5A50084848400F7FF
      FF00A5A5A5008463630000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00000000000000000000000000F7FFFF00F7CEA500F7CE
      A500F7CEA500F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60084A5A50084636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600A5A5A500A5A5A500A5A5A50084848400F7FF
      FF00A5A5A5008463630000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00F7CEA500F7CE
      A500F7CEA500F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00A5A5A5008463630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000007FFFFFFFF0000
      0007FE3FFFE300000007FE3FFC1100000007FE3FF81000000007FE3FF0100000
      0007FC1F001000000007FC1F0010000001FFFC1F001000000101FC1F00100000
      0101FFFF001000000101FE3FF00000000101FE3FF80000000101FE3FFC010000
      FF01FFFFFFE30000FF01FFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    Filter = 'Executibles (*.*)|*.exe'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Open'
    Left = 7
    Top = 328
  end
  object ColorDialog1: TColorDialog
    Left = 104
    Top = 328
  end
end
