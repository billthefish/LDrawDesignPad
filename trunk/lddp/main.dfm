object LDDPMain: TLDDPMain
  Left = 267
  Top = 61
  Width = 900
  Height = 800
  VertScrollBar.Range = 49
  ActiveControl = editor
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
    Width = 884
    Height = 671
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
    object editor: TScintillaLDDP
      Left = 4
      Top = 24
      Width = 876
      Height = 643
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      PopupMenu = pmMemo
      Align = alClient
      OnUpdateUI = editorUpdateUI
      OnModified = editorModified
      OnDwellStart = editorDwellStart
      OnDwellEnd = editorDwellEnd
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
      MouseDwellTime = 500
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
      EdgeMode = sciEdgeLine
      EdgeColumn = 64
      EdgeColor = clSilver
      WordChars = 
        '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-' +
        '.\/'
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
    Top = 725
    Width = 884
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
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 884
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
      Left = 744
      Top = 2
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
      Images = ilProgramIcons
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
        ImageIndex = 35
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
      Images = ilProgramIcons
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
      Left = 285
      Top = 2
      Width = 267
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Editing'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilProgramIcons
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
        Action = acincIndent
      end
      object ToolButton22: TToolButton
        Left = 159
        Top = 0
        Action = acDecIndent
      end
      object ToolButton23: TToolButton
        Left = 182
        Top = 0
        Width = 8
        Caption = 'ToolButton23'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton25: TToolButton
        Left = 190
        Top = 0
        Action = acCommentBlock
      end
      object ToolButton26: TToolButton
        Left = 213
        Top = 0
        Action = acUncommentBlock
      end
      object ToolButton55: TToolButton
        Left = 236
        Top = 0
        Width = 8
        Caption = 'ToolButton55'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton56: TToolButton
        Left = 244
        Top = 0
        Action = acTrimLines
      end
    end
    object tbrColorReplace: TToolBar
      Left = 424
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
      Images = ilProgramIcons
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
      Left = 565
      Top = 2
      Width = 166
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Tools'
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilProgramIcons
      Indent = 5
      TabOrder = 4
      Wrapable = False
      object ToolButton35: TToolButton
        Left = 5
        Top = 0
        Action = acInline
      end
      object ToolButton2: TToolButton
        Left = 28
        Top = 0
        Caption = 'ToolButton2'
        DropdownMenu = pmMirror
        ImageIndex = 42
        PopupMenu = pmMirror
      end
      object ToolButton36: TToolButton
        Left = 51
        Top = 0
        Action = acReverseWinding
      end
      object ToolButton37: TToolButton
        Left = 74
        Top = 0
        Action = acTriangleCombine
      end
      object ToolButton38: TToolButton
        Left = 97
        Top = 0
        Action = acSortSelection
      end
      object ToolButton43: TToolButton
        Left = 120
        Top = 0
        Action = acAutoRound
      end
      object ToolButton9: TToolButton
        Left = 143
        Top = 0
        Action = frErrorWindow.acErrorCheck
      end
    end
    object tbrMovement: TToolBar
      Left = 11
      Top = 29
      Width = 313
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      ButtonWidth = 25
      Caption = 'Move and Rotate'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilProgramIcons
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Wrapable = False
      object ToolButton7: TToolButton
        Left = 5
        Top = 0
        Action = acMoveXPos
      end
      object ToolButton29: TToolButton
        Left = 30
        Top = 0
        Action = acMoveXNeg
      end
      object ToolButton42: TToolButton
        Left = 55
        Top = 0
        Action = acMoveYPos
      end
      object ToolButton45: TToolButton
        Left = 80
        Top = 0
        Action = acMoveYNeg
      end
      object ToolButton46: TToolButton
        Left = 105
        Top = 0
        Action = acMoveZPos
      end
      object ToolButton47: TToolButton
        Left = 130
        Top = 0
        Action = acMoveZNeg
      end
      object ToolButton5: TToolButton
        Left = 155
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton48: TToolButton
        Left = 163
        Top = 0
        Action = acMoveRotXPos
      end
      object ToolButton49: TToolButton
        Left = 188
        Top = 0
        Action = acMoveRotXNeg
      end
      object ToolButton50: TToolButton
        Left = 213
        Top = 0
        Action = acMoveRotYPos
      end
      object ToolButton51: TToolButton
        Left = 238
        Top = 0
        Action = acMoveRotYNeg
      end
      object ToolButton52: TToolButton
        Left = 263
        Top = 0
        Action = acMoveRotZPos
      end
      object ToolButton53: TToolButton
        Left = 288
        Top = 0
        Action = acMoveRotZNeg
      end
    end
    object tbrSearch: TToolBar
      Left = 167
      Top = 2
      Width = 105
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Search'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilProgramIcons
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Wrapable = False
      object ToolButton3: TToolButton
        Left = 5
        Top = 0
        Action = acFind
      end
      object ToolButton27: TToolButton
        Left = 28
        Top = 0
        Action = acFindNext
      end
      object ToolButton31: TToolButton
        Left = 51
        Top = 0
        Action = acReplace
      end
      object ToolButton54: TToolButton
        Left = 74
        Top = 0
        Width = 8
        Caption = 'ToolButton54'
        ImageIndex = 37
        Style = tbsSeparator
      end
      object ToolButton44: TToolButton
        Left = 82
        Top = 0
        Action = acReplaceColor
      end
    end
    object tbrGrid: TToolBar
      Left = 337
      Top = 29
      Width = 74
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Grid'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ilProgramIcons
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Wrapable = False
      object ToolButton6: TToolButton
        Left = 5
        Top = 0
        Action = acMoveGridCoarse
      end
      object ToolButton24: TToolButton
        Left = 28
        Top = 0
        Action = acMoveGridMedium
      end
      object ToolButton33: TToolButton
        Left = 51
        Top = 0
        Action = acMoveGridFine
        PopupMenu = pmMemo
      end
    end
  end
  object MainMenu1: TMainMenu
    Images = ilProgramIcons
    Left = 159
    Top = 112
    object File1: TMenuItem
      Caption = '&File'
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
      Caption = '&Edit'
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
      object IncreaseIndent1: TMenuItem
        Action = acincIndent
      end
      object DecreaseIndent1: TMenuItem
        Action = acDecIndent
      end
      object Comment2: TMenuItem
        Action = acCommentBlock
      end
      object Uncomment2: TMenuItem
        Action = acUncommentBlock
      end
      object rimBlankLines1: TMenuItem
        Action = acTrimLines
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object ReverseWinding1: TMenuItem
        Action = acReverseWinding
      end
      object CombineTrianglesIntoQuad1: TMenuItem
        Action = acTriangleCombine
      end
      object AutoRoundSelection1: TMenuItem
        Action = acAutoRound
      end
      object RandomizeColorsinSelection1: TMenuItem
        Action = acRandomizeColors
      end
    end
    object Movement1: TMenuItem
      Caption = '&Movement'
      object GridGranularity1: TMenuItem
        Caption = 'Grid Granularity'
        object ModelTree1: TMenuItem
          Action = acMoveGridCoarse
          AutoCheck = True
          GroupIndex = 5
          RadioItem = True
        end
        object MediumGrid1: TMenuItem
          Action = acMoveGridMedium
          AutoCheck = True
          GroupIndex = 5
          RadioItem = True
        end
        object FineGrid1: TMenuItem
          Action = acMoveGridFine
          AutoCheck = True
          GroupIndex = 5
          RadioItem = True
        end
      end
      object SnaptoGrid1: TMenuItem
        Action = acMoveSnapToGrid
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Move1: TMenuItem
        Caption = 'Move'
        object RotateX1: TMenuItem
          Action = acMoveXPos
        end
        object X1: TMenuItem
          Action = acMoveXNeg
        end
        object Y1: TMenuItem
          Action = acMoveYPos
        end
        object Y2: TMenuItem
          Action = acMoveYNeg
        end
        object Z1: TMenuItem
          Action = acMoveZPos
        end
        object Z2: TMenuItem
          Action = acMoveZNeg
        end
      end
      object Rotate1: TMenuItem
        Caption = 'Rotate'
        object RotateX2: TMenuItem
          Action = acMoveRotXPos
        end
        object RotateX3: TMenuItem
          Action = acMoveRotXNeg
        end
        object RotateY1: TMenuItem
          Action = acMoveRotYPos
        end
        object RotateY2: TMenuItem
          Action = acMoveRotYNeg
        end
        object RotateZ1: TMenuItem
          Action = acMoveRotZPos
        end
        object RotaeZ1: TMenuItem
          Action = acMoveRotZNeg
        end
      end
      object Mirror1: TMenuItem
        Caption = 'Mirror'
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
    end
    object Search1: TMenuItem
      Caption = '&Search'
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
    end
    object View1: TMenuItem
      Caption = '&View'
      Hint = 'View Options'
      object Toolbars: TMenuItem
        Caption = '&Toolbars'
        Hint = 'Show or Hide Toolbars'
        object mnuFile: TMenuItem
          Action = acViewFileToolbar
          AutoCheck = True
        end
        object mnuSearch: TMenuItem
          Action = acViewSearchToolbar
          AutoCheck = True
        end
        object mnuEditing: TMenuItem
          Action = acViewEditToolbar
          AutoCheck = True
        end
        object mnuMovement: TMenuItem
          Action = acViewMovementToolbar
          AutoCheck = True
        end
        object mnuTools: TMenuItem
          Action = acViewToolsToolbar
          AutoCheck = True
        end
        object mnuExternalPrograms: TMenuItem
          Action = acViewExternalProgramToolbar
          AutoCheck = True
        end
        object mnuColorReplace: TMenuItem
          Action = acViewColorReplaceToolbar
          AutoCheck = True
        end
      end
      object mnuErrorList: TMenuItem
        Action = acErrorList
        AutoCheck = True
      end
    end
    object Insert1: TMenuItem
      Caption = '&Insert'
      Hint = 'Insert Commands'
      object StandardPartHeader1: TMenuItem
        Action = acInsertPartHeader
      end
      object UpdateHeader1: TMenuItem
        Action = acInsertHistoryStatement
      end
      object mnuMeta: TMenuItem
        Caption = 'META Statement'
      end
    end
    object Tools1: TMenuItem
      Caption = '&Tools'
      Hint = 'LDraw Tool Commands'
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
      end
      object Polling1: TMenuItem
        Caption = 'Polling'
        object EnablePolling1: TMenuItem
          Action = acPollEnablePolling
          AutoCheck = True
        end
        object PollToSelectedLine1: TMenuItem
          Action = acPollToSelectedLine
          AutoCheck = True
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object N1SecondPollInterval1: TMenuItem
          Action = acPoll1Second
          AutoCheck = True
          GroupIndex = 6
          RadioItem = True
        end
        object N2SecondsPollInterval1: TMenuItem
          Action = acPoll2Seconds
          AutoCheck = True
          GroupIndex = 6
          RadioItem = True
        end
        object N5SecondsPollInterval1: TMenuItem
          Action = acPoll5Seconds
          AutoCheck = True
          GroupIndex = 6
          RadioItem = True
        end
        object CustomPollInterval1: TMenuItem
          Action = acPollCustom
          AutoCheck = True
          GroupIndex = 6
          RadioItem = True
        end
        object CustomPollInterval2: TMenuItem
          Action = acPollOnDemand
          AutoCheck = True
          GroupIndex = 6
          RadioItem = True
        end
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object InlinePart2: TMenuItem
        Action = acInline
      end
      object SubfileSelection1: TMenuItem
        Action = acSubFile
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object ErrorCheck1: TMenuItem
        Caption = 'Error Checking'
        Hint = 'Check for errors'
        ImageIndex = 22
        object E1: TMenuItem
          Caption = 'Run Error Check'
          Hint = 'Check for errors|Check for errors'
          ShortCut = 121
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object MarkAll1: TMenuItem
          Caption = 'Mark All Errors'
          Enabled = False
        end
        object MarkAllofSelectedType1: TMenuItem
          Caption = 'Mark All Errors of the Selected Type'
          Enabled = False
        end
        object UnmarkAll2: TMenuItem
          Caption = 'Unmark All Errors'
          Enabled = False
        end
        object UnmarkAllofSelectedType2: TMenuItem
          Caption = 'Unmark All Errors of the Selected Type'
          Enabled = False
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object AutofixSelectedError1: TMenuItem
          Caption = 'Fix Selected Error'
          Enabled = False
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object AutofixAllMarkedErrorsofSelectedType1: TMenuItem
          Caption = 'Fix All Marked Errors of Selected Type'
          Enabled = False
        end
        object AutofixAllMarkedErrors1: TMenuItem
          Caption = 'Fix All Marked Errors'
          Enabled = False
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object AutofixAllErrorsofSelectedType1: TMenuItem
          Caption = 'Fix All Errors of Selected Type'
          Enabled = False
        end
        object AutofixAllErrors1: TMenuItem
          Caption = 'Fix All Errors'
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
      object SortByPosition1: TMenuItem
        Action = acSortSelection
      end
      object N9: TMenuItem
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
    object PluginMenu: TMenuItem
      Caption = '&Plugins'
    end
    object Help1: TMenuItem
      Caption = '&Help'
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
    Images = ilProgramIcons
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
      ShortCut = 16465
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
    object acInsertHistoryStatement: TAction
      Category = 'Editor'
      Caption = 'History Statement'
      Hint = 'Insert a !HISTORY statement'
      ShortCut = 16456
      OnExecute = acInsertHistoryStatementExecute
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
      Caption = 'Tr&im Blank Lines'
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
      OnExecute = acFilePrintExecute
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
    object acLSynth: TAction
      Category = 'Externals'
      Caption = 'Process Through LSynth'
      Hint = 'Run current text though LSynth'
      OnExecute = acLSynthExecute
    end
    object acBendableObject: TAction
      Category = 'Misc'
      Caption = 'Generate Bendable Object... '
      ImageIndex = 59
      ShortCut = 16450
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
      ImageIndex = 45
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
    object acErrorList: TAction
      Category = 'View Menu'
      AutoCheck = True
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
    object acMoveXPos: TAction
      Category = 'Movement'
      Caption = 'X +'
      Hint = 'Move along the X axis (positive)'
      ImageIndex = 48
      OnExecute = acMoveXPosExecute
    end
    object acMoveXNeg: TAction
      Category = 'Movement'
      Caption = 'X -'
      Hint = 'Move along the X axis (negative)'
      ImageIndex = 47
      OnExecute = acMoveXNegExecute
    end
    object acMoveYPos: TAction
      Category = 'Movement'
      Caption = 'Y +'
      Hint = 'Move along the Y axis (positive)'
      ImageIndex = 52
      OnExecute = acMoveYPosExecute
    end
    object acMoveYNeg: TAction
      Category = 'Movement'
      Caption = 'Y -'
      Hint = 'Move along the Y axis (negative)'
      ImageIndex = 51
      OnExecute = acMoveYNegExecute
    end
    object acMoveZPos: TAction
      Category = 'Movement'
      Caption = 'Z +'
      Hint = 'Move along the Z axis (positive)'
      ImageIndex = 56
      OnExecute = acMoveZPosExecute
    end
    object acMoveZNeg: TAction
      Category = 'Movement'
      Caption = 'Z -'
      Hint = 'Move along the Z axis (negative)'
      ImageIndex = 55
      OnExecute = acMoveZNegExecute
    end
    object acMoveRotXPos: TAction
      Category = 'Movement'
      Caption = 'Rotate X +'
      Hint = 'Rotate around the X axis (positive)'
      ImageIndex = 50
      OnExecute = acMoveRotXPosExecute
    end
    object acMoveRotXNeg: TAction
      Category = 'Movement'
      Caption = 'Rotate X -'
      Hint = 'Rotate around the X axis (negative)'
      ImageIndex = 49
      OnExecute = acMoveRotXNegExecute
    end
    object acMoveRotYPos: TAction
      Category = 'Movement'
      Caption = 'Rotate Y +'
      Hint = 'Rotate around the Y axis (positive)'
      ImageIndex = 54
      OnExecute = acMoveRotYPosExecute
    end
    object acMoveRotYNeg: TAction
      Category = 'Movement'
      Caption = 'Rotate Y -'
      Hint = 'Rotate around the Y axis (negative)'
      ImageIndex = 53
      OnExecute = acMoveRotYNegExecute
    end
    object acMoveRotZPos: TAction
      Category = 'Movement'
      Caption = 'Rotate Z +'
      Hint = 'Rotate around the Z axis (positive)'
      ImageIndex = 58
      OnExecute = acMoveRotZPosExecute
    end
    object acMoveRotZNeg: TAction
      Category = 'Movement'
      Caption = 'Rotae Z -'
      Hint = 'Rotate around the Z axis (negative)'
      ImageIndex = 57
      OnExecute = acMoveRotZNegExecute
    end
    object acSaveAll: TAction
      Category = 'File'
      Caption = 'Save All'
      Hint = 'Save all open documents'
      ImageIndex = 46
      OnExecute = acSaveAllExecute
    end
    object acViewFileToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'File'
      Checked = True
      Hint = 'Show/Hide the File Toolbar'
      OnExecute = acViewFileToolbarExecute
    end
    object acViewSearchToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'Search'
      Checked = True
      Hint = 'Show/Hide the Search Toolbar'
      OnExecute = acViewSearchToolbarExecute
    end
    object acViewToolsToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'Tools'
      Checked = True
      Hint = 'Show/Hide the Tools Toolbar'
      OnExecute = acViewToolsToolbarExecute
    end
    object acViewExternalProgramToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'External Programs'
      Checked = True
      Hint = 'Show/Hide the Extarnal Programs Toolbar'
      OnExecute = acViewExternalProgramToolbarExecute
    end
    object acViewMovementToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'Movement'
      Checked = True
      Hint = 'Show/Hide the Movement Toolbar'
      OnExecute = acViewMovementToolbarExecute
    end
    object acViewEditToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'Edit'
      Checked = True
      Hint = 'Show/Hide the Edit Toolbar'
      OnExecute = acViewEditToolbarExecute
    end
    object acViewColorReplaceToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'Color Replace'
      Checked = True
      Hint = 'Show/Hide the Color Replace Toolbar'
      OnExecute = acViewColorReplaceToolbarExecute
    end
    object acMoveGridFine: TAction
      Category = 'Movement'
      AutoCheck = True
      Caption = 'Fine Grid'
      GroupIndex = 5
      ImageIndex = 60
      ShortCut = 120
      OnExecute = acMoveGridFineExecute
    end
    object acMoveGridMedium: TAction
      Category = 'Movement'
      AutoCheck = True
      Caption = 'Medium Grid'
      GroupIndex = 5
      ImageIndex = 61
      ShortCut = 119
      OnExecute = acMoveGridMediumExecute
    end
    object acMoveGridCoarse: TAction
      Category = 'Movement'
      AutoCheck = True
      Caption = 'Coarse Grid'
      Checked = True
      GroupIndex = 5
      ImageIndex = 62
      ShortCut = 118
      OnExecute = acMoveGridCoarseExecute
    end
    object acViewGridToolbar: TAction
      Category = 'View Menu'
      AutoCheck = True
      Caption = 'acViewGridToolbar'
      Checked = True
      Hint = 'Show/Hide the Grid Toolbar'
      OnExecute = acViewGridToolbarExecute
    end
    object acMoveSnapToGrid: TAction
      Category = 'Movement'
      Caption = 'Snap to Grid'
      OnExecute = acMoveSnapToGridExecute
    end
    object acPollEnablePolling: TAction
      Category = 'Polling'
      AutoCheck = True
      Caption = 'Enable Polling'
      OnExecute = acPollEnablePollingExecute
    end
    object acPollToSelectedLine: TAction
      Category = 'Polling'
      AutoCheck = True
      Caption = 'Poll To Selected Line'
      OnExecute = acPollToSelectedLineExecute
    end
    object acPoll1Second: TAction
      Tag = 1000
      Category = 'Polling'
      AutoCheck = True
      Caption = '1 Second Poll Interval'
      GroupIndex = 6
      OnExecute = SetPollTime
    end
    object acPoll2Seconds: TAction
      Tag = 2000
      Category = 'Polling'
      AutoCheck = True
      Caption = '2 Seconds Poll Interval'
      Checked = True
      GroupIndex = 6
      OnExecute = SetPollTime
    end
    object acPoll5Seconds: TAction
      Tag = 5000
      Category = 'Polling'
      AutoCheck = True
      Caption = '5 Seconds Poll Interval'
      GroupIndex = 6
      OnExecute = SetPollTime
    end
    object acPollOnDemand: TAction
      Category = 'Polling'
      AutoCheck = True
      Caption = 'Poll on Demand'
      GroupIndex = 6
      ShortCut = 122
      OnExecute = acPollOnDemandExecute
    end
    object acPollCustom: TAction
      Tag = 300
      Category = 'Polling'
      AutoCheck = True
      Caption = 'Custom Poll Interval'
      GroupIndex = 6
      OnExecute = SetPollTime
    end
  end
  object ilProgramIcons: TImageList
    Left = 40
    Top = 112
    Bitmap = {
      494C01013F004000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000001000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000FF0000000000
      0000000000000000000000000000FF000000FF0000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000FF0000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000FF000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000FF000000FF00
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000FF00000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF0000000000000000000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000FF00000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF0000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      0000008400000084000000840000FF00000000000000004A7300004A7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00004A7300004A7300004A7300004A7300004A
      7300004A7300004A730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000000000000840000000000
      00008400000084000000840000000000000000008400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      00000084000000840000FF000000FF0000000063940039393900007BBD00FFFF
      FF000000000000000000FFFFFF00C6C6C600C6DEC600C6DEC600C6DEC600FFFF
      FF008CD6FF003939390000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000840000000000000000000000000000000000840000008400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      000000840000FF000000FF000000FF000000006394004ABDFF00007BBD00FFFF
      FF000000000000000000FFFFFF00C6C6C600C6C6C600C6DEC600C6DEC600C6DE
      C6008CD6FF004ABDFF0000525200000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      000000000000840000000000000000000000000084000000840000008400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6DE
      C6008CD6FF004ABDFF0000525200000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000084000000840000000000
      0000000000000000000084000000000000000000840000008400000084000000
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084000000840000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C6008CD6FF004ABDFF000052520000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000840000008400000084000000
      840000008400FFFFFF00FFFFFF00FFFFFF000084000000840000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C6008CD6FF004ABDFF0000525200000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      84000000840000008400FFFFFF00FFFFFF0000840000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C6008CD6FF004ABDFF0000525200000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000006394008CD6FF00007BBD00FFFF
      FF000000000000000000FFFFFF00007BBD00007BBD00007BBD00007BBD00007B
      BD008CD6FF004ABDFF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600006394008CD6FF008CD6FF00FFFF
      FF000000000000000000FFFFFF008CD6FF008CD6FF008CD6FF008CD6FF008CD6
      FF008CD6FF004ABDFF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000FF000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600006394008CD6FF00007BBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00007BBD00007BBD00007BBD00007BBD004ABD
      FF008CD6FF004ABDFF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000FF000000FF00000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600006394008CD6FF00007BBD00CECE
      CE0000639400CECECE00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00007B
      BD008CD6FF008CD6FF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000000000000084000000000000008400000084000000840000000000
      00008400000084000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000FF000000FF000000FF000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600006394008CD6FF00007BBD00CECE
      CE0000639400CECECE00C6DEC600C6DEC6008484840084848400FFFFFF000063
      94008CD6FF008CD6FF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000000000008400000000000000000000000000
      00000000000000000000840000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600006394004ABDFF00007BBD00CECE
      CE0000639400CECECE00C6DEC600C6DEC600636363009C9C9C00C6DEC6000063
      94008CD6FF008CD6FF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000000000000000000084000000000000000000
      00008400000084000000000000000000000000FFFF0000FFFF0000FFFF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600006394008CD6FF00007BBD00CECE
      CE0000639400CECECE00FFFFFF00C6DEC6003939390039393900FFFFFF000063
      94008CD6FF008CD6FF0000525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000008400000084000000000000000000000000000000840000000000
      00000000000000000000840000000000000000FFFF0000FFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C600006394008CD6FF00007BBD00C6DE
      C600007BBD00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE000063
      94008CD6FF00004A730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000000000008400000084000000000000000000
      00008400000084000000000000000000000000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000039940000399400003994
      0000399400003994000039940000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039940000399400003994
      0000399400003994000039940000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039940000399400003994
      0000399400003994000039940000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000084A5A500848484008484840084848400848484000000
      0000C6C6C6008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039940000399400003994
      0000399400003994000039940000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      8400000084000000840000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      00000000000084A5A500C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000C6C6C60084848400C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039940000399400003994
      0000399400003994000039940000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000C6C6C6008484840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000000000000000000000000
      0000000000000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840042636300C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500848484000000
      0000C6C6C6008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000C6DEC600C6DEC600C6DEC600C6DE
      C60084636300C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500848484000000
      0000A5A5A50084848400C6C6C60000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF0000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60084636300C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500848484000000
      0000A5A5A5008463630000FFFF0000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF0000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000084000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500848484000000
      0000A5A5A50084636300C6C6C60000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF0000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000084000000
      8400000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600A5A5A500A5A5A500A5A5A50084848400F7FF
      FF00A5A5A50084636300008484000000000000000000000000006B6BFF006B6B
      FF006B6BFF006B6BFF00000000000000000000000000000000006B6BFF006B6B
      FF006B6BFF006B6BFF0000000000000000000000000000000000000084000000
      8400000084000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600A5A5A500A5A5A500A5A5A50084848400F7FF
      FF00A5A5A5008463630000FFFF000000000000000000000000006B6BFF006B6B
      FF006B6BFF006B6BFF00000000000000000000000000000000006B6BFF006B6B
      FF006B6BFF006B6BFF0000000000000000000000000000000000000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00A5A5A5008463630000000000000000000000000000000000000000006B6B
      FF006B6BFF000000000000000000000000000000000000000000000000006B6B
      FF006B6BFF000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B6B
      FF006B6BFF000000000000000000000000000000000000000000000000006B6B
      FF006B6BFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004221
      2100422121004221210000000000000000000000000000000000424242004242
      4200422121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000000
      0000000000000000000000000000000000000000000042212100422121008484
      840084848400426363004221210042212100000000004242420084A5A500C6C6
      C600C6C6C6004221210042212100000000000000000000000000000000000000
      00000000000084A5C60084A5C600006363000063630084A5C60084A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000399400004A9C100063A5290073AD
      420094C66B00A5CE8C00BDD6A500000000000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600846363008463630084636300000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      8400848484004263630084A5A50084A5A5004221210084A5A500C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60042212100000000000000000000000000A5A5
      A5004263630042636300A5A5A500A5A5A50084A5C60084A5C600006363000063
      6300A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039940000399400004A9C100063A5
      29007BB5520094C66B00A5CE8C00000000000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C60084636300000000000000000000000000CE4A
      4A00CE4A4A00BD6B6B00AD7B7B00000000004221210084848400848484008484
      8400848484004263630084A5A50084A5A5004242420084848400C6C6C600C6C6
      C600C6C6C600C6C6C60084A5A500424242000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A50084A5C60084A5
      C60084A5C600A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400004A9C
      100073AD42007BB5520094C66B00000000000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600846363008463630084636300000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      840084636300C6C6C600A5A5A500A5A5A5004242420042424200848484008484
      8400C6C6C60084A5A5004242420000000000000000000000000000A5E700C6A5
      E700C6A5E700C6A5E700C6A5E700C6A5E70084C6E700A5A5A500A5A5A500A5A5
      A50084A5C6000063630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400003994
      000063A5290073AD42007BB55200000000000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600F7FFFF000000
      0000000000000000000000000000000000004221210084848400846363008463
      630084A5A50084A5A500C6C6C600C6C6C600A5A5A500A5A5A500424242004242
      42008484840042424200422121004221210000000000C6A5E700C6A5E700C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C60084C6E700A5A5A500A5A5
      A50084A5C60084A5C60084A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400003994
      00004A9C100063A5290073AD420000000000000000000000000000000000C6C6
      C600846363008463630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000422121008484840084A5
      A50084A5A500422121004221210084848400C6C6C600C6C6C600A5A5A500A5A5
      A5004242420084A5A50084A5A500422121000000000084E7E700C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C60084C6E700A5A5
      A500A5A5A50084A5C60084A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400003994
      0000399400004A9C100063A5290000000000000000000000000000000000C6C6
      C6008463630000000000000000004ACE4A004ACE4A005AC65A006BBD6B006BBD
      6B00000000000000000000000000000000000000000000000000422121004221
      21008484840042424200C6C6C600422121004221210084848400C6C6C600C6C6
      C600A5A5A500A5A5A50084A5A500422121000000000084E7E700C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC6004263630042212100C6DEC600C6C6C60084C6
      E700A5A5A50084A5C60000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600846363008463630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200C6DEC600C6DEC600C6C6C600C6C6C600422121004221210084A5
      A500C6C6C600C6C6C600A5A5A500422121000000000084E7E700F7FFFF00F7FF
      FF00C6DEC600C6DEC60084A5A50042212100424242004242420084C6C600C6A5
      E700A5A5A500A5A5A50000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600F7FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200F7FFFF00F7FFFF00C6DEC600C6DEC600C6C6C6004242420084A5
      A50000C6000084A5A500422121000000000000000000C6DEC600F7FFFF00F7FF
      FF00C6DEC6008484840042212100C6C6C600C6DEC60084848400000000008484
      A500C6C6C600A5A5A50084A5C60000000000000000002939E7003142E700424A
      EF00525AF700525AF7006B6BFF006B6BFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600846363008463630084636300846363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC60042424200848484004242
      E7004221210042212100000000000000000000000000C6DEC600F7FFFF00F7FF
      FF008484840042212100C6C6C600C6DEC600C6DEC600C6DEC60084C6C60084A5
      C600C6C6C600A5A5A50084A5C60000000000000000001831DE002939E7003142
      E700424AEF00525AF7006B6BFF006B6BFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60084636300000000000000000000000000000000001818EF003131DE004A4A
      CE004A4ACE006B6BBD0000000000000000000000000000000000000000004242
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0042424200422121004221
      2100000000000000000000000000000000000000000000000000C6DEC600A5A5
      A50042212100C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6A5
      E700C6C6C600426363000000000000000000000000001831DE001831DE002939
      E7003142E700424AEF00525AF7006B6BFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600846363008463630084636300846363000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7FF
      FF00C6DEC600F7FFFF00F7FFFF00F7FFFF00C6DEC600C6DEC600C6DEC600C6A5
      E700C6C6C600A5A5A5000000000000000000000000001831DE001831DE001831
      DE002939E7003142E700424AEF00525AF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500C6DEC600C6DEC600F7FFFF00F7FFFF00C6DEC600C6DEC600C6A5E7000084
      C600A5A5A500000000000000000000000000000000001831DE001831DE001831
      DE002939E7003142E700424AEF00424AEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200F7FFFF00F7FFFF00424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6DEC600C6DEC60084E7E70084E7E70084E7E700C6A5E7000000
      000000000000000000000000000000000000000000001831DE001831DE001831
      DE001831DE002939E7003142E700424AEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042212100422121000000000042212100422121004221
      2100000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242000000000000000000000000004242
      420042424200C6A50000C6A50000C6A50000C6A50000C6840000008400004242
      4200424242000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      00000000000042212100C6DEC60042E742004221210084E7E70000A5A50000A5
      A5004221210000000000000000000000000042212100C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A50084A5A50084A5A50084A5A50042424200000000000000000042424200C684
      0000C6A50000C6A50000C6A50000C6A50000C6A50000C6A500000084210000E7
      63000042420042424200000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600424242000000000000000000000000000000000042212100422121004221
      210042212100422121004221210000C6210000C62100422121000084840084E7
      E70084E7E70042212100000000000000000042212100C6C6C600C6C6C600A5A5
      A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600A5A5A500A5A5A50084A5A500424242000000000042424200C6840000C6C6
      4200F7CEA500C6A52100F7CEA500C6A50000C6A50000C6A50000C6A500000084
      210000E7630000848400424242000000000042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A5004221
      21004221210042212100000000000000000000000000422121000084C6000063
      A5000084C60042212100426363004221210000A5000000A500004221210084E7
      E70000A5A50000A5A500422121000000000042212100C6C6C600A5A5A5004242
      4200A5A5A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A50084A5A500424242000000000042424200C6A5210084E7
      840042E7A500A5A5A500F7CEA500C6A52100C6A50000C6A50000C6A50000C6A5
      00000084210000840000424242000000000042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004221
      210084E7A50042212100000000000000000000000000422121000084C6000063
      A5000084E7004221210042424200000000004221210000A5000000A500004221
      21000084840042E7E70084E7E7004221210042212100C6C6C60042424200C6C6
      C60000000000A5A5A50042424200C6C6C6008463000084420000844200008463
      0000C6A50000C6C6C60084A5A5004242420042424200C6A50000C6C6420042E7
      C60084E78400A5A5A500C6C64200F7CEA500C6A52100C6A50000C6A50000C6A5
      0000C684000084630000426363004242420042424200A5A5A500C6DEC600C6C6
      C600A5A5A500A5A5A50084A5840084A584008484630042212100422121004284
      210084E7840042842100422121004221210000000000422121000084C6000084
      C60000A5E700422121004242420042424200000000004221210042E7420000A5
      00004221210042E7E70000A5A5004221210042212100C6DEC600A5A5A5004242
      4200C6C6C60042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A5004242420042424200C6A5000084C6000000E7
      A50084E78400A5A5A500F7CEA500C6C64200C6A52100C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500C6DEC600C6DE
      C600C6DEC600C6C6A50084C6A50084C6A50084C684004221210084E7840084E7
      840084E7630084E7840084E7A5004221210042424200422121000084E70000A5
      E70000A5E7004221210042212100000000004221210042E742004221210000A5
      0000008400004221210084E7E7000000000042212100C6DEC600C6C6C600A5A5
      A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A5004242420042424200C6A5000084C6000042E7
      A50084E7840042A50000A5A5A500C6A50000C6A50000C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500C6DEC600C6C6
      C600A5A5A50084A5840084A5840084A563008484630042212100422121004284
      210042C642004284210042212100422121004242420000A5E70000A5E70000A5
      E70000A5E70000A5E700422121004221210042E7420042212100426363004221
      21000084000000840000422121000000000042212100C6DEC600C6DEC600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A50042424200424242008463000000E7A50000E7
      A50000E7A50084E7840000C6C600C6C64200C6A50000C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6DEC600C6C6A500C6C6A500C6C6A500C6C6A500C6C6A5004221
      210084E784004242420000000000000000004242420000A5E70000A5E70000A5
      E70000A5E70000A5E7004221210042E742004221210042636300424242000000
      00004221210000840000008400004221210042212100C6DEC600C6DEC600A5A5
      A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500424242004242420042A5000084E7840084E7
      840000E7A50000E7A50000E7E70084C60000C6A50000C6A50000848484008484
      8400C684000084630000844200004242420042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A5004221
      2100422121004221210000000000000000004242420000A5E70000A5E70000A5
      E70042A5E70042A5E700422121004221210084A5A50084848400424242000000
      0000422121000084000042E742000000000042212100F7FFFF00A5A5A5004242
      4200C6DEC60042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500424242004221210000E7A50000E7A50084E7
      840000E7A50000E7A50084C6000042A50000C6C64200C6A5000084C6000000E7
      A5004263630084630000426363004242420042424200A5A5A500F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00424242000000000000000000000000004242420000A5E70042A5E70042C6
      E70042C6E70042C6E7004221210042A521004221210084848400000000004221
      21000084000042E74200000000000000000042212100F7FFFF0042424200C6DE
      C60042212100C6DEC60042424200C6C6C6008463000084420000844200008463
      0000C6A50000C6C6C600A5A5A50042424200000000004221210000E7A50000E7
      E70000E7A50000C6C60000E7A50000E7A50084A5A50084A5A50000C6840000E7
      A50000C684008463000042424200000000004242420084636300846363008463
      6300846363008463630084636300846363008463630084636300846363008463
      6300424242000000000000000000000000000000000042212100422121004221
      210042212100422121000000000084E7630042A5210042212100422121000084
      000042E7420042212100000000000000000042212100F7FFFF00A5A5A5004242
      4200C6DEC60042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60042424200000000004221210042A5000000E7
      A5008463630042A5000000E7A50084E7840042E7000000E7A50000C6C60000E7
      A5000084000084420000424242000000000042424200C6C64200C6C64200C6C6
      4200C6A54200C6A54200C6A52100C6A52100C6842100C6840000C6840000C684
      0000424242000000000000000000000000000000000042212100848484008463
      63004242420042212100000000004221210084E7630042A521004284210042E7
      42004221210000000000000000000000000042212100F7FFFF00C6DEC600A5A5
      A50042424200A5A5A500C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242000000000000000000422121008463
      0000C6A50000C6C6420042A5000000E7A50000E7A50000E7E70000E7E7000084
      00008442000042424200000000000000000042424200C6C64200C6C64200C6C6
      4200C6A54200C6A54200C6A52100C6A52100C6842100C6840000C6840000C684
      0000424242000000000000000000000000000000000042424200C6C6C60084A5
      A500846363004221210000000000000000004221210084E7630084E763004221
      21000000000000000000000000000000000042212100F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00C6DEC600C6DEC600C6DEC600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242000000000000000000000000004221
      210042212100C6A50000C6A5000042A5000042A5000042A50000C6A500004242
      4200424242000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000042424200C6C6C600C6C6
      C600848484004221210000000000000000000000000042424200424242000000
      0000000000000000000000000000000000004221210042212100422121004221
      2100422121004221210042212100422121004221210042212100422121004221
      2100422121004221210042212100424242000000000000000000000000000000
      0000000000004221210042424200424242004242420042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004221
      2100422121000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000FF000000FF000000
      FF00000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD000000BD000000BD000000BD00
      0000BD0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000FF000000FF000000
      FF00000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084000021C600000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426363004263
      6300000000000000000000000000000000000000000000000000000000000000
      0000426363004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000021C6000021C6000021C600000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084C6
      0000422121000000000000000000000000000000000000000000000000004221
      210084C6000084E7000042636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000021C6000021C6000021C6000021C6000021C600000084000000
      84000000840000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004242420084C6000084E7
      210084C6000042212100000000000000000000000000000000004221210084C6
      000084E7210084C6000042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000021
      C6000021C6000021C6000021C6000021C6000021C6000021C6000021C6000000
      84000000840000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818001818
      18001818180018181800181818004263630000000000000000004242420084A5
      000084E7210084A500004263630000000000000000004263630084A5000084E7
      210084A500004242420000000000000000004263630018181800181818001818
      180018181800181818000000000000000000000084000021C6000021C6000021
      C6000021C6000021C6000021C6000021C600000084000021E7000021E7000021
      E7000021C60000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004242420084C6000084C6
      000084A5000084A5000042636300000000000000000000000000000000004263
      630084E7000084E700004263630000000000000000004263630084E7000084E7
      000042636300000000000000000000000000000000004263630084A5000084A5
      000084C6000084C6000042424200000000000021C6000021C6000021C6000021
      C6000021C6000021C600000084000021E7000021E7000021E7008463E7000021
      E700000084000021C6000021C6000021C6000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200C6C6630084E7
      630084C6000084636300C6C6C600000000000000000000000000000000008484
      840084C6000084E721004221210000000000000000004221210084E7210084C6
      00008484840000000000000000000000000000000000C6C6C6008463630084C6
      000084E76300C6C6630042424200000000000021C6000021C6000021C6000021
      C6000021C6000021E7004242E7004221E7000021E7000021E7000021C6000021
      E7000021E7008463E7004242E700000000000000000000000000BD000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200C6DEC60084E7
      8400C6C6420084A5000042636300000000000000000000000000000000008484
      840084C60000C6DEC60042212100000000000000000042212100C6DEC60084C6
      000084848400000000000000000000000000000000004263630084A50000C6C6
      420084E78400C6DEC60042424200000000000021C6000021C6000021C6000021
      E7000021E7004221E7000021E7000021C6000021E7004242E7000021E7004242
      E7004242E700000000000000000000000000BD000000BD000000BD000000BD00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200C6DEC600A5A5
      A50084E7000084E7210084A50000426363000000000000000000000000004263
      630084C6000084E721004221210000000000000000004221210084E7210084C6
      0000426363000000000000000000000000004263630084A5000084E7210084E7
      0000A5A5A500C6DEC60042424200000000000021C6000021E7000021E7004221
      E7000000FF000021C6000021E7000021C6004221E7000021E7008463E7000000
      0000000000000000000000000000000000000000000000000000BD000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630042636300C6C6
      C6004263630084E70000C6DEC60084A5000042636300424242004242420084A5
      000084E7000084E700004263630000000000000000004263630084E7000084E7
      000084A5000042424200424242004263630084A50000C6DEC60084E700004263
      6300C6C6C60042636300426363000000000000000000000000004221E7000021
      E7004242E7000021E7004242E7008463E7004242E70000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300000000000000
      0000000000004263630084C60000C6DEC60084C6000084C6000084C6000084C6
      000084E7000084A500008484840000000000000000008484840084A5000084E7
      000084C6000084C6000084C6000084C60000C6DEC60084C60000426363000000
      0000000000000000000042636300000000000000000000000000000000000000
      00004221E7008463E7004242E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004263630084C6000084E7000084E7210084E7210084E7
      210084C6000042636300000000000000000000000000000000004263630084C6
      000084E7210084E7210084E7210084E7000084C6000042636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000000000000000000000000000FF00
      000000000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004263630042636300426363004263
      6300848484000000000000000000000000000000000000000000000000008484
      8400426363004263630042636300426363008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF00000000000000FF00
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000FF000000FF00
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000000000000000000000000000FF00
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400008484000084840000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0084848400000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000FF000000000000000000000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000000000000000840000000000
      FF000000FF000000FF0084000000000000008484840000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000084
      84000084840000848400008484000084840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000084848400848484008484
      8400848484000000FF000000FF00848484000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000008400
      00000000FF000000FF000000FF00848400008484000084840000C6C6C6000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00C6C6C600C6C6C60000000000C6C6
      C600840000000000000000000000000000000000000000000000008484000084
      840000848400008484000084840000FFFF0000FFFF00008484000084840000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000008400
      000000000000848400000000FF000000FF000000FF0084000000C6C6C6008484
      0000000000000000000084000000840000000000000000000000008484000084
      84000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      84000084840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000848484000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000084000000C6C6C600C6C6C6000000FF000000FF000000FF00C6C6C6008484
      00008484840000000000000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF000084840000848400008484000084840000FFFF0000FF
      FF0000FFFF000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000FF000000FF00000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000084000000C6C6C60000000000000000000000FF000000FF000000FF008484
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000848400008484000084840000848400008484000084840000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000008400000000000000000000000000
      000000000000848484000000000000000000C6C6C6000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000848400008484000084840000848400008484000084840000FF
      FF00000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000008484
      0000C6C6C6008400000084840000C6C6C600C6C6C600848400000000FF000000
      FF000000FF008400000000008400000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C60000000000840000000000000084000000000000000000
      FF000000FF000000FF0000000000000000008400000084000000840000008400
      0000840000008400000000848400008484000084840000848400840000008400
      0000840000008400000084000000840000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000FF00848484000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000008400000000000000000000000000
      0000000000000000000000008400000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000E7E7E700E7E7E700E7E7E700E7E7
      E70084000000E7E7E700E7E7E700E7E7E7008400000084000000840000008400
      0000E7E7E7008400000084000000840000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484008484
      8400848484000000FF000000FF008484840000000000000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E70084000000840000008400
      0000E7E7E7008400000084000000840000000000000000000000000000000000
      0000000000008484840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      000000000000000000000000FF000000FF00E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E7008400000084000000E7E7
      E70084000000E7E7E70084000000840000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E7008400000084000000E7E7
      E70084000000E7E7E70084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E70084000000840000008400
      000084000000E7E7E700E7E7E700E7E7E7008400000084000000E7E7E7008400
      00008400000084000000E7E7E700840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084080800840808008408080084080800840808008400
      0000840000008400000084000000840000000000000000428400004284000042
      8400004284000042840000428400004284000042840000428400004284000042
      8400004284000042840000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      0000840000008400000000000000000000000000000084080800840000008400
      0000840000008400000084000000841010008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800E7E7E700DEDEDE00DEDEDE00D6D6D600CECE
      CE00C6C6C600B5B5B500A5A5A500840000000063A500424242000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC600C6DEC600F7FF
      FF0084E7E7004242420000424200000000000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5B500ADAD
      AD009C9C9C008400000000000000000000000000000084080800CECECE00C6C6
      C600BDBDBD00ADADAD00A5A5A50084101000CECECE00C6C6C600BDBDBD00ADAD
      AD00A5A5A5008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6
      D600CECECE00C6C6C600B5B5B500840000000063A50042C6E7000084C600C6C6
      C600313131002929290029292900212121002121210018181800101010001010
      100084E7E70042C6E70000424200000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5
      B500ADADAD008400000000000000000000000000000084080800D6D6D600CECE
      CE00C6C6C600BDBDBD00ADADAD0084101000D6D6D600CECECE00C6C6C600BDBD
      BD00ADADAD008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDE
      DE00D6D6D600CECECE00C6C6C600840000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DE
      C60084E7E70042C6E70000424200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600B5B5B5008400000000000000000000000000000084080800D6D6D600D6D6
      D600CECECE00C6C6C600BDBDBD0084101000D6D6D600D6D6D600CECECE00C6C6
      C600BDBDBD008400000000000000000000000000000000000000000000008408
      080084080800840808008C101000840808008408080084080800840808008408
      0800840808008408080084000000840000000063A50084C6E7000084C600C6C6
      C60031313100292929002929290021212100212121001818180010101000C6C6
      C60084E7E70042C6E70000424200000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      0800840000008400000000000000000000000000000084080800DEDEDE00D6D6
      D600D6D6D600CECECE00C6C6C60084101000DEDEDE00D6D6D600D6D6D600CECE
      CE00C6C6C6008400000000000000000000000000000000000000000000008408
      0800E7E7E700DEDEDE0084080800840000008400000084000000840000008400
      0000840000008400000000000000840000000063A50084C6E7000084C60084A5
      A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E70000424200000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000084080800DEDEDE00DEDE
      DE00D6D6D600D6D6D600CECECE008C101000DEDEDE00DEDEDE00D6D6D600D6D6
      D600CECECE008400000000000000000000000000000000000000000000008408
      0800EFEFEF00E7E7E70084080800840808008408080084000000840000008400
      0000840000008400000084000000840000000063A50084C6E7000084C60084A5
      A500313131002929290029292900212121002121210018181800101010001010
      100084E7E70042C6E70000424200000000000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      0000840000008400000000000000000000000000000084080800E7E7E700DEDE
      DE00DEDEDE00D6D6D600D6D6D6008C101000E7E7E700DEDEDE00DEDEDE00D6D6
      D600D6D6D6008408080000000000000000000000000000000000000000008408
      0800EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6
      C600840000000000000000000000000000000063A50084E7E7000084C6000084
      C6000084C6000084C6000084C6000084C6000084C6000084C6000084C6000084
      C60084E7E70042C6E70000424200000000000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5B500ADAD
      AD009C9C9C008400000000000000000000000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D6008C101000EFEFEF00E7E7E700DEDEDE00DEDE
      DE00D6D6D6008408080000000000000000000000000084080800840808008C10
      1000840808008408080084080800840808008408080084080800840808008400
      0000840000000000000000000000000000000063A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C6E70000424200000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5
      B500ADADAD008400000000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE008C101000EFEFEF00EFEFEF00E7E7E700DEDE
      DE00DEDEDE008408080000000000000000000000000084080800E7E7E7008408
      0800840000008400000084000000840000008400000084000000840000000000
      0000840000000000000000000000000000000063A50084E7E7000084C60000A5
      E7000084C6000084C6000084C6000084C6000084C6000084C6000084C60042C6
      E70084E7E70042C6E70000424200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600B5B5B5008400000000000000000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE008C101000F7F7F700EFEFEF00EFEFEF00E7E7
      E700DEDEDE008408080000000000000000000000000084080800EFEFEF008408
      0800840808008408080084080800840000008400000084000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C6000000
      00000063A50000000000F7FFFF00F7FFFF00C6C6C600C6C6C600F7FFFF000084
      C60084E7E70084C6E70000424200000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      0800840000008400000000000000000000000000000084080800840808008408
      08008408080084080800840808008C1010008408080084080800840808008408
      0800840808008408080000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008484840084848400F7FFFF000063
      A50084E7E70084C6E70000424200000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000084000000840000008400
      0000840000008400000000000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084000000840000000000
      0000000000000000000000000000000000000063A50042C6E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008463630084A5A500C6DEC6000063
      A50084E7E70084C6E70000424200000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000000000000840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C6000000
      00000063A50000000000F7FFFF00C6DEC6004242420042424200F7FFFF000063
      A50084E7E70084C6E70000424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C600C6DE
      C6000084C6000000000000000000000000000000000000000000000000000063
      A50084E7E7000042840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000808080008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400840000008400000084000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000840000000000
      0000000000000000000000000000000000000000000042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200C6C6C6000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008400
      0000840000008400000000000000840000000000000084848400848484000000
      0000000000008484840084000000840000008400000084000000000000000000
      0000000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200C6C6C60042424200000000001010100000000000000000000000
      0000181818001818180000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400840000008400
      000084000000000000008400000000000000848484000000000000000000C6C6
      C600000000000000000084000000840000008400000000000000000000000000
      00000000000000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600424242004242420042424200000000001010100018181800000000002121
      2100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000084000000840000008400
      0000000000008400000000000000000000008484840000000000C6C6C6000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000084000000
      00000000000000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60042424200C6C6C60042424200000000001818180021212100292929002929
      2900292929000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      000084848400C6C6C600C6C6C600C6C6C6008484840000000000840000000000
      00008400000000000000000000000000000000000000C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000008400000084000000
      0000000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200C6C6C600C6C6C600424242001818180021212100292929002929
      2900292929002929290029292900212121000000000000000000840000008400
      0000840000000000000000000000000000008484840084848400000000008484
      8400C6C6C6000000000000000000C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000840000008400000084000000
      84000000840000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200C6C6C60000000000C6C6C600424242001818180021212100292929002929
      2900393939002929290029292900000000000000000000000000000000008400
      000084000000840000000000000000000000848484000000000084848400C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000000000000000C6C6C600000000000000000000008400000084000000
      0000000000000000840000000000000000000000000042424200424242004242
      420042424200424242004242420042424200424242004242420042424200C6C6
      C60000000000C6C6C60042424200424242001818180021212100292929002929
      2900292929002929290000000000000000000000000000000000000000000000
      0000840000008400000084000000000000008484840000000000C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000000000000084848400000000000000000000000000000084000000
      0000000000000000840000000000000000000000000000000000424242000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200C6C6C60042424200C6C6C600424242001818180021212100292929002929
      2900292929000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000008484840000000000C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200000000001818180018181800181818001818180018181800000000004242
      4200424242004242420042424200000000001010100018181800212121002121
      2100000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000008484840000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840000000000000000000000000000000000000084000000
      0000000000000000840000000000000000000000000000000000000000004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000424242000000000000000000000000001010100010101000181818000000
      0000000000000000000000000000840000008400000084000000000000000000
      000000000000840000008400000084000000000000008484840084848400C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000424242000000000018181800181818001818180018181800181818000000
      0000424242000000000000000000000000001010100010101000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000424242000000000000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000808080000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000428400004284000042
      8400004284000042840000428400004284000042840000428400004284000042
      8400004284000042840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042212100422121004221
      2100422121004221210042212100422121004221210042212100422121004221
      2100422121004221210042212100000000000063A500424242000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC600C6DEC600F7FF
      FF0084E7E7004242420000424200000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200000000000000000042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420000000000000000000000000000000000000000004221210084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70042212100000000000063A50042C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC600C6DE
      C60084E7E70042C6E700004242000000000042424200D6D6D600D6D6D600CECE
      CE00CECECE00C6C6C600B5B5B500ADADAD00A5A5A5009C9C9C009C9C9C004242
      42000000000042424200424242004242420042424200DEDEDE00D6D6D600D6D6
      D600CECECE00C6C6C600BDBDBD00ADADAD00A5A5A5009C9C9C009C9C9C004242
      4200000000000000000000000000000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042A5E70042A5
      E70042A5E70084E7E70042212100000000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DE
      C60084E7E70042C6E700004242000000000042424200DEDEDE00D6D6D600D6D6
      D600CECECE00CECECE00C6C6C600B5B5B5004242420042424200424242004242
      42004242420042424200424242000000000042424200DEDEDE00181818001818
      1800D6D6D60018181800181818001818180018181800181818009C9C9C004242
      4200000000000000000000000000000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042A5E70042A5
      E70042A5E70084E7E70042212100000000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00CECECE00181818008C8C8C00C6C6C600C6C6C6008484
      84004242420042424200000000000000000042424200E7E7E700DEDEDE00DEDE
      DE00D6D6D600D6D6D600CECECE00C6C6C600BDBDBD00ADADAD00A5A5A5004242
      4200000000000000000000000000000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6
      E70042C6E70084E7E70042212100000000000063A50084C6E7000084C60084A5
      A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D6004242420094949400C6C6C600C6C6C600FFFF00008484
      84008484840042424200000000000000000042424200E7E7E700181818001818
      1800DEDEDE001818180018181800181818001818180018181800ADADAD004242
      4200000000000000000000000000000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6
      E70042C6E70084E7E70042212100000000000063A50084C6E7000084C60084A5
      A50084A5A500A5A5A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200E7E7E700DEDEDE00DEDE
      DE00D6D6D600D6D6D60042424200C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C60042424200000000000000000042424200EFEFEF00E7E7E700E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600BDBDBD004242
      4200000000000000000000000000000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6
      E70042C6E70084E7E70042212100000000000063A50084E7E7000084C6000084
      C6000084C6000084C6000084C6000084C6000084C6000084C6000084C6000084
      C60084E7E70042C6E700004242000000000042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE00D6D6D60042424200C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C60042424200000000000000000042424200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D60031313100CECECE00C6C6C6004242
      4200000000000000000000000000000000000000000042212100F7FFFF0084C6
      E70042C6E70042C6E70042C6E70084E7E700F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF0084E7E70042212100000000000063A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C6E700004242000000000042424200EFEFEF00E7E7E700E7E7
      E700DEDEDE00DEDEDE004242420094949400FFFF0000FFFF0000C6C6C6008484
      84008484840042424200000000000000000042424200F7F7F700313131003131
      3100E7E7E700E7E7E700DEDEDE0031313100CECECE0031313100CECECE004242
      4200000000000000000000000000000000000000000042212100F7FFFF0084E7
      E70084C6E70084C6E70084C6E700F7FFFF004221210042212100422121004221
      2100422121004221210042212100000000000063A50084E7E7000084C60000A5
      E7000084C6000084C6000084C6000084C6000084C6000084C6000084C60042C6
      E70084E7E70042C6E700004242000000000042424200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE001818180094949400C6C6C600C6C6C6008484
      84001818180000000000000000000000000042424200F7F7F70031313100D6D6
      D60031313100E7E7E70031313100CECECE0031313100CECECE00424242004242
      4200424242000000000084000000840000000000000042212100F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00422121000000000000000000000000000000
      0000000000000000000000000000000000000063A50084C6E7000084C6000000
      00000063A50000000000F7FFFF00F7FFFF00C6C6C600C6C6C600F7FFFF000084
      C60084E7E70084C6E700004242000000000042424200EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700DEDEDE00DEDEDE004242420042424200424242004242
      4200000000000000000000000000000000004242420000000000F7F7F7004242
      4200D6D6D60031313100CECECE0031313100C6C6C60031313100C6C6C600C6C6
      C600C6C6C6003131310084000000840000000000000000000000422121004221
      2100422121004221210042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000063A50084E7E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008484840084848400F7FFFF000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D6004242
      4200000000000000000000000000000000004242420042424200424242004242
      420042424200C6C6C60031313100C6C6C60031313100C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CEA500C66300000000
      000000000000C6A50000C6630000000000000063A50042C6E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008463630084A5A500C6DEC6000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00E7E7E700E7E7E7004242420042424200424242004242
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000031313100C6C6C60031313100C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7CEA500C6A5
      2100C6A52100C6A5000000000000000000000063A50084E7E7000084C6000000
      00000063A50000000000F7FFFF00C6DEC6004242420042424200F7FFFF000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00E7E7E70042424200C6C6C600424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6003131310084000000840000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7CE
      A500C66300000000000000000000000000000063A50084E7E7000084C600C6DE
      C6000084C6000000000000000000000000000000000000000000000000000063
      A50084E7E7000042840000000000000000004242420000000000F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00E7E7E7004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000313131001010080010100800101008001010
      0800101008000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004242420084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000042212100422121004221
      2100422121004221210042212100422121004221210042212100422121004221
      2100422121004221210042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200F7FFFF0042424200C6C6C600F7FFFF00C6DEC600C6DEC600C6DEC600F7FF
      FF00F7FFFF00C6C6C6004242420000000000000000004221210084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121002121
      2100181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242008484
      84004242420084636300F7FFFF00F7FFFF00C6C6C600C6DEC600C6DEC600C6DE
      C600F7FFFF00C6C6C60042424200000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042A5E70042A5
      E70042A5E70084E7E70042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121002121
      2100212121001818180000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200C6C6
      C600C6C6C600C6C6C600C6C6C600F7FFFF00C6DEC600C6C6C600C6DEC600C6DE
      C600C6DEC600C6DEC60042424200000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042A5E70042A5
      E70042A5E70084E7E70042212100000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100212121002121210000000000000000000000000000000000000000000000
      000010101000000000000000000000000000000000000000000042424200C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6C6C600C6C6
      C600C6DEC600C6DEC60042424200000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6
      E70042C6E70084E7E70042212100000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000212121002121210021212100000000000000000000000000000000001010
      100010101000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DE
      C600C6C6C600C6DEC60042424200000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6
      E70042C6E70084E7E70042212100000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000002121210021212100212121000000000000000000181818001818
      180000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000042212100F7FFFF0042C6
      E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6E70042C6
      E70042C6E70084E7E70042212100000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000021212100212121002121210021212100181818000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000042212100F7FFFF0084C6
      E70042C6E70042C6E70042C6E70084E7E700F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF0084E7E70042212100000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000212121002121210021212100000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000042212100F7FFFF0084E7
      E70084C6E70084C6E70084C6E700F7FFFF004221210042212100422121004221
      2100422121004221210042212100000000000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000029292900292929002929290021212100212121000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000042212100F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00422121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003131310031313100292929000000000000000000212121002121
      210000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000000000000422121004221
      2100422121004221210042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900393939003131310031313100000000000000000000000000000000002121
      210021212100000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C663
      0000F7CEA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242003939
      3900393939003939390000000000000000000000000000000000000000000000
      000021212100212121000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A50000C6A5
      2100C6A52100F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200393939000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0042424200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6630000C6A500000000
      000000000000C6630000F7CEA500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000042840000428400004284000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042840042C6E70000A5E70042A5E7000042
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042840042C6E7000084C6000042420042C6E7000042
      8400004284000042840000428400000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000042424200424242004242
      4200424242004242420084000000BDBDBD00B5B5B500ADADAD00A5A5A5009C9C
      9C00949494008C8C8C0084848400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042840042A5E70000424200000000000084C6000042
      840042C6E70042C6E70000A5E700004284000000000000000000000000000000
      000000000000000000000000000084000000B5B5B500ADADAD00A5A5A5009C9C
      9C00949494008C8C8C0084848400840000004242420084848400008484008484
      8400008484008484840084080800C6C6C6003131310031313100313131003131
      310031313100313131008C8C8C00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042840042A5E70000424200000000000042420042C6
      E700004242000042420042C6E700004284000000000000000000000000000000
      000000000000000000000000000084000000BDBDBD0031313100313131003131
      310031313100313131008C8C8C00840000004242420000848400848484000084
      8400848484000084840084080800CECECE00C6C6C600BDBDBD00B5B5B500ADAD
      AD00A5A5A5009C9C9C0094949400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004284000084C60042C6E70000424200004284000000
      00000000000000A5E70000428400000000000000000042424200424242004242
      420042424200424242004242420084080800C6C6C600BDBDBD00B5B5B500ADAD
      AD00A5A5A5009C9C9C0094949400840000004242420084848400008484008484
      8400008484008484840084080800D6D6D600313131003131310031313100B5B5
      B500840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000004221210084A5A5000084C60000A5E7000042840042A5E7000084
      C600004284000042840000000000000000000000000042424200ADADAD00A5A5
      A5009C9C9C00949494008484840084080800CECECE0031313100313131003131
      310031313100313131009C9C9C00840000004242420000848400848484000084
      8400848484000084840084080800DEDEDE00D6D6D600CECECE00C6C6C600BDBD
      BD00840000000000000084000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000042212100A5A5A500A5A5A500848484000042840042C6E700004284000042
      8400000000000000000000000000000000000000000042424200BDBDBD003131
      310031313100313131003131310084080800D6D6D600CECECE00C6C6C600BDBD
      BD00B5B5B500ADADAD00A5A5A500840000004242420084848400008484008484
      8400008484008484840084080800E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600840000008400000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000004221
      2100C6C6C600C6C6C60042636300A5A5A5008484840042212100000000000000
      0000000000000000000000000000000000000000000042424200C6C6C600B5B5
      B500ADADAD00A5A5A5009C9C9C0084080800DEDEDE003131310031313100C6C6
      C600840000008400000084000000840000004242420000848400848484000084
      8400848484000084840084080800840808008408080084080800840808008408
      0800840000004242420000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000042212100C6DE
      C600C6C6C60042636300C6C6C600C6C6C6004221210000000000000000000000
      0000000000000000000000000000000000000000000042424200CECECE003131
      310031313100313131003131310084101000DEDEDE00DEDEDE00D6D6D600CECE
      CE00840000000000000084000000000000004242420084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484004242420000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000042212100C6C6C600F7FF
      FF0042424200C6C6C600C6C6C600422121000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200D6D6D600BDBD
      BD00ADADAD00B5B5B500ADADAD0084101000E7E7E700DEDEDE00DEDEDE00D6D6
      D600840000008400000000000000000000004242420000848400848484003131
      3100313131003131310031313100313131003131310031313100313131008484
      8400848484004242420000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      00008400000000000000000000000000000042212100C6DEC600C6C6C6004221
      2100C6DEC600C6C6C60042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200E7E7E7003131
      3100393939008C8C8C00424242008C1010008408080084080800840808008408
      0800840808000000000000000000000000004242420084848400848484003131
      3100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600313131008484
      8400008484004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000000000000000000042212100C6DEC60042212100F7FF
      FF00F7FFFF004221210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200EFEFEF00D6D6
      D600C6C6C600C6C6C60042424200000000000000000000000000000000000000
      0000000000000000000000000000000000004242420000848400848484000084
      84004242420000FFFF00313131003131310000FFFF0042424200848484000084
      8400848484004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042212100F7FFFF00C6DE
      C600422121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200F7F7F700EFEF
      EF00DEDEDE00D6D6D60042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200424242004242
      4200424242004242420000FFFF0000FFFF004242420042424200424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000422121004221
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200424242004242
      4200424242004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
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
      2800000040000000000100000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF00FFFF0000FFFF0000000177EE00010000
      555577EE7EFD0000000177EE7EFD0000555500007EFD0000000177EE7EFD0000
      555577EE7EFD0000000177EE7EFD0000555577EE00010000000177EE7EFD0000
      555577EE7EFD0000000100007EFD0000555577EE7EFD0000000177EE7EFD0000
      555577EE7EFD00000001000000010000DFFFF81FF81FFFFFEFFFE7E7E7E77FFF
      F7FFDFFBDFFB3FFFFBFFB81DB81D3FFFFDFFB9FDB9FD3FFFFEFF7CFE7CFE3F0F
      FF7F7E7E7E7E1E07FFBF7F3E7F3E9E6381DF7F9E7F9E9CF39FEBB81DB81D89F1
      CFF1BFFDBFFDC1F9E7E1FE7BDE7FE3F9F3F0F867E61FFFF9F9FCE01FF807FFF9
      81FFF87FFE1FFFFDFFFFFE7FFE7FFFFFFFEFFFFFFFFFCFFFFFEFF00FF00FC3FF
      FFC7CFF3CFF3E1FFFFC7BFFDBFFDE3FFFF837FFE7FFEF5FFFF837FFE7FFEFEFF
      FFEF7BFE7FDEFF7FFCEFB9FDBF9DFFBFFCEFC0FFFF0381DFFCEFF073CE0F9FEF
      FCEFE033CC07CFF7F86FFFF3CFFFE7FBFB6FFFF3CFFFF3FDF32FFFE187FFF9FE
      FFEFFFEDB7FF81FFFFEFFFCC33FFFFFFFFFFE3EEE3FFFFEFFFFFDDE4DDFFFCEF
      FFCFBFF1BEFFFCEFFFC3BFFBBEBFFCEF00007FF17E3FFCEFFFC37FE4783FF86F
      DDCF7FAE7C3FFB6FC9FF7F3F7E3FF32FE3FF7E3F7F3FFFEFF7FF7C3F7FAEFFEF
      E3FF783F7FE4FF83C9FF7E3F7FF1FF83DDFFBEBFBFFBFFC7FFFFBEFFBFF1FFC7
      FFFFDDFFDDE4FFEFFFFFE3FFE3EEFFEFFFFF00008003FFFFFD5100000001FFFF
      FDD700000001F3FFFDDB00000001C3FFF99D000000010000FDD300000001C3FF
      FFFF00000001F3BBFF7F00000001FF93FE3F00000001FFC7FC1F00000001FFEF
      FFFF00000001FFC7D51300000001FF93DD7D00000001FFBBDDB300000001FFFF
      99DD00000003FFFFDD3300008007FFFFFFFFFFFFFFFFFFFFFFFFF781FFFFFFFF
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
    Images = ilProgramIcons
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
        Action = acInsertHistoryStatement
      end
      object mnuMeta2: TMenuItem
        Caption = 'META Statement'
      end
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
    object mnuEnablePolling: TMenuItem
      Action = acPollEnablePolling
      AutoCheck = True
      GroupIndex = 1
    end
    object mnuPollToSelected: TMenuItem
      Action = acPollToSelectedLine
      AutoCheck = True
      GroupIndex = 1
    end
    object N8: TMenuItem
      Caption = '-'
      GroupIndex = 1
    end
    object mnuPollEvery1sec: TMenuItem
      Action = acPoll1Second
      AutoCheck = True
      GroupIndex = 6
      RadioItem = True
    end
    object mnuPollevery2sec: TMenuItem
      Action = acPoll2Seconds
      AutoCheck = True
      GroupIndex = 6
      RadioItem = True
    end
    object mnuPollEvery5sec: TMenuItem
      Action = acPoll5Seconds
      AutoCheck = True
      GroupIndex = 6
      RadioItem = True
    end
    object mnuPollOnCustomInterval: TMenuItem
      Action = acPollCustom
      AutoCheck = True
      GroupIndex = 6
      RadioItem = True
    end
    object mnuPollOnRequest: TMenuItem
      Action = acPollOnDemand
      AutoCheck = True
      GroupIndex = 6
      RadioItem = True
    end
  end
  object tmPoll: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmPollTimer
    Left = 216
    Top = 80
  end
  object pmToolbars: TPopupMenu
    Left = 96
    Top = 80
    object pmuFile: TMenuItem
      Action = acViewFileToolbar
      AutoCheck = True
    end
    object pmuSearch: TMenuItem
      Action = acViewSearchToolbar
      AutoCheck = True
    end
    object pmuEditing: TMenuItem
      Action = acViewEditToolbar
      AutoCheck = True
    end
    object pmuMovement: TMenuItem
      Action = acViewMovementToolbar
      AutoCheck = True
    end
    object pmuTools: TMenuItem
      Action = acViewToolsToolbar
      AutoCheck = True
    end
    object pmuExternalPrograms: TMenuItem
      Action = acViewExternalProgramToolbar
      AutoCheck = True
    end
    object pmuColorReplace: TMenuItem
      Action = acViewColorReplaceToolbar
      AutoCheck = True
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
      Caption = '&Close File'
      Hint = 'Close|Close current file'
      ImageIndex = 7
      OnClick = CloseFile1Click
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
    Editor = editor
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
  object AutoComplete: TSciAutoComplete
    Disabled = True
    StartChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    IgnoreCase = False
    ChooseSingle = False
    AutoHide = True
    DropRestOfWord = False
    CancelAtStart = True
    Editor = editor
    WordCharacters = 
      '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-' +
      '.\/'
    MaxWidth = 0
    MaxHeight = 5
    Left = 304
    Top = 112
  end
  object ApplicationEvents1: TApplicationEvents
    OnActivate = editorUpdateUI
    Left = 8
    Top = 144
  end
  object printer: TSciPrinter
    Editor = editor
    Title = 'DelphiSci'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clBlack
    FooterFont.Height = -11
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    ColorMode = sccmNormal
    WordWrap = sciNoWrap
    Magnification = 0
    Left = 272
    Top = 144
  end
end
