object frEditorChild: TfrEditorChild
  Left = 460
  Top = 155
  Width = 628
  Height = 393
  VertScrollBar.Range = 53
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Editor MDI Child'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 261
    Width = 620
    Height = 7
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
    Visible = False
  end
  object pnInfo: TPanel
    Left = 0
    Top = 268
    Width = 620
    Height = 91
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnInfo'
    TabOrder = 0
    Visible = False
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 16
      Height = 91
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 12
        Height = 12
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object lbInfo: TListView
      Left = 16
      Top = 0
      Width = 604
      Height = 91
      Align = alClient
      Checkboxes = True
      Columns = <
        item
          Caption = 'Fix'
          MaxWidth = 25
          MinWidth = 25
          Width = 25
        end
        item
          Caption = 'Line Number'
          MaxWidth = 72
          MinWidth = 72
          Width = 72
        end
        item
          AutoSize = True
          Caption = 'Error'
        end>
      ReadOnly = True
      RowSelect = True
      PopupMenu = frMain.pmL3P
      TabOrder = 1
      ViewStyle = vsReport
      OnDblClick = lbInfoDblClick
      OnSelectItem = lbInfoSelectItem
    end
  end
  object memo: TScintillaLDDP
    Left = 0
    Top = 0
    Width = 620
    Height = 261
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -20
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = frMain.pmMemo
    Align = alClient
    OnUpdateUI = memoUpdateUI
    OnMarginClick = memoMarginClick
    EOLStyle = eolCRLF
    Indentation = [TabIndents]
    IndentWidth = 0
    MarginLeft = 1
    MarginRight = 1
    CodePage = cpAnsi
    Caret.ForeColor = clYellow
    Caret.LineBackColor = 9474192
    Caret.LineVisible = True
    Caret.Width = 3
    Caret.Period = 500
    Caret.LineBackAlpha = 60
    OtherOptions.ViewWSpace = sciWsInvisible
    OtherOptions.UsePalette = False
    OtherOptions.OverType = False
    OtherOptions.ViewEOL = False
    OtherOptions.EndAtLastLine = True
    OtherOptions.ScrollBarH = True
    OtherOptions.ScrollBarV = True
    OtherOptions.ScrollWidthTracking = False
    OtherOptions.PasteConvertEndings = True
    ActiveHotSpot.BackColor = clDefault
    ActiveHotSpot.ForeColor = clAqua
    ActiveHotSpot.Underlined = True
    ActiveHotSpot.SingleLine = True
    Colors.SelFore = clHighlightText
    Colors.SelBack = clHighlight
    Colors.MarkerFore = 26367
    Colors.MarkerBack = 13209
    Colors.FoldHi = clBlack
    Colors.FoldLo = clBlack
    Colors.WhiteSpaceFore = clYellow
    Colors.WhiteSpaceBack = clDefault
    Bookmark.BackColor = clDefault
    Bookmark.ForeColor = clDefault
    Bookmark.MarkerType = sciMCircle
    Gutter0.Width = 0
    Gutter0.MarginType = gutLineNumber
    Gutter0.Sensitive = False
    Gutter1.Width = 16
    Gutter1.MarginType = gutSymbol
    Gutter1.Sensitive = False
    Gutter2.Width = 0
    Gutter2.MarginType = gutSymbol
    Gutter2.Sensitive = False
    Gutter3.Width = 0
    Gutter3.MarginType = gutSymbol
    Gutter3.Sensitive = False
    Gutter4.Width = 0
    Gutter4.MarginType = gutSymbol
    Gutter4.Sensitive = False
    WordWrapVisualFlags = []
    WordWrapVisualFlagsLocation = []
    LayoutCache = sciCacheCaret
    HideSelect = False
    WordWrap = sciNoWrap
    EdgeColumn = 200
    EdgeColor = clSilver
    WordChars = '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    ControlCharSymbol = #0
    Folding = [foldCompact, foldComment, foldPreprocessor, foldAtElse, foldHTML, foldHTMLPreProcessor]
    FoldMarkers.MarkerType = sciMarkCustom
    FoldMarkers.FoldOpen.BackColor = clDefault
    FoldMarkers.FoldOpen.ForeColor = clDefault
    FoldMarkers.FoldOpen.MarkerType = sciMArrowDown
    FoldMarkers.FoldClosed.BackColor = clDefault
    FoldMarkers.FoldClosed.ForeColor = clDefault
    FoldMarkers.FoldClosed.MarkerType = sciMArrow
    FoldMarkers.FoldSub.BackColor = clDefault
    FoldMarkers.FoldSub.ForeColor = clDefault
    FoldMarkers.FoldSub.MarkerType = sciMEmpty
    FoldMarkers.FoldTail.BackColor = clDefault
    FoldMarkers.FoldTail.ForeColor = clDefault
    FoldMarkers.FoldTail.MarkerType = sciMEmpty
    FoldMarkers.FoldEnd.BackColor = clDefault
    FoldMarkers.FoldEnd.ForeColor = clDefault
    FoldMarkers.FoldEnd.MarkerType = sciMEmpty
    FoldMarkers.FoldOpenMid.BackColor = clDefault
    FoldMarkers.FoldOpenMid.ForeColor = clDefault
    FoldMarkers.FoldOpenMid.MarkerType = sciMEmpty
    FoldMarkers.FoldMidTail.BackColor = clDefault
    FoldMarkers.FoldMidTail.ForeColor = clDefault
    FoldMarkers.FoldMidTail.MarkerType = sciMEmpty
    FoldDrawFlags = [sciBelowIfNotExpanded]
    KeyCommands = <
      item
        Command = 2300
        ShortCut = 40
      end
      item
        Command = 2301
        ShortCut = 8232
      end
      item
        Command = 2342
        ShortCut = 16424
      end
      item
        Command = 2426
        ShortCut = 41000
      end
      item
        Command = 2302
        ShortCut = 38
      end
      item
        Command = 2303
        ShortCut = 8230
      end
      item
        Command = 2343
        ShortCut = 16422
      end
      item
        Command = 2427
        ShortCut = 40998
      end
      item
        Command = 2415
        ShortCut = 49190
      end
      item
        Command = 2416
        ShortCut = 57382
      end
      item
        Command = 2413
        ShortCut = 49192
      end
      item
        Command = 2414
        ShortCut = 57384
      end
      item
        Command = 2304
        ShortCut = 37
      end
      item
        Command = 2305
        ShortCut = 8229
      end
      item
        Command = 2308
        ShortCut = 16421
      end
      item
        Command = 2309
        ShortCut = 24613
      end
      item
        Command = 2428
        ShortCut = 40997
      end
      item
        Command = 2306
        ShortCut = 39
      end
      item
        Command = 2307
        ShortCut = 8231
      end
      item
        Command = 2310
        ShortCut = 16423
      end
      item
        Command = 2311
        ShortCut = 24615
      end
      item
        Command = 2429
        ShortCut = 40999
      end
      item
        Command = 2390
        ShortCut = 49189
      end
      item
        Command = 2391
        ShortCut = 57381
      end
      item
        Command = 2392
        ShortCut = 49191
      end
      item
        Command = 2393
        ShortCut = 57383
      end
      item
        Command = 2331
        ShortCut = 36
      end
      item
        Command = 2332
        ShortCut = 8228
      end
      item
        Command = 2431
        ShortCut = 40996
      end
      item
        Command = 2316
        ShortCut = 16420
      end
      item
        Command = 2317
        ShortCut = 24612
      end
      item
        Command = 2345
        ShortCut = 32804
      end
      item
        Command = 2314
        ShortCut = 35
      end
      item
        Command = 2315
        ShortCut = 8227
      end
      item
        Command = 2318
        ShortCut = 16419
      end
      item
        Command = 2319
        ShortCut = 24611
      end
      item
        Command = 2347
        ShortCut = 32803
      end
      item
        Command = 2432
        ShortCut = 40995
      end
      item
        Command = 2320
        ShortCut = 33
      end
      item
        Command = 2321
        ShortCut = 8225
      end
      item
        Command = 2433
        ShortCut = 40993
      end
      item
        Command = 2322
        ShortCut = 34
      end
      item
        Command = 2323
        ShortCut = 8226
      end
      item
        Command = 2434
        ShortCut = 40994
      end
      item
        Command = 2180
        ShortCut = 46
      end
      item
        Command = 2177
        ShortCut = 8238
      end
      item
        Command = 2336
        ShortCut = 16430
      end
      item
        Command = 2396
        ShortCut = 24622
      end
      item
        Command = 2324
        ShortCut = 45
      end
      item
        Command = 2179
        ShortCut = 8237
      end
      item
        Command = 2178
        ShortCut = 16429
      end
      item
        Command = 2325
        ShortCut = 27
      end
      item
        Command = 2326
        ShortCut = 8
      end
      item
        Command = 2326
        ShortCut = 8200
      end
      item
        Command = 2335
        ShortCut = 16392
      end
      item
        Command = 2176
        ShortCut = 32776
      end
      item
        Command = 2395
        ShortCut = 24584
      end
      item
        Command = 2176
        ShortCut = 16474
      end
      item
        Command = 2011
        ShortCut = 16473
      end
      item
        Command = 2177
        ShortCut = 16472
      end
      item
        Command = 2178
        ShortCut = 16451
      end
      item
        Command = 2179
        ShortCut = 16470
      end
      item
        Command = 2013
        ShortCut = 16449
      end
      item
        Command = 2327
        ShortCut = 9
      end
      item
        Command = 2328
        ShortCut = 8201
      end
      item
        Command = 2329
        ShortCut = 13
      end
      item
        Command = 2329
        ShortCut = 8205
      end
      item
        Command = 2333
        ShortCut = 16491
      end
      item
        Command = 2334
        ShortCut = 16493
      end
      item
        Command = 2373
        ShortCut = 16495
      end
      item
        Command = 2337
        ShortCut = 16460
      end
      item
        Command = 2338
        ShortCut = 24652
      end
      item
        Command = 2455
        ShortCut = 24660
      end
      item
        Command = 2339
        ShortCut = 16468
      end
      item
        Command = 2469
        ShortCut = 16452
      end
      item
        Command = 2340
        ShortCut = 16469
      end
      item
        Command = 2341
        ShortCut = 24661
      end>
    LanguageManager = SciLanguageManager1
    SelectedLanguage = 'VB'
    PositionDecimalPlaces = 15
    RotationDecimalPlaces = 15
    ExplicitLeft = 264
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object MemoPropLoad: TSciPropertyLoader
    FileName = 'LDDP.eop'
    Editor = memo
    StoreWhat = [stDefaults, stColors, stStyles, stOther, stLexerProperties, stExtensions]
    Left = 8
    Top = 320
  end
  object SciLanguageManager1: TSciLanguageManager
    LanguageList = <
      item
        Name = 'null'
        Lexer = 'null'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'C++/C'
        Lexer = 'cpp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              '__asm'
              '_asm'
              'asm'
              'auto'
              '__automated'
              'bool'
              'break'
              'case'
              'catch'
              '__cdecl'
              '_cdecl'
              'cdecl'
              'char'
              'class'
              '__classid'
              '__closure'
              'const'
              'const_cast'
              'continue'
              '__declspec'
              'default'
              'delete'
              '__dispid'
              'do'
              'double'
              'dynamic_cast'
              'else'
              'enum'
              '__except'
              'explicit'
              '__export'
              'export'
              'extern'
              'false'
              '__fastcall'
              '_fastcall'
              '__finally'
              'float'
              'for'
              'friend'
              'goto'
              'if'
              '__import'
              '_import'
              '__inline'
              'inline'
              'int'
              '__int16'
              '__int32'
              '__int64'
              '__int8'
              'long'
              '__msfastcall'
              '__msreturn'
              'mutable'
              'namespace'
              'new'
              '__pascal'
              '_pascal'
              'pascal'
              'private'
              '__property'
              'protected'
              'public'
              '__published'
              'register'
              'reinterpret_cast'
              'return'
              '__rtti'
              'short'
              'signed'
              'sizeof'
              'static_cast'
              'static'
              '__stdcall'
              '_stdcall'
              'struct'
              'switch'
              'template'
              'this'
              '__thread'
              'throw'
              'true'
              '__try'
              'try'
              'typedef'
              'typeid'
              'typename'
              'union'
              'unsigned'
              'using'
              'virtual'
              'void'
              'volatile'
              'wchar_t'
              'while'
              'dllexport'
              'dllimport'
              'naked'
              'noreturn'
              'nothrow'
              'novtable'
              'property'
              'selectany'
              'thread'
              'uuid')
          end
          item
            KeywordListNumber = 1
            Name = 'Secondary keywords and identifiers'
            Keywords.Strings = (
              'TStream'
              'TFileStream'
              'TMemoryStream'
              'TBlobStream'
              'TOleStream'
              'TStrings'
              'TStringList'
              'AnsiString'
              'String'
              'WideString'
              'cout'
              'cin'
              'cerr'
              'endl'
              'fstream'
              'ostream'
              'istream'
              'wstring'
              'string'
              'deque'
              'list'
              'vector'
              'set'
              'multiset'
              'bitset'
              'map'
              'multimap'
              'stack'
              'queue'
              'priority_queue')
          end
          item
            KeywordListNumber = 2
            Name = 'Doc Comments'
            Keywords.Strings = (
              'a'
              'addindex'
              'addtogroup'
              'anchor'
              'arg'
              'attention'
              'author'
              'b'
              'brief'
              'bug'
              'c'
              'class'
              'code'
              'date'
              'def'
              'defgroup'
              'deprecated'
              'dontinclude'
              'e'
              'em'
              'endcode'
              'endhtmlonly'
              'endif'
              'endlatexonly'
              'endlink'
              'endverbatim'
              'enum'
              'example'
              'exception'
              'f$'
              'f['
              'f]'
              'file'
              'fn'
              'hideinitializer'
              'htmlinclude'
              'htmlonly'
              'if'
              'image'
              'include'
              'ingroup'
              'internal'
              'invariant'
              'interface'
              'latexonly'
              'li'
              'line'
              'link'
              'mainpage'
              'name'
              'namespace'
              'nosubgrouping'
              'note'
              'overload'
              'p'
              'page'
              'par'
              'param'
              'post'
              'pre'
              'ref'
              'relates'
              'remarks'
              'return'
              'retval'
              'sa'
              'section'
              'see'
              'showinitializer'
              'since'
              'skip'
              'skipline'
              'struct'
              'subsection'
              'test'
              'throw'
              'todo'
              'typedef'
              'union'
              'until'
              'var'
              'verbatim'
              'verbinclude'
              'version'
              'warning'
              'weakgroup'
              '$'
              '@'
              '<'
              '>'
              '\'
              '&'
              '#'
              '{'
              '}')
          end
          item
            KeywordListNumber = 3
            Name = 'Unused'
          end
          item
            KeywordListNumber = 4
            Name = 'Global classes and typedefs'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'Pascal'
        Lexer = 'pascal'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Inline Assembler'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class Keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Keyword Error'
            StyleNumber = 18
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'const'
              'type'
              'var'
              'begin'
              'end'
              'array'
              'set'
              'packed'
              'record'
              'string'
              'if'
              'then'
              'else'
              'while'
              'for'
              'to'
              'downto'
              'do'
              'with'
              'repeat'
              'until'
              'case'
              'of'
              'goto'
              'exit'
              'label'
              'procedure'
              'function'
              'nil'
              'file'
              'and'
              'or'
              'not'
              'xor'
              'div'
              'mod'
              'external'
              'asm'
              'inline'
              'object'
              'constructor'
              'destructor'
              'virtual'
              'far'
              'assembler'
              'near'
              'inherited'
              'stdcall'
              'cdecl'
              'export'
              'exports'
              'end.'
              'class'
              'ansistring'
              'raise'
              'try'
              'except'
              'on'
              'index'
              'name'
              'finally'
              'false'
              'true'
              'initialization'
              'finalization'
              'override'
              'overload'
              'at'
              'threadvar'
              'resourcestring'
              'as'
              'dispinterface'
              'in'
              'is'
              'out'
              'program'
              'package'
              'library'
              'unit'
              'interface'
              'uses'
              'implementation'
              'shr'
              'forward'
              'safecall')
          end
          item
            KeywordListNumber = 1
            Name = 'Class Keywords'
            Keywords.Strings = (
              'write'
              'read'
              'default'
              'public'
              'protected'
              'private'
              'property'
              'published'
              'stored'
              'automated')
          end>
        AssignmentOperator = ':='
        EndOfStatementOperator = ';'
        CommentBoxStart = '{'
        CommentBoxEnd = '}'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '{'
        CommentStreamEnd = '}'
        NumStyleBits = 5
      end
      item
        Name = 'VB'
        Lexer = 'vb'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Whitespace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 32639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Date'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String Not Closed (EOL)'
            StyleNumber = 9
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'begin'
              'case'
              'call'
              'class'
              'continue'
              'do'
              'each'
              'else'
              'elseif'
              'end'
              'erase'
              'error'
              'event'
              'exit'
              'false'
              'for'
              'function'
              'get'
              'gosub'
              'goto'
              'if'
              'implement'
              'in'
              'load'
              'loop'
              'lset'
              'me'
              'mid'
              'new'
              'next'
              'not'
              'nothing'
              'on'
              'or'
              'property'
              'raiseevent'
              'rem'
              'resume'
              'return'
              'rset'
              'select'
              'set'
              'stop'
              'sub'
              'then'
              'to'
              'true'
              'unload'
              'until'
              'wend'
              'while'
              'with'
              'withevents'
              'attribute'
              'alias'
              'as'
              'boolean'
              'byref'
              'byte'
              'byval'
              'const'
              'compare'
              'currency'
              'date'
              'declare'
              'dim'
              'double'
              'enum'
              'explicit'
              'friend'
              'global'
              'integer'
              'let'
              'lib'
              'long'
              'module'
              'object'
              'option'
              'optional'
              'preserve'
              'private'
              'public'
              'redim'
              'single'
              'static'
              'string'
              'type'
              'variant')
          end
          item
            KeywordListNumber = 1
            Name = 'User 1'
          end
          item
            KeywordListNumber = 2
            Name = 'User 2'
          end
          item
            KeywordListNumber = 3
            Name = 'User 3'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = #39
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end>
    Left = 40
    Top = 320
  end
end
