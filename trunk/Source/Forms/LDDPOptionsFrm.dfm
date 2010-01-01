object LDDPOptionsForm: TLDDPOptionsForm
  Left = 8
  Top = 8
  Width = 600
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainPages: TPageControl
    Left = 0
    Top = 0
    Width = 592
    Height = 333
    ActivePage = ColorBarSheet
    Align = alClient
    MultiLine = True
    TabOrder = 0
    OnChange = MainPagesChange
    object tsExternal: TTabSheet
      Caption = '&Program Paths'
      ImageIndex = -1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 584
        Height = 305
        Align = alClient
        Caption = 'External Progam Locations'
        TabOrder = 0
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
          Width = 91
          Height = 13
          Caption = 'LDraw (ldconfig.ldr)'
        end
        object Label2: TLabel
          Left = 8
          Top = 101
          Width = 97
          Height = 13
          Caption = 'MLCad (MLCad.exe)'
        end
        object Label4: TLabel
          Left = 8
          Top = 63
          Width = 103
          Height = 13
          Caption = 'LDView (LDView.exe)'
        end
        object Label12: TLabel
          Left = 8
          Top = 178
          Width = 101
          Height = 13
          Caption = 'LSynth (lsynthcp.exe)'
        end
        object LDrawPathEditIcon: TImage
          Left = 503
          Top = 18
          Width = 21
          Height = 21
        end
        object LDViewPathEditIcon: TImage
          Left = 503
          Top = 58
          Width = 21
          Height = 21
        end
        object MLCadPAthEditIcon: TImage
          Left = 503
          Top = 97
          Width = 21
          Height = 21
        end
        object L3LabPathEditIcon: TImage
          Left = 503
          Top = 137
          Width = 21
          Height = 21
        end
        object LSynthPathEditIcon: TImage
          Left = 503
          Top = 174
          Width = 21
          Height = 21
        end
        object c: TBitBtn
          Left = 472
          Top = 138
          Width = 25
          Height = 22
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 7
          OnClick = cClick
        end
        object btMLCad: TBitBtn
          Left = 472
          Top = 97
          Width = 25
          Height = 22
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 5
          OnClick = btMLCadClick
        end
        object btLDView: TBitBtn
          Left = 472
          Top = 58
          Width = 25
          Height = 22
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btLDViewClick
        end
        object btLDraw: TBitBtn
          Left = 472
          Top = 18
          Width = 25
          Height = 22
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btLDrawClick
        end
        object L3LabPathEdit: TEdit
          Left = 116
          Top = 138
          Width = 350
          Height = 21
          TabOrder = 6
          OnChange = L3LabPathEditChange
        end
        object MLCadPathEdit: TEdit
          Left = 116
          Top = 97
          Width = 350
          Height = 21
          TabOrder = 4
          OnChange = MLCadPathEditChange
        end
        object LDViewPathEdit: TEdit
          Left = 117
          Top = 58
          Width = 349
          Height = 21
          TabOrder = 2
          OnChange = LDViewPathEditChange
        end
        object LDrawPathEdit: TEdit
          Left = 116
          Top = 18
          Width = 350
          Height = 21
          TabOrder = 0
          OnChange = LDrawPathEditChange
        end
        object LSynthPathEdit: TEdit
          Left = 116
          Top = 174
          Width = 350
          Height = 21
          TabOrder = 8
          OnChange = LSynthPathEditChange
        end
        object btLSynth: TBitBtn
          Left = 472
          Top = 174
          Width = 25
          Height = 22
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 9
          OnClick = btLSynthClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Configuration &Values'
      ImageIndex = 6
      object ConfigPages: TPageControl
        Left = 0
        Top = 0
        Width = 584
        Height = 305
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = 'Error Check Values'
          object Label6: TLabel
            Left = 3
            Top = 36
            Width = 125
            Height = 13
            Caption = 'Collinear Points Max Angle'
          end
          object Label28: TLabel
            Left = 3
            Top = 72
            Width = 122
            Height = 13
            Caption = 'Collinear Points Min Angle'
          end
          object Label29: TLabel
            Left = 3
            Top = 3
            Width = 142
            Height = 13
            Caption = 'Normal Angle Coplanarity Limit'
          end
          object NormalAngleEdit: TJvValidateEdit
            Left = 163
            Top = 0
            Width = 81
            Height = 21
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = True
            TrimDecimals = True
            DisplayFormat = dfFloat
            DecimalPlaces = 9
            EditText = '1.000000000'
            HasMaxValue = True
            HasMinValue = True
            MaxValue = 180.000000000000000000
            TabOrder = 0
          end
          object CollinearMaxAngleEdit: TJvValidateEdit
            Left = 163
            Top = 33
            Width = 81
            Height = 21
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = True
            TrimDecimals = True
            DisplayFormat = dfFloat
            DecimalPlaces = 9
            EditText = '179.9'
            HasMaxValue = True
            HasMinValue = True
            MaxValue = 180.000000000000000000
            TabOrder = 1
          end
          object Memo3: TMemo
            Left = 250
            Top = 33
            Width = 292
            Height = 30
            TabStop = False
            BorderStyle = bsNone
            Color = clBtnFace
            Lines.Strings = (
              
                'Points are collinear if the angle defined by them is greater tha' +
                'n '
              '179.9 degrees')
            ReadOnly = True
            TabOrder = 2
          end
          object Memo4: TMemo
            Left = 250
            Top = 0
            Width = 292
            Height = 27
            TabStop = False
            BorderStyle = bsNone
            Color = clBtnFace
            Lines.Strings = (
              'Quads considered coplaner if the angle is less than or equal '
              'to 3 degrees. An angle of less than 1 degree is recommended')
            ReadOnly = True
            TabOrder = 3
          end
          object Memo1: TMemo
            Left = 250
            Top = 69
            Width = 292
            Height = 30
            TabStop = False
            BorderStyle = bsNone
            Color = clBtnFace
            Lines.Strings = (
              'Points are collinear if the angle defined by them is less than '
              '0.025 degrees')
            ReadOnly = True
            TabOrder = 4
          end
          object CollinearMinAngleEdit: TJvValidateEdit
            Left = 163
            Top = 69
            Width = 81
            Height = 21
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = True
            TrimDecimals = True
            DisplayFormat = dfFloat
            DecimalPlaces = 9
            EditText = '0.025'
            HasMaxValue = True
            HasMinValue = True
            MaxValue = 180.000000000000000000
            TabOrder = 5
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Editor Behavior'
          ImageIndex = 1
          object lbPntAcc: TLabel
            Left = 3
            Top = 3
            Width = 126
            Height = 13
            Caption = 'Position Decimal Accuracy'
          end
          object lbRotAcc: TLabel
            Left = 3
            Top = 30
            Width = 160
            Height = 13
            Caption = 'Rotation Matrix Decimal Accuracy'
          end
          object Label1: TLabel
            Left = 3
            Top = 81
            Width = 156
            Height = 13
            Caption = 'Custom Poll Interval (In Seconds)'
          end
          object Label30: TLabel
            Left = 3
            Top = 108
            Width = 81
            Height = 13
            Caption = 'Color Box Sorting'
          end
          object sePntAcc: TJvValidateEdit
            Left = 179
            Top = 1
            Width = 81
            Height = 21
            CriticalPoints.MaxValue = 15.000000000000000000
            CriticalPoints.MaxValueIncluded = True
            CriticalPoints.MinValueIncluded = True
            EditText = '3'
            TabOrder = 0
          end
          object seRotAcc: TJvValidateEdit
            Left = 179
            Top = 28
            Width = 81
            Height = 21
            CriticalPoints.MaxValue = 15.000000000000000000
            CriticalPoints.MaxValueIncluded = True
            CriticalPoints.MinValueIncluded = True
            EditText = '3'
            TabOrder = 1
          end
          object cboAutoRoundOnly: TCheckBox
            Left = 3
            Top = 55
            Width = 291
            Height = 17
            Caption = 'Only perform rounding when using the auto round function'
            TabOrder = 2
          end
          object seCustomPollInterval: TJvValidateEdit
            Left = 179
            Top = 78
            Width = 81
            Height = 21
            CriticalPoints.MinValue = 0.100000000000000000
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = True
            TrimDecimals = True
            DisplayFormat = dfFloat
            DecimalPlaces = 2
            EditText = '0.50'
            TabOrder = 3
          end
          object ColorSortOption: TComboBox
            Left = 179
            Top = 105
            Width = 145
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 4
            Text = 'Sort by Color Code'
            Items.Strings = (
              'Sort by Color Code'
              'Sort by Color Name'
              'Sort by Main Color')
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'User Information'
          ImageIndex = 2
          object Label3: TLabel
            Left = 3
            Top = 3
            Width = 50
            Height = 13
            Caption = 'Full Name:'
          end
          object Label7: TLabel
            Left = 3
            Top = 30
            Width = 118
            Height = 13
            Caption = 'Parts Tracker Username:'
          end
          object Label8: TLabel
            Left = 3
            Top = 57
            Width = 28
            Height = 13
            Caption = 'Email:'
          end
          object edName: TEdit
            Left = 59
            Top = 1
            Width = 203
            Height = 21
            TabOrder = 0
          end
          object edUserName: TEdit
            Left = 124
            Top = 28
            Width = 138
            Height = 21
            TabOrder = 1
          end
          object edEmail: TEdit
            Left = 59
            Top = 55
            Width = 203
            Height = 21
            TabOrder = 2
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Grid Settings'
          ImageIndex = 3
          object GroupBox2: TGroupBox
            Left = 0
            Top = 146
            Width = 576
            Height = 73
            Align = alTop
            Caption = 'Fine Grid Settings'
            TabOrder = 0
            object Label13: TLabel
              Left = 11
              Top = 20
              Width = 32
              Height = 13
              Caption = 'X Step'
            end
            object Label14: TLabel
              Left = 98
              Top = 20
              Width = 32
              Height = 13
              Caption = 'Y Step'
            end
            object Label16: TLabel
              Left = 185
              Top = 20
              Width = 32
              Height = 13
              Caption = 'Z Step'
            end
            object Label18: TLabel
              Left = 272
              Top = 20
              Width = 70
              Height = 13
              Caption = 'Rotation Angle'
            end
            object seGridFineX: TJvValidateEdit
              Left = 11
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '1'
              TabOrder = 0
            end
            object seGridFineY: TJvValidateEdit
              Left = 98
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '1'
              TabOrder = 1
            end
            object seGridFineZ: TJvValidateEdit
              Left = 185
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '1'
              TabOrder = 2
            end
            object seGridFineAngle: TJvValidateEdit
              Left = 272
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '10'
              TabOrder = 3
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 73
            Width = 576
            Height = 73
            Align = alTop
            Caption = 'Medium Grid Settings'
            TabOrder = 1
            object Label20: TLabel
              Left = 11
              Top = 20
              Width = 32
              Height = 13
              Caption = 'X Step'
            end
            object Label21: TLabel
              Left = 98
              Top = 20
              Width = 32
              Height = 13
              Caption = 'Y Step'
            end
            object Label22: TLabel
              Left = 185
              Top = 20
              Width = 32
              Height = 13
              Caption = 'Z Step'
            end
            object Label23: TLabel
              Left = 272
              Top = 20
              Width = 70
              Height = 13
              Caption = 'Rotation Angle'
            end
            object seGridMediumX: TJvValidateEdit
              Left = 11
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '5'
              TabOrder = 0
            end
            object seGridMediumY: TJvValidateEdit
              Left = 98
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '5'
              TabOrder = 1
            end
            object seGridMediumZ: TJvValidateEdit
              Left = 185
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '5'
              TabOrder = 2
            end
            object seGridMediumAngle: TJvValidateEdit
              Left = 272
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '45'
              TabOrder = 3
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 576
            Height = 73
            Align = alTop
            Caption = 'Coarse Grid Settings'
            TabOrder = 2
            object Label24: TLabel
              Left = 11
              Top = 20
              Width = 32
              Height = 13
              Caption = 'X Step'
            end
            object Label25: TLabel
              Left = 98
              Top = 20
              Width = 32
              Height = 13
              Caption = 'Y Step'
            end
            object Label26: TLabel
              Left = 185
              Top = 20
              Width = 32
              Height = 13
              Caption = 'Z Step'
            end
            object Label27: TLabel
              Left = 272
              Top = 20
              Width = 70
              Height = 13
              Caption = 'Rotation Angle'
            end
            object seGridCoarseX: TJvValidateEdit
              Left = 11
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '10'
              TabOrder = 0
            end
            object seGridCoarseY: TJvValidateEdit
              Left = 98
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '10'
              TabOrder = 1
            end
            object seGridCoarseZ: TJvValidateEdit
              Left = 185
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '10'
              TabOrder = 2
            end
            object seGridCoarseAngle: TJvValidateEdit
              Left = 272
              Top = 39
              Width = 81
              Height = 21
              CriticalPoints.MinValue = 0.100000000000000000
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = True
              TrimDecimals = True
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '90'
              TabOrder = 3
            end
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = '&Search Paths'
      ImageIndex = 6
      object SearchPathsList: TListView
        Left = 0
        Top = 0
        Width = 584
        Height = 201
        Align = alTop
        Columns = <
          item
            AutoSize = True
            Caption = 'State'
          end>
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        ShowColumnHeaders = False
        StateImages = OptionImages
        TabOrder = 0
        ViewStyle = vsReport
        OnSelectItem = SearchPathsListSelectItem
      end
      object Panel5: TPanel
        Left = 0
        Top = 201
        Width = 584
        Height = 104
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object btnPathUp: TBitBtn
          Left = 261
          Top = 6
          Width = 25
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000000000000000000000000000000000000000000000000000000000
            00C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000
            0000000000000000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000000000000000000000000000000000C0C0C0FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF000000000000C0C0C0FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnPathUpClick
        end
        object btnPathDown: TBitBtn
          Left = 292
          Top = 6
          Width = 25
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            0000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
            0000000000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF000000000000000000000000000000000000000000000000C0C0
            C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000
            0000000000000000000000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000C0C0C0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000000000000000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000000000000000000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnPathDownClick
        end
        object btnMLCadPathImport: TButton
          Left = 6
          Top = 6
          Width = 91
          Height = 33
          Caption = 'Import From MLCad'
          TabOrder = 2
          WordWrap = True
          OnClick = btnMLCadPathImportClick
        end
        object btnDeleteInvalidPaths: TButton
          Left = 484
          Top = 6
          Width = 83
          Height = 33
          Caption = 'Delete Invald Paths'
          TabOrder = 3
          WordWrap = True
          OnClick = btnDeleteInvalidPathsClick
        end
        object btnDeletePath: TButton
          Left = 492
          Top = 73
          Width = 75
          Height = 25
          Caption = 'Delete'
          Enabled = False
          TabOrder = 4
          OnClick = btnDeletePathClick
        end
        object btnReplacePath: TButton
          Left = 87
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Replace'
          Enabled = False
          TabOrder = 5
          OnClick = btnReplacePathClick
        end
        object btnAddPath: TButton
          Left = 6
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Add'
          Enabled = False
          TabOrder = 6
          OnClick = btnAddPathClick
        end
        object edSearchPath: TEdit
          Left = 6
          Top = 45
          Width = 530
          Height = 21
          TabOrder = 7
          OnChange = edSearchPathChange
        end
        object btnPathOpen: TBitBtn
          Left = 542
          Top = 45
          Width = 25
          Height = 22
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 8
          OnClick = btnPathOpenClick
        end
      end
    end
    object ColorBarSheet: TTabSheet
      Caption = '&Color Bar'
      ImageIndex = -1
      OnShow = ColorBarSheetShow
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 584
        Height = 305
        Align = alClient
        Caption = 'Color Bar Colors'
        TabOrder = 0
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
        object lbColorNumber: TLabel
          Left = 145
          Top = 197
          Width = 64
          Height = 13
          Caption = 'Color Number'
          Enabled = False
        end
        object lbxColors: TListBox
          Left = 2
          Top = 15
          Width = 137
          Height = 288
          Align = alLeft
          ItemHeight = 13
          TabOrder = 0
          OnClick = lbxColorsClick
        end
        object btnColorSelect: TButton
          Left = 145
          Top = 120
          Width = 73
          Height = 25
          Caption = 'Custom Color'
          Enabled = False
          TabOrder = 1
          OnClick = btnColorSelectClick
        end
        object edColorName: TLabeledEdit
          Left = 145
          Top = 170
          Width = 105
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Color Name'
          Enabled = False
          TabOrder = 2
          OnChange = edColorNameChange
        end
        object edColorNumber: TJvValidateEdit
          Left = 145
          Top = 216
          Width = 105
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          EditText = '0'
          Enabled = False
          TabOrder = 3
          OnChange = edColorNameChange
        end
        object btnColorRestore: TBitBtn
          Left = 416
          Top = 16
          Width = 113
          Height = 25
          Caption = '&Restore Defaults'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btnColorRestoreClick
        end
        object ColorBarCombo: TJvColorComboBox
          Left = 145
          Top = 94
          Width = 145
          Height = 20
          ColorDialogText = 'Custom...'
          DroppedDownWidth = 145
          NewColorText = 'Custom'
          Options = [coText]
          Enabled = False
          TabOrder = 5
          OnChange = ColorBarComboChange
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&External Progams'
      ImageIndex = -1
      object GroupBox7: TGroupBox
        Left = 223
        Top = 0
        Width = 361
        Height = 305
        Align = alRight
        Caption = 'User Defined Program Configuration'
        TabOrder = 0
        object rgStyle: TRadioGroup
          Left = 2
          Top = 242
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
          Top = 145
          Width = 207
          Height = 97
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Memo5: TMemo
            Left = 0
            Top = 0
            Width = 207
            Height = 97
            Align = alClient
            BevelEdges = []
            BevelInner = bvNone
            BevelOuter = bvNone
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
          Height = 130
          Align = alTop
          BevelEdges = []
          BevelOuter = bvNone
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
          object ExternalPathEditIcon: TImage
            Left = 332
            Top = 27
            Width = 21
            Height = 21
          end
          object edExternalName: TEdit
            Left = 88
            Top = 0
            Width = 265
            Height = 21
            TabOrder = 0
            OnChange = edExternalNameChange
          end
          object edExternal: TEdit
            Left = 88
            Top = 27
            Width = 207
            Height = 21
            TabOrder = 1
            OnChange = edExternalNameChange
          end
          object edParameters: TEdit
            Left = 88
            Top = 54
            Width = 265
            Height = 21
            TabOrder = 2
            OnChange = edExternalNameChange
          end
          object btExternal: TBitBtn
            Left = 301
            Top = 27
            Width = 25
            Height = 21
            DoubleBuffered = True
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
            ParentDoubleBuffered = False
            TabOrder = 3
            OnClick = btExternalClick
          end
          object cboWaitForFinish: TCheckBox
            Left = 4
            Top = 92
            Width = 161
            Height = 17
            Caption = 'Wait until program is finished'
            TabOrder = 4
            OnClick = edExternalNameChange
          end
          object cboShowCommand: TCheckBox
            Left = 4
            Top = 107
            Width = 209
            Height = 17
            Caption = 'Show command line before execution'
            TabOrder = 5
            OnClick = edExternalNameChange
          end
        end
        object Panel4: TPanel
          Left = 209
          Top = 145
          Width = 150
          Height = 97
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Caption = 'Panel4'
          TabOrder = 3
          object btnAddExternal: TButton
            Left = 0
            Top = 31
            Width = 150
            Height = 33
            Align = alBottom
            Caption = 'Add New Program'
            TabOrder = 0
            OnClick = lbxExternalDblClick
          end
          object btnDelExternal: TButton
            Left = 0
            Top = 64
            Width = 150
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
        Width = 223
        Height = 305
        Align = alClient
        ItemHeight = 13
        TabOrder = 1
        OnClick = lbxExternalClick
        OnDblClick = lbxExternalDblClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 592
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      592
      37)
    object BitBtn1: TBitBtn
      Left = 387
      Top = 6
      Width = 95
      Height = 25
      Caption = 'OK'
      Default = True
      DoubleBuffered = True
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
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 488
      Top = 6
      Width = 95
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Executibles (*.*)|*.exe'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Open'
    Left = 7
    Top = 336
  end
  object ColorDialog1: TColorDialog
    Left = 72
    Top = 336
  end
  object OptionImages: TImageList
    Left = 40
    Top = 336
    Bitmap = {
      494C010102000400100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000084C6000084A5000084A5000000000000000000000000
      00000000000000000000000000000000000000000000000000000021C6000021
      C6000021C600000000000000000000000000000000000021C6000021C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084C6000084C6000084C6000084C6000084A50000000000000000
      00000000000000000000000000000000000000000000000000004242E7004263
      E7004242E7000000000000000000000000000021C6008463E7008463E7004221
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084C6000084A5000084C6000084C6000084C6000084C60000000000000000
      00000000000000000000000000000000000000000000000000004242E7008463
      E7008463E7004242E700000000000021C6004263E7008463E7008463E7004242
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084C6
      000084A5000084C6000084E7000084C6000084C6000084C6000084C600000000
      00000000000000000000000000000000000000000000000000004242E7004263
      E7004263E7008463E7004242E7004263E7008463E7008463E7004263E7000021
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084C6000084A5
      000084E7000084E7000084A500000000000084C6000084C6000084C600000000
      0000000000000000000000000000000000000000000000000000000000004242
      E7004263E7004263E7004263E7008463E7004263E7008463E7004242E7000021
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084A5210084E7
      000084A5000084A5210000000000000000000000000084C6000084C6000084C6
      0000000000000000000000000000000000000000000000000000000000000000
      00004242E7004242E7004263E7004263E7008463E7004242E7000021C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008484210084A5
      000084A521000000000000000000000000000000000084C6000084E7000084C6
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242E7004242E7004242E7004242E7004242E7000021C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084E7000084E7
      000084C600000000000000000000000000000000000000000000000000000000
      0000000000004242E7004242E7004242E7004242E7004242E7004242E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084E7000084E7
      000084C600000000000000000000000000000000000000000000000000000000
      0000000000004242E7004221E7004242E7004242E7004242E7004242E7000021
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084E7
      000084E7000084C6000000000000000000000000000000000000000000000000
      00004242E7004242E7004221E7004242E7004242E7004242E7004242E7004242
      E7000021C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084E7
      000084E7000084C6000000000000000000000000000000000000000000000000
      00004242E7004242E7004221C6004221E7004242E7004242E7004242E7004242
      E7004242E7000021C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7000084E7000084C60000000000000000000000000000000000004263
      E7004242E7000021C6004242E7004242E700000000004221E7004242E7004242
      E7004242E7000021C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7000084C6000084E70000000000000000000000000000000000004242
      E7004242E7004242E7004242E7004242E70000000000000000004221C6004242
      E7004242E7004221E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004242E7004242E7004242E700000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FC7FC79F00000000F83F830F00000000
      F01F820700000000E01F800700000000C00F800700000000800FC00700000000
      8107E00F000000008307F00F00000000C783F00F00000000FF83F00700000000
      FFC1E00300000000FFC1E00100000000FFE0C00100000000FFE0C00100000000
      FFF1E0C300000000FFFFF1FF0000000000000000000000000000000000000000
      000000000000}
  end
end
