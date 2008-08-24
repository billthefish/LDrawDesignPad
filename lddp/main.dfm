object frMain: TfrMain
  Left = 267
  Top = 61
  Width = 800
  Height = 640
  VertScrollBar.Range = 49
  Caption = 'LDraw Design Pad'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DocumentTabs: TSciDocumentTabControl
    Left = 0
    Top = 54
    Width = 792
    Height = 513
    Editor = editor
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HotTrack = False
    PopupMenu = pmTab
    TabOrder = 2
    OnChange = DocumentTabsChange
    OnMouseDown = DocumentTabsMouseDown
    DefaultExt = '.dat'
    OnClosing = DocumentTabsClosing
    ExplicitHeight = 493
    object editor: TScintillaLDDP
      Left = 4
      Top = 24
      Width = 784
      Height = 485
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      PopupMenu = pmMemo
      Align = alClient
      OnUpdateUI = editorUpdateUI
      EOLStyle = eolCRLF
      Indentation = [TabIndents]
      IndentWidth = 0
      MarginLeft = 1
      MarginRight = 1
      CodePage = cpAnsi
      Caret.ForeColor = clBlack
      Caret.LineBackColor = clYellow
      Caret.LineVisible = False
      Caret.Width = 1
      Caret.Period = 500
      Caret.LineBackAlpha = 256
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
      ActiveHotSpot.ForeColor = clBlue
      ActiveHotSpot.Underlined = True
      ActiveHotSpot.SingleLine = False
      Colors.SelFore = clHighlightText
      Colors.SelBack = clHighlight
      Colors.MarkerFore = clBlue
      Colors.MarkerBack = clAqua
      Colors.FoldHi = clBtnFace
      Colors.FoldLo = clBtnFace
      Colors.WhiteSpaceFore = clDefault
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
      EdgeColor = clSilver
      WordChars = '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
      ControlCharSymbol = #0
      Folding = [foldCompact, foldComment, foldPreprocessor, foldAtElse, foldHTML, foldHTMLPreProcessor]
      FoldMarkers.MarkerType = sciMarkBox
      FoldMarkers.FoldOpen.BackColor = clDefault
      FoldMarkers.FoldOpen.ForeColor = clDefault
      FoldMarkers.FoldOpen.MarkerType = sciMBoxMinus
      FoldMarkers.FoldClosed.BackColor = clDefault
      FoldMarkers.FoldClosed.ForeColor = clDefault
      FoldMarkers.FoldClosed.MarkerType = sciMBoxPlus
      FoldMarkers.FoldSub.BackColor = clDefault
      FoldMarkers.FoldSub.ForeColor = clDefault
      FoldMarkers.FoldSub.MarkerType = sciMVLine
      FoldMarkers.FoldTail.BackColor = clDefault
      FoldMarkers.FoldTail.ForeColor = clDefault
      FoldMarkers.FoldTail.MarkerType = sciMLCorner
      FoldMarkers.FoldEnd.BackColor = clDefault
      FoldMarkers.FoldEnd.ForeColor = clDefault
      FoldMarkers.FoldEnd.MarkerType = sciMBoxPlusConnected
      FoldMarkers.FoldOpenMid.BackColor = clDefault
      FoldMarkers.FoldOpenMid.ForeColor = clDefault
      FoldMarkers.FoldOpenMid.MarkerType = sciMBoxMinusConnected
      FoldMarkers.FoldMidTail.BackColor = clDefault
      FoldMarkers.FoldMidTail.ForeColor = clDefault
      FoldMarkers.FoldMidTail.MarkerType = sciMTCorner
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
      LanguageManager = LanguageManager
      SelectedLanguage = 'LDraw'
      PositionDecimalPlaces = 0
      RotationDecimalPlaces = 0
      ExplicitLeft = 249
      ExplicitTop = 216
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 567
    Width = 792
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end
      item
        Width = 60
      end
      item
        Width = 50
      end>
    ExplicitTop = 547
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 792
    Height = 54
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clBtnFace
    ParentColor = False
    PopupMenu = pmToolbars
    RowSize = 27
    TabOrder = 0
    object tbrExternalPrograms: TToolBar
      Left = 11
      Top = 29
      Width = 128
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'External Programs'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Wrapable = False
      object ToolButton1: TToolButton
        Left = 5
        Top = 0
        Action = acLDView
      end
      object ToolButton4: TToolButton
        Left = 28
        Top = 0
        Action = acMLCad
      end
      object ToolButton30: TToolButton
        Left = 51
        Top = 0
        Action = acL3Lab
        PopupMenu = pmMemo
      end
      object tbUserDefined: TToolButton
        Left = 74
        Top = 0
        DropdownMenu = pmExternal
        ImageIndex = 34
        PopupMenu = pmExternal
        OnClick = tbUserDefinedClick
      end
      object ToolButton32: TToolButton
        Left = 97
        Top = 0
        Width = 8
        Caption = 'ToolButton32'
        ImageIndex = 36
        Style = tbsSeparator
      end
      object btPolling: TToolButton
        Left = 105
        Top = 0
        Caption = 'acPolling'
        DropdownMenu = pmPolling
        ImageIndex = 38
        PopupMenu = pmPolling
        OnClick = btPollingClick
      end
    end
    object tbrFile: TToolBar
      Left = 11
      Top = 2
      Width = 143
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Files'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Wrapable = False
      object ToolButton13: TToolButton
        Left = 5
        Top = 0
        Action = acFileNew
      end
      object ToolButton14: TToolButton
        Left = 28
        Top = 0
        Action = acFileOpen
      end
      object ToolButton12: TToolButton
        Left = 51
        Top = 0
        Action = acFileClose
      end
      object ToolButton15: TToolButton
        Left = 74
        Top = 0
        Action = acFileSave
      end
      object ToolButton16: TToolButton
        Left = 97
        Top = 0
        Action = acFileSaveAs
      end
      object ToolButton28: TToolButton
        Left = 120
        Top = 0
        Action = acFilePrint
      end
    end
    object tbrEditing: TToolBar
      Left = 167
      Top = 2
      Width = 236
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Editing'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Wrapable = False
      object ToolButton18: TToolButton
        Left = 5
        Top = 0
        Action = acUndo
      end
      object ToolButton17: TToolButton
        Left = 28
        Top = 0
        Action = acRedo
      end
      object ToolButton19: TToolButton
        Left = 51
        Top = 0
        Width = 8
        Caption = 'ToolButton19'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 59
        Top = 0
        Action = acEditCut
      end
      object ToolButton10: TToolButton
        Left = 82
        Top = 0
        Action = acEditCopy
      end
      object ToolButton11: TToolButton
        Left = 105
        Top = 0
        Action = acEditPaste
      end
      object ToolButton20: TToolButton
        Left = 128
        Top = 0
        Width = 8
        Caption = 'ToolButton20'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton21: TToolButton
        Left = 136
        Top = 0
        Action = acFind
      end
      object ToolButton22: TToolButton
        Left = 159
        Top = 0
        Action = acFindNext
      end
      object ToolButton26: TToolButton
        Left = 182
        Top = 0
        Action = acReplace
      end
      object ToolButton23: TToolButton
        Left = 205
        Top = 0
        Width = 8
        Caption = 'ToolButton23'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton25: TToolButton
        Left = 213
        Top = 0
        Action = acReplaceColor
      end
    end
    object tbrColorReplace: TToolBar
      Left = 152
      Top = 29
      Width = 405
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      ButtonWidth = 25
      Caption = 'Color Replace'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      Wrapable = False
      object tbnColor0: TToolButton
        Left = 5
        Top = 0
        Caption = 'tbnColor0'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor1: TToolButton
        Left = 30
        Top = 0
        Caption = 'tbnColor1'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor2: TToolButton
        Left = 55
        Top = 0
        Caption = 'tbnColor2'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor3: TToolButton
        Left = 80
        Top = 0
        Caption = 'tbnColor3'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor4: TToolButton
        Left = 105
        Top = 0
        Caption = 'tbnColor4'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor5: TToolButton
        Left = 130
        Top = 0
        Caption = 'tbnColor5'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor6: TToolButton
        Left = 155
        Top = 0
        Caption = 'tbnColor6'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor7: TToolButton
        Left = 180
        Top = 0
        Caption = 'tbnColor7'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor8: TToolButton
        Left = 205
        Top = 0
        Caption = 'tbnColor8'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor9: TToolButton
        Left = 230
        Top = 0
        Caption = 'tbnColor9'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor10: TToolButton
        Left = 255
        Top = 0
        Caption = 'tbnColor10'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor11: TToolButton
        Left = 280
        Top = 0
        Caption = 'tbnColor11'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor12: TToolButton
        Left = 305
        Top = 0
        Caption = 'tbnColor12'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor13: TToolButton
        Left = 330
        Top = 0
        Caption = 'tbnColor13'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor14: TToolButton
        Left = 355
        Top = 0
        Caption = 'tbnColor14'
        OnClick = acColorReplaceShortcutExecute
      end
      object tbnColor15: TToolButton
        Left = 380
        Top = 0
        Caption = 'tbnColor15'
        OnClick = acColorReplaceShortcutExecute
      end
    end
    object tbrTools: TToolBar
      Left = 416
      Top = 2
      Width = 305
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Tools'
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilToolBarColor
      Indent = 5
      TabOrder = 4
      Wrapable = False
      object ToolButton5: TToolButton
        Left = 5
        Top = 0
        Action = acincIndent
      end
      object ToolButton6: TToolButton
        Left = 28
        Top = 0
        Action = acDecIndent
      end
      object ToolButton39: TToolButton
        Left = 51
        Top = 0
        Width = 8
        Caption = 'ToolButton39'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton24: TToolButton
        Left = 59
        Top = 0
        Action = acCommentBlock
      end
      object ToolButton33: TToolButton
        Left = 82
        Top = 0
        Action = acUncommentBlock
      end
      object ToolButton40: TToolButton
        Left = 105
        Top = 0
        Width = 8
        Caption = 'ToolButton40'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton34: TToolButton
        Left = 113
        Top = 0
        Action = acTrimLines
      end
      object ToolButton41: TToolButton
        Left = 136
        Top = 0
        Width = 8
        Caption = 'ToolButton41'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton35: TToolButton
        Left = 144
        Top = 0
        Action = acInline
      end
      object ToolButton2: TToolButton
        Left = 167
        Top = 0
        Caption = 'ToolButton2'
        DropdownMenu = pmMirror
        ImageIndex = 42
        PopupMenu = pmMirror
      end
      object ToolButton36: TToolButton
        Left = 190
        Top = 0
        Action = acReverseWinding
      end
      object ToolButton37: TToolButton
        Left = 213
        Top = 0
        Action = acTriangleCombine
      end
      object ToolButton38: TToolButton
        Left = 236
        Top = 0
        Action = acSortSelection
      end
      object ToolButton43: TToolButton
        Left = 259
        Top = 0
        Action = acAutoRound
      end
      object ToolButton9: TToolButton
        Left = 282
        Top = 0
        Hint = 'Check for errors|Check for errors'
        Caption = 'Run Error Check'
        ImageIndex = 22
      end
    end
  end
  object MainMenu1: TMainMenu
    Images = ilToolBarColor
    Left = 160
    Top = 112
    object File1: TMenuItem
      Caption = 'File'
      Hint = 'File Commands'
      object FileNewItem: TMenuItem
        Action = acFileNew
      end
      object FileOpenItem: TMenuItem
        Action = acFileOpen
      end
      object FileCloseItem: TMenuItem
        Action = acFileClose
      end
      object CloseAll1: TMenuItem
        Action = acFileCloseAll
        Hint = 'Close all|Close all files'
      end
      object FileSaveItem: TMenuItem
        Action = acFileSave
      end
      object FileSaveAsItem: TMenuItem
        Action = acFileSaveAs
      end
      object Print1: TMenuItem
        Action = acFilePrint
        Hint = 'Print'
      end
      object Revert1: TMenuItem
        Action = acFileRevert
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object LastOpen1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Last opened'
        Enabled = False
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Action = acFileExit
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      Hint = 'Editing Commands'
      object Undo1: TMenuItem
        Action = acUndo
      end
      object Redo1: TMenuItem
        Action = acRedo
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object CutItem: TMenuItem
        Action = acEditCut
      end
      object CopyItem: TMenuItem
        Action = acEditCopy
      end
      object PasteItem: TMenuItem
        Action = acEditPaste
      end
      object SelectAll1: TMenuItem
        Action = acSelectAll
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Find1: TMenuItem
        Action = acFind
      end
      object FindNext1: TMenuItem
        Action = acFindNext
      end
      object Replace1: TMenuItem
        Action = acReplace
      end
      object ChangeColor2: TMenuItem
        Action = acReplaceColor
      end
      object RandomizeColorsinSelection1: TMenuItem
        Action = acRandomizeColors
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      Hint = 'View Options'
      object Toolbars: TMenuItem
        Caption = '&Toolbars'
        Hint = 'Show or Hide Toolbars'
        object mnuFile: TMenuItem
          Action = acToolbarVisibility
          AutoCheck = True
          Caption = 'File'
          Checked = True
        end
        object mnuEditing: TMenuItem
          Action = acToolbarVisibility
          AutoCheck = True
          Caption = 'Editing'
          Checked = True
        end
        object mnuTools: TMenuItem
          Action = acToolbarVisibility
          AutoCheck = True
          Caption = 'Tools'
          Checked = True
        end
        object mnuExternalPrograms: TMenuItem
          Action = acToolbarVisibility
          AutoCheck = True
          Caption = 'External Programs'
          Checked = True
        end
        object mnuColorReplace: TMenuItem
          Action = acToolbarVisibility
          AutoCheck = True
          Caption = 'Color Replace'
          Checked = True
        end
      end
      object mnuErrorList: TMenuItem
        Action = acErrorList
      end
      object mnuModelTree: TMenuItem
        Action = acModelTreeView
      end
    end
    object Insert1: TMenuItem
      Caption = 'Insert'
      Hint = 'Insert Commands'
      object StandardPartHeader1: TMenuItem
        Action = acInsertPartHeader
      end
      object UpdateHeader1: TMenuItem
        Action = acInsertUpdateLine
      end
      object mnuMeta: TMenuItem
        Caption = 'META Statement'
      end
    end
    object Tools1: TMenuItem
      Caption = 'Tools'
      Hint = 'LDraw Tool Commands'
      object TrimLines1: TMenuItem
        Action = acTrimLines
      end
      object Comment1: TMenuItem
        Action = acCommentBlock
      end
      object Uncomment1: TMenuItem
        Action = acUncommentBlock
      end
      object acincIdent1: TMenuItem
        Action = acincIndent
      end
      object UnIndent1: TMenuItem
        Action = acDecIndent
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object InlinePart2: TMenuItem
        Action = acInline
      end
      object SubfileSelection1: TMenuItem
        Action = acSubFile
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object ReverseWinding1: TMenuItem
        Action = acReverseWinding
      end
      object Mirror1: TMenuItem
        Caption = 'Mirror Line On'
        ImageIndex = 42
        object XAxis1: TMenuItem
          Action = acMirrorX
        end
        object YAxis1: TMenuItem
          Action = acMirrorY
        end
        object ZAxis1: TMenuItem
          Action = acMirrorZ
        end
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object ErrorCheck1: TMenuItem
        Caption = 'Error Checking'
        Hint = 'Check for errors'
        ImageIndex = 21
        object E1: TMenuItem
          Caption = 'Run Error Check'
          Hint = 'Check for errors|Check for errors'
          ImageIndex = 22
          ShortCut = 121
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object MarkAll1: TMenuItem
          Caption = 'Mark All'
          Enabled = False
        end
        object MarkAllofSelectedType1: TMenuItem
          Caption = 'Mark All of Selected Type'
          Enabled = False
        end
        object UnmarkAll2: TMenuItem
          Caption = 'Unmark All'
          Enabled = False
        end
        object UnmarkAllofSelectedType2: TMenuItem
          Caption = 'Unmark All of Selected Type'
          Enabled = False
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object AutofixSelectedError1: TMenuItem
          Caption = 'Autofix Selected Error'
          Enabled = False
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object AutofixAllMarkedErrorsofSelectedType1: TMenuItem
          Caption = 'Autofix All Marked Errors of Selected Type'
          Enabled = False
        end
        object AutofixAllMarkedErrors1: TMenuItem
          Caption = 'Autofix All Marked Errors'
          Enabled = False
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object AutofixAllErrorsofSelectedType1: TMenuItem
          Caption = 'Autofix All Errors of Selected Type'
          Enabled = False
        end
        object AutofixAllErrors1: TMenuItem
          Caption = 'Autofix All Errors'
          Enabled = False
        end
        object N14: TMenuItem
          Caption = '-'
        end
        object CopyErrorListToClipboard1: TMenuItem
          Caption = 'Copy Error List To Clipboard'
          Enabled = False
        end
      end
      object AutoRoundSelection1: TMenuItem
        Action = acAutoRound
      end
      object SortByPosition1: TMenuItem
        Action = acSortSelection
      end
      object CombineTrianglesIntoQuad1: TMenuItem
        Action = acTriangleCombine
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object miMiscOptions: TMenuItem
        Action = acOptions
      end
      object EditorOptions1: TMenuItem
        Action = acEditorOptions
      end
    end
    object Processing1: TMenuItem
      Caption = 'Process'
      object Plugins1: TMenuItem
        Caption = '&Plugins'
        ImageIndex = 39
        object Nonefound1: TMenuItem
          Caption = '(None found)'
        end
      end
      object ExternalPrograms1: TMenuItem
        Caption = 'External Programs'
        object acLDView1: TMenuItem
          Action = acLDView
        end
        object acMLCad1: TMenuItem
          Action = acMLCad
        end
        object acL3Lab1: TMenuItem
          Action = acL3Lab
        end
        object mnuUserDefined: TMenuItem
          Caption = 'User Defined Program'
          Hint = 'User Defined Program|Execute User Defined program'
          ImageIndex = 34
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object Polling1: TMenuItem
          Caption = 'Polling'
          ImageIndex = 37
          object PolltoL3LabLDView1: TMenuItem
            Caption = 'Poll to L3Lab && LDView'
            OnClick = mnPollL3LabClick
          end
          object Polltoselectedlineonly1: TMenuItem
            Caption = 'Poll to selected line only'
            OnClick = mnPollToSelectedClick
          end
          object N16: TMenuItem
            Caption = '-'
          end
          object Pollevery1sec1: TMenuItem
            Caption = 'Poll every 1 sec'
            GroupIndex = 1
            RadioItem = True
            OnClick = Pollevery1sec2Click
          end
          object Pollevery2sec1: TMenuItem
            Caption = 'Poll every 2 sec'
            Checked = True
            GroupIndex = 1
            RadioItem = True
          end
          object Pollevery5sec: TMenuItem
            Caption = 'Poll every 5 sec'
            GroupIndex = 1
            RadioItem = True
          end
          object Pollonrequest2: TMenuItem
            Caption = 'Poll on request'
            GroupIndex = 1
            RadioItem = True
            OnClick = Pollonrequest1Click
          end
        end
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ProcessthroughLSynth1: TMenuItem
        Action = acLSynth
      end
      object ConvertBitmaptoLDraw1: TMenuItem
        Action = acBMP2LDraw
      end
      object GenrateBendibleObject1: TMenuItem
        Action = acBendableObject
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      Hint = 'Help Commands'
      object HelpAboutItem: TMenuItem
        Action = HelpAbout
      end
      object LDDPHomepage1: TMenuItem
        Action = acHomepage
      end
      object CheckforUpdate1: TMenuItem
        Action = acCheckforUpdate
      end
    end
  end
  object MainFormActions: TActionList
    Images = ilToolBarColor
    Left = 8
    Top = 112
    object acFileNew: TAction
      Category = 'File'
      Caption = '&New'
      Hint = 'New|Create a new file'
      ImageIndex = 6
      ShortCut = 16462
      OnExecute = acFileNewExecute
    end
    object acFileOpen: TAction
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Open an existing file'
      ImageIndex = 8
      ShortCut = 16463
      OnExecute = acFileOpenExecute
    end
    object acFileSave: TAction
      Category = 'File'
      Caption = '&Save'
      Hint = 'Save|Save current file'
      ImageIndex = 9
      ShortCut = 16467
      OnExecute = acFileSaveExecute
    end
    object acFileSaveAs: TAction
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Save file under a new filename'
      ImageIndex = 19
      OnExecute = acFileSaveAsExecute
    end
    object acFileExit: TAction
      Category = 'File'
      Caption = '&Exit'
      Hint = 'Exit|Quit program'
      OnExecute = acFileExitExecute
    end
    object acEditCut: TEditCut
      Category = 'Editor'
      Caption = '&Cut'
      Enabled = False
      Hint = 'Cut|Cut out the marked text'
      ImageIndex = 0
      ShortCut = 16472
      OnExecute = acEditCutExecute
    end
    object acEditCopy: TEditCopy
      Category = 'Editor'
      Caption = 'C&opy'
      Enabled = False
      Hint = 'Copy|Copy the marked text to clipboard'
      ImageIndex = 1
      ShortCut = 16451
      OnExecute = acEditCopyExecute
    end
    object acEditPaste: TEditPaste
      Category = 'Editor'
      Caption = '&Paste'
      Hint = 'Paste|Paste text from clipboard'
      ImageIndex = 2
      ShortCut = 16470
      OnExecute = acEditPasteExecute
    end
    object HelpAbout: TAction
      Category = 'Help'
      Caption = '&About...'
      Hint = 'Info|Show info about LDDP'
      OnExecute = HelpAboutExecute
    end
    object acFileRevert: TAction
      Category = 'File'
      Caption = 'Revert'
      Hint = 'Revert|Reload file and lose changes'
      OnExecute = acFileRevertExecute
    end
    object acFind: TAction
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find text|Find specified text'
      ImageIndex = 13
      ShortCut = 16454
      OnExecute = acFindExecute
    end
    object acReplace: TAction
      Category = 'Search'
      Caption = '&Replace...'
      Hint = 'Find and replace text|Find and replace text'
      ImageIndex = 20
      ShortCut = 16466
      OnExecute = acReplaceExecute
    end
    object acOptions: TAction
      Category = 'Misc'
      Caption = '&Options...'
      Hint = 'Options|Options'
      ImageIndex = 32
      ShortCut = 16461
      OnExecute = acOptionsExecute
    end
    object acLDView: TAction
      Category = 'Externals'
      Caption = 'LDView'
      Hint = 'Start LDView'
      ImageIndex = 23
      OnExecute = acLDViewExecute
    end
    object acUndo: TAction
      Category = 'Editor'
      Caption = '&Undo'
      Hint = 'Undo last action'
      ImageIndex = 24
      ShortCut = 16474
      OnExecute = acUndoExecute
    end
    object acRedo: TAction
      Category = 'Editor'
      Caption = '&Redo'
      Hint = 'Redo last action'
      ImageIndex = 25
      ShortCut = 24666
      OnExecute = acRedoExecute
    end
    object acMLCad: TAction
      Category = 'Externals'
      Caption = 'MLCad'
      Hint = 'Start MLCad'
      ImageIndex = 26
      OnExecute = acMLCadExecute
    end
    object acincIndent: TAction
      Category = 'Editor'
      Caption = 'Increase Indent'
      Hint = 'Increase Indent'
      ImageIndex = 27
      OnExecute = acincIndentExecute
    end
    object acDecIndent: TAction
      Category = 'Editor'
      Caption = 'Decrease Indent'
      Hint = 'Decrease Indent'
      ImageIndex = 28
      OnExecute = acDecIndentExecute
    end
    object acInsertPartHeader: TAction
      Category = 'Editor'
      Caption = 'Standard Part Header'
      Hint = 'Insert a part header'
      OnExecute = acInsertPartHeaderExecute
    end
    object acInsertUpdateLine: TAction
      Category = 'Editor'
      Caption = 'Update Header'
      Hint = 'Insert an update line header'
      ShortCut = 16469
      OnExecute = acInsertUpdateLineExecute
    end
    object acCommentBlock: TAction
      Category = 'Editor'
      Caption = '&Comment'
      Hint = 'Comment a block with 0'
      ImageIndex = 30
      ShortCut = 16453
      OnExecute = acCommentBlockExecute
    end
    object acUncommentBlock: TAction
      Category = 'Editor'
      Caption = '&Uncomment'
      Hint = 'Uncomment a commented block'#13#10'by removing leading zeros'
      ImageIndex = 29
      ShortCut = 24645
      OnExecute = acUncommentBlockExecute
    end
    object acTrimLines: TAction
      Category = 'Editor'
      Caption = 'Tr&im Lines'
      Hint = 'Removes blank lines from selection'
      ImageIndex = 31
      OnExecute = acTrimLinesExecute
    end
    object acHomepage: TAction
      Category = 'Misc'
      Caption = 'LDDP &Homepage'
      Hint = 'Go to LDDP homepage'
      ImageIndex = 33
      OnExecute = acHomepageExecute
    end
    object acInline: TAction
      Category = 'Editor'
      Caption = 'I&nline Part'
      Hint = 'Inline a part'
      ImageIndex = 34
      ShortCut = 16457
      OnExecute = acInlineExecute
    end
    object acUserDefined: TAction
      Category = 'Externals'
      ImageIndex = 35
      OnExecute = acUserDefinedExecute
    end
    object acReplaceColor: TAction
      Category = 'Search'
      Caption = 'Replace &Color...'
      Hint = 'Search and replace LDraw colors with a color dialogue'
      ImageIndex = 36
      OnExecute = acReplaceColorExecute
    end
    object acSelectAll: TAction
      Category = 'Editor'
      Caption = '&Select all'
      Hint = 'Select all'
      ShortCut = 16449
      OnExecute = acSelectAllExecute
    end
    object acFindNext: TAction
      Category = 'Search'
      Caption = 'Find &Next'
      Enabled = False
      Hint = 'Find next...'
      ImageIndex = 14
      ShortCut = 114
      OnExecute = acFindNextExecute
      OnUpdate = acFindNextUpdate
    end
    object acL3Lab: TAction
      Category = 'Externals'
      Caption = 'L3Lab'
      Hint = 'Start L3Lab'
      ImageIndex = 21
      OnExecute = acL3LabExecute
    end
    object acMRUList: TAction
      Category = 'Misc'
      Caption = 'acMRUList'
      OnExecute = acMRUListExecute
    end
    object acFilePrint: TAction
      Category = 'File'
      Caption = '&Print...'
      Hint = 'Print|Print current file'
      ImageIndex = 37
      ShortCut = 16464
    end
    object acFileCloseAll: TAction
      Category = 'File'
      Caption = 'Close A&ll'
      Hint = 'Close all|Close all open files'
      OnExecute = acFileCloseAllExecute
    end
    object acReverseWinding: TAction
      Category = 'Editor'
      Caption = '&Reverse Winding'
      Hint = 'Reverse Winding'
      ImageIndex = 39
      ShortCut = 16471
      SecondaryShortCuts.Strings = (
        'F12')
      OnExecute = acReverseWindingExecute
    end
    object acCheckforUpdate: TAction
      Category = 'Misc'
      Caption = 'Check for Update...'
      Hint = 'Check if there is a newer version available...'
      OnExecute = acCheckforUpdateExecute
    end
    object acBMP2LDraw: TAction
      Category = 'Misc'
      Caption = 'Convert Bitmap to LDraw...'
      Hint = 'Start BMP-2-LDraw Tool'
      OnExecute = acBMP2LDrawExecute
    end
    object acModelTreeView: TAction
      Category = 'View Menu'
      Caption = 'Model Tree'
      Hint = 'Show a Tree Model of this file including all submodels'
      OnExecute = acModelTreeViewExecute
    end
    object acLSynth: TAction
      Category = 'Misc'
      Caption = 'Process Through LSynth...'
      Hint = 'Run current text though LSynth'
      OnExecute = acLSynthExecute
    end
    object acBendableObject: TAction
      Category = 'Misc'
      Caption = 'Generate Bendable Object... '
      ShortCut = 16456
      OnExecute = acBendableObjectExecute
    end
    object acAutoRound: TAction
      Category = 'Misc'
      Caption = '&Auto Round Selection'
      ImageIndex = 44
      ShortCut = 16452
      OnExecute = acAutoRoundExecute
    end
    object acSortSelection: TAction
      Category = 'Misc'
      Caption = 'Sort'
      ImageIndex = 43
      OnExecute = acSortSelectionExecute
    end
    object acTriangleCombine: TAction
      Category = 'Editor'
      Caption = 'Combine &Triangles Into Quad'
      Hint = 'Combine 2 Triangles into 1 Quad'
      ImageIndex = 41
      ShortCut = 16468
      OnExecute = acTriangleCombineExecute
    end
    object acRandomizeColors: TAction
      Category = 'Misc'
      Caption = 'Randomize Colors in Selection'
      OnExecute = acRandomizeColorsExecute
    end
    object acMirrorX: TAction
      Tag = 1
      Category = 'Misc'
      Caption = 'X Axis'
      OnExecute = acMirrorExecute
    end
    object acMirrorY: TAction
      Tag = 2
      Category = 'Misc'
      Caption = 'Y Axis'
      OnExecute = acMirrorExecute
    end
    object acMirrorZ: TAction
      Tag = 3
      Category = 'Misc'
      Caption = 'Z Axis'
      OnExecute = acMirrorExecute
    end
    object acColorReplaceShortcut: TAction
      Category = 'Search'
      Caption = 'Replace Color Shortcut'
      OnExecute = acColorReplaceShortcutExecute
    end
    object acSubFile: TAction
      Category = 'Editor'
      Caption = 'Subfile Selection'
      Hint = 'Move Selection to New Subfile'
      OnExecute = acSubFileExecute
    end
    object acEditorOptions: TAction
      Category = 'Misc'
      Caption = 'Editor Options...'
      OnExecute = acEditorOptionsExecute
    end
    object acToolbarVisibility: TAction
      Category = 'View Menu'
      AutoCheck = True
      OnExecute = acToolbarVisibilityExecute
    end
    object acErrorList: TAction
      Category = 'View Menu'
      Caption = 'Error List'
      OnExecute = acErrorListExecute
    end
    object acFileClose: TAction
      Category = 'File'
      Caption = '&Close File'
      Hint = 'Close|Close current file'
      ImageIndex = 7
      OnExecute = acFileCloseExecute
    end
  end
  object ilToolBarColor: TImageList
    Left = 40
    Top = 112
    Bitmap = {
      494C01012E003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D000000001001000000000000068
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000004C4054
      6054605440542050000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      000010000000100000001000100010000000000000000000004C6058C060C060
      C060C060C060C0606058004C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      000000000000100000001000000000000000000000002050A060C060C060C060
      C060C060C060C060C060A05C2050000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      0000000000001000000000001000000000000000004CA064C06CC0648060A060
      C060C060C060805CA060C060A05C004C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      0000000010001000000000000000100000000000605CC070C06CE26C0C720365
      A060A060E1600C6E0361A060C060605800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      000000000000100000001000100000000000004CC070C078A070CA75FF7F167B
      C164A060D476FF7F0D6E805CC060C06020500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002054C07CC07CC074C174917AFF7F
      167BF576FF7FD476E260A060C060C06040540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000605C027DE17CC07CC078A074927A
      FF7FFF7FF576A060A060C060C060C06060540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000615CA87D237DC07CC07CC078D47A
      FF7FFF7F177BC168A060C060C060C06060540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004058EB7DA97DC07CE27CD47EFF7F
      D47E927AFF7F167B0369A064C060C06040540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000050A979917E037DA97DFF7FF47E
      C078A074917AFF7FEC71A068C064C060004C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010000000100000001000
      0000100010001000000010001000000000000000A364B37E917E247DC97DE17C
      C07CC078C078A979E270C06CC068605800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010000000000000001000
      000010000000000000000000000010000000000000506875177FB37E677DE17C
      C07CC07CC07CA078C074C074A064004C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010000000000000001000
      0000000010000000000010001000000000000000000020508875F57E377F917E
      0C7ECA7DA97D877D027DA0682050000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010000000000010001000
      0000000000001000000000000000100000000000000000000050C364CB79707E
      917E4F7ECA7D24796060004C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010000000000000001000
      0000100010000000000010001000000000000000000000000000000000504158
      826061604058004C000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000047024702470247024702470200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000047024702470247024702470200000000000000000000000000000000
      0000000000400040004000400040000000001000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018631042000000000000000000000000000000000000
      0000000047024702470247024702470200000000000000000000000000000000
      0000000000000040004000400040000000000000100000000000000000000000
      0000000000000000000000020002000200000000000000000000000000009052
      1042104210421042000018631042E07F00000000000000000000000000000000
      0000000047024702470247024702470200000000000000000000000000001000
      1000100000000000004000400040000000000000000010000000000000000000
      0000000000000000000000020002000200000000000000000000000090521863
      1863186318631042000018631042186300000000000000000000000000000000
      0000000047024702470247024702470200000000000000000000000000000000
      1000100000000000000000400040000000000000000000000000000000000000
      0000000000000000000000020002000200000000000000000000104218631863
      1863186318631042000018631042004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      0000100000000000000000000040000000000000000000000000000000000000
      0000000000000000000000000000000000001042104210421042883118631863
      1863186394521042000018631042E07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010000000
      0000000010001000100000000000000000000000000000000000000000000000
      00000000000000000000007C007C007C00007863786378637863903118631863
      1863945294521042000094521042186300000000AD7DAD7DAD7DAD7DAD7DAD7D
      00000000AD7DAD7DAD7DAD7DAD7DAD7D00000000000000000000100000000000
      0000000000001000100000000000000000000000000000020002000200000000
      00000000000000000000007C007C000000001863186318631863903118631863
      1863945294521042000094529031E07F00000000AD7DAD7DAD7DAD7DAD7DAD7D
      00000000AD7DAD7DAD7DAD7DAD7DAD7D00000000000000400000000000000000
      0000000010000000100000000000000000000000000000020002000200000000
      00000000000000000000007C0000000000000000000000000000104218631863
      9452945294521042000094529031186300000000AD7DAD7DAD7DAD7DAD7DAD7D
      00000000AD7DAD7DAD7DAD7DAD7DAD7D00000000000000400040000000000000
      0000100000000000000000000000000000000000000000020002000200000000
      0000000000000000000000000000000000000000000000000000000018631863
      9452945294521042FE7F945290310042000000000000AD7DAD7DAD7DAD7D0000
      000000000000AD7DAD7DAD7DAD7D000000000000000000400040004000000000
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010000000000000000000000000000000000000001863
      9452945294521042FE7F94529031E07F000000000000AD7DAD7DAD7DAD7D0000
      000000000000AD7DAD7DAD7DAD7D000000000000000000400040004000400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001000000000000000000000000000000000000000
      0000000000000000FE7F9452903100000000000000000000AD7DAD7D00000000
      0000000000000000AD7DAD7D0000000000000000000000400040004000400040
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000000000000000100000000000000000000000000000000000
      000000000000000000000000000000000000000000000000AD7DAD7D00000000
      0000000000000000AD7DAD7D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008810881088100000
      0000000000000821082188100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7F000000000000000000000000881088101042104288318810
      8810000008219052186318638810881000000000000000000000000090629062
      8031803190629052000000000000000000000000000000000000000000000000
      00004702690A8C16AE22123734475753000000000000FE7F1863186318631863
      9031903190310000000000000000000000008810104210421042104288319052
      9052881090521863186318631863186388100000000000009452883188319452
      9452906290628031803194520000000000000000000000000000000000000000
      000047024702690A8C16CF2A12373447000000000000FE7F1863186318631863
      903100000000000039253925B735F53D00008810104210421042104288319052
      9052082110421863186318631863905208210000000094521863186318631863
      9452945294529062906290629452000000000000000000000000000000000000
      0000470247024702690AAE22CF2A1237000000000000FE7F1863186318631863
      9031903190310000000000000000000000008810104210421042903118639452
      9452082108211042104218639052082100000000000080729872987298729872
      9872107394529452945290628031000000000000000000000000000000000000
      000047024702470247028C16AE22CF2A000000000000FE7F1863186318631863
      186318631863FE7F000000000000000000008810104290319031905290521863
      1863945294520821082110420821881088100000987298727863786378637863
      7863186310739452945290629062905200000000000000000000000000000000
      00004702470247024702690A8C16AE2200000000000000001863903190310000
      0000000000000000000000000000000000000000881010429052905288108810
      1042186318639452945208219052905288100000907378637863786378637863
      7863786318631073945294529062906200000000000000000000000000000000
      000047024702470247024702690A8C1600000000000000001863903100000000
      292729270B2FED36ED3600000000000000000000000088108810104208211863
      8810881010421863186394529452905288100000907378637863786378637863
      8831881078631863107394529062803100000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863903190310000
      0000000000000000000000000000000000000000000000000000082178637863
      18631863881088109052186318639452881000009073FE7FFE7F786378639052
      8810082108211063987294529452803100000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863186318631863
      186318631863FE7F0000000000000000000000000000000000000821FE7FFE7F
      78637863186308219052000390528810000000007863FE7FFE7F786310428810
      1863786310420000105218639452906200000000E570067128756A796A79AD7D
      AD7D000000000000000000000000000000000000000000001863903190319031
      9031000000000000000000000000000000000000000000000821FE7FFE7FFE7F
      FE7F7863082110420871881088100000000000007863FE7FFE7F104288101863
      7863786378631063906218639452906200000000C36CE570067128756A79AD7D
      AD7D000000000000000000000000000000000000000000001863903100000000
      000000006374C66C29652965AD5D000000000000000000000821FE7FFE7FFE7F
      FE7FFE7F08218810881000000000000000000000000078639452881018637863
      7863786378637863987218638831000000000000C36CC36CE570067128756A79
      AD7D000000000000000000000000000000000000000000001863903190319031
      903100000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7F08210000000000000000000000000000000000009452FE7F7863FE7FFE7F
      FE7F786378637863987218639452000000000000C36CC36CC36CE57006712875
      6A79000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7F08210000000000000000000000000000000000000000945278637863FE7F
      FE7F786378639872006294520000000000000000C36CC36CC36CE57006712875
      2875000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000008210821FE7FFE7F
      0821000000000000000000000000000000000000000000000000000078637863
      9073907390739872000000000000000000000000C36CC36CC36CC36CE5700671
      2875000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008210821
      0821000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008210821
      0821082108210821000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008810
      8810000088108810881000000000000000000821082108210821082108210821
      0821082108210821082108210821082108210000000000000821082198029802
      9802980218020002082108210000000000000821082108210821082108210821
      0821082108210821082108210000000000000000000000000000000088107863
      8823881090738052805288100000000000008810186318631863186318639452
      9452945294529452945290529052905208210000000008211802980298029802
      9802980298020012803300210821000000000821186318631863186318631863
      1863186318631863186308210000000000000000881088108810881088108810
      0013001388100042907390738810000000008810186318639452082194521863
      18631863186318631863945294529052082100000821180218233E5398123E53
      98029802980298020012803300420821000008219452FE7FFE7F786318631863
      9452945294529452881088108810000000000000881000628051006288108831
      8810800280028810907380528052881000008810186394520821945208219452
      1863186318631863186318639452905208210000082198129043885394523E53
      98129802980298029802001200020821000008219452FE7FFE7F786378631863
      1863186318631863881090538810000000000000881000628051007288100821
      0000881080028002881000428873907388108810186308211863000094520821
      1863900110011001900198021863905208210821980218238863904394521823
      3E53981298029802980218029001883108210821945278631863945294529042
      9042103288108810081290430812881088100000881000620062807288100821
      0821000088108823800288108873805288108810786394520821186308219452
      1863186318631863186318631863945208210821980210038053904394523E53
      1823981298029802980298029001900108210821945278637863786318531053
      1053104388109043904390339043905388100821881000728072807288108810
      0000881088238810800200028810907300008810786318639452082194521863
      1863186318631863186318631863945208210821980210038853904388029452
      9802980298029802980298029001900108210821945278631863945290429042
      9032103288108810081208230812881088100821807280728072807280728810
      8810882388108831881000020002881000008810786378631863186318631863
      1863186318631863186318631863945208210821900180538053805390430063
      18239802980298029802980290019001082108219452FE7FFE7F786378631853
      1853185318531853881090430821000000000821807280728072807280728810
      8823881088310821000088100002000288108810786378639452082194521863
      1863186318631863186318631863945208210821880290439043805380538073
      10039802980210421042180290011001082108219452FE7FFE7F786318631863
      9452945294529452881088108810000000000821807280728072887288728810
      8810905210420821000088100002882300008810FE7F94520821786308219452
      1863186318631863186318631863945208218810805380539043805380531003
      88021823980210038053883190018831082108219452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7F08210000000000000821807288720873087308738810
      8812881010420000881000028823000000008810FE7F08217863881078630821
      1863900110011001900198021863945208210000881080538073805300638053
      8053905290520043805300439001082100000821903190319031903190319031
      9031903190319031903108210000000000000000881088108810881088100000
      9033881288108810000288238810000000008810FE7F94520821786308219452
      1863186318631863186318631863186308210000881088028053903188028053
      9043880380530063805300021001082100000821182318231823982298229812
      9812181218021802180208210000000000000000881010429031082188100000
      8810903388120812882388100000000000008810FE7F78639452082194527863
      7863186318631863186318631863186308210000000088109001980218238802
      8053805380738073000210010821000000000821182318231823982298229812
      9812181218021802180208210000000000000000082118639052903188100000
      0000881090339033881000000000000000008810FE7FFE7FFE7FFE7FFE7F7863
      7863786318631863186318631863186308210000000000008810881098029802
      8802880288029802082108210000000000000821082108210821082108210821
      0821082108210821082108210000000000000000082118631863104288100000
      0000000008210821000000000000000000008810881088108810881088108810
      8810881088108810881088108810881008210000000000000000000088100821
      0821082108210821000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008218810881000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C000000000000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000000000000000000000000000000000
      000000000000000000000000000000000000007C007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C0000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C007C007C007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000007C007C007C000010001000
      1000100010001000100010001000100000000000000017000000000000000000
      0000000000000000000000000000000000000000000000000000007C007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C0000000000000000
      0000000000000000000000000000000000000000170017000000000000000000
      00000000000000000000000000000000000000000000000000000000007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001700170017001700170000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C0000000000000000
      0000000000000000000000000000000000000000170017000000000000000000
      000000000000000000000000000000000000007C000000000000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000007C007C007C000010001000
      1000100010001000100010001000100000000000000017000000000000000000
      000000000000000000000000000000000000007C007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C007C007C007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C0000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007C007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000040000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004080600040004000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008831883100000000000000000000000000000000883188310000
      0000000000000000000000000000000000000000000000000000000000000040
      8060806080600040004000400040004000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000088319003100388100000000000000000000000008810100390038831
      0000000000000000000000000000000000000000000000000000004080608060
      8060806080600040004000400040004080600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000008211003901310038810000000000000000088101003901310030821
      0000000000000000000000000000000000000000000000408060806080608060
      8060806080608060004000400040004080600000000000000000000000000000
      00000000000000000000000000000000000000000000630C630C630C630C630C
      8831000000000821900290139002883100000000883190029013900208210000
      00008831630C630C630C630C630C000000000040806080608060806080608060
      8060004080708070807080600040004080600000000000000000000000000000
      0000000000000000000000000000000000000000082110031003900290028831
      0000000000000000883190039003883100000000883190039003883100000000
      0000000088319002900210031003082100008060806080608060806080600040
      807080708070907180700040806080608060000000001F000000000000000000
      0000000000000000000000000000000000000000082118339033100390311863
      0000000000000000104210039013881000000000881090131003104200000000
      0000000018639031100390331833082100008060806080608060806080700871
      8870807080708060807080709071087100000000000017001F00000000000000
      0000000000000000000000000000000000000000082178639043182390028831
      0000000000000000104210037863881000000000881078631003104200000000
      0000000088319002182390437863082100008060806080608070807088708070
      80608070087180700871087100000000000017001700170017001F0000000000
      0000000000000000000000000000000000000000082178639452900390139002
      8831000000000000883110039013881000000000881090131003883100000000
      0000883190029013900394527863082100008060807080708870007C80608070
      8060887080709071000000000000000000000000000017001700000000000000
      0000000000000000000000000000000000000000883188311863883190037863
      9002883108210821900290039003883100000000883190039003900208210821
      8831900278639003883118638831883100000000000088708070087180700871
      9071087100000000000000000000000000000000000017000000000000000000
      0000000000000000000000000000000000000000883100000000000088311003
      7863100310031003100390039002104200000000104290029003100310031003
      1003786310038831000000000000883100000000000000000000887090710871
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008831
      1003900390139013901310038831000000000000000088311003901390139013
      9003100388310000000000000000000000000000000000000000000000000000
      1F000000000000001F0000001F001F001F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042883188318831883110420000000000000000000000001042883188318831
      8831104200000000000000000000000000000000000000000000000000000000
      1F0000001F0000001F0000001F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F001F0000001F001F0000001F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F000000000000001F0000001F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001042000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000001000
      0000000000000000000000000000000000000000000000000000000000000000
      0042E07F00000000000000000000000000000000000000000000000000000000
      0000000000001042000000000000104200000000000000000000007C007C007C
      0000007C007C007C0000007C007C007C000000000000007C007C007C00000000
      0000000000000000000000000000000000000000000000000000000000420042
      0042E07FE07FE07F0000000000000000000000000000000000000000007C1042
      0000000000001042000000000000000010420000000000000000007C00000000
      0000007C0000007C0000007C0000007C0000000000001000007C007C007C1000
      0000104200000000100000000000000000000000000000000042004200420042
      0042E07FE07FE07FE07FE07F00000000000000001042104210421042007C007C
      10420000000010420000000000000000104200000000000000000000007C0000
      00000000007C0000007C0000007C007C00000000000000001000007C007C007C
      1002100210021863000000000000000000000000000000420042004200420042
      00420042E07FE07FE07FE07FE07F00000000007C007C007C007C007C007C007C
      007C0000000010420000000000000000104200000000000000000000007C007C
      000000000000000000000000007C0000000000000000000000000000007C007C
      007C186318630000186310000000000000000000000000420042004200420042
      E07FE07F00420042E07FE07FE07F0000000000000000000000000000007C007C
      0000000000000000104200000000000000000000000000000000000000000000
      0000000000000000000000000000007C0000000000000000100000001002007C
      007C007C100018631002000000001000100000000000004200420042E07FE07F
      E07FE07FE07FE07F00420042E07F0000000000000000000000000000007C0000
      0000000000001042000000000000000000000000007C007C007C007C007C007C
      007C0000007C007C007C007C0000000000000000000000000000100018631863
      007C007C007C186310021042000000000000000000000042E07FE07FE07F0042
      004200420042E07FE07FE07F0042000000000000000000000000000000000000
      00000000000010420000000000000000000000000000007C007C00000000007C
      007C0000007C007C00000000007C007C00000000000000000000100018630000
      0000007C007C007C10020000000000000000000000000000E07FE07F00420042
      0042004200420042E07FE07F0000000000000000000000000000000000000000
      00000000000010420000000000000000000000000000007C007C000000000000
      007C00000000000000000000007C007C00001000000000000000000010420000
      00001863007C007C007C00000000000000000000000000000000E07F00420042
      0042004200420042E07F00000000000000000000000000001042000000000000
      00000000000010420000000000000000000000000000007C007C000000000000
      007C0000000000000000007C007C007C00000000000000001002186310001002
      186318631002007C007C007C100000400000000000000000000000000042E07F
      E07FE07FE07F0042000000000000000000000000104200000000000010420000
      00000000000000000000000000000000000000000000007C007C000000000000
      0000000000000000007C007C007C000000000000000000000000186318630000
      1000000010000000007C007C007C000000001000100010001000100010000042
      0042004200421000100010001000100010000000104200000000000010420000
      000000000000000000000000007C1042000000000000007C007C000000000000
      000000000000000000000000007C000000001000000000000000000000000040
      00000000000000000000007C007C007C00009C739C739C739C7310009C739C73
      9C7310001000100010009C731000100010000000000000000000000010420000
      000000001042104210421042007C007C104200000000007C007C000000000000
      00000000007C000000000000007C007C00000000000000000000000000000000
      000000000000000000000000007C007C007C9C7310001000100010009C731000
      10009C731000100010009C731000100010000000000000000000000010420000
      0000007C007C007C007C007C007C007C007C00000000007C007C000000000000
      000000000000007C007C007C007C007C00000000000000000000000000000000
      0000000010000000000000000000007C007C9C7310001000100010009C731000
      10009C73100010009C7310009C73100010000000000010421042000000000000
      000000000000000000000000007C007C00000000007C007C007C007C00000000
      0000000000000000007C007C007C000000000000000000000000100000000000
      0000000000000000000000000000000000009C7310001000100010009C731000
      10009C73100010009C7310009C73100010000000000000000000000000000000
      000000000000000000000000007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7310001000100010009C739C73
      9C73100010009C731000100010009C7310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003004
      3004300430043004100010001000100010000000004100410041004100410041
      0041004100410041004100410041000000000000300430043004300430043004
      3004100010001000100010001000000000000000300410001000100010001000
      5008100010001000100010001000000000000000000000000000000000003004
      9C737B6F7B6F5A6B39671863D65A945210008051082100621863186318631863
      1863786378637863FE7F907308210021000000003004BD779C737B6F7B6F5A6B
      5A6B39671863D65AB556734E1000000000000000300439671863F75EB5569452
      500839671863F75EB55694521000000000000000000000000000000000003004
      BD779C737B6F7B6F5A6B39671863D65A10008051087300621863C618A514A514
      84108410630C42084208907308730021000000003004BD77BD779C737B6F7B6F
      5A6B5A6B39671863D65AB556100000000000000030045A6B39671863F75EB556
      50085A6B39671863F75EB5561000000000000000000000000000000000003004
      BD77BD779C737B6F7B6F5A6B3967186310008051107300621863186318631863
      18631863186318637863907308730021000000003004DE7BBD77BD779C737B6F
      7B6F5A6B5A6B39671863D65A100000000000000030045A6B5A6B39671863F75E
      50085A6B5A6B39671863F75E1000000000000000000000003004300430045108
      3004300430043004300430043004100010008051107300621863C618A514A514
      84108410630C4208186390730873002100000000300430043004300430043004
      300430043004300430041000100000000000000030047B6F5A6B5A6B39671863
      50087B6F5A6B5A6B3967186310000000000000000000000030049C737B6F3004
      1000100010001000100010001000000010008051107300629052945218631863
      1863186318631863186390730873002100000000100010001000100010001000
      100010001000100010000000100000000000000030047B6F7B6F5A6B5A6B3967
      51087B6F7B6F5A6B5A6B39671000000000000000000000003004BD779C733004
      3004300410001000100010001000100010008051107300629052C618A514A514
      84108410630C4208420890730873002100000000300430043004300430043004
      300410001000100010001000100000000000000030049C737B6F7B6F5A6B5A6B
      51089C737B6F7B6F5A6B5A6B3004000000000000000000003004BD77BD779C73
      7B6F7B6F5A6B3967186310000000000000008051907300620062006200620062
      00620062006200620062907308730021000000003004BD779C737B6F7B6F5A6B
      5A6B39671863D65AB556734E10000000000000003004BD779C737B6F7B6F5A6B
      5108BD779C737B6F7B6F5A6B3004000000000000300430045108300430043004
      3004300430043004100010000000000000008051907390739073907390739073
      90739073907390739073907308730021000000003004BD77BD779C737B6F7B6F
      5A6B5A6B39671863D65AB55610000000000000003004BD77BD779C737B6F7B6F
      5108BD77BD779C737B6F7B6F300400000000000030049C733004100010001000
      1000100010001000000010000000000000008051907300628072006200620062
      00620062006200620873907308730021000000003004DE7BBD77BD779C737B6F
      7B6F5A6B5A6B39671863D65A10000000000000003004DE7BBD77BD779C737B6F
      5108DE7BBD77BD779C737B6F30040000000000003004BD773004300430043004
      100010001000100010001000000000000000805110730062000080510000FE7F
      FE7F18631863FE7F006290731073002100000000300430043004300430043004
      3004300430043004300410001000000000000000300430043004300430043004
      51083004300430043004300430040000000000003004BD77BD779C737B6F7B6F
      5A6B396718631000000000000000000000008051907300620000805100007863
      786310421042FE7F805190731073002100000000100010001000100010001000
      1000100010001000100000001000000000000000100010001000100010000000
      1000100010001000100000001000000000000000300430043004300430043004
      3004300410001000000000000000000000008051087300620000805100007863
      7863903190527863805190731073002100000000100010001000100010001000
      1000100010001000100010001000000000000000100010001000100010001000
      1000100010001000100010001000000000000000100010001000100010001000
      100010000000100000000000000000000000805190730062000080510000FE7F
      786308210821FE7F805190731073002100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000100010001000
      1000100010001000000000000000000000008051907300627863006200000000
      0000000000000000805190730041000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104210421042104210421042
      1042104210421042104210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010420000000000000000000000000000000000000000
      0000104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000021042104
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000104210421000000000000000000000000000000000000000
      1042100010000000000000000000000000000000000008210821082108210821
      0821082108210821082108210000000000000000000000000000000042084208
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001042104210001000100000000000000000000000000000001042
      1000100010001000000000000000000000000000082118631863186318631863
      1863186318631863082118630000000000000000000000000000420842080000
      0000000000001000100010000000000000000000000000000000000000000000
      0000000010421042100010001000000010000000104210420000000010421000
      1000100010000000000000000000000000000821082108210821082108210821
      0821082108210821082108211863082100004208000000000000630C630C0000
      0000000000001000100010000000000000000000000000001042104210421042
      1042104210421000100010000000100000001042000000001863000000001000
      1000100000000000000000000000000000000821186318631863186318631863
      E07FE07FE07F1863186308210821082100004208630C00008410841000000000
      0000000000000000000000000000000000000000000010421042000000000000
      0000000010001000100000001000000000001042000018630000186318631042
      0000000000000040000000000000000000000821186318631863186318631863
      104210421042186318630821186308210000630C8410A514A514A51400000000
      0000000000001000100010000000000000000000104210420000104218631863
      1863104200001000000010000000000000000000186300001863186318631863
      0000000000400040000000000000000000000821082108210821082108210821
      082108210821082108210821186318630821630C8410A514A514A514A514A514
      8410000000001000100010000000000000001042104200001042186300000000
      1863186310420000000000000000000000000000000018631863186318631863
      0000004000400040004000400000000000000821186318631863186318631863
      186318631863186308211863000018630821630C8410A514A514E71CA514A514
      0000000000000000100010001000000000001042000010421863000018631863
      1863186318631042000000000000000000000000186318631863000000001863
      0000000000400040000000000040000000000000082108210821082108210821
      082108210821082118630000186308210821630C8410A514A514A514A5140000
      0000000000000000000010001000100000001042000018630000186318631863
      1863186318631863000000000000000000000000186318631863000000001042
      0000000000000040000000000040000000000000000008210000000000000000
      000000000000000008211863082118630821630C8410A514A514A51400000000
      1000100010000000000000001000100010001042000018630000186318631863
      1863186318631042000000000000000000000000000000001042104200000000
      00000000000000000000000000000000000000000000000008210000630C630C
      630C630C630C0000082108210821082100004208630C84108410000000000000
      1000100010000000000000001000100010001042000018631863186318631863
      0000000018631042000000000000000000000000000010420000000010420000
      0000000000000040000000000040000000000000000000000821000000000000
      00000000000000000000082100000000000042084208630C0000000000000000
      1000100010000000000000001000100010000000104210421863186318631863
      0000000010421042104200000000000000000000000000000000000000000000
      000000000000004000000000004000400000000000000000000008210000630C
      630C630C630C630C000008210000000000004208420800000000000000000000
      0000100010001000100010001000100000000000000000001042186318631863
      1863104210420000000000000000000000000000000000000000000000000000
      0000000000000000004000400040004000400000000000000000082100000000
      0000000000000000000000000821000000002104000000000000000000000000
      0000000010001000100010001000000000000000000000000000104210421042
      1042104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000040004000000000000000000000000008210821
      0821082108210821082108210821000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104200000000
      0000104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000004100410041004100410041
      0041004100410041004100410041000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000881088108810881088108810
      8810881088108810881088108810881000008051082100621863186318631863
      1863786378637863FE7F90730821002100000821082108210821082108210821
      0821082108210821082100000000082108210821082108210821082108210821
      0821082108210821082100000000000000000000881090739073907390739073
      9073907390739073907390739073881000008051087300621863186318631863
      18631863786378637863907308730021000008215A6B5A6B396739671863D65A
      B5569452734E734E0821000008210821082108217B6F5A6B5A6B39671863F75E
      B5569452734E734E0821000000000000000000008810FE7F0873087308730873
      0873087308738872887288729073881000008051107300621863186318631863
      18631863186318637863907308730021000008217B6F5A6B5A6B396739671863
      D65A0821082108210821082108210821000008217B6F630C630C5A6B630C630C
      630C630C630C734E0821000000000000000000008810FE7F0873087308730873
      0873087308738872887288729073881000008051107300621863186318631863
      18631863186318631863907308730021000008217B6F7B6F5A6B5A6B39673967
      630C3146186318631042082108210000000008219C737B6F7B6F5A6B5A6B3967
      1863F75EB55694520821000000000000000000008810FE7F0873087308730873
      0873087308730873087308739073881000008051107300629052945218631863
      18631863186318631863907308730021000008217B6F7B6F5A6B5A6B5A6B0821
      524A18631863FF031042104208210000000008219C73630C630C7B6F630C630C
      630C630C630CB5560821000000000000000000008810FE7F0873087308730873
      0873087308730873087308739073881000008051107300629052905294529452
      18631863186318631863907308730021000008219C737B6F7B6F5A6B5A6B0821
      1863186318631863104218630821000000000821BD779C739C737B6F7B6F5A6B
      5A6B39671863F75E0821000000000000000000008810FE7F0873087308730873
      0873087308730873087308739073881000008051907300620062006200620062
      00620062006200620062907308730021000008219C739C737B6F7B6F5A6B0821
      1863FF0318631863104218630821000000000821BD77BD779C739C737B6F7B6F
      5A6BC618396718630821000000000000000000008810FE7F1073087308730873
      9073FE7FFE7FFE7FFE7FFE7F9073881000008051907390739073907390739073
      9073907390739073907390730873002100000821BD779C739C737B6F7B6F0821
      524AFF03FF031863104210420821000000000821DE7BC618C6189C739C737B6F
      C6183967C61839670821000000000000000000008810FE7F9073107310731073
      FE7F881088108810881088108810881000008051907300628072006200620062
      0062006200620062087390730873002100000821BD77BD779C739C737B6F7B6F
      630C524A186318631042630C0000000000000821DE7BC6185A6BC6189C73C618
      3967C618396708210821082100001000100000008810FE7FFE7FFE7FFE7FFE7F
      881000000000000000000000000000000000805110730062000080510000FE7F
      FE7F18631863FE7F006290731073002100000821BD77BD77BD779C739C737B6F
      7B6F0821082108210821000000000000000008210000DE7B08215A6BC6183967
      C6181863C618186318631863C618100010000000000088108810881088108810
      0000000000000000000000000000000000008051907300620000805100007863
      786310421042FE7F805190731073002100000821DE7BBD77BD77BD779C739C73
      7B6F7B6F5A6B5A6B08210000000000000000082108210821082108211863C618
      1863C61818631863186318631863100010000000000000000000000000000000
      000000003E539801000000009802980100008051087300620000805100007863
      7863903190527863805190731073002100000821DE7BDE7BBD77BD77BD779C73
      9C730821082108210821000000000000000000000000000000000000C6181863
      C618186318631863186318631863100010000000000000000000000000000000
      0000000000003E5398129812980200000000805190730062000080510000FE7F
      786308210821FE7F805190731073002100000821DE7BDE7BDE7BBD77BD77BD77
      9C7308211863082100000000000000000000000000000000000000000000C618
      186318631863186318631863C618100010000000000000000000000000000000
      00000000000000003E5398010000000000008051907300627863006200000000
      00000000000000008051907300410000000008210000DE7BDE7BDE7BBD77BD77
      9C73082108210000000000000000000000000000000000000000000000000000
      C618420442044204420442040000100010000000000000000000000000000000
      0000000000000000000000000000000000000000104210421042104210421042
      1042104210421042104210420000000000000821082108210821082108210821
      0821082100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008210821
      0821082108210821082108210821082100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000082110421863
      1863186318631863186318637863082100000000881088108810881088108810
      8810881088108810881088108810881000000000000000000000000000000000
      000000000000000000000000000000000000000000000000630C000000000000
      0000000000000000000000000000000000000000000000000821FE7F08211863
      FE7F786378637863FE7FFE7F1863082100000000881090739073907390739073
      9073907390739073907390739073881000000000000000000000000000000000
      0000000000000000000000000000000000000000000084108410630C00000000
      000000000000000000000000000000000000000000000821104208219031FE7F
      FE7F1863786378637863FE7F18630821000000008810FE7F0873087308730873
      0873087308738872887288729073881000000000000000000000000000000000
      00000000000000000000000000000000000000000000841084108410630C0000
      0000000000000000000000000000000000000000000008211863186318631863
      FE7F7863186378637863786378630821000000008810FE7F0873087308730873
      0873087308738872887288729073881000000000000000001000000000000000
      0000000000000000000000000000000000000000000000008410841084100000
      0000000000000000000042080000000000000000000008211863186318631863
      18631863786318631863786378630821000000008810FE7F0873087308730873
      0873087308730873087308739073881000000000000000001000000000000000
      0000000010001000100010001000000000000000000000000000841084108410
      000000000000000042084208000000000000000000000821FE7F186318631863
      18631863186318637863186378630821000000008810FE7F0873087308730873
      0873087308730873087308739073881000000000000010000000000000000000
      0000000000001000100010001000000000000000000000000000000084108410
      841000000000630C630C0000000000000000000000000821FE7F186318631863
      18631863186318631863186378630821000000008810FE7F0873087308730873
      0873087308730873087308739073881000000000000010000000000000000000
      0000000000000000100010001000000000000000000000000000000000008410
      841084108410630C00000000000000000000000000000821FE7F186318631863
      18631863186318631863186378630821000000008810FE7F1073087308730873
      9073FE7FFE7FFE7FFE7FFE7F9073881000000000000010000000000000000000
      0000000000001000000010001000000000000000000000000000000000000000
      841084108410000000000000000000000000000000000821FE7F186318631863
      18631863186318631863186378630821000000008810FE7F9073107310731073
      FE7F881088108810881088108810881000000000000000001000000000000000
      000010001000000000000000100000000000000000000000000000000000A514
      A514A5148410841000000000000000000000000000000821FE7F186318631863
      18631863186318631863186378630821000000008810FE7FFE7FFE7FFE7FFE7F
      8810000000000000000000000000000000000000000000000000100010001000
      10000000000000000000000000000000000000000000000000000000C618C618
      A51400000000841084100000000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000088108810881088108810
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E71CE71CC618C618
      000000000000000084108410000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000000000000000000000000
      000000000000000098013E530000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000821E71CE71CE71C0000
      000000000000000000008410841000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000000000000000000000000
      0000000000009802981298123E53000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008210821E71C00000000
      000000000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F082100000000000000000000000000000000
      00000000980198020000000098013E5300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008210821082108210821
      0821082108210821082108210821082100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004100410041000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0041087380728872004100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000041
      0873006200210873004100410041004100000000000000000000000000000000
      1000100010001000100010001000100010000000082108210821082108211000
      F75ED65AB5569452734E524A3146104210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000041
      8872002100000062004108730873807200410000000000000000000000000000
      1000D65AB5569452734E524A3146104210000821104200421042004210423004
      1863C618C618C618C618C618C618314610000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000041
      8872002100000021087300210021087300410000000000000000000000000000
      1000F75EC618C618C618C618C618314610000821004210420042104200423004
      39671863F75ED65AB5569452734E524A10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000041
      0062087300210041000000008072004100000000082108210821082108210821
      30041863F75ED65AB5569452734E524A10000821104200421042004210423004
      5A6BC618C618C618D65A10001000100010000000000000000000000000000000
      0000000000000000000010000000000000000000000000000000000088109052
      00628072004188720062004100410000000000000821B5569452734E524A1042
      30043967C618C618C618C618C618734E10000821004210420042104200423004
      7B6F5A6B39671863F75E10000000100000000000000010001000100010001000
      0000000000000000000010000000000000000000000000000000881094529452
      10420041087300410041000000000000000000000821F75EC618C618C618C618
      30045A6B39671863F75ED65AB556945210000821104200421042004210423004
      9C737B6F5A6B3967186310001000000000000000000010001000100010000000
      0000000000000000000000001000000000000000000000008810186318638831
      945210428810000000000000000000000000000008211863D65AB5569452734E
      30047B6FC618C618186310001000100010000821004210420042104200423004
      3004300430043004300410000821000000000000000010001000100000000000
      0000000000000000000000001000000000000000000088107863186388311863
      186388100000000000000000000000000000000008213967C618C618C618C618
      50087B6F7B6F5A6B396710000000100000000821104200421042004210420042
      1042004210420042104200420821000000000000000010001000000010000000
      000000000000000000000000100000000000000088101863FE7F082118631863
      881000000000000000000000000000000000000008215A6BF75EB556D65AB556
      50089C737B6F7B6F5A6B1000100000000000082100421042C618C618C618C618
      C618C618C618C618104210420821000000000000000010000000000000001000
      1000000000000000000010000000000000008810786318638810786318638810
      000000000000000000000000000000000000000008219C73C618E71C31460821
      510830043004300430043004000000000000082110421042C618186318631863
      186318631863C618104200420821000000000000000000000000000000000000
      000010001000100010000000000000000000881078638810FE7FFE7F88100000
      00000000000000000000000000000000000000000821BD775A6B186318630821
      00000000000000000000000000000000000008210042104200420821E07FC618
      C618E07F08211042004210420821000000000000000000000000000000000000
      00000000000000000000000000000000000000008810FE7F7863881000000000
      00000000000000000000000000000000000000000821DE7BBD777B6F5A6B0821
      082100000000000000000000000000000000000008210821082108210821E07F
      E07F082108210821082108210000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088108810000000000000
      0000000000000000000000000000000000000000082108210821082108210821
      0000000000000000000000000000000000000000000000000000000008210821
      0821082100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF81F00000000FD51E00700000000
      FDD7C00300000000FDDB800100000000F99D800100000000FDD3000000000000
      FFFF000000000000FF7F000000000000FE3F000000000000FC1F000000000000
      FFFF000000000000D513800100000000DD7D800100000000DDB3C00300000000
      99DDE00700000000DD33F81F00000000FFFFFFFFFFFFFFFFFFFFF781FFFFFFFF
      FFE3F381FF837FFFFC11C181FFC3BFF1F810D381FC63DDF1F010D781FE73FCF1
      0010DFFFFD7BFC7F0010FFFFFB8FFC3100108181F7CFC41300108181DFAFC437
      00108181CF7FC47FF000C3C3C6FFFCF7F800C3C3C3FFFDFBFC01E7E7C1FF8FFD
      FFE3E7E7FFFF9FFFFFFFFFFFFFFFBFFF800FE3C7F81FFFFF800F8081E007F701
      80000000C003F30180C000008001C101800000018001D301800F00000000D701
      A00780000000DF01A407C0000000DFFFA007F0000000FFFBA00FF001000080FB
      A001E003000080EBA701E00F800180CBA001C07F80018083BFEFC07FC00380CF
      800FE0FFE00780EFFFFFF8FFF81FFFFFFFFFF81FFFFFFC8F0000E0070007F807
      0000C00300078003000080010003800100008001000381000800000000008080
      0000000000000101000000000000000100000000000300100000000000030011
      0000000000070023000080010007820300008001000782070000C0030007830F
      0000E0070007839F0000F81FFFFFC7FFFEFFFFFFFFFFFFFFFFFF4C03CC03F801
      C27F37FFB7FFFFFFFFFF9403B403F801C20087FFB7FF07FFFFFFA403B4038801
      DE07C3FFCFFFDFFF9E07FBFFFFFFFFFF07FFFFFFFFFFDFFF9E004C03CC038801
      DE0037FFB7FF07FFFFFF9403B403F801C20087FFB7FFFFFFFFFFA403B403F801
      FEFFC3FFCFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFF07FDFF
      FFCFF3FFFC01FFFFFF87E1FFF000C4FFFF83C1FFC000FFFFC0C183030000C401
      81E187810000DFFF81E187810001CC0F81E18781000707FF80E18701001FCC03
      80018001C07FDC03B801801DF1FFFFFFFC03C03FFEE8C403FE07E07FFEABFFFF
      FFFFFFFFFE4BFDFFFFFFFFFFFEEBFFFFFFC3FFFF8DFFFE7FFF99F111C5FFF81F
      F99CF755C00FE007809CFBA9E00FC003009CF9FBE807C003F989FFFDE004C003
      FB838087F003C003FF9FCC99C307E007FF9FCEF9330FF00F831FCEF1E001F81F
      23BFCFE3E023000033F9CFFB017100009380CFB9F7B80000E300CFC1F7BC0000
      47F987E3F7FF00008FFBFFFFFFFF0000FFFFFFFFFC00800380038003FC000001
      80038003FC00000180038003FC00000180038003E000000180038003E0020001
      800B8003E000000180038003E007000180038003800700018003800380170001
      800380038007140180038003801F1401800B820B801F140180038003805F1401
      FFFFFFFF801F07E3FFFFFFFFFFFF8007FFFFFFF7FF7FFFFFF9FFFFE3FE3FC007
      F9FFFFC1FC1F8007F3C7FF82803F000173C7E005007F000127FFC00B10DF0001
      07C78017209F000000C7060F4007000401E3080F0C9B800803F1100F0CDBDFE0
      0638100F81FFE8210E38018FC3DBEFF71E38818FFFD9F4173F01C01FFFE0F7FB
      7F83E03FFFF9F803FFFFF07FFFFBFFFFFFFF8003FFFFFFFF80010001000C000F
      800100010008000F800100010001000F800100010003000F800100010003000F
      800100010003000F800100010003000F800100010003000F8001000100070004
      80FF1401000F4000C1991401000F0000FF001401000FF800FF811401001FFC00
      FFC307E3403FFE04FFE78007007FFFFFFFFFFFFFF801FFFFFFFFFFFFF0018001
      FFFFEFFFE0018001FFFFC7FFC0018001FFFFC3FFC0018001EFFFE3F7C0018001
      EF83F1E7C0018001DFC3F8CFC0018001DFE3FC1FC0018001DFD3FE3FC0018001
      EF3BFC1FC00180FFF0FFF8CFC001C1E7FFFFE1E7C001FFC3FFFFC3F3C001FF81
      FFFFC7FFC001FF00FFFFFFFFC001FF99FF1FFFFFFFFFFFFFFE0FFFFFFC00FFFF
      FC01FE008000FFFFFC40FE000000FFFFFC40FE000000FFFFFC1980000000FFF7
      F80380000005C1F7F00F80000003C3FBE03F80000003C7FBC07F80050003CBFB
      80FF80030003DCF701FF80070003FF0F03FF81FF0003FFFF87FF80FF8007FFFF
      CFFF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmMemo: TPopupMenu
    AutoHotkeys = maManual
    Images = ilToolBarColor
    Left = 96
    Top = 112
    object Cut1: TMenuItem
      Action = acEditCut
    end
    object MenuItem2: TMenuItem
      Action = acEditCopy
    end
    object Paste1: TMenuItem
      Action = acEditPaste
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Insert2: TMenuItem
      Caption = '&Insert'
      object StandardPartHeader2: TMenuItem
        Action = acInsertPartHeader
      end
      object UpdateHeader2: TMenuItem
        Action = acInsertUpdateLine
      end
      object mnuMeta2: TMenuItem
        Caption = 'META Statement'
      end
    end
    object Plugins3: TMenuItem
      Caption = '&Plugins'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MirrorLineOn1: TMenuItem
      Caption = 'Mirror Line On'
      ImageIndex = 42
      object XAxis2: TMenuItem
        Action = acMirrorX
      end
      object YAxis2: TMenuItem
        Action = acMirrorY
      end
      object ZAxis2: TMenuItem
        Action = acMirrorZ
      end
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object ChangeColor1: TMenuItem
      Action = acReplaceColor
    end
    object RandomizeColorsinSelection2: TMenuItem
      Action = acRandomizeColors
    end
    object acCommentBlock1: TMenuItem
      Action = acCommentBlock
    end
    object acUncommentBlock1: TMenuItem
      Action = acUncommentBlock
    end
    object TrimLines2: TMenuItem
      Action = acTrimLines
    end
    object InlinePart1: TMenuItem
      Action = acInline
    end
    object SubfileSelection2: TMenuItem
      Action = acSubFile
    end
    object ReverseWinding2: TMenuItem
      Action = acReverseWinding
    end
    object AutoRoundSelection2: TMenuItem
      Action = acAutoRound
    end
    object CombineTrianglesIntoQuad2: TMenuItem
      Action = acTriangleCombine
    end
    object GenerateBendibleObject1: TMenuItem
      Action = acBendableObject
    end
    object Sort1: TMenuItem
      Action = acSortSelection
    end
  end
  object pmPolling: TPopupMenu
    Left = 128
    Top = 80
    object mnPollL3Lab: TMenuItem
      Caption = 'Poll to L3Lab && LDView'
      GroupIndex = 1
      OnClick = mnPollL3LabClick
    end
    object mnPollToSelected: TMenuItem
      Caption = 'Poll to selected line only'
      GroupIndex = 1
      OnClick = mnPollToSelectedClick
    end
    object N8: TMenuItem
      Caption = '-'
      GroupIndex = 1
    end
    object Pollevery1sec2: TMenuItem
      Caption = 'Poll every 1 sec'
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollevery1sec2Click
    end
    object Pollevery2sec2: TMenuItem
      Caption = 'Poll every 2 secs'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollevery2sec2Click
    end
    object Pollevery5sec2: TMenuItem
      Caption = 'Poll every 5 secs'
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollevery5sec2Click
    end
    object Pollonrequest1: TMenuItem
      Caption = 'Poll on request'
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollonrequest1Click
    end
  end
  object tmPoll: TTimer
    Interval = 3000
    OnTimer = tmPollTimer
    Left = 216
    Top = 80
  end
  object pmToolbars: TPopupMenu
    Left = 96
    Top = 80
    object pmuFile: TMenuItem
      Action = acToolbarVisibility
      AutoCheck = True
      Caption = 'Files'
      Checked = True
    end
    object pmuEditing: TMenuItem
      Action = acToolbarVisibility
      AutoCheck = True
      Caption = 'Editing'
      Checked = True
    end
    object pmuTools: TMenuItem
      Action = acToolbarVisibility
      AutoCheck = True
      Caption = 'Tools'
      Checked = True
    end
    object pmuExternalPrograms: TMenuItem
      Action = acToolbarVisibility
      AutoCheck = True
      Caption = 'External Programs'
      Checked = True
    end
    object pmuColorReplace: TMenuItem
      Action = acToolbarVisibility
      AutoCheck = True
      Caption = 'Color Replace'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'dat'
    Filter = 
      'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|All Files (*' +
      '.*)|*.*'
    FilterIndex = 0
    Options = [ofAllowMultiSelect, ofFileMustExist, ofEnableSizing]
    Title = 'Choose LDraw File...'
    Left = 8
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'dat'
    Filter = 
      'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|All Files (*' +
      '.*)|*.*'
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save File as...'
    Left = 40
    Top = 80
  end
  object pmExternal: TPopupMenu
    Left = 128
    Top = 112
  end
  object http: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 216
    Top = 112
  end
  object EditorPropertyLoader: TSciPropertyLoader
    FileName = 'lddp.eop'
    Editor = editor
    StoreWhat = [stDefaults, stColors, stStyles, stOther, stLexerProperties, stExtensions]
    Left = 304
    Top = 80
  end
  object JvDockServer1: TJvDockServer
    LeftSplitterStyle.Cursor = crHSplit
    LeftSplitterStyle.ParentColor = False
    RightSplitterStyle.Cursor = crHSplit
    RightSplitterStyle.ParentColor = False
    TopSplitterStyle.Cursor = crVSplit
    TopSplitterStyle.ParentColor = False
    BottomSplitterStyle.Cursor = crVSplit
    BottomSplitterStyle.ParentColor = False
    TopDock = False
    DockStyle = JvDockDelphiStyle1
    CustomDock = False
    Left = 360
    Top = 80
  end
  object JvDockDelphiStyle1: TJvDockDelphiStyle
    Left = 360
    Top = 112
  end
  object pmTab: TPopupMenu
    Left = 160
    Top = 80
    object CloseFile1: TMenuItem
      Action = acFileClose
    end
  end
  object LanguageManager: TSciLanguageManager
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
        Name = 'LDraw'
        Lexer = 'ldraw'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clBlue
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
            ForeColor = clDefault
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlue
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Subfile'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triangle'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Quad'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'OpLine'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clNavy
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Color'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4812750
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Position'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4812750
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triple-1'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 811830
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triple-2'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4812750
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triple-3'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 811830
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triple-4'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 811830
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Matrix-1'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4812750
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Matrix-2'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 811830
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Matrix-3'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Official-Filename'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = [fsBold, fsItalic]
            ForeColor = clBlack
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unofficial-Filename'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = [fsBold, fsItalic]
            ForeColor = clBlue
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Meta'
            StyleNumber = 18
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Official Files'
            Keywords.Strings = (
              'test.dat')
          end
          item
            KeywordListNumber = 1
            Name = 'Meta Commands'
            Keywords.Strings = (
              'BFC'
              'CERTIFY'
              'CCW')
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
      end>
    Left = 272
    Top = 112
  end
  object AppInst: TJvAppInstances
    OnCmdLineReceived = AppInstCmdLineReceived
    Left = 416
    Top = 80
  end
  object SearchReplaceDlg: TSciSearchReplace
    SearchBackwards = False
    SearchCaseSensitive = False
    SearchFromCaret = True
    SearchSelectionOnly = False
    SearchWholeWords = False
    SearchRegex = False
    SearchForSelWord = False
    OnTextNotFound = SearchReplaceDlgTextNotFound
    Left = 272
    Top = 80
  end
  object pmMirror: TPopupMenu
    Left = 96
    Top = 144
    object XAxis3: TMenuItem
      Action = acMirrorX
    end
    object YAxis3: TMenuItem
      Action = acMirrorY
    end
    object ZAxis3: TMenuItem
      Action = acMirrorZ
    end
  end
end
