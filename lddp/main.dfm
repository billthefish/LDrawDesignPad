object frMain: TfrMain
  Left = 205
  Top = 123
  Width = 792
  Height = 434
  VertScrollBar.Range = 49
  AutoScroll = False
  Caption = 'LDDesignPad for LDraw'
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
    Top = 369
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
    Height = 27
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
      Left = 637
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
      object ToolButton24: TToolButton
        Left = 74
        Top = 0
        Action = acUserDefined
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
      Left = 478
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
      Left = 569
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
      Left = 148
      Top = 2
      Width = 314
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
      object ToolButton9: TToolButton
        Left = 291
        Top = 0
        Action = acErrorCheck
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
      object N13: TMenuItem
        Caption = '-'
      end
      object Comment1: TMenuItem
        Action = acCommentBlock
      end
      object Uncomment1: TMenuItem
        Action = acUncommentBlock
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
        object UserDefinedProgram1: TMenuItem
          Action = acUserDefined
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
            OnClick = Pollevery3sec1Click
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
      object N6: TMenuItem
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
      object TrimLines1: TMenuItem
        Action = acTrimLines
      end
      object InlinePart2: TMenuItem
        Action = acInline
      end
      object ReverseWinding1: TMenuItem
        Action = acReverseWinding
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object AutoRoundSelection1: TMenuItem
        Action = acAutoRound
      end
      object CombineTrianglesIntoQuad1: TMenuItem
        Action = acTriangleCombine
      end
      object ConvertBitmaptoLDraw1: TMenuItem
        Action = acBMP2LDraw
      end
      object GenrateBendibleObject1: TMenuItem
        Action = acBendableObject
      end
      object ProcessthroughLSynth1: TMenuItem
        Action = acLSynth
      end
      object ViewModelTree1: TMenuItem
        Action = acModelTreeView
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object miMiscOptions: TMenuItem
        Action = acOptions
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
      Caption = 'Find...'
      Hint = 'Find text|Find specified text'
      ImageIndex = 12
      ShortCut = 16454
      OnExecute = acFindExecute
    end
    object acReplace: TAction
      Category = 'Search'
      Caption = 'Replace...'
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
      OnExecute = acErrorCheckExecute
    end
    object acOptions: TAction
      Category = 'Misc'
      Caption = 'Options...'
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
      Caption = 'acincIdent'
      Hint = 'Indent'
      ImageIndex = 26
      OnExecute = acincIndentExecute
    end
    object acDecIndent: TAction
      Category = 'Editor'
      Caption = 'Un-Indent'
      Hint = 'Un-Indent'
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
      OnExecute = acCommentBlockExecute
    end
    object acUncommentBlock: TAction
      Category = 'Editor'
      Caption = '&Uncomment'
      Hint = 'Uncomment a commented block'#13#10'by removing leading zeros'
      ImageIndex = 28
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
      Caption = 'User Defined Program'
      Hint = 'User Defined Program|Execute User Defined program'
      ImageIndex = 34
      OnExecute = acUserDefinedExecute
    end
    object acReplaceColor: TAction
      Category = 'Search'
      Caption = 'Replace Color...'
      Hint = 'Search and replace LDraw colors with a color dialogue'
      ImageIndex = 35
      OnExecute = acReplaceColorExecute
    end
    object acSelectAll: TAction
      Category = 'Editor'
      Caption = 'Select all'
      Hint = 'Select all'
      ShortCut = 16449
      OnExecute = acSelectAllExecute
    end
    object acFindNext: TAction
      Category = 'Search'
      Caption = 'Find Next'
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
      Caption = 'Reverse Winding'
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
      Caption = 'Auto Round Selection'
      OnExecute = acAutoRoundExecute
    end
    object acSortByPosition: TAction
      Category = 'Misc'
      Caption = 'acSortByPosition'
    end
    object acECCopy: TAction
      Category = 'Error Check'
      Caption = 'Copy Error List To Clipboard'
      Enabled = False
      OnExecute = acECCopyExecute
    end
    object acTriangleCombine: TAction
      Category = 'Editor'
      Caption = 'Combine Triangles Into Quad'
      OnExecute = acTriangleCombineExecute
    end
  end
  object ilToolBarColor: TImageList
    Left = 40
    Top = 232
    Bitmap = {
      494C010128002C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B000000001001000000000000058
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
      0000000000000000000000000000000000000000000000008810881088100000
      0000000000000821082188100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000881088101042104288318810
      8810000008219052186318638810881000000000000000000000000090629062
      8031803190629052000000000000000000000000000000000000000000000000
      00004702690A8C16AE2212373447575300000000000000000000000000000000
      0000000000000000000000000000000000008810104210421042104288319052
      9052881090521863186318631863186388100000000000009452883188319452
      9452906290628031803194520000000000000000000000000000000000000000
      000047024702690A8C16CF2A1237344700000000000000000000000000000000
      0000000000000000000000000000000000008810104210421042104288319052
      9052082110421863186318631863905208210000000094521863186318631863
      9452945294529062906290629452000000000000000000000000000000000000
      0000470247024702690AAE22CF2A123700000000000000000000000000000000
      0000000000000000000018631042000000008810104210421042903118639452
      9452082108211042104218639052082100000000000080729872987298729872
      9872107394529452945290628031000000000000000000000000000000000000
      000047024702470247028C16AE22CF2A00000000000000000000000000009052
      1042104210421042000018631042E07F00008810104290319031905290521863
      1863945294520821082110420821881088100000987298727863786378637863
      7863186310739452945290629062905200000000000000000000000000000000
      00004702470247024702690A8C16AE2200000000000000000000000090521863
      1863186318631042000018631042186300000000881010429052905288108810
      1042186318639452945208219052905288100000907378637863786378637863
      7863786318631073945294529062906200000000000000000000000000000000
      000047024702470247024702690A8C1600000000000000000000104218631863
      1863186318631042000018631042004200000000000088108810104208211863
      8810881010421863186394529452905288100000907378637863786378637863
      8831881078631863107394529062803100000000000000000000000000000000
      0000000000000000000000000000000000001042104210421042883118631863
      1863186394521042000018631042E07F00000000000000000000082178637863
      18631863881088109052186318639452881000009073FE7FFE7F786378639052
      8810082108211063987294529452803100000000000000000000000000000000
      0000000000000000000000000000000000007863786378637863903118631863
      18639452945210420000945210421863000000000000000000000821FE7FFE7F
      78637863186308219052000390528810000000007863FE7FFE7F786310428810
      1863786310420000105218639452906200000000E570067128756A796A79AD7D
      AD7D000000000000000000000000000000001863186318631863903118631863
      1863945294521042000094529031E07F00000000000000000821FE7FFE7FFE7F
      FE7F7863082110420871881088100000000000007863FE7FFE7F104288101863
      7863786378631063906218639452906200000000C36CE570067128756A79AD7D
      AD7D000000000000000000000000000000000000000000000000104218631863
      9452945294521042000094529031186300000000000000000821FE7FFE7FFE7F
      FE7FFE7F08218810881000000000000000000000000078639452881018637863
      7863786378637863987218638831000000000000C36CC36CE570067128756A79
      AD7D000000000000000000000000000000000000000000000000000018631863
      9452945294521042FE7F9452903100420000000000000821FE7FFE7FFE7FFE7F
      FE7F08210000000000000000000000000000000000009452FE7F7863FE7FFE7F
      FE7F786378637863987218639452000000000000C36CC36CC36CE57006712875
      6A79000000000000000000000000000000000000000000000000000000001863
      9452945294521042FE7F94529031E07F0000000000000821FE7FFE7FFE7FFE7F
      FE7F08210000000000000000000000000000000000000000945278637863FE7F
      FE7F786378639872006294520000000000000000C36CC36CC36CE57006712875
      2875000000000000000000000000000000000000000000000000000000000000
      0000000000000000FE7F945290310000000000000000000008210821FE7FFE7F
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
      8810000088108810881000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000821082198029802
      9802980218020002082108210000000000000821082108210821082108210821
      0821082108210821082108210000000000000000000000000000000088107863
      88238810907380528052881000000000000000000000FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7F000000000000000000000000000008211802980298029802
      9802980298020012803300210821000000000821186318631863186318631863
      1863186318631863186308210000000000000000881088108810881088108810
      00130013881000429073907388100000000000000000FE7F1863186318631863
      90319031903100000000000000000000000000000821180218233E5398123E53
      98029802980298020012803300420821000008219452FE7FFE7F786318631863
      9452945294529452881088108810000000000000881000628051006288108831
      88108002800288109073805280528810000000000000FE7F1863186318631863
      903100000000000039253925B735F53D00000000082198129043885394523E53
      98129802980298029802001200020821000008219452FE7FFE7F786378631863
      1863186318631863881090538810000000000000881000628051007288100821
      00008810800280028810004288739073881000000000FE7F1863186318631863
      9031903190310000000000000000000000000821980218238863904394521823
      3E53981298029802980218029001883108210821945278631863945294529042
      9042103288108810081290430812881088100000881000620062807288100821
      08210000881088238002881088738052881000000000FE7F1863186318631863
      186318631863FE7F000000000000000000000821980210038053904394523E53
      1823981298029802980298029001900108210821945278637863786318531053
      1053104388109043904390339043905388100821881000728072807288108810
      0000881088238810800200028810907300000000000000001863903190310000
      0000000000000000000000000000000000000821980210038853904388029452
      9802980298029802980298029001900108210821945278631863945290429042
      9032103288108810081208230812881088100821807280728072807280728810
      8810882388108831881000020002881000000000000000001863903100000000
      292729270B2FED36ED3600000000000000000821900180538053805390430063
      18239802980298029802980290019001082108219452FE7FFE7F786378631853
      1853185318531853881090430821000000000821807280728072807280728810
      8823881088310821000088100002000288100000000000001863903190310000
      0000000000000000000000000000000000000821880290439043805380538073
      10039802980210421042180290011001082108219452FE7FFE7F786318631863
      9452945294529452881088108810000000000821807280728072887288728810
      8810905210420821000088100002882300000000000000001863186318631863
      186318631863FE7F000000000000000000008810805380539043805380531003
      88021823980210038053883190018831082108219452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7F08210000000000000821807288720873087308738810
      8812881010420000881000028823000000000000000000001863903190319031
      9031000000000000000000000000000000000000881080538073805300638053
      8053905290520043805300439001082100000821903190319031903190319031
      9031903190319031903108210000000000000000881088108810881088100000
      9033881288108810000288238810000000000000000000001863903100000000
      000000006374C66C29652965AD5D000000000000881088028053903188028053
      9043880380530063805300021001082100000821182318231823982298229812
      9812181218021802180208210000000000000000881010429031082188100000
      8810903388120812882388100000000000000000000000001863903190319031
      9031000000000000000000000000000000000000000088109001980218238802
      8053805380738073000210010821000000000821182318231823982298229812
      9812181218021802180208210000000000000000082118639052903188100000
      0000881090339033881000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008810881098029802
      8802880288029802082108210000000000000821082108210821082108210821
      0821082108210821082108210000000000000000082118631863104288100000
      0000000008210821000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000088100821
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
      1000100010001000100010001000100000000821082108210821082108210821
      082108210821082108210821082108210821007C007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810186318631863186318639452
      9452945294529452945290529052905208210000007C007C0000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000008810186318639452082194521863
      18631863186318631863945294529052082100000000007C007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C007C007C007C007C00000000
      0000000000000000000000000000000000008810186394520821945208219452
      186318631863186318631863945290520821000000000000007C007C00001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000007C007C007C000010001000
      1000100010001000100010001000100000008810186308211863000094520821
      1863900110011001900198021863905208210000000000000000007C007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C0000000000000000
      0000000000000000000000000000000000008810786394520821186308219452
      18631863186318631863186318639452082100000000000000000000007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810786318639452082194521863
      1863186318631863186318631863945208210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C0000000000000000
      0000000000000000000000000000000000008810786378631863186318631863
      186318631863186318631863186394520821007C000000000000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000007C007C007C000010001000
      1000100010001000100010001000100000008810786378639452082194521863
      186318631863186318631863186394520821007C007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C007C007C007C007C00000000
      0000000000000000000000000000000000008810FE7F94520821786308219452
      1863186318631863186318631863945208210000007C007C0000000000001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000008810FE7F08217863881078630821
      18639001100110019001980218639452082100000000007C007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810FE7F94520821786308219452
      186318631863186318631863186318630821000000000000007C007C00001000
      1000100010001000100010001000000000000000000000000000000000001000
      1000100010001000100010001000000000000000000000000000000010001000
      1000100010001000100010001000100000008810FE7F78639452082194527863
      7863186318631863186318631863186308210000000000000000007C007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810FE7FFE7FFE7FFE7FFE7F7863
      78637863186318631863186318631863082100000000000000000000007C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810881088108810881088108810
      8810881088108810881088108810881008210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000040000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004080600040004000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000883188310000
      0000000000000000000000000000000000000000000000000000000000000040
      8060806080600040004000400040004000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008810100390038831
      0000000000000000000000000000000000000000000000000000004080608060
      8060806080600040004000400040004080600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088101003901310030821
      0000000000000000000000000000000000000000000000408060806080608060
      8060806080608060004000400040004080600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000883190029013900208210000
      00008831630C630C630C630C630C000000000040806080608060806080608060
      8060004080708070807080600040004080600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000883190039003883100000000
      0000000088319002900210031003082100008060806080608060806080600040
      807080708070907180700040806080608060000000001F000000000000000000
      0000000000000000000000000000000000000000000017000000000000000000
      0000000000000000000000000000000000000000881090131003104200000000
      0000000018639031100390331833082100008060806080608060806080700871
      8870807080708060807080709071087100000000000017001F00000000000000
      0000000000000000000000000000000000000000170017000000000000000000
      0000000000000000000000000000000000000000881078631003104200000000
      0000000088319002182390437863082100008060806080608070807088708070
      80608070087180700871087100000000000017001700170017001F0000000000
      0000000000000000000000000000000000001700170017001700170000000000
      0000000000000000000000000000000000000000881090131003883100000000
      0000883190029013900394527863082100008060807080708870007C80608070
      8060887080709071000000000000000000000000000017001700000000000000
      0000000000000000000000000000000000000000170017000000000000000000
      0000000000000000000000000000000000000000883190039003900208210821
      8831900278639003883118638831883100000000000088708070087180700871
      9071087100000000000000000000000000000000000017000000000000000000
      0000000000000000000000000000000000000000000017000000000000000000
      0000000000000000000000000000000000000000104290029003100310031003
      1003786310038831000000000000883100000000000000000000887090710871
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088311003901390139013
      9003100388310000000000000000000000000000000000000000000000000000
      1F000000000000001F0000001F001F001F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001042883188318831
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000001000
      0000000000000000000000000000000000000000000000000000000000000000
      0042E07F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007C007C007C
      0000007C007C007C0000007C007C007C000000000000007C007C007C00000000
      0000000000000000000000000000000000000000000000000000000000420042
      0042E07FE07FE07F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007C00000000
      0000007C0000007C0000007C0000007C0000000000001000007C007C007C1000
      0000104200000000100000000000000000000000000000000042004200420042
      0042E07FE07FE07FE07FE07F0000000000000000000000000000000000000000
      00000000000088318831000000000000000000000000000000000000007C0000
      00000000007C0000007C0000007C007C00000000000000001000007C007C007C
      1002100210021863000000000000000000000000000000420042004200420042
      00420042E07FE07FE07FE07FE07F000000000000000000000000000000000000
      00000000883190031003881000000000000000000000000000000000007C007C
      000000000000000000000000007C0000000000000000000000000000007C007C
      007C186318630000186310000000000000000000000000420042004200420042
      E07FE07F00420042E07FE07FE07F000000000000000000000000000000000000
      0000000008211003901310038810000000000000000000000000000000000000
      0000000000000000000000000000007C0000000000000000100000001002007C
      007C007C100018631002000000001000100000000000004200420042E07FE07F
      E07FE07FE07FE07F00420042E07F0000000000000000630C630C630C630C630C
      8831000000000821900290139002883100000000007C007C007C007C007C007C
      007C0000007C007C007C007C0000000000000000000000000000100018631863
      007C007C007C186310021042000000000000000000000042E07FE07FE07F0042
      004200420042E07FE07FE07F0042000000000000082110031003900290028831
      00000000000000008831900390038831000000000000007C007C00000000007C
      007C0000007C007C00000000007C007C00000000000000000000100018630000
      0000007C007C007C10020000000000000000000000000000E07FE07F00420042
      0042004200420042E07FE07F0000000000000000082118339033100390311863
      00000000000000001042100390138810000000000000007C007C000000000000
      007C00000000000000000000007C007C00001000000000000000000010420000
      00001863007C007C007C00000000000000000000000000000000E07F00420042
      0042004200420042E07F00000000000000000000082178639043182390028831
      00000000000000001042100378638810000000000000007C007C000000000000
      007C0000000000000000007C007C007C00000000000000001002186310001002
      186318631002007C007C007C100000400000000000000000000000000042E07F
      E07FE07FE07F0042000000000000000000000000082178639452900390139002
      88310000000000008831100390138810000000000000007C007C000000000000
      0000000000000000007C007C007C000000000000000000000000186318630000
      1000000010000000007C007C007C000000001000100010001000100010000042
      0042004200421000100010001000100010000000883188311863883190037863
      90028831082108219002900390038831000000000000007C007C000000000000
      000000000000000000000000007C000000001000000000000000000000000040
      00000000000000000000007C007C007C00009C739C739C739C7310009C739C73
      9C7310001000100010009C731000100010000000883100000000000088311003
      78631003100310031003900390021042000000000000007C007C000000000000
      00000000007C000000000000007C007C00000000000000000000000000000000
      000000000000000000000000007C007C007C9C7310001000100010009C731000
      10009C731000100010009C731000100010000000000000000000000000008831
      10039003901390139013100388310000000000000000007C007C000000000000
      000000000000007C007C007C007C007C00000000000000000000000000000000
      0000000010000000000000000000007C007C9C7310001000100010009C731000
      10009C73100010009C7310009C73100010000000000000000000000000000000
      1042883188318831883110420000000000000000007C007C007C007C00000000
      0000000000000000007C007C007C000000000000000000000000100000000000
      0000000000000000000000000000000000009C7310001000100010009C731000
      10009C73100010009C7310009C73100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7310001000100010009C739C73
      9C73100010009C731000100010009C7310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003004
      3004300430043004100010001000100010000000004100410041004100410041
      0041004100410041004100410041000000000000000000000000000000000000
      0000000000000000000000001042000000000000300410001000100010001000
      5008100010001000100010001000000000000000000000000000000000003004
      9C737B6F7B6F5A6B39671863D65A945210008051082100621863186318631863
      1863786378637863FE7F90730821002100000000000000000000000000000000
      0000000000001042000000000000104200000000300439671863F75EB5569452
      500839671863F75EB55694521000000000000000000000000000000000003004
      BD779C737B6F7B6F5A6B39671863D65A10008051087300621863C618A514A514
      84108410630C42084208907308730021000000000000000000000000007C1042
      000000000000104200000000000000001042000030045A6B39671863F75EB556
      50085A6B39671863F75EB5561000000000000000000000000000000000003004
      BD77BD779C737B6F7B6F5A6B3967186310008051107300621863186318631863
      18631863186318637863907308730021000000001042104210421042007C007C
      104200000000104200000000000000001042000030045A6B5A6B39671863F75E
      50085A6B5A6B39671863F75E1000000000000000000000003004300430045108
      3004300430043004300430043004100010008051107300621863C618A514A514
      84108410630C420818639073087300210000007C007C007C007C007C007C007C
      007C00000000104200000000000000001042000030047B6F5A6B5A6B39671863
      50087B6F5A6B5A6B3967186310000000000000000000000030049C737B6F3004
      1000100010001000100010001000000010008051107300629052945218631863
      18631863186318631863907308730021000000000000000000000000007C007C
      000000000000000010420000000000000000000030047B6F7B6F5A6B5A6B3967
      51087B6F7B6F5A6B5A6B39671000000000000000000000003004BD779C733004
      3004300410001000100010001000100010008051107300629052C618A514A514
      84108410630C42084208907308730021000000000000000000000000007C0000
      000000000000104200000000000000000000000030049C737B6F7B6F5A6B5A6B
      51089C737B6F7B6F5A6B5A6B3004000000000000000000003004BD77BD779C73
      7B6F7B6F5A6B3967186310000000000000008051907300620062006200620062
      0062006200620062006290730873002100000000000000000000000000000000
      00000000000010420000000000000000000000003004BD779C737B6F7B6F5A6B
      5108BD779C737B6F7B6F5A6B3004000000000000300430045108300430043004
      3004300430043004100010000000000000008051907390739073907390739073
      9073907390739073907390730873002100000000000000000000000000000000
      00000000000010420000000000000000000000003004BD77BD779C737B6F7B6F
      5108BD77BD779C737B6F7B6F300400000000000030049C733004100010001000
      1000100010001000000010000000000000008051907300628072006200620062
      0062006200620062087390730873002100000000000000001042000000000000
      00000000000010420000000000000000000000003004DE7BBD77BD779C737B6F
      5108DE7BBD77BD779C737B6F30040000000000003004BD773004300430043004
      100010001000100010001000000000000000805110730062000080510000FE7F
      FE7F18631863FE7F006290731073002100000000104200000000000010420000
      0000000000000000000000000000000000000000300430043004300430043004
      51083004300430043004300430040000000000003004BD77BD779C737B6F7B6F
      5A6B396718631000000000000000000000008051907300620000805100007863
      786310421042FE7F805190731073002100000000104200000000000010420000
      000000000000000000000000007C104200000000100010001000100010000000
      1000100010001000100000001000000000000000300430043004300430043004
      3004300410001000000000000000000000008051087300620000805100007863
      7863903190527863805190731073002100000000000000000000000010420000
      000000001042104210421042007C007C10420000100010001000100010001000
      1000100010001000100010001000000000000000100010001000100010001000
      100010000000100000000000000000000000805190730062000080510000FE7F
      786308210821FE7F805190731073002100000000000000000000000010420000
      0000007C007C007C007C007C007C007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000100010001000100010001000
      1000100010001000000000000000000000008051907300627863006200000000
      0000000000000000805190730041000000000000000010421042000000000000
      000000000000000000000000007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104210421042104210421042
      1042104210421042104210420000000000000000000000000000000000000000
      000000000000000000000000007C000000000000000000000000000000000000
      0000000000000000000010420000000000000000000000000000000000000000
      0000104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000104210421000000000000000000000000000000000000000
      1042100010000000000000000000000000000000000008210821082108210821
      0821082108210821082108210000000000000000300430043004300430043004
      3004100010001000100010001000000000000000000000000000000000000000
      0000000000001042104210001000100000000000000000000000000000001042
      1000100010001000000000000000000000000000082118631863186318631863
      18631863186318630821186300000000000000003004BD779C737B6F7B6F5A6B
      5A6B39671863D65AB556734E1000000000000000000000000000000000000000
      0000000010421042100010001000000010000000104210420000000010421000
      1000100010000000000000000000000000000821082108210821082108210821
      08210821082108210821082118630821000000003004BD77BD779C737B6F7B6F
      5A6B5A6B39671863D65AB5561000000000000000000000001042104210421042
      1042104210421000100010000000100000001042000000001863000000001000
      1000100000000000000000000000000000000821186318631863186318631863
      E07FE07FE07F18631863082108210821000000003004DE7BBD77BD779C737B6F
      7B6F5A6B5A6B39671863D65A1000000000000000000010421042000000000000
      0000000010001000100000001000000000001042000018630000186318631042
      0000000000000040000000000000000000000821186318631863186318631863
      1042104210421863186308211863082100000000300430043004300430043004
      3004300430043004300410001000000000000000104210420000104218631863
      1863104200001000000010000000000000000000186300001863186318631863
      0000000000400040000000000000000000000821082108210821082108210821
      0821082108210821082108211863186308210000100010001000100010001000
      1000100010001000100000001000000000001042104200001042186300000000
      1863186310420000000000000000000000000000000018631863186318631863
      0000004000400040004000400000000000000821186318631863186318631863
      1863186318631863082118630000186308210000300430043004300430043004
      3004100010001000100010001000000000001042000010421863000018631863
      1863186318631042000000000000000000000000186318631863000000001863
      0000000000400040000000000040000000000000082108210821082108210821
      08210821082108211863000018630821082100003004BD779C737B6F7B6F5A6B
      5A6B39671863D65AB556734E1000000000001042000018630000186318631863
      1863186318631863000000000000000000000000186318631863000000001042
      0000000000000040000000000040000000000000000008210000000000000000
      00000000000000000821186308211863082100003004BD77BD779C737B6F7B6F
      5A6B5A6B39671863D65AB5561000000000001042000018630000186318631863
      1863186318631042000000000000000000000000000000001042104200000000
      00000000000000000000000000000000000000000000000008210000630C630C
      630C630C630C00000821082108210821000000003004DE7BBD77BD779C737B6F
      7B6F5A6B5A6B39671863D65A1000000000001042000018631863186318631863
      0000000018631042000000000000000000000000000010420000000010420000
      0000000000000040000000000040000000000000000000000821000000000000
      0000000000000000000008210000000000000000300430043004300430043004
      3004300430043004300410001000000000000000104210421863186318631863
      0000000010421042104200000000000000000000000000000000000000000000
      000000000000004000000000004000400000000000000000000008210000630C
      630C630C630C630C000008210000000000000000100010001000100010001000
      1000100010001000100000001000000000000000000000001042186318631863
      1863104210420000000000000000000000000000000000000000000000000000
      0000000000000000004000400040004000400000000000000000082100000000
      0000000000000000000000000821000000000000100010001000100010001000
      1000100010001000100010001000000000000000000000000000104210421042
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008051082100621863186318631863
      1863786378637863FE7F90730821002100000821082108210821082108210821
      0821082108210821082100000000082108210821082108210821082108210821
      0821082108210821082100000000000000000000000000000000000021042104
      0000000000000000000000000000000000008051087300621863186318631863
      18631863786378637863907308730021000008215A6B5A6B396739671863D65A
      B5569452734E734E0821000008210821082108217B6F5A6B5A6B39671863F75E
      B5569452734E734E082100000000000000000000000000000000000042084208
      0000000000000000000000000000000000008051107300621863186318631863
      18631863186318637863907308730021000008217B6F5A6B5A6B396739671863
      D65A0821082108210821082108210821000008217B6F630C630C5A6B630C630C
      630C630C630C734E082100000000000000000000000000000000420842080000
      0000000000001000100010000000000000008051107300621863186318631863
      18631863186318631863907308730021000008217B6F7B6F5A6B5A6B39673967
      630C3146186318631042082108210000000008219C737B6F7B6F5A6B5A6B3967
      1863F75EB5569452082100000000000000004208000000000000630C630C0000
      0000000000001000100010000000000000008051107300629052945218631863
      18631863186318631863907308730021000008217B6F7B6F5A6B5A6B5A6B0821
      524A18631863FF031042104208210000000008219C73630C630C7B6F630C630C
      630C630C630CB556082100000000000000004208630C00008410841000000000
      0000000000000000000000000000000000008051107300629052905294529452
      18631863186318631863907308730021000008219C737B6F7B6F5A6B5A6B0821
      1863186318631863104218630821000000000821BD779C739C737B6F7B6F5A6B
      5A6B39671863F75E08210000000000000000630C8410A514A514A51400000000
      0000000000001000100010000000000000008051907300620062006200620062
      00620062006200620062907308730021000008219C739C737B6F7B6F5A6B0821
      1863FF0318631863104218630821000000000821BD77BD779C739C737B6F7B6F
      5A6BC6183967186308210000000000000000630C8410A514A514A514A514A514
      8410000000001000100010000000000000008051907390739073907390739073
      9073907390739073907390730873002100000821BD779C739C737B6F7B6F0821
      524AFF03FF031863104210420821000000000821DE7BC618C6189C739C737B6F
      C6183967C618396708210000000000000000630C8410A514A514E71CA514A514
      0000000000000000100010001000000000008051907300628072006200620062
      0062006200620062087390730873002100000821BD77BD779C739C737B6F7B6F
      630C524A186318631042630C0000000000000821DE7BC6185A6BC6189C73C618
      3967C6183967082108210821000010001000630C8410A514A514A514A5140000
      000000000000000000001000100010000000805110730062000080510000FE7F
      FE7F18631863FE7F006290731073002100000821BD77BD77BD779C739C737B6F
      7B6F0821082108210821000000000000000008210000DE7B08215A6BC6183967
      C6181863C618186318631863C61810001000630C8410A514A514A51400000000
      1000100010000000000000001000100010008051907300620000805100007863
      786310421042FE7F805190731073002100000821DE7BBD77BD77BD779C739C73
      7B6F7B6F5A6B5A6B08210000000000000000082108210821082108211863C618
      1863C61818631863186318631863100010004208630C84108410000000000000
      1000100010000000000000001000100010008051087300620000805100007863
      7863903190527863805190731073002100000821DE7BDE7BBD77BD77BD779C73
      9C730821082108210821000000000000000000000000000000000000C6181863
      C6181863186318631863186318631000100042084208630C0000000000000000
      100010001000000000000000100010001000805190730062000080510000FE7F
      786308210821FE7F805190731073002100000821DE7BDE7BDE7BBD77BD77BD77
      9C7308211863082100000000000000000000000000000000000000000000C618
      186318631863186318631863C618100010004208420800000000000000000000
      0000100010001000100010001000100000008051907300627863006200000000
      00000000000000008051907300410000000008210000DE7BDE7BDE7BBD77BD77
      9C73082108210000000000000000000000000000000000000000000000000000
      C618420442044204420442040000100010002104000000000000000000000000
      0000000010001000100010001000000000000000104210421042104210421042
      1042104210421042104210420000000000000821082108210821082108210821
      0821082100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000003E539801000000009802980100000000000000000000000000000000
      000000000000000000000000000000000000000000000821E71CE71CE71C0000
      000000000000000000008410841000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000000000000000000000000
      0000000000003E53981298129802000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008210821E71C00000000
      000000000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F082100000000000000000000000000000000
      00000000000000003E5398010000000000000000000000000000000000000000
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
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E3C7F81FFFFFFFFF8081E007F701FFFF
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
    object ChangeColor1: TMenuItem
      Action = acReplaceColor
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
    object Pollevery3sec1: TMenuItem
      Caption = 'Poll every 1 sec'
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollevery3sec1Click
    end
    object Pollevery5sec1: TMenuItem
      Caption = 'Poll every 2 secs'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollevery5sec1Click
    end
    object Pollevery30secs1: TMenuItem
      Caption = 'Poll every 5 secs'
      GroupIndex = 1
      RadioItem = True
      OnClick = Pollevery30secs1Click
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
  object SynEditRegexSearch: TSynEditRegexSearch
    Left = 168
    Top = 296
  end
end
