object frMain: TfrMain
  Left = 510
  Top = 329
  Width = 792
  Height = 434
  VertScrollBar.Range = 49
  AutoScroll = False
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
  Position = poDefault
  WindowMenu = Window1
  OnClose = FormClose
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 361
    Width = 784
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
    Width = 784
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
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 645
      Top = 2
      Width = 128
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'External Programs'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
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
        ImageIndex = 37
        PopupMenu = pmPolling
        OnClick = btPollingClick
      end
    end
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 120
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Files'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
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
        Hint = 'Create a new file (Ctrl-N)'
        Action = acFileNew
      end
      object ToolButton14: TToolButton
        Left = 28
        Top = 0
        Action = acFileOpen
      end
      object ToolButton15: TToolButton
        Left = 51
        Top = 0
        Action = acFileSave
      end
      object ToolButton16: TToolButton
        Left = 74
        Top = 0
        Action = acFileSaveAs
      end
      object ToolButton28: TToolButton
        Left = 97
        Top = 0
        Action = acFilePrint
      end
    end
    object ToolBar3: TToolBar
      Left = 494
      Top = 2
      Width = 74
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Search & Replace'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Wrapable = False
      object ToolButton2: TToolButton
        Left = 5
        Top = 0
        Action = acFind
      end
      object ToolButton29: TToolButton
        Left = 28
        Top = 0
        Action = acFindNext
      end
      object ToolButton3: TToolButton
        Left = 51
        Top = 0
        Action = acReplace
      end
    end
    object ToolBar4: TToolBar
      Left = 581
      Top = 2
      Width = 51
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Windows'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Wrapable = False
      object ToolButton5: TToolButton
        Left = 5
        Top = 0
        Action = acWindowCascade
      end
      object ToolButton6: TToolButton
        Left = 28
        Top = 0
        Action = acWindowTile
      end
    end
    object ToolBar5: TToolBar
      Left = 144
      Top = 2
      Width = 337
      Height = 23
      Align = alNone
      AutoSize = True
      ButtonHeight = 23
      Caption = 'Editing'
      Color = clBtnFace
      DragMode = dmAutomatic
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Wrapable = False
      object ToolButton8: TToolButton
        Left = 5
        Top = 0
        Action = acEditCut
      end
      object ToolButton10: TToolButton
        Left = 28
        Top = 0
        Action = acEditCopy
      end
      object ToolButton11: TToolButton
        Left = 51
        Top = 0
        Action = acEditPaste
      end
      object ToolButton12: TToolButton
        Left = 74
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton17: TToolButton
        Left = 82
        Top = 0
        Action = acincIndent
      end
      object ToolButton18: TToolButton
        Left = 105
        Top = 0
        Action = acDecIndent
      end
      object ToolButton20: TToolButton
        Left = 128
        Top = 0
        Width = 9
        Caption = 'ToolButton20'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton19: TToolButton
        Left = 137
        Top = 0
        Action = acCommentBlock
      end
      object ToolButton21: TToolButton
        Left = 160
        Top = 0
        Action = acUncommentBlock
      end
      object ToolButton22: TToolButton
        Left = 183
        Top = 0
        Width = 8
        Caption = 'ToolButton22'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton23: TToolButton
        Left = 191
        Top = 0
        Action = acTrimLines
      end
      object ToolButton26: TToolButton
        Left = 214
        Top = 0
        Width = 8
        Caption = 'ToolButton26'
        ImageIndex = 32
        Style = tbsSeparator
      end
      object ToolButton27: TToolButton
        Left = 222
        Top = 0
        Action = acInline
      end
      object ToolButton25: TToolButton
        Left = 245
        Top = 0
        Action = acReplaceColor
      end
      object ToolButton7: TToolButton
        Left = 268
        Top = 0
        Action = acReverseWinding
      end
      object ToolButton31: TToolButton
        Left = 291
        Top = 0
        Action = acTriangleCombine
      end
      object ToolButton9: TToolButton
        Left = 314
        Top = 0
        Action = acErrorCheck
      end
    end
    object tbrColorReplace: TToolBar
      Left = 11
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
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ilToolBarColor
      Indent = 5
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
  end
  object MainMenu1: TMainMenu
    Images = ilToolBarColor
    Left = 8
    Top = 264
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
        object FilesToolbar: TMenuItem
          Action = acFileToolbar
        end
        object Edit2: TMenuItem
          Action = acEditingToolbar
        end
        object SearchReplace1: TMenuItem
          Action = acSearchToolbar
        end
        object Windows2: TMenuItem
          Action = acWindowsToolbar
        end
        object ExternalPrograms3: TMenuItem
          Action = acExternalsToolbar
        end
        object ColorBar1: TMenuItem
          Action = acColorToolbar
        end
      end
      object SyntaxHighlighting1: TMenuItem
        Caption = 'Syntax Highlighting'
        object Ldraw2: TMenuItem
          Action = acHighlightLdraw
        end
        object C2: TMenuItem
          Action = acHighlightCpp
        end
        object Pascal2: TMenuItem
          Action = acHighlightPascal
        end
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
          Action = acErrorCheck
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object MarkAll1: TMenuItem
          Action = acECMarkAll
        end
        object MarkAllofSelectedType1: TMenuItem
          Action = acECMarkAllTyped
        end
        object UnmarkAll2: TMenuItem
          Action = acECUnMarkAll
        end
        object UnmarkAllofSelectedType2: TMenuItem
          Action = acECUnMarkAllTyped
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object AutofixSelectedError1: TMenuItem
          Action = acECFixError
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object AutofixAllMarkedErrorsofSelectedType1: TMenuItem
          Action = acECFixAllMarkedErrorsTyped
        end
        object AutofixAllMarkedErrors1: TMenuItem
          Action = acECFixAllMarkedErrors
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object AutofixAllErrorsofSelectedType1: TMenuItem
          Action = acECFixAllErrorsTyped
        end
        object AutofixAllErrors1: TMenuItem
          Action = acECFixAllErrors
        end
        object N14: TMenuItem
          Caption = '-'
        end
        object CopyErrorListToClipboard1: TMenuItem
          Action = acECCopy
        end
      end
      object AutoRoundSelection1: TMenuItem
        Action = acAutoRound
      end
      object SoortByPosition1: TMenuItem
        Action = acSortByPosition
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
      object ViewModelTree1: TMenuItem
        Action = acModelTreeView
      end
    end
    object Window1: TMenuItem
      Caption = 'Window'
      Hint = 'Window Commands'
      object WindowCascadeItem: TMenuItem
        Action = acWindowCascade
      end
      object WindowTileItem: TMenuItem
        Action = acWindowTile
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
  object ActionList1: TActionList
    Images = ilToolBarColor
    Left = 8
    Top = 232
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
      ImageIndex = 7
      ShortCut = 16463
      OnExecute = acFileOpenExecute
    end
    object acFileClose: TWindowClose
      Category = 'File'
      Caption = '&Close'
      Hint = 'Close|Close current file'
    end
    object acFileSave: TAction
      Category = 'File'
      Caption = '&Save'
      Hint = 'Save|Save current file'
      ImageIndex = 8
      ShortCut = 16467
      OnExecute = acFileSaveExecute
    end
    object acFileSaveAs: TAction
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Save file under a new filename'
      ImageIndex = 18
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
      Hint = 'Cut (Ctrl-X)|Cut out the marked text (Ctrl-X)'
      ImageIndex = 0
      OnExecute = acEditCutExecute
    end
    object acEditCopy: TEditCopy
      Category = 'Editor'
      Caption = 'C&opy'
      Hint = 'Copy (Ctrl-C)|Copy the marked text to clipboard (Ctrl-C)'
      ImageIndex = 1
      OnExecute = acEditCopyExecute
    end
    object acEditPaste: TEditPaste
      Category = 'Editor'
      Caption = '&Paste'
      Hint = 'Paste (Ctrl-V)|Paste text from clipboard (Ctrl-V)'
      ImageIndex = 2
      OnExecute = acEditPasteExecute
    end
    object acWindowCascade: TWindowCascade
      Category = 'Windows'
      Caption = '&Cascade'
      Hint = 'Cascade|Cascade all open windows'
      ImageIndex = 17
      OnExecute = acWindowCascadeExecute
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
      ImageIndex = 12
      ShortCut = 16454
      OnExecute = acFindExecute
    end
    object acReplace: TAction
      Category = 'Search'
      Caption = '&Replace...'
      Hint = 'Find and replace text|Find and replace text'
      ImageIndex = 19
      ShortCut = 16466
      OnExecute = acReplaceExecute
    end
    object acErrorCheck: TAction
      Category = 'Error Check'
      Caption = 'Run Error Check'
      Hint = 'Check for errors|Check for errors'
      ImageIndex = 21
      ShortCut = 121
      OnExecute = acErrorCheckExecute
    end
    object acOptions: TAction
      Category = 'Misc'
      Caption = '&Options...'
      Hint = 'Options|Options'
      ImageIndex = 31
      ShortCut = 16461
      OnExecute = acOptionsExecute
    end
    object acLDView: TAction
      Category = 'Externals'
      Caption = 'LDView'
      Hint = 'Start LDView'
      ImageIndex = 22
      OnExecute = acLDViewExecute
    end
    object acUndo: TAction
      Category = 'Editor'
      Caption = '&Undo'
      Hint = 'Undo last action'
      ImageIndex = 23
      ShortCut = 16474
      OnExecute = acUndoExecute
    end
    object acRedo: TAction
      Category = 'Editor'
      Caption = '&Redo'
      Hint = 'Redo last action'
      ImageIndex = 24
      ShortCut = 24666
      OnExecute = acRedoExecute
    end
    object acMLCad: TAction
      Category = 'Externals'
      Caption = 'MLCad'
      Hint = 'Start ML-Cad'
      ImageIndex = 25
      OnExecute = acMLCadExecute
    end
    object acincIndent: TAction
      Category = 'Editor'
      Caption = 'Increase Indent'
      Hint = 'Increase Indent'
      ImageIndex = 26
      OnExecute = acincIndentExecute
    end
    object acDecIndent: TAction
      Category = 'Editor'
      Caption = 'Decrease Indent'
      Hint = 'Decrease Indent'
      ImageIndex = 27
      OnExecute = acDecIndentExecute
    end
    object acInsertPartHeader: TAction
      Category = 'EditorBlocks'
      Caption = 'Standard Part Header'
      Hint = 'Insert a part header'
      OnExecute = acInsertPartHeaderExecute
    end
    object acInsertUpdateLine: TAction
      Category = 'EditorBlocks'
      Caption = 'Update Header'
      Hint = 'Insert an update line header'
      ShortCut = 16469
      OnExecute = acInsertUpdateLineExecute
    end
    object acCommentBlock: TAction
      Category = 'Editor'
      Caption = '&Comment'
      Hint = 'Comment a block with 0'
      ImageIndex = 29
      ShortCut = 16453
      OnExecute = acCommentBlockExecute
    end
    object acUncommentBlock: TAction
      Category = 'Editor'
      Caption = '&Uncomment'
      Hint = 'Uncomment a commented block'#13#10'by removing leading zeros'
      ImageIndex = 28
      ShortCut = 24645
      OnExecute = acUncommentBlockExecute
    end
    object acTrimLines: TAction
      Category = 'Editor'
      Caption = 'Tr&im Lines'
      Hint = 'Removes blank lines from selection'
      ImageIndex = 30
      OnExecute = acTrimLinesExecute
    end
    object acHomepage: TAction
      Category = 'Misc'
      Caption = 'LDDP &Homepage'
      Hint = 'Go to LDDP homepage'
      ImageIndex = 32
      OnExecute = acHomepageExecute
    end
    object acInline: TAction
      Category = 'Editor'
      Caption = 'I&nline Part'
      Hint = 'Inline a part'
      ImageIndex = 33
      ShortCut = 16457
      OnExecute = acInlineExecute
    end
    object acUserDefined: TAction
      Category = 'Externals'
      ImageIndex = 34
      OnExecute = acUserDefinedExecute
    end
    object acReplaceColor: TAction
      Category = 'Search'
      Caption = 'Replace &Color...'
      Hint = 'Search and replace LDraw colors with a color dialogue'
      ImageIndex = 35
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
      ImageIndex = 13
      ShortCut = 114
      OnExecute = acFindNextExecute
      OnUpdate = acFindNextUpdate
    end
    object acL3Lab: TAction
      Category = 'Externals'
      Caption = 'L3Lab'
      Hint = 'Start L3Lab'
      ImageIndex = 20
      OnExecute = acL3LabExecute
    end
    object acFileToolbar: TAction
      Category = 'Toolbars'
      Caption = 'Files'
      Checked = True
      OnExecute = acFileToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acEditingToolbar: TAction
      Category = 'Toolbars'
      Caption = 'Editing'
      Checked = True
      OnExecute = acEditingToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acSearchToolbar: TAction
      Category = 'Toolbars'
      Caption = 'Search && Replace'
      Checked = True
      OnExecute = acSearchToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acWindowsToolbar: TAction
      Category = 'Toolbars'
      Caption = 'Windows'
      Checked = True
      OnExecute = acWindowsToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acExternalsToolbar: TAction
      Category = 'Toolbars'
      Caption = 'External Programs'
      Checked = True
      OnExecute = acExternalsToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acHighlightLdraw: TAction
      Category = 'Highlighter'
      Caption = 'LDraw'
      OnExecute = acHighlightLdrawExecute
    end
    object acHighlightPascal: TAction
      Category = 'Highlighter'
      Caption = 'Pascal'
      OnExecute = acHighlightPascalExecute
    end
    object acHighlightCpp: TAction
      Category = 'Highlighter'
      Caption = 'C++'
      OnExecute = acHighlightCppExecute
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
      ImageIndex = 36
      ShortCut = 16464
      OnExecute = acFilePrintExecute
    end
    object acFileCloseAll: TAction
      Category = 'File'
      Caption = 'Close A&ll'
      Hint = 'Close all|Close all open files'
      OnExecute = acFileCloseAllExecute
    end
    object acWindowTile: TAction
      Category = 'Windows'
      Caption = 'Tile'
      Hint = 'Tile|Tile all open windows'
      ImageIndex = 15
      OnExecute = acWindowTileExecute
    end
    object acReverseWinding: TAction
      Category = 'Editor'
      Caption = '&Reverse Winding'
      Hint = 'Reverse Winding'
      ImageIndex = 38
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
      Category = 'Misc'
      Caption = 'View Model Tree...'
      Hint = 'Show a Tree Model of this file including all submodels'
      OnExecute = acModelTreeViewExecute
    end
    object acECFixError: TAction
      Category = 'Error Check'
      Caption = 'Autofix Selected Error'
      Enabled = False
      OnExecute = acECFixErrorExecute
    end
    object acECFixAllErrors: TAction
      Category = 'Error Check'
      Caption = 'Autofix All Errors'
      Enabled = False
      OnExecute = acECFixAllErrorsExecute
    end
    object acECMarkAll: TAction
      Category = 'Error Check'
      Caption = 'Mark All'
      Enabled = False
      OnExecute = acECMarkAllExecute
    end
    object acECUnMarkAll: TAction
      Category = 'Error Check'
      Caption = 'Unmark All'
      Enabled = False
      OnExecute = acECUnMarkAllExecute
    end
    object acECFixAllMarkedErrors: TAction
      Category = 'Error Check'
      Caption = 'Autofix All Marked Errors'
      Enabled = False
      OnExecute = acECFixAllMarkedErrorsExecute
    end
    object acECFixAllMarkedErrorsTyped: TAction
      Category = 'Error Check'
      Caption = 'Autofix All Marked Errors of Selected Type'
      Enabled = False
      OnExecute = acECFixAllMarkedErrorsTypedExecute
    end
    object acECFixAllErrorsTyped: TAction
      Category = 'Error Check'
      Caption = 'Autofix All Errors of Selected Type'
      Enabled = False
      OnExecute = acECFixAllErrorsTypedExecute
    end
    object acECMarkAllTyped: TAction
      Category = 'Error Check'
      Caption = 'Mark All of Selected Type'
      Enabled = False
      OnExecute = acECMarkAllTypedExecute
    end
    object acECUnMarkAllTyped: TAction
      Category = 'Error Check'
      Caption = 'Unmark All of Selected Type'
      Enabled = False
      OnExecute = acECUnMarkAllTypedExecute
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
      ShortCut = 16452
      OnExecute = acAutoRoundExecute
    end
    object acSortByPosition: TAction
      Category = 'Misc'
      Caption = 'Sort Selection By Position'
      OnExecute = acSortByPositionExecute
    end
    object acECCopy: TAction
      Category = 'Error Check'
      Caption = 'Copy Error List To Clipboard'
      Enabled = False
      OnExecute = acECCopyExecute
    end
    object acTriangleCombine: TAction
      Category = 'Editor'
      Caption = 'Combine &Triangles Into Quad'
      ImageIndex = 40
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
    object acColorToolbar: TAction
      Category = 'Toolbars'
      Caption = 'Color Replace'
      OnExecute = acColorToolbarExecute
      OnUpdate = acToolbarUpdate
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
  end
  object ilToolBarColor: TImageList
    Left = 40
    Top = 232
    Bitmap = {
      494C010129002C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F9100003F9100003F91
      00003F9100003F9100003F910000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F9100003F9100003F91
      00003F9100003F9100003F910000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F9100003F9100003F91
      00003F9100003F9100003F910000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F9100003F9100003F91
      00003F9100003F9100003F910000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F9100003F9100003F91
      00003F9100003F9100003F910000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000006A6AFB006A6AFB006A6A
      FB006A6AFB006A6AFB006A6AFB0000000000000000006A6AFB006A6AFB006A6A
      FB006A6AFB006A6AFB006A6AFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6AFB006A6AFB006A6A
      FB006A6AFB006A6AFB006A6AFB0000000000000000006A6AFB006A6AFB006A6A
      FB006A6AFB006A6AFB006A6AFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6AFB006A6AFB006A6A
      FB006A6AFB006A6AFB006A6AFB0000000000000000006A6AFB006A6AFB006A6A
      FB006A6AFB006A6AFB006A6AFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6AFB006A6A
      FB006A6AFB006A6AFB00000000000000000000000000000000006A6AFB006A6A
      FB006A6AFB006A6AFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6AFB006A6A
      FB006A6AFB006A6AFB00000000000000000000000000000000006A6AFB006A6A
      FB006A6AFB006A6AFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A6A
      FB006A6AFB000000000000000000000000000000000000000000000000006A6A
      FB006A6AFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A6A
      FB006A6AFB000000000000000000000000000000000000000000000000006A6A
      FB006A6AFB000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000004221
      2100422121004221210000000000000000000000000000000000424242004242
      4200422121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042212100422121008484
      840084848400426363004221210042212100000000004242420084A5A500C6C6
      C600C6C6C6004221210042212100000000000000000000000000000000000000
      00000000000084A5C60084A5C600006363000063630084A5C60084A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000399400004A9C100063A5290073AD
      420094C66B00A5CE8C00BDD6A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      8400848484004263630084A5A50084A5A5004221210084A5A500C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60042212100000000000000000000000000A5A5
      A5004263630042636300A5A5A500A5A5A50084A5C60084A5C600006363000063
      6300A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039940000399400004A9C100063A5
      29007BB5520094C66B00A5CE8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      8400848484004263630084A5A50084A5A5004242420084848400C6C6C600C6C6
      C600C6C6C600C6C6C60084A5A500424242000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A50084A5C60084A5
      C60084A5C600A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400004A9C
      100073AD42007BB5520094C66B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000004221210084848400848484008484
      840084636300C6C6C600A5A5A500A5A5A5004242420042424200848484008484
      8400C6C6C60084A5A5004242420000000000000000000000000000A5E700C6A5
      E700C6A5E700C6A5E700C6A5E700C6A5E70084C6E700A5A5A500A5A5A500A5A5
      A50084A5C6000063630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400003994
      000063A5290073AD42007BB55200000000000000000000000000000000000000
      0000000000000000000084A5A500848484008484840084848400848484000000
      0000C6C6C6008484840000FFFF00000000004221210084848400846363008463
      630084A5A50084A5A500C6C6C600C6C6C600A5A5A500A5A5A500424242004242
      42008484840042424200422121004221210000000000C6A5E700C6A5E700C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C60084C6E700A5A5A500A5A5
      A50084A5C60084A5C60084A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400003994
      00004A9C100063A5290073AD4200000000000000000000000000000000000000
      00000000000084A5A500C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000C6C6C60084848400C6C6C6000000000000000000422121008484840084A5
      A50084A5A500422121004221210084848400C6C6C600C6C6C600A5A5A500A5A5
      A5004242420084A5A50084A5A500422121000000000084E7E700C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C60084C6E700A5A5
      A500A5A5A50084A5C60084A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000003994000039940000399400003994
      0000399400004A9C100063A52900000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000C6C6C6008484840000848400000000000000000000000000422121004221
      21008484840042424200C6C6C600422121004221210084848400C6C6C600C6C6
      C600A5A5A500A5A5A50084A5A500422121000000000084E7E700C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC6004263630042212100C6DEC600C6C6C60084C6
      E700A5A5A50084A5C60000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840042636300C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500848484000000
      0000C6C6C6008484840000FFFF00000000000000000000000000000000000000
      000042424200C6DEC600C6DEC600C6C6C600C6C6C600422121004221210084A5
      A500C6C6C600C6C6C600A5A5A500422121000000000084E7E700F7FFFF00F7FF
      FF00C6DEC600C6DEC60084A5A50042212100424242004242420084C6C600C6A5
      E700A5A5A500A5A5A50000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DEC600C6DEC600C6DEC600C6DE
      C60084636300C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500848484000000
      0000A5A5A50084848400C6C6C600000000000000000000000000000000000000
      000042424200F7FFFF00F7FFFF00C6DEC600C6DEC600C6C6C6004242420084A5
      A50000C6000084A5A500422121000000000000000000C6DEC600F7FFFF00F7FF
      FF00C6DEC6008484840042212100C6C6C600C6DEC60084848400000000008484
      A500C6C6C600A5A5A50084A5C60000000000000000002939E7003142E700424A
      EF00525AF700525AF7006B6BFF006B6BFF000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60084636300C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500848484000000
      0000A5A5A5008463630000FFFF00000000000000000000000000000000004242
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC60042424200848484004242
      E7004221210042212100000000000000000000000000C6DEC600F7FFFF00F7FF
      FF008484840042212100C6C6C600C6DEC600C6DEC600C6DEC60084C6C60084A5
      C600C6C6C600A5A5A50084A5C60000000000000000001831DE002939E7003142
      E700424AEF00525AF7006B6BFF006B6BFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500848484000000
      0000A5A5A50084636300C6C6C600000000000000000000000000000000004242
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0042424200422121004221
      2100000000000000000000000000000000000000000000000000C6DEC600A5A5
      A50042212100C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6A5
      E700C6C6C600426363000000000000000000000000001831DE001831DE002939
      E7003142E700424AEF00525AF7006B6BFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600A5A5A500A5A5A500A5A5A50084848400F7FF
      FF00A5A5A500846363000084840000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7FF
      FF00C6DEC600F7FFFF00F7FFFF00F7FFFF00C6DEC600C6DEC600C6DEC600C6A5
      E700C6C6C600A5A5A5000000000000000000000000001831DE001831DE001831
      DE002939E7003142E700424AEF00525AF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600A5A5A500A5A5A500A5A5A50084848400F7FF
      FF00A5A5A5008463630000FFFF0000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500C6DEC600C6DEC600F7FFFF00F7FFFF00C6DEC600C6DEC600C6A5E7000084
      C600A5A5A500000000000000000000000000000000001831DE001831DE001831
      DE002939E7003142E700424AEF00424AEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00A5A5A5008463630000000000000000000000000000000000000000004242
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
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200C6A50000C6A50000C6A50000C6A50000C6840000008400004242
      4200424242000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      00000000000042212100C6DEC60042E742004221210084E7E70000A5A50000A5
      A500422121000000000000000000000000000000000000000000F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000000
      000000000000000000000000000000000000000000000000000042424200C684
      0000C6A50000C6A50000C6A50000C6A50000C6A50000C6A500000084210000E7
      63000042420042424200000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600424242000000000000000000000000000000000042212100422121004221
      210042212100422121004221210000C6210000C62100422121000084840084E7
      E70084E7E7004221210000000000000000000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600846363008463630084636300000000000000
      0000000000000000000000000000000000000000000042424200C6840000C6C6
      4200F7CEA500C6A52100F7CEA500C6A50000C6A50000C6A50000C6A500000084
      210000E7630000848400424242000000000042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A5004221
      21004221210042212100000000000000000000000000422121000084C6000063
      A5000084C60042212100426363004221210000A5000000A500004221210084E7
      E70000A5A50000A5A50042212100000000000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C60084636300000000000000000000000000CE4A
      4A00CE4A4A00BD6B6B00AD7B7B00000000000000000042424200C6A5210084E7
      840042E7A500A5A5A500F7CEA500C6A52100C6A50000C6A50000C6A50000C6A5
      00000084210000840000424242000000000042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004221
      210084E7A50042212100000000000000000000000000422121000084C6000063
      A5000084E7004221210042424200000000004221210000A5000000A500004221
      21000084840042E7E70084E7E700422121000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600846363008463630084636300000000000000
      00000000000000000000000000000000000042424200C6A50000C6C6420042E7
      C60084E78400A5A5A500C6C64200F7CEA500C6A52100C6A50000C6A50000C6A5
      0000C684000084630000426363004242420042424200A5A5A500C6DEC600C6C6
      C600A5A5A500A5A5A50084A5840084A584008484630042212100422121004284
      210084E7840042842100422121004221210000000000422121000084C6000084
      C60000A5E700422121004242420042424200000000004221210042E7420000A5
      00004221210042E7E70000A5A500422121000000000000000000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600F7FFFF000000
      00000000000000000000000000000000000042424200C6A5000084C6000000E7
      A50084E78400A5A5A500F7CEA500C6C64200C6A52100C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500C6DEC600C6DE
      C600C6DEC600C6C6A50084C6A50084C6A50084C684004221210084E7840084E7
      840084E7630084E7840084E7A5004221210042424200422121000084E70000A5
      E70000A5E7004221210042212100000000004221210042E742004221210000A5
      0000008400004221210084E7E70000000000000000000000000000000000C6C6
      C600846363008463630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200C6A5000084C6000042E7
      A50084E7840042A50000A5A5A500C6A50000C6A50000C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500C6DEC600C6C6
      C600A5A5A50084A5840084A5840084A563008484630042212100422121004284
      210042C642004284210042212100422121004242420000A5E70000A5E70000A5
      E70000A5E70000A5E700422121004221210042E7420042212100426363004221
      210000840000008400004221210000000000000000000000000000000000C6C6
      C6008463630000000000000000004ACE4A004ACE4A005AC65A006BBD6B006BBD
      6B0000000000000000000000000000000000424242008463000000E7A50000E7
      A50000E7A50084E7840000C6C600C6C64200C6A50000C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6DEC600C6C6A500C6C6A500C6C6A500C6C6A500C6C6A5004221
      210084E784004242420000000000000000004242420000A5E70000A5E70000A5
      E70000A5E70000A5E7004221210042E742004221210042636300424242000000
      000042212100008400000084000042212100000000000000000000000000C6C6
      C600846363008463630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420042A5000084E7840084E7
      840000E7A50000E7A50000E7E70084C60000C6A50000C6A50000848484008484
      8400C684000084630000844200004242420042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A5004221
      2100422121004221210000000000000000004242420000A5E70000A5E70000A5
      E70042A5E70042A5E700422121004221210084A5A50084848400424242000000
      0000422121000084000042E7420000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600F7FFFF000000
      0000000000000000000000000000000000004221210000E7A50000E7A50084E7
      840000E7A50000E7A50084C6000042A50000C6C64200C6A5000084C6000000E7
      A5004263630084630000426363004242420042424200A5A5A500F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00424242000000000000000000000000004242420000A5E70042A5E70042C6
      E70042C6E70042C6E7004221210042A521004221210084848400000000004221
      21000084000042E742000000000000000000000000000000000000000000C6C6
      C600846363008463630084636300846363000000000000000000000000000000
      000000000000000000000000000000000000000000004221210000E7A50000E7
      E70000E7A50000C6C60000E7A50000E7A50084A5A50084A5A50000C6840000E7
      A50000C684008463000042424200000000004242420084636300846363008463
      6300846363008463630084636300846363008463630084636300846363008463
      6300424242000000000000000000000000000000000042212100422121004221
      210042212100422121000000000084E7630042A5210042212100422121000084
      000042E74200422121000000000000000000000000000000000000000000C6C6
      C60084636300000000000000000000000000000000001818EF003131DE004A4A
      CE004A4ACE006B6BBD000000000000000000000000004221210042A5000000E7
      A5008463630042A5000000E7A50084E7840042E7000000E7A50000C6C60000E7
      A5000084000084420000424242000000000042424200C6C64200C6C64200C6C6
      4200C6A54200C6A54200C6A52100C6A52100C6842100C6840000C6840000C684
      0000424242000000000000000000000000000000000042212100848484008463
      63004242420042212100000000004221210084E7630042A521004284210042E7
      420042212100000000000000000000000000000000000000000000000000C6C6
      C600846363008463630084636300846363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000422121008463
      0000C6A50000C6C6420042A5000000E7A50000E7A50000E7E70000E7E7000084
      00008442000042424200000000000000000042424200C6C64200C6C64200C6C6
      4200C6A54200C6A54200C6A52100C6A52100C6842100C6840000C6840000C684
      0000424242000000000000000000000000000000000042424200C6C6C60084A5
      A500846363004221210000000000000000004221210084E7630084E763004221
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004221
      210042212100C6A50000C6A5000042A5000042A5000042A50000C6A500004242
      4200424242000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000042424200C6C6C600C6C6
      C600848484004221210000000000000000000000000042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000840000008400000084000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A50084A5A50084A5A50084A5A50042424200000000000000FF000000FF000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042212100C6C6C600C6C6C600A5A5
      A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600A5A5A500A5A5A50084A5A5004242420000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100C6C6C600A5A5A5004242
      4200A5A5A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A50084A5A500424242000000000000000000000000000000
      FF000000FF000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000FF000000FF000000
      FF00000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042212100C6C6C60042424200C6C6
      C60000000000A5A5A50042424200C6C6C6008463000084420000844200008463
      0000C6A50000C6C6C60084A5A500424242000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100C6DEC600A5A5A5004242
      4200C6C6C60042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500424242000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100C6DEC600C6C6C600A5A5
      A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100C6DEC600C6DEC600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500424242000000FF0000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000FF000000FF000000
      FF00000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042212100C6DEC600C6DEC600A5A5
      A50042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500424242000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100F7FFFF00A5A5A5004242
      4200C6DEC60042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A50042424200000000000000FF000000FF000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042212100F7FFFF0042424200C6DE
      C60042212100C6DEC60042424200C6C6C6008463000084420000844200008463
      0000C6A50000C6C6C600A5A5A5004242420000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100F7FFFF00A5A5A5004242
      4200C6DEC60042424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242000000000000000000000000000000
      FF000000FF000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042212100F7FFFF00C6DEC600A5A5
      A50042424200A5A5A500C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042212100F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00C6DEC600C6DEC600C6DEC600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210042212100422121004221
      2100422121004221210042212100422121004221210042212100422121004221
      2100422121004221210042212100424242000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000426363004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000021C6000021C6000021C600000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004221
      210084C6000084E7000042636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000021C6000021C6000021C6000021C6000021C600000084000000
      84000000840000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004221210084C6
      000084E7210084C6000042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000021
      C6000021C6000021C6000021C6000021C6000021C6000021C6000021C6000000
      84000000840000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084A5000084E7
      210084A500004242420000000000000000004263630018181800181818001818
      180018181800181818000000000000000000000084000021C6000021C6000021
      C6000021C6000021C6000021C6000021C600000084000021E7000021E7000021
      E7000021C60000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084E7
      000042636300000000000000000000000000000000004263630084A5000084A5
      000084C6000084C6000042424200000000000021C6000021C6000021C6000021
      C6000021C6000021C600000084000021E7000021E7000021E7008463E7000021
      E700000084000021C6000021C6000021C6000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004221210084E7210084C6
      00008484840000000000000000000000000000000000C6C6C6008463630084C6
      000084E76300C6C6630042424200000000000021C6000021C6000021C6000021
      C6000021C6000021E7004242E7004221E7000021E7000021E7000021C6000021
      E7000021E7008463E7004242E700000000000000000000000000BD000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042212100C6DEC60084C6
      000084848400000000000000000000000000000000004263630084A50000C6C6
      420084E78400C6DEC60042424200000000000021C6000021C6000021C6000021
      E7000021E7004221E7000021E7000021C6000021E7004242E7000021E7004242
      E7004242E700000000000000000000000000BD000000BD000000BD000000BD00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD000000BD000000BD000000BD00
      0000BD0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004221210084E7210084C6
      0000426363000000000000000000000000004263630084A5000084E7210084E7
      0000A5A5A500C6DEC60042424200000000000021C6000021E7000021E7004221
      E7000000FF000021C6000021E7000021C6004221E7000021E7008463E7000000
      0000000000000000000000000000000000000000000000000000BD000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084E7
      000084A5000042424200424242004263630084A50000C6DEC60084E700004263
      6300C6C6C60042636300426363000000000000000000000000004221E7000021
      E7004242E7000021E7004242E7008463E7004242E70000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084A5000084E7
      000084C6000084C6000084C6000084C60000C6DEC60084C60000426363000000
      0000000000000000000042636300000000000000000000000000000000000000
      00004221E7008463E7004242E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004263630084C6
      000084E7210084E7210084E7210084E7000084C6000042636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000000000000000000000000000FF00
      000000000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400008484000084840000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000000000000000840000000000
      FF000000FF000000FF0084000000000000008484840000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000084
      84000084840000848400008484000084840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426363004263
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000008400
      00000000FF000000FF000000FF00848400008484000084840000C6C6C6000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084C6
      0000422121000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00C6C6C600C6C6C60000000000C6C6
      C600840000000000000000000000000000000000000000000000008484000084
      840000848400008484000084840000FFFF0000FFFF00008484000084840000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004242420084C6000084E7
      210084C600004221210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000008400
      000000000000848400000000FF000000FF000000FF0084000000C6C6C6008484
      0000000000000000000084000000840000000000000000000000008484000084
      84000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      84000084840000FFFF0000000000000000000000000000000000181818001818
      18001818180018181800181818004263630000000000000000004242420084A5
      000084E7210084A500004263630000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000084000000C6C6C600C6C6C6000000FF000000FF000000FF00C6C6C6008484
      00008484840000000000000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF000084840000848400008484000084840000FFFF0000FF
      FF0000FFFF00008484000000000000000000000000004242420084C6000084C6
      000084A5000084A5000042636300000000000000000000000000000000004263
      630084E7000084E70000426363000000000000000000000000000000FF000000
      FF0000000000000000000000FF000000FF00000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000084000000C6C6C60000000000000000000000FF000000FF000000FF008484
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000848400008484000084840000848400008484000084840000FF
      FF0000FFFF000000000000000000000000000000000042424200C6C6630084E7
      630084C6000084636300C6C6C600000000000000000000000000000000008484
      840084C6000084E72100422121000000000000000000000000000000FF000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000008400000000000000000000000000
      000000000000848484000000000000000000C6C6C6000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000848400008484000084840000848400008484000084840000FF
      FF00000000000000000000000000000000000000000042424200C6DEC60084E7
      8400C6C6420084A5000042636300000000000000000000000000000000008484
      840084C60000C6DEC600422121000000000000000000000000000000FF000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000008484
      0000C6C6C6008400000084840000C6C6C600C6C6C600848400000000FF000000
      FF000000FF008400000000008400000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000042424200C6DEC600A5A5
      A50084E7000084E7210084A50000426363000000000000000000000000004263
      630084C6000084E72100422121000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C60000000000840000000000000084000000000000000000
      FF000000FF000000FF0000000000000000008400000084000000840000008400
      0000840000008400000000848400008484000084840000848400840000008400
      000084000000840000008400000084000000000000004263630042636300C6C6
      C6004263630084E70000C6DEC60084A5000042636300424242004242420084A5
      000084E7000084E70000426363000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000008400000000000000000000000000
      0000000000000000000000008400000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000E7E7E700E7E7E700E7E7E700E7E7
      E70084000000E7E7E700E7E7E700E7E7E7008400000084000000840000008400
      0000E7E7E7008400000084000000840000000000000042636300000000000000
      0000000000004263630084C60000C6DEC60084C6000084C6000084C6000084C6
      000084E7000084A50000848484000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E70084000000840000008400
      0000E7E7E7008400000084000000840000000000000000000000000000000000
      000000000000000000004263630084C6000084E7000084E7210084E7210084E7
      210084C6000042636300000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      000000000000000000000000FF000000FF00E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E7008400000084000000E7E7
      E70084000000E7E7E70084000000840000000000000000000000000000000000
      0000000000000000000000000000848484004263630042636300426363004263
      630084848400000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E7008400000084000000E7E7
      E70084000000E7E7E70084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      8400004284000042840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084080800840000008400
      0000840000008400000084000000841010008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800E7E7E700DEDEDE00DEDEDE00D6D6D600CECE
      CE00C6C6C600B5B5B500A5A5A500840000000063A500424242000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC600C6DEC600F7FF
      FF0084E7E7004242420000424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000084080800CECECE00C6C6
      C600BDBDBD00ADADAD00A5A5A50084101000CECECE00C6C6C600BDBDBD00ADAD
      AD00A5A5A5008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6
      D600CECECE00C6C6C600B5B5B500840000000063A50042C6E7000084C600C6C6
      C600313131002929290029292900212121002121210018181800101010001010
      100084E7E70042C6E70000424200000000000000000000000000000000000000
      0000000000000000FF0084848400000000000000000000000000848484000000
      0000000000000000000000000000848484000000000084080800D6D6D600CECE
      CE00C6C6C600BDBDBD00ADADAD0084101000D6D6D600CECECE00C6C6C600BDBD
      BD00ADADAD008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDE
      DE00D6D6D600CECECE00C6C6C600840000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DE
      C60084E7E70042C6E70000424200000000000000000084848400848484008484
      8400848484000000FF000000FF00848484000000000000000000848484000000
      0000000000000000000000000000848484000000000084080800D6D6D600D6D6
      D600CECECE00C6C6C600BDBDBD0084101000D6D6D600D6D6D600CECECE00C6C6
      C600BDBDBD008400000000000000000000000000000000000000000000008408
      080084080800840808008C101000840808008408080084080800840808008408
      0800840808008408080084000000840000000063A50084C6E7000084C600C6C6
      C60031313100292929002929290021212100212121001818180010101000C6C6
      C60084E7E70042C6E70000424200000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000848484000000
      0000000000000000000000000000848484000000000084080800DEDEDE00D6D6
      D600D6D6D600CECECE00C6C6C60084101000DEDEDE00D6D6D600D6D6D600CECE
      CE00C6C6C6008400000000000000000000000000000000000000000000008408
      0800E7E7E700DEDEDE0084080800840000008400000084000000840000008400
      0000840000008400000000000000840000000063A50084C6E7000084C60084A5
      A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E70000424200000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000008484
      8400000000000000000000000000000000000000000084080800DEDEDE00DEDE
      DE00D6D6D600D6D6D600CECECE008C101000DEDEDE00DEDEDE00D6D6D600D6D6
      D600CECECE008400000000000000000000000000000000000000000000008408
      0800EFEFEF00E7E7E70084080800840808008408080084000000840000008400
      0000840000008400000084000000840000000063A50084C6E7000084C60084A5
      A500313131002929290029292900212121002121210018181800101010001010
      100084E7E70042C6E70000424200000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084080800E7E7E700DEDE
      DE00DEDEDE00D6D6D600D6D6D6008C101000E7E7E700DEDEDE00DEDEDE00D6D6
      D600D6D6D6008408080000000000000000000000000000000000000000008408
      0800EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6
      C600840000000000000000000000000000000063A50084E7E7000084C6000084
      C6000084C6000084C6000084C6000084C6000084C6000084C6000084C6000084
      C60084E7E70042C6E70000424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D6008C101000EFEFEF00E7E7E700DEDEDE00DEDE
      DE00D6D6D6008408080000000000000000000000000084080800840808008C10
      1000840808008408080084080800840808008408080084080800840808008400
      0000840000000000000000000000000000000063A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C6E70000424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE008C101000EFEFEF00EFEFEF00E7E7E700DEDE
      DE00DEDEDE008408080000000000000000000000000084080800E7E7E7008408
      0800840000008400000084000000840000008400000084000000840000000000
      0000840000000000000000000000000000000063A50084E7E7000084C60000A5
      E7000084C6000084C6000084C6000084C6000084C6000084C6000084C60042C6
      E70084E7E70042C6E70000424200000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE008C101000F7F7F700EFEFEF00EFEFEF00E7E7
      E700DEDEDE008408080000000000000000000000000084080800EFEFEF008408
      0800840808008408080084080800840000008400000084000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C6000000
      00000063A50000000000F7FFFF00F7FFFF00C6C6C600C6C6C600F7FFFF000084
      C60084E7E70084C6E70000424200000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084080800840808008408
      08008408080084080800840808008C1010008408080084080800840808008408
      0800840808008408080000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008484840084848400F7FFFF000063
      A50084E7E70084C6E70000424200000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000FF0084848400000000000000000084000000840000008400
      0000840000008400000000000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084000000840000000000
      0000000000000000000000000000000000000063A50042C6E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008463630084A5A500C6DEC6000063
      A50084E7E70084C6E70000424200000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484008484
      8400848484000000FF000000FF00848484000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000000000000840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C6000000
      00000063A50000000000F7FFFF00C6DEC6004242420042424200F7FFFF000063
      A50084E7E70084C6E70000424200000000000000000000000000000000000000
      0000000000008484840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C600C6DE
      C6000084C6000000000000000000000000000000000000000000000000000063
      A50084E7E7000042840000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400840000008400000084000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000840000000000
      0000000000000000000000000000000000000000000042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200C6C6C6000000000000000000000000000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5B500ADAD
      AD009C9C9C008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008400
      0000840000008400000000000000840000000000000084848400848484000000
      0000000000008484840084000000840000008400000084000000000000000000
      0000000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200C6C6C60042424200000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5
      B500ADADAD008400000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400840000008400
      000084000000000000008400000000000000848484000000000000000000C6C6
      C600000000000000000084000000840000008400000000000000000000000000
      00000000000000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600424242004242420042424200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600B5B5B5008400000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000084000000840000008400
      0000000000008400000000000000000000008484840000000000C6C6C6000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000084000000
      00000000000000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60042424200C6C6C60042424200000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      0800840000008400000000000000000000000000000084848400848484000000
      000084848400C6C6C600C6C6C600C6C6C6008484840000000000840000000000
      00008400000000000000000000000000000000000000C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000008400000084000000
      0000000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200C6C6C600C6C6C600424242000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000008400000000000000000000008484840084848400000000008484
      8400C6C6C6000000000000000000C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000840000008400000084000000
      84000000840000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200C6C6C60000000000C6C6C600424242000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      000084000000840000000000000000000000848484000000000084848400C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000000000000000C6C6C600000000000000000000008400000084000000
      0000000000000000840000000000000000000000000042424200424242004242
      420042424200424242004242420042424200424242004242420042424200C6C6
      C60000000000C6C6C60042424200424242000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5B500ADAD
      AD009C9C9C008400000000000000000000008484840000000000C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000000000000084848400000000000000000000000000000084000000
      0000000000000000840000000000000000000000000000000000424242000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200C6C6C60042424200C6C6C600424242000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5
      B500ADADAD008400000000000000000000008484840000000000C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200000000001818180018181800181818001818180018181800000000004242
      4200424242004242420042424200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600B5B5B5008400000000000000000000008484840000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840000000000000000000000000000000000000084000000
      0000000000000000840000000000000000000000000000000000000000004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000424242000000000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      080084000000840000000000000000000000000000008484840084848400C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000424242000000000018181800181818001818180018181800181818000000
      0000424242000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000424242000000000000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063A500424242000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC600C6DEC600F7FF
      FF0084E7E7004242420000424200000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200000000000000000042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000808080008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000063A50042C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC600C6DE
      C60084E7E70042C6E700004242000000000042424200D6D6D600D6D6D600CECE
      CE00CECECE00C6C6C600B5B5B500ADADAD00A5A5A5009C9C9C009C9C9C004242
      42000000000042424200424242004242420042424200DEDEDE00D6D6D600D6D6
      D600CECECE00C6C6C600BDBDBD00ADADAD00A5A5A5009C9C9C009C9C9C004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DE
      C60084E7E70042C6E700004242000000000042424200DEDEDE00D6D6D600D6D6
      D600CECECE00CECECE00C6C6C600B5B5B5004242420042424200424242004242
      42004242420042424200424242000000000042424200DEDEDE00181818001818
      1800D6D6D60018181800181818001818180018181800181818009C9C9C004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00CECECE00181818008C8C8C00C6C6C600C6C6C6008484
      84004242420042424200000000000000000042424200E7E7E700DEDEDE00DEDE
      DE00D6D6D600D6D6D600CECECE00C6C6C600BDBDBD00ADADAD00A5A5A5004242
      4200000000000000000000000000000000001010100000000000000000000000
      0000181818001818180000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C60084A5
      A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D6004242420094949400C6C6C600C6C6C600FFFF00008484
      84008484840042424200000000000000000042424200E7E7E700181818001818
      1800DEDEDE001818180018181800181818001818180018181800ADADAD004242
      4200000000000000000000000000000000001010100018181800000000002121
      2100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063A50084C6E7000084C60084A5
      A50084A5A500A5A5A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200E7E7E700DEDEDE00DEDE
      DE00D6D6D600D6D6D60042424200C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C60042424200000000000000000042424200EFEFEF00E7E7E700E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600BDBDBD004242
      4200000000000000000000000000000000001818180021212100292929002929
      2900292929000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000063A50084E7E7000084C6000084
      C6000084C6000084C6000084C6000084C6000084C6000084C6000084C6000084
      C60084E7E70042C6E700004242000000000042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE00D6D6D60042424200C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C60042424200000000000000000042424200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D60031313100CECECE00C6C6C6004242
      4200000000000000000000000000000000001818180021212100292929002929
      2900292929002929290029292900212121000000000000000000840000008400
      0000840000000000000000000000000000000063A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C6E700004242000000000042424200EFEFEF00E7E7E700E7E7
      E700DEDEDE00DEDEDE004242420094949400FFFF0000FFFF0000C6C6C6008484
      84008484840042424200000000000000000042424200F7F7F700313131003131
      3100E7E7E700E7E7E700DEDEDE0031313100CECECE0031313100CECECE004242
      4200000000000000000000000000000000001818180021212100292929002929
      2900393939002929290029292900000000000000000000000000000000008400
      0000840000008400000000000000000000000063A50084E7E7000084C60000A5
      E7000084C6000084C6000084C6000084C6000084C6000084C6000084C60042C6
      E70084E7E70042C6E700004242000000000042424200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE001818180094949400C6C6C600C6C6C6008484
      84001818180000000000000000000000000042424200F7F7F70031313100D6D6
      D60031313100E7E7E70031313100CECECE0031313100CECECE00424242004242
      4200424242000000000084000000840000001818180021212100292929002929
      2900292929002929290000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000063A50084C6E7000084C6000000
      00000063A50000000000F7FFFF00F7FFFF00C6C6C600C6C6C600F7FFFF000084
      C60084E7E70084C6E700004242000000000042424200EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700DEDEDE00DEDEDE004242420042424200424242004242
      4200000000000000000000000000000000004242420000000000F7F7F7004242
      4200D6D6D60031313100CECECE0031313100C6C6C60031313100C6C6C600C6C6
      C600C6C6C6003131310084000000840000001818180021212100292929002929
      2900292929000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000063A50084E7E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008484840084848400F7FFFF000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D6004242
      4200000000000000000000000000000000004242420042424200424242004242
      420042424200C6C6C60031313100C6C6C60031313100C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000001010100018181800212121002121
      2100000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000063A50042C6E7000084C6000000
      00000063A50000000000C6DEC600C6DEC6008463630084A5A500C6DEC6000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00E7E7E700E7E7E7004242420042424200424242004242
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000031313100C6C6C60031313100C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000001010100010101000181818000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000063A50084E7E7000084C6000000
      00000063A50000000000F7FFFF00C6DEC6004242420042424200F7FFFF000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00E7E7E70042424200C6C6C600424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6003131310084000000840000001010100010101000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000063A50084E7E7000084C600C6DE
      C6000084C6000000000000000000000000000000000000000000000000000063
      A50084E7E7000042840000000000000000004242420000000000F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00E7E7E7004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000313131001010080010100800101008001010
      0800101008000000000084000000840000000808080000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000084848400848484008484
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
      00000000000000000000000000000000000000000000F7CEA500C66300000000
      000000000000C6A50000C6630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242003939
      3900393939003939390000000000000000000000000000000000000000000000
      000021212100212121000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7CEA500C6A5
      2100C6A52100C6A5000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200393939000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0042424200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7CE
      A500C66300000000000000000000000000000000000000000000000000000000
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
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F781000000000000
      F381000000000000C181000000000000D381000000000000D781000000000000
      DFFF000000000000FFFF00000000000081810000000000008181000000000000
      8181000000000000C3C3000000000000C3C3000000000000E7E7000000000000
      E7E7000000000000FFFF000000000000E3C7F81FFFFFFFFF8081E007F701FFFF
      0000C003F301FFE300008001C101FC1100018001D301F81000000000D701F010
      80000000DF010010C0000000DFFF0010F0000000FFFB0010F001000080FB0010
      E003000080EB0010E00F800180CBF000C07F80018083F800C07FC00380CFFC01
      E0FFE00780EFFFE3F8FFF81FFFFFFFFFF81FFFFFFC8F800FE0070007F807800F
      C00300078003800080010003800180C08001000381008000000000008080800F
      000000000101A007000000000001A407000000030010A007000000030011A00F
      000000070023A001800100078203A701800100078207A001C0030007830FBFEF
      E0070007839F800FF81FFFFFC7FFFFFFFFFFFFFFFFFFFFFF4C03CC03F8010000
      37FFB7FFFFFF00009403B403F801000087FFB7FF07FF0000A403B40388010800
      C3FFCFFFDFFF0000FBFFFFFFFFFF0000FFFFFFFFDFFF00004C03CC0388010000
      37FFB7FF07FF00009403B403F801000087FFB7FFFFFF0000A403B403F8010000
      C3FFCFFFFFFF0000FBFFFFFFFFFF0000FFFFFFDFFFFFFEFFFFFFFF07FDFFFFFF
      F3FFFC01FFFFC27FE1FFF000C4FFFFFFC1FFC000FFFFC20083030000C401FFFF
      87810000DFFFDE0787810001CC0F9E078781000707FF07FF8701001FCC039E00
      8001C07FDC03DE00801DF1FFFFFFFFFFC03FFEE8C403C200E07FFEABFFFFFFFF
      FFFFFE4BFDFFFEFFFFFFFEEBFFFFFFFFFFFF8DFFFE7FFFFFF111C5FFF81FFFFF
      F755C00FE007FFCFFBA9E00FC003FF87F9FBE807C003FF83FFFDE004C003C0C1
      8087F003C00381E1CC99C307E00781E1CEF9330FF00F81E1CEF1E001F81F80E1
      CFE3E02300008001CFFB01710000B801CFB9F7B80000FC03CFC1F7BC0000FE07
      87E3F7FF0000FFFFFFFFFFFF0000FFFFFFFFFC008003FFC38003FC000001FF99
      8003FC000001F99C8003FC000001809C8003E0000001009C8003E0020001F989
      8003E0000001FB838003E0070001FF9F800380070001FF9F800380170001831F
      80038007140123BF8003801F140133F9820B801F140193808003805F1401E300
      FFFF801F07E347F9FFFFFFFF80078FFBFFF7FF7FFFFFFFFFFFE3FE3FC0078003
      FFC1FC1F80078003FF82803F00018003E005007F00018003C00B10DF00018003
      8017209F0000800B060F400700048003080F0C9B80088003100F0CDBDFE08003
      100F81FFE8218003018FC3DBEFF78003818FFFD9F417800BC01FFFE0F7FB8003
      E03FFFF9F803FFFFF07FFFFBFFFFFFFF8003FFFFFFFFFFFF0001000C000FF9FF
      00010008000FF9FF00010001000FF3C700010003000F73C700010003000F27FF
      00010003000F07C700010003000F00C700010003000F01E300010007000403F1
      1401000F400006381401000F00000E381401000FF8001E381401001FFC003F01
      07E3403FFE047F838007007FFFFFFFFFFFFFFFFFF801FFFFFFFFFFFFF0018001
      FFFFEFFFE0018001FFFFC7FFC0018001FFFFC3FFC0018001EFFFE3F7C0018001
      EF83F1E7C0018001DFC3F8CFC0018001DFE3FC1FC0018001DFD3FE3FC0018001
      EF3BFC1FC00180FFF0FFF8CFC001C199FFFFE1E7C001FF00FFFFC3F3C001FF81
      FFFFC7FFC001FFC3FFFFFFFFC001FFE7FF1FFFFFFFFFFFFFFE0FFFFFFC00FFFF
      FC01FE008000FFFFFC40FE000000FFFFFC40FE000000FFFFFC1980000000FFF7
      F80380000005C1F7F00F80000003C3FBE03F80000003C7FBC07F80050003CBFB
      80FF80030003DCF701FF80070003FF0F03FF81FF0003FFFF87FF80FF8007FFFF
      CFFF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmMemo: TPopupMenu
    AutoHotkeys = maManual
    Images = ilToolBarColor
    Left = 136
    Top = 264
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
    object N9: TMenuItem
      Caption = '-'
    end
    object Highlighting1: TMenuItem
      Caption = 'Syntax Highlighting'
      object Ldraw1: TMenuItem
        Action = acHighlightLdraw
      end
      object C1: TMenuItem
        Action = acHighlightCpp
      end
      object Pascal1: TMenuItem
        Action = acHighlightPascal
      end
    end
  end
  object pmPolling: TPopupMenu
    Left = 104
    Top = 264
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
    Left = 8
    Top = 328
  end
  object pmL3P: TPopupMenu
    Left = 72
    Top = 264
    object MarkAllForFixing1: TMenuItem
      Action = acECMarkAll
    end
    object MarkAllofSelectedErrorType1: TMenuItem
      Action = acECMarkAllTyped
    end
    object UnmarkAll1: TMenuItem
      Action = acECUnMarkAll
    end
    object UnmarkAllofSelectedType1: TMenuItem
      Action = acECUnMarkAllTyped
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object AutofixSelectedError2: TMenuItem
      Action = acECFixError
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object AutofixAllCheckedErrorsofSameType1: TMenuItem
      Action = acECFixAllMarkedErrorsTyped
    end
    object AutofixCheckedErrors1: TMenuItem
      Action = acECFixAllMarkedErrors
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object AutofixAllErrorofSameType1: TMenuItem
      Action = acECFixAllErrorsTyped
    end
    object AutofixAllErrors2: TMenuItem
      Action = acECFixAllErrors
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object CopyErrorListToClipboard2: TMenuItem
      Action = acECCopy
    end
  end
  object SynLDRSyn: TSynLDRSyn
    Left = 40
    Top = 296
  end
  object SynEditPrint: TSynEditPrint
    Copies = 1
    Header.FrameTypes = [ftBox, ftShaded]
    Header.DefaultFont.Charset = DEFAULT_CHARSET
    Header.DefaultFont.Color = clBlack
    Header.DefaultFont.Height = -13
    Header.DefaultFont.Name = 'Arial'
    Header.DefaultFont.Style = []
    Footer.DefaultFont.Charset = DEFAULT_CHARSET
    Footer.DefaultFont.Color = clBlack
    Footer.DefaultFont.Height = -13
    Footer.DefaultFont.Name = 'Arial'
    Footer.DefaultFont.Style = []
    Margins.Left = 25.000000000000000000
    Margins.Right = 15.000000000000000000
    Margins.Top = 25.000000000000000000
    Margins.Bottom = 25.000000000000000000
    Margins.Header = 15.000000000000000000
    Margins.Footer = 15.000000000000000000
    Margins.LeftHFTextIndent = 2.000000000000000000
    Margins.RightHFTextIndent = 2.000000000000000000
    Margins.HFInternalMargin = 0.500000000000000000
    Margins.MirrorMargins = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Colors = True
    Highlighter = SynLDRSyn
    TabWidth = 8
    Color = clWhite
    Left = 9
    Top = 296
  end
  object pmToolbars: TPopupMenu
    Left = 40
    Top = 264
    object Files1: TMenuItem
      Action = acFileToolbar
    end
    object Editing1: TMenuItem
      Action = acEditingToolbar
    end
    object SearchandReplace1: TMenuItem
      Action = acSearchToolbar
    end
    object Windows1: TMenuItem
      Action = acWindowsToolbar
    end
    object ExternalPrograms2: TMenuItem
      Action = acExternalsToolbar
    end
    object ReplaceColorShortcut1: TMenuItem
      Action = acColorToolbar
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'dat'
    Filter = 
      'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|Pascal, Delp' +
      'hi (*.pas,*.dpr)|*.pas;*.dpr|C,C++(*.c)|*.c|All Files (*.*)|*.*'
    FilterIndex = 0
    Options = [ofAllowMultiSelect, ofFileMustExist, ofEnableSizing]
    Title = 'Choose LDraw File...'
    Left = 8
    Top = 200
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
    Top = 200
  end
  object SynPasSyn: TSynPasSyn
    Left = 72
    Top = 296
  end
  object SynCppSyn: TSynCppSyn
    DefaultFilter = 'C++ Files (*.c,*.cpp,*.h,*.hpp)|*.c;*.cpp;*.h;*.hpp'
    Left = 104
    Top = 296
  end
  object http: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProtocolVersion = pv1_0
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = 0
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 72
    Top = 200
  end
  object SynEditSearch: TSynEditSearch
    Left = 136
    Top = 296
  end
  object pmExternal: TPopupMenu
    Left = 168
    Top = 264
  end
end
