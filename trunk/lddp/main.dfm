object frMain: TfrMain
  Left = 220
  Top = 376
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
        Width = 200
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
    RowSize = 30
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
        Hint = 'Enable / Disable polling to external programs'
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
        Hint = 'New|Create New File'
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
        Hint = 'Tile'
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
      end
      object FileSaveItem: TMenuItem
        Action = acFileSave
      end
      object FileSaveAsItem: TMenuItem
        Action = acFileSaveAs
      end
      object Print1: TMenuItem
        Action = acFilePrint
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
      Hint = 'Command for editing'
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
      object StandardPartHeader1: TMenuItem
        Action = acInsertPartHeader
      end
      object UpdateHeader1: TMenuItem
        Action = acInsertUpdateLine
      end
      object BFCStatement2: TMenuItem
        Caption = 'BFC Statement'
        object CERTIFY1: TMenuItem
          Action = acInsertBFCCertifyCW
        end
        object CERTIFYCCW1: TMenuItem
          Action = acInsertBFCCertifyCCW
        end
        object INVERNEXT1: TMenuItem
          Action = acInsertBFCInvertnext
        end
        object CLIP1: TMenuItem
          Action = acInsertBFCClip
        end
        object NOCLIP1: TMenuItem
          Action = acInsertBFCNoClip
        end
      end
    end
    object Tools1: TMenuItem
      Caption = 'Tools'
      Hint = 'LDraw Tools'
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
      object N14: TMenuItem
        Caption = '-'
      end
      object ConvertBitmaptoLDraw1: TMenuItem
        Action = acBMP2LDraw
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
      Hint = 'Window commands'
      object WindowCascadeItem: TMenuItem
        Action = acWindowCascade
      end
      object WindowTileItem: TMenuItem
        Action = acWindowTile
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      Hint = 'Help'
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
      Hint = 'Neu|Neue Datei erstellen'
      ImageIndex = 6
      ShortCut = 16462
      OnExecute = acFileNewExecute
    end
    object acFileOpen: TAction
      Category = 'File'
      Caption = '&Open'
      Hint = 'Open|Open a file'
      ImageIndex = 7
      ShortCut = 16463
      OnExecute = acFileOpenExecute
    end
    object acFileClose: TWindowClose
      Category = 'File'
      Caption = '&Close'
      Hint = 'Close|Close actual file'
    end
    object acFileSave: TAction
      Category = 'File'
      Caption = '&Save'
      Hint = 'Save|Save Current File'
      ImageIndex = 8
      ShortCut = 16467
      OnExecute = acFileSaveExecute
    end
    object acFileSaveAs: TAction
      Category = 'File'
      Caption = 'Save &As'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 18
      OnExecute = acFileSaveAsExecute
    end
    object acFileExit: TAction
      Category = 'File'
      Caption = '&Exit'
      Hint = 'Exit|Close Program'
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
      Hint = 'Cascade'
      ImageIndex = 17
      OnExecute = acWindowCascadeExecute
    end
    object HelpAbout: TAction
      Category = 'Help'
      Caption = '&About...'
      Hint = 
        'Info|Anzeige von Informationen, Versionsnummer und Copyright-Ver' +
        'merk'
      OnExecute = HelpAboutExecute
    end
    object acFileRevert: TAction
      Category = 'File'
      Caption = 'Revert'
      Hint = 'Revert|Reload file and loose changes'
      OnExecute = acFileRevertExecute
    end
    object acFind: TAction
      Category = 'Search'
      Caption = 'Find...'
      Hint = 'Find text'
      ImageIndex = 12
      ShortCut = 16454
      OnExecute = acFindExecute
    end
    object acReplace: TAction
      Category = 'Search'
      Caption = 'Replace...'
      Hint = 'Find and replace text'
      ImageIndex = 19
      ShortCut = 16466
      OnExecute = acReplaceExecute
    end
    object acErrorCheck: TAction
      Category = 'Error Check'
      Caption = 'Run Error Check'
      Hint = 'Check for errors'
      ImageIndex = 21
      OnExecute = acErrorCheckExecute
    end
    object acOptions: TAction
      Category = 'Misc'
      Caption = 'Options'
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
      ImageIndex = 23
      ShortCut = 16474
      OnExecute = acUndoExecute
    end
    object acRedo: TAction
      Category = 'Editor'
      Caption = '&Redo'
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
      OnExecute = acInsertPartHeaderExecute
    end
    object acInsertUpdateLine: TAction
      Category = 'EditorBlocks'
      Caption = 'Update Header'
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
      Hint = 'Search and replace LDraw Colors with a color dialogue'
      ImageIndex = 35
      OnExecute = acReplaceColorExecute
    end
    object acSelectAll: TAction
      Category = 'Editor'
      Caption = 'Select all'
      ShortCut = 16449
      OnExecute = acSelectAllExecute
    end
    object acFindNext: TAction
      Category = 'Search'
      Caption = 'Find Next...'
      Enabled = False
      Hint = 'Find next...'
      ImageIndex = 13
      ShortCut = 114
      OnExecute = acFindNextExecute
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
      Caption = '&Print'
      ImageIndex = 36
      ShortCut = 16464
      OnExecute = acFilePrintExecute
    end
    object acFileCloseAll: TAction
      Category = 'File'
      Caption = 'Close A&ll'
      OnExecute = acFileCloseAllExecute
    end
    object acWindowTile: TAction
      Category = 'Windows'
      Caption = 'Tile'
      ImageIndex = 15
      OnExecute = acWindowTileExecute
    end
    object acReverseWinding: TAction
      Category = 'Editor'
      Caption = 'Reverse Winding'
      ImageIndex = 38
      ShortCut = 16471
      OnExecute = acReverseWindingExecute
    end
    object acCheckforUpdate: TAction
      Category = 'Misc'
      Caption = 'Check for Update'
      Hint = 'Check if there is a newer version available...'
      OnExecute = acCheckforUpdateExecute
    end
    object acBMP2LDraw: TAction
      Category = 'Misc'
      Caption = 'Convert Bitmap to LDraw'
      OnExecute = acBMP2LDrawExecute
    end
    object acModelTreeView: TAction
      Category = 'Misc'
      Caption = 'View Model Tree'
      OnExecute = acModelTreeViewExecute
    end
    object acInsertBFCCertifyCW: TAction
      Category = 'EditorBlocks'
      Caption = 'CERTIFY CW'
      OnExecute = acInsertBFCCertifyCWExecute
    end
    object acInsertBFCCertifyCCW: TAction
      Category = 'EditorBlocks'
      Caption = 'CERTIFY CCW'
      OnExecute = acInsertBFCCertifyCCWExecute
    end
    object acInsertBFCInvertnext: TAction
      Category = 'EditorBlocks'
      Caption = 'INVERTNEXT'
      OnExecute = acInsertBFCInvertnextExecute
    end
    object acInsertBFCClip: TAction
      Category = 'EditorBlocks'
      Caption = 'CLIP'
      OnExecute = acInsertBFCClipExecute
    end
    object acInsertBFCNoClip: TAction
      Category = 'EditorBlocks'
      Caption = 'NOCLIP'
      OnExecute = acInsertBFCNoClipExecute
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
  end
  object ilToolBarColor: TImageList
    Left = 40
    Top = 232
    Bitmap = {
      494C010128002C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004220
      2100422021004220210000000000000000000000000000000000424142004241
      4200422021000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042202100422021008486
      840084868400426163004220210042202100000000004241420084A6A500C6C7
      C600C6C7C6004220210042202100000000000000000000000000000000000000
      00000000000084A2C60084A2C600006163000061630084A2C60084A2A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000399200004A9A100063A6290073AE
      420094C36B00A5CB8C00BDD7A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004220210084868400848684008486
      8400848684004261630084A6A50084A6A5004220210084A6A500C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C60042202100000000000000000000000000A5A2
      A5004261630042616300A5A2A500A5A2A50084A2C60084A2C600006163000061
      6300A5A2A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039920000399200004A9A100063A6
      29007BB6520094C36B00A5CB8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004220210084868400848684008486
      8400848684004261630084A6A50084A6A5004241420084868400C6C7C600C6C7
      C600C6C7C600C6C7C60084A6A500424142000000000000000000A5A2A500C6C3
      C600C6C3C600C6C3C600C6C3C600A5A2A500A5A2A500A5A2A50084A2C60084A2
      C60084A2C600A5A2A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003992000039920000399200004A9A
      100073AE42007BB6520094C36B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C3C6008482840000000000000000004220210084868400848684008486
      840084616300C6C7C600A5A6A500A5A6A5004241420042414200848684008486
      8400C6C7C60084A6A5004241420000000000000000000000000000A2E700C6A2
      E700C6A2E700C6A2E700C6A2E700C6A2E70084C3E700A5A2A500A5A2A500A5A2
      A50084A2C6000061630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003992000039920000399200003992
      000063A6290073AE42007BB65200000000000000000000000000000000000000
      0000000000000000000084A2A500848284008482840084828400848284000000
      0000C6C3C6008482840000FFFF00000000004220210084868400846163008461
      630084A6A50084A6A500C6C7C600C6C7C600A5A6A500A5A6A500424142004241
      42008486840042414200422021004220210000000000C6A2E700C6A2E700C6DF
      C600C6DFC600C6DFC600C6DFC600C6DFC600C6C3C60084C3E700A5A2A500A5A2
      A50084A2C60084A2C60084A2A500000000000000000000000000000000000000
      0000000000000000000000000000000000003992000039920000399200003992
      00004A9A100063A6290073AE4200000000000000000000000000000000000000
      00000000000084A2A500C6C3C600C6C3C600C6C3C600C6C3C600848284000000
      0000C6C3C60084828400C6C3C6000000000000000000422021008486840084A6
      A50084A6A500422021004220210084868400C6C7C600C6C7C600A5A6A500A5A6
      A5004241420084A6A50084A6A500422021000000000084E3E700C6DFC600C6DF
      C600C6DFC600C6DFC600C6DFC600C6DFC600C6DFC600C6C3C60084C3E700A5A2
      A500A5A2A50084A2C60084A2C600000000000000000000000000000000000000
      0000000000000000000000000000000000003992000039920000399200003992
      0000399200004A9A100063A62900000000000000000000000000000000000000
      000084828400C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600848284000000
      0000C6C3C6008482840000828400000000000000000000000000422021004220
      21008486840042414200C6C7C600422021004220210084868400C6C7C600C6C7
      C600A5A6A500A5A6A50084A6A500422021000000000084E3E700C6DFC600C6DF
      C600C6DFC600C6DFC600C6DFC6004261630042202100C6DFC600C6C3C60084C3
      E700A5A2A50084A2C60000616300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008482840084828400848284008482
      840042616300C6C3C600C6C3C600C6C3C600C6C3C600A5A2A500848284000000
      0000C6C3C6008482840000FFFF00000000000000000000000000000000000000
      000042414200C6DFC600C6DFC600C6C7C600C6C7C600422021004220210084A6
      A500C6C7C600C6C7C600A5A6A500422021000000000084E3E700F7FBFF00F7FB
      FF00C6DFC600C6DFC60084A2A50042202100424142004241420084C3C600C6A2
      E700A5A2A500A5A2A50000616300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DFC600C6DFC600C6DFC600C6DF
      C60084616300C6C3C600C6C3C600C6C3C600A5A2A500A5A2A500848284000000
      0000A5A2A50084828400C6C3C600000000000000000000000000000000000000
      000042414200F7FFFF00F7FFFF00C6DFC600C6DFC600C6C7C6004241420084A6
      A50000C7000084A6A500422021000000000000000000C6DFC600F7FBFF00F7FB
      FF00C6DFC6008482840042202100C6C3C600C6DFC60084828400000000008482
      A500C6C3C600A5A2A50084A2C60000000000000000002938E7003141E700424D
      EF005259F7005259F7006B69FF006B69FF000000000000000000000000000000
      000000000000000000000000000000000000C6C3C600C6C3C600C6C3C600C6C3
      C60084616300C6C3C600C6C3C600C6C3C600A5A2A500A5A2A500848284000000
      0000A5A2A5008461630000FFFF00000000000000000000000000000000004241
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DFC60042414200848684004241
      E7004220210042202100000000000000000000000000C6DFC600F7FBFF00F7FB
      FF008482840042202100C6C3C600C6DFC600C6DFC600C6DFC60084C3C60084A2
      C600C6C3C600A5A2A50084A2C60000000000000000001830DE002938E7003141
      E700424DEF005259F7006B69FF006B69FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084828400C6C3C600C6C3C600A5A2A500A5A2A500A5A2A500848284000000
      0000A5A2A50084616300C6C3C600000000000000000000000000000000004241
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0042414200422021004220
      2100000000000000000000000000000000000000000000000000C6DFC600A5A2
      A50042202100C6C3C600C6DFC600C6DFC600C6DFC600C6DFC600C6DFC600C6A2
      E700C6C3C600426163000000000000000000000000001830DE001830DE002938
      E7003141E700424DEF005259F7006B69FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C3C600C6C3C600A5A2A500A5A2A500A5A2A50084828400F7FB
      FF00A5A2A500846163000082840000000000000000000000000042414200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004241420000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A2A500F7FB
      FF00C6DFC600F7FBFF00F7FBFF00F7FBFF00C6DFC600C6DFC600C6DFC600C6A2
      E700C6C3C600A5A2A5000000000000000000000000001830DE001830DE001830
      DE002938E7003141E700424DEF005259F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C3C600A5A2A500A5A2A500A5A2A50084828400F7FB
      FF00A5A2A5008461630000FFFF0000000000000000000000000042414200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004241420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A2
      A500C6DFC600C6DFC600F7FBFF00F7FBFF00C6DFC600C6DFC600C6A2E7000082
      C600A5A2A500000000000000000000000000000000001830DE001830DE001830
      DE002938E7003141E700424DEF00424DEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FB
      FF00A5A2A5008461630000000000000000000000000000000000000000004241
      420042414200F7FFFF00F7FFFF00424142000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6DFC600C6DFC60084E3E70084E3E70084E3E700C6A2E7000000
      000000000000000000000000000000000000000000001830DE001830DE001830
      DE001830DE002938E7003141E700424DEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004241420042414200424142000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004241420042414200424142004241420042414200424142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042202100422021000000000042202100422021004220
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004241
      420042414200C6A60000C6A60000C6A60000C6A60000C6860000008600004241
      4200424142000000000000000000000000004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200424142000000000000000000000000000000000000000000000000000000
      00000000000042202100C6DFC60042E742004220210084E7E70000A6A50000A6
      A500422021000000000000000000000000000000000000000000F7FBFF00F7FB
      FF00F7FBFF00F7FBFF00F7FBFF00F7FBFF00F7FBFF00F7FBFF00F7FBFF000000
      000000000000000000000000000000000000000000000000000042414200C686
      0000C6A60000C6A60000C6A60000C6A60000C6A60000C6A600000086210000E7
      63000041420042414200000000000000000042414200C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600424142000000000000000000000000000000000042202100422021004220
      210042202100422021004220210000C7210000C72100422021000086840084E7
      E70084E7E7004220210000000000000000000000000000000000F7FBFF00C6C3
      C600C6C3C600C6C3C600C6C3C600846163008461630084616300000000000000
      0000000000000000000000000000000000000000000042414200C6860000C6C7
      4200F7CFA500C6A62100F7CFA500C6A60000C6A60000C6A60000C6A600000086
      210000E7630000868400424142000000000042414200A5A6A500F7FFFF00F7FF
      FF00C6DFC600C6C7C600C6C7C600A5A6A500A5A6A500A5A6A500A5A6A5004220
      21004220210042202100000000000000000000000000422021000086C6000061
      A5000086C60042202100426163004220210000A6000000A600004220210084E7
      E70000A6A50000A6A50042202100000000000000000000000000F7FBFF00C6C3
      C600C6C3C600C6C3C600C6C3C60084616300000000000000000000000000CE4D
      4A00CE4D4A00BD696B00AD7D7B00000000000000000042414200C6A6210084E7
      840042E7A500A5A6A500F7CFA500C6A62100C6A60000C6A60000C6A60000C6A6
      00000086210000860000424142000000000042414200A5A6A500F7FFFF00F7FF
      FF00C6DFC600C6DFC600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6004220
      210084E7A50042202100000000000000000000000000422021000086C6000061
      A5000086E7004220210042414200000000004220210000A6000000A600004220
      21000086840042E7E70084E7E700422021000000000000000000F7FBFF00C6C3
      C600C6C3C600C6C3C600C6C3C600846163008461630084616300000000000000
      00000000000000000000000000000000000042414200C6A60000C6C7420042E7
      C60084E78400A5A6A500C6C74200F7CFA500C6A62100C6A60000C6A60000C6A6
      0000C686000084610000426163004241420042414200A5A6A500C6DFC600C6C7
      C600A5A6A500A5A6A50084A6840084A684008486630042202100422021004286
      210084E7840042862100422021004220210000000000422021000086C6000086
      C60000A6E700422021004241420042414200000000004220210042E7420000A6
      00004220210042E7E70000A6A500422021000000000000000000F7FBFF00C6C3
      C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600F7FBFF000000
      00000000000000000000000000000000000042414200C6A6000084C7000000E7
      A50084E78400A5A6A500F7CFA500C6C74200C6A62100C6A60000C6A60000C6A6
      0000C6A6000084610000846100004241420042414200A5A6A500C6DFC600C6DF
      C600C6DFC600C6C7A50084C7A50084C7A50084C784004220210084E7840084E7
      840084E7630084E7840084E7A5004220210042414200422021000086E70000A6
      E70000A6E7004220210042202100000000004220210042E742004220210000A6
      0000008600004220210084E7E70000000000000000000000000000000000C6C3
      C600846163008461630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042414200C6A6000084C7000042E7
      A50084E7840042A60000A5A6A500C6A60000C6A60000C6A60000C6A60000C6A6
      0000C6A6000084610000846100004241420042414200A5A6A500C6DFC600C6C7
      C600A5A6A50084A6840084A6840084A663008486630042202100422021004286
      210042C742004286210042202100422021004241420000A6E70000A6E70000A6
      E70000A6E70000A6E700422021004220210042E7420042202100426163004220
      210000860000008600004220210000000000000000000000000000000000C6C3
      C6008461630000000000000000004ACB4A004ACB4A005AC35A006BBA6B006BBA
      6B0000000000000000000000000000000000424142008461000000E7A50000E7
      A50000E7A50084E7840000C7C600C6C74200C6A60000C6A60000C6A60000C6A6
      0000C6A6000084610000846100004241420042414200A5A6A500F7FFFF00F7FF
      FF00C6DFC600C6DFC600C6C7A500C6C7A500C6C7A500C6C7A500C6C7A5004220
      210084E784004241420000000000000000004241420000A6E70000A6E70000A6
      E70000A6E70000A6E7004220210042E742004220210042616300424142000000
      000042202100008600000086000042202100000000000000000000000000C6C3
      C600846163008461630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004241420042A6000084E7840084E7
      840000E7A50000E7A50000E7E70084C70000C6A60000C6A60000848684008486
      8400C686000084610000844100004241420042414200A5A6A500F7FFFF00F7FF
      FF00C6DFC600C6C7C600C6C7C600A5A6A500A5A6A500A5A6A500A5A6A5004220
      2100422021004220210000000000000000004241420000A6E70000A6E70000A6
      E70042A6E70042A6E700422021004220210084A6A50084868400424142000000
      0000422021000086000042E7420000000000000000000000000000000000C6C3
      C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600F7FBFF000000
      0000000000000000000000000000000000004220210000E7A50000E7A50084E7
      840000E7A50000E7A50084C7000042A60000C6C74200C6A6000084C7000000E7
      A5004261630084610000426163004241420042414200A5A6A500F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00424142000000000000000000000000004241420000A6E70042A6E70042C7
      E70042C7E70042C7E7004220210042A621004220210084868400000000004220
      21000086000042E742000000000000000000000000000000000000000000C6C3
      C600846163008461630084616300846163000000000000000000000000000000
      000000000000000000000000000000000000000000004220210000E7A50000E7
      E70000E7A50000C7C60000E7A50000E7A50084A6A50084A6A50000C7840000E7
      A50000C784008461000042414200000000004241420084616300846163008461
      6300846163008461630084616300846163008461630084616300846163008461
      6300424142000000000000000000000000000000000042202100422021004220
      210042202100422021000000000084E7630042A6210042202100422021000086
      000042E74200422021000000000000000000000000000000000000000000C6C3
      C6008461630000000000000000000000000000000000181CEF003130DE004A4D
      CE004A4DCE006B69BD000000000000000000000000004220210042A6000000E7
      A5008461630042A6000000E7A50084E7840042E7000000E7A50000C7C60000E7
      A5000086000084410000424142000000000042414200C6C74200C6C74200C6C7
      4200C6A64200C6A64200C6A62100C6A62100C6862100C6860000C6860000C686
      0000424142000000000000000000000000000000000042202100848684008461
      63004241420042202100000000004220210084E7630042A621004286210042E7
      420042202100000000000000000000000000000000000000000000000000C6C3
      C600846163008461630084616300846163000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000422021008461
      0000C6A60000C6C7420042A6000000E7A50000E7A50000E7E70000E7E7000086
      00008441000042414200000000000000000042414200C6C74200C6C74200C6C7
      4200C6A64200C6A64200C6A62100C6A62100C6862100C6860000C6860000C686
      0000424142000000000000000000000000000000000042414200C6C7C60084A6
      A500846163004220210000000000000000004220210084E7630084E763004220
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004220
      210042202100C6A60000C6A6000042A6000042A6000042A60000C6A600004241
      4200424142000000000000000000000000004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200424142000000000000000000000000000000000042414200C6C7C600C6C7
      C600848684004220210000000000000000000000000042414200424142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004220210042414200424142004241420042414200424142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424142004220
      2100422021000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000840000008400000084000000000000004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200424142004241420042414200424142000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600A5A6A500A5A6A500A5A6A500A5A6A500A5A6A500A5A6
      A50084A6A50084A6A50084A6A50042414200000000000000FF000000FF000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042202100C6C7C600C6C7C600A5A6
      A50042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600A5A6A500A5A6A50084A6A5004241420000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100C6C7C600A5A6A5004241
      4200A5A6A50042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600A5A6A50084A6A500424142000000000000000000000000000000
      FF000000FF000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000FF000000FF000000
      FF00000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042202100C6C7C60042414200C6C7
      C60000000000A5A6A50042414200C6C7C6008461000084410000844100008461
      0000C6A60000C6C7C60084A6A500424142000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100C6DFC600A5A6A5004241
      4200C6C7C60042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600A5A6A500424142000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100C6DFC600C6C7C600A5A6
      A50042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600A5A6A500424142000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100C6DFC600C6DFC600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600A5A6A500424142000000FF0000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000FF000000FF000000
      FF00000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042202100C6DFC600C6DFC600A5A6
      A50042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600A5A6A500424142000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100F7FFFF00A5A6A5004241
      4200C6DFC60042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600A5A6A50042414200000000000000FF000000FF000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042202100F7FFFF0042414200C6DF
      C60042202100C6DFC60042414200C6C7C6008461000084410000844100008461
      0000C6A60000C6C7C600A5A6A5004241420000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100F7FFFF00A5A6A5004241
      4200C6DFC60042414200A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600424142000000000000000000000000000000
      FF000000FF000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000042202100F7FFFF00C6DFC600A5A6
      A50042414200A5A6A500C6DFC600C6DFC600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600424142000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042202100F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00C6DFC600C6DFC600C6DFC600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600424142000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004220210042202100422021004220
      2100422021004220210042202100422021004220210042202100422021004220
      2100422021004220210042202100424142000000000000000000000000000000
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
      000000000000000000000000000000000000000084000020C600000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000426163004261630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000020C6000020C6000020C600000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004220
      210084C7000084E7000042616300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000020C6000020C6000020C6000020C6000020C600000084000000
      84000000840000008400000084000020C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004220210084C7
      000084E7210084C7000042414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000020
      C6000020C6000020C6000020C6000020C6000020C6000020C6000020C6000000
      84000000840000008400000084000020C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004261630084A6000084E7
      210084A600004241420000000000000000004261630018181800181818001818
      180018181800181818000000000000000000000084000020C6000020C6000020
      C6000020C6000020C6000020C6000020C600000084000020E7000020E7000020
      E7000020C60000008400000084000020C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004261630084E7000084E7
      000042616300000000000000000000000000000000004261630084A6000084A6
      000084C7000084C7000042414200000000000020C6000020C6000020C6000020
      C6000020C6000020C600000084000020E7000020E7000020E7008461E7000020
      E700000084000020C6000020C6000020C6000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004220210084E7210084C7
      00008486840000000000000000000000000000000000C6C7C6008461630084C7
      000084E76300C6C7630042414200000000000020C6000020C6000020C6000020
      C6000020C6000020E7004241E7004220E7000020E7000020E7000020C6000020
      E7000020E7008461E7004241E700000000000000000000000000BD000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042202100C6DFC60084C7
      000084868400000000000000000000000000000000004261630084A60000C6C7
      420084E78400C6DFC60042414200000000000020C6000020C6000020C6000020
      E7000020E7004220E7000020E7000020C6000020E7004241E7000020E7004241
      E7004241E700000000000000000000000000BD000000BD000000BD000000BD00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD000000BD000000BD000000BD00
      0000BD0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004220210084E7210084C7
      0000426163000000000000000000000000004261630084A6000084E7210084E7
      0000A5A6A500C6DFC60042414200000000000020C6000020E7000020E7004220
      E7000000FF000020C6000020E7000020C6004220E7000020E7008461E7000000
      0000000000000000000000000000000000000000000000000000BD000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004261630084E7000084E7
      000084A6000042414200424142004261630084A60000C6DFC60084E700004261
      6300C6C7C60042616300426163000000000000000000000000004220E7000020
      E7004241E7000020E7004241E7008461E7004241E70000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008486840084A6000084E7
      000084C7000084C7000084C7000084C70000C6DFC60084C70000426163000000
      0000000000000000000042616300000000000000000000000000000000000000
      00004220E7008461E7004241E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004261630084C7
      000084E7210084E7210084E7210084E7000084C7000042616300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000000000000000000000000000FF00
      000000000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400426163004261630042616300426163008486840000000000000000000000
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
      00000000000000000000000000000082840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000828400008284000082840000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000000000000000840000000000
      FF000000FF000000FF0084000000000000008482840000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000082
      84000082840000828400008284000082840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426163004261
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000008400
      00000000FF000000FF000000FF00848200008482000084820000C6C3C6000000
      0000000000000000000000000000000000000000000000000000008284000082
      8400008284000082840000828400008284000082840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004261630084E7000084C7
      0000422021000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00C6C3C600C6C3C60000000000C6C3
      C600840000000000000000000000000000000000000000000000008284000082
      840000828400008284000082840000FFFF0000FFFF00008284000082840000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004241420084C7000084E7
      210084C700004220210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000008400
      000000000000848200000000FF000000FF000000FF0084000000C6C3C6008482
      0000000000000000000084000000840000000000000000000000008284000082
      84000082840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000082
      84000082840000FFFF0000000000000000000000000000000000181818001818
      18001818180018181800181818004261630000000000000000004241420084A6
      000084E7210084A600004261630000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000084000000C6C3C600C6C3C6000000FF000000FF000000FF00C6C3C6008482
      00008482840000000000000000000000000000000000000000000082840000FF
      FF0000FFFF0000FFFF000082840000828400008284000082840000FFFF0000FF
      FF0000FFFF00008284000000000000000000000000004241420084C7000084C7
      000084A6000084A6000042616300000000000000000000000000000000004261
      630084E7000084E70000426163000000000000000000000000000000FF000000
      FF0000000000000000000000FF000000FF00000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000084000000C6C3C60000000000000000000000FF000000FF000000FF008482
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000828400008284000082840000828400008284000082840000FF
      FF0000FFFF000000000000000000000000000000000042414200C6C7630084E7
      630084C7000084616300C6C7C600000000000000000000000000000000008486
      840084C7000084E72100422021000000000000000000000000000000FF000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000008400000000000000000000000000
      000000000000848284000000000000000000C6C3C6000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000828400008284000082840000828400008284000082840000FF
      FF00000000000000000000000000000000000000000042414200C6DFC60084E7
      8400C6C7420084A6000042616300000000000000000000000000000000008486
      840084C70000C6DFC600422021000000000000000000000000000000FF000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000008482
      0000C6C3C6008400000084820000C6C3C600C6C3C600848200000000FF000000
      FF000000FF008400000000008400000000000000000000000000000000000000
      0000000000000082840000FFFF0000FFFF0000FFFF0000FFFF00008284000000
      0000000000000000000000000000000000000000000042414200C6DFC600A5A6
      A50084E7000084E7210084A60000426163000000000000000000000000004261
      630084C7000084E72100422021000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000C6C3C600C6C3C60000000000840000000000000084000000000000000000
      FF000000FF000000FF0000000000000000008400000084000000840000008400
      0000840000008400000000828400008284000082840000828400840000008400
      000084000000840000008400000084000000000000004261630042616300C6C7
      C6004261630084E70000C6DFC60084A6000042616300424142004241420084A6
      000084E7000084E70000426163000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000008400000000000000000000000000
      0000000000000000000000008400000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000E7E7E700E7E7E700E7E7E700E7E7
      E70084000000E7E7E700E7E7E700E7E7E7008400000084000000840000008400
      0000E7E7E7008400000084000000840000000000000042616300000000000000
      0000000000004261630084C70000C6DFC60084C7000084C7000084C7000084C7
      000084E7000084A60000848684000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E70084000000840000008400
      0000E7E7E7008400000084000000840000000000000000000000000000000000
      000000000000000000004261630084C7000084E7000084E7210084E7210084E7
      210084C7000042616300000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      000000000000000000000000FF000000FF00E7E7E70084000000840000008400
      000084000000E7E7E7008400000084000000E7E7E7008400000084000000E7E7
      E70084000000E7E7E70084000000840000000000000000000000000000000000
      0000000000000000000000000000848684004261630042616300426163004261
      630084868400000000000000000000000000000000000000FF000000FF000000
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
      0000840000008400000084000000840000000000000000418400004184000041
      8400004184000041840000418400004184000041840000418400004184000041
      8400004184000041840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008482840000000000000000000000000084080800840000008400
      0000840000008400000084000000841010008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800E7E7E700DEDFDE00DEDFDE00D6D7D600CECF
      CE00C6C7C600B5B6B500A5A6A500840000000061A500424142000086C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6DFC600C6DFC600C6DFC600F7FF
      FF0084E7E7004241420000414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284000000
      0000000000000000000084828400000000000000000084080800CECFCE00C6C7
      C600BDBEBD00ADAEAD00A5A6A50084101000CECFCE00C6C7C600BDBEBD00ADAE
      AD00A5A6A5008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800EFEFEF00E7E7E700DEDFDE00DEDFDE00D6D7
      D600CECFCE00C6C7C600B5B6B500840000000061A50042C7E7000086C600C6C7
      C600313031002928290029282900212021002120210018181800101010001010
      100084E7E70042C7E70000414200000000000000000000000000000000000000
      0000000000000000FF0084828400000000000000000000000000848284000000
      0000000000000000000000000000848284000000000084080800D6D7D600CECF
      CE00C6C7C600BDBEBD00ADAEAD0084101000D6D7D600CECFCE00C6C7C600BDBE
      BD00ADAEAD008400000000000000000000000000000000000000000000000000
      0000000000000000000084080800EFEFEF00EFEFEF00E7E7E700DEDFDE00DEDF
      DE00D6D7D600CECFCE00C6C7C600840000000061A50084C7E7000086C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6DF
      C60084E7E70042C7E70000414200000000000000000084828400848284008482
      8400848284000000FF000000FF00848284000000000000000000848284000000
      0000000000000000000000000000848284000000000084080800D6D7D600D6D7
      D600CECFCE00C6C7C600BDBEBD0084101000D6D7D600D6D7D600CECFCE00C6C7
      C600BDBEBD008400000000000000000000000000000000000000000000008408
      080084080800840808008C101000840808008408080084080800840808008408
      0800840808008408080084000000840000000061A50084C7E7000086C600C6C7
      C60031303100292829002928290021202100212021001818180010101000C6C7
      C60084E7E70042C7E70000414200000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000848284000000
      0000000000000000000000000000848284000000000084080800DEDFDE00D6D7
      D600D6D7D600CECFCE00C6C7C60084101000DEDFDE00D6D7D600D6D7D600CECF
      CE00C6C7C6008400000000000000000000000000000000000000000000008408
      0800E7E7E700DEDFDE0084080800840000008400000084000000840000008400
      0000840000008400000000000000840000000061A50084C7E7000086C60084A6
      A500A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C60084E7E70042C7E70000414200000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000008482
      8400000000000000000000000000000000000000000084080800DEDFDE00DEDF
      DE00D6D7D600D6D7D600CECFCE008C101000DEDFDE00DEDFDE00D6D7D600D6D7
      D600CECFCE008400000000000000000000000000000000000000000000008408
      0800EFEFEF00E7E7E70084080800840808008408080084000000840000008400
      0000840000008400000084000000840000000061A50084C7E7000086C60084A6
      A500313031002928290029282900212021002120210018181800101010001010
      100084E7E70042C7E70000414200000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000848284000000
      0000000000000000000000000000000000000000000084080800E7E7E700DEDF
      DE00DEDFDE00D6D7D600D6D7D6008C101000E7E7E700DEDFDE00DEDFDE00D6D7
      D600D6D7D6008408080000000000000000000000000000000000000000008408
      0800EFEFEF00EFEFEF00E7E7E700DEDFDE00DEDFDE00D6D7D600CECFCE00C6C7
      C600840000000000000000000000000000000061A50084E7E7000086C6000086
      C6000086C6000086C6000086C6000086C6000086C6000086C6000086C6000086
      C60084E7E70042C7E70000414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284000000
      0000000000000000000000000000000000000000000084080800EFEFEF00E7E7
      E700DEDFDE00DEDFDE00D6D7D6008C101000EFEFEF00E7E7E700DEDFDE00DEDF
      DE00D6D7D6008408080000000000000000000000000084080800840808008C10
      1000840808008408080084080800840808008408080084080800840808008400
      0000840000000000000000000000000000000061A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C7E70000414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284000000
      0000000000000000000000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDFDE00DEDFDE008C101000EFEFEF00EFEFEF00E7E7E700DEDF
      DE00DEDFDE008408080000000000000000000000000084080800E7E7E7008408
      0800840000008400000084000000840000008400000084000000840000000000
      0000840000000000000000000000000000000061A50084E7E7000086C60000A6
      E7000086C6000086C6000086C6000086C6000086C6000086C6000086C60042C7
      E70084E7E70042C7E70000414200000000000000000000000000000000008482
      8400000000000000000000000000000000000000000000000000848284000000
      0000000000000000000000000000000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDFDE008C101000F7F7F700EFEFEF00EFEFEF00E7E7
      E700DEDFDE008408080000000000000000000000000084080800EFEFEF008408
      0800840808008408080084080800840000008400000084000000840000008400
      0000840000000000000000000000000000000061A50084C7E7000086C6000000
      00000061A50000000000F7FFFF00F7FFFF00C6C7C600C6C7C600F7FFFF000086
      C60084E7E70084C7E70000414200000000000000000084828400000000000000
      0000000000008482840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084080800840808008408
      08008408080084080800840808008C1010008408080084080800840808008408
      0800840808008408080000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDFDE00DEDFDE00D6D7D600CECFCE00C6C7C600840000000000
      0000000000000000000000000000000000000061A50084E7E7000086C6000000
      00000061A50000000000C6DFC600C6DFC6008486840084868400F7FFFF000061
      A50084E7E70084C7E70000414200000000000000000084828400000000000000
      0000000000008482840000000000000000000000000000000000000000000000
      0000000000000000FF0084828400000000000000000084000000840000008400
      0000840000008400000000000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084000000840000000000
      0000000000000000000000000000000000000061A50042C7E7000086C6000000
      00000061A50000000000C6DFC600C6DFC6008461630084A6A500C6DFC6000061
      A50084E7E70084C7E70000414200000000000000000000000000000000000000
      0000000000008482840000000000000000000000000084828400848284008482
      8400848284000000FF000000FF00848284000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000000000000840000000000
      0000000000000000000000000000000000000061A50084E7E7000086C6000000
      00000061A50000000000F7FFFF00C6DFC6004241420042414200F7FFFF000061
      A50084E7E70084C7E70000414200000000000000000000000000000000000000
      0000000000008482840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000061A50084E7E7000086C600C6DF
      C6000086C6000000000000000000000000000000000000000000000000000061
      A50084E7E7000041840000000000000000000000000000000000848284008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084868400848684008486
      8400848684008486840084868400848684008486840084868400848684008486
      8400848684000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848284000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008482
      8400848284008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000848284008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200424142000000000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284008482
      8400840000008400000084000000000000000000000000000000000000000000
      0000000000000000000084828400840000008400000084000000840000000000
      0000000000000000000000000000000000000000000042414200C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6004241
      4200C6C7C6000000000000000000000000000000000084080800EFEFEF00E7E7
      E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7C600B5B6B500ADAE
      AD009C9E9C008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400848284008400
      0000840000008400000000000000840000000000000084828400848284000000
      0000000000008482840084000000840000008400000084000000000000000000
      0000000000000000000000000000000000004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      420042414200C6C7C60042414200000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7C600B5B6
      B500ADAEAD008400000000000000000000000000000000000000000000008482
      8400848284008482840084828400848284008482840084828400840000008400
      000084000000000000008400000000000000848284000000000000000000C6C3
      C600000000000000000084000000840000008400000000000000000000000000
      00000000000000000000000000000000000042414200C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C60000FFFF0000FFFF0000FFFF00C6C7C600C6C7
      C600424142004241420042414200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7
      C600B5B6B5008400000000000000000000000000000000000000848284008482
      8400000000000000000000000000000000000000000084000000840000008400
      0000000000008400000000000000000000008482840000000000C6C3C6000000
      0000C6C3C600C6C3C60084828400000000000000000000000000000084000000
      00000000000000000000000000000000000042414200C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600848684008486840084868400C6C7C600C6C7
      C60042414200C6C7C60042414200000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      0800840000008400000000000000000000000000000084828400848284000000
      000084828400C6C3C600C6C3C600C6C3C6008482840000000000840000000000
      00008400000000000000000000000000000000000000C6C3C60000000000C6C3
      C600C6C3C600C6C3C600C6C3C600000000000000000000008400000084000000
      0000000000000000000000000000000000004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      420042414200C6C7C600C6C7C600424142000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000008400000000000000000000008482840084828400000000008482
      8400C6C3C6000000000000000000C6C3C600C6C3C60084828400000000000000
      0000000000000000000000000000000000000000000000000000C6C3C600C6C3
      C600C6C3C600C6C3C600C6C3C600000000000000840000008400000084000000
      84000000840000000000000000000000000042414200C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6004241
      4200C6C7C60000000000C6C7C600424142000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      000084000000840000000000000000000000848284000000000084828400C6C3
      C60000000000C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600848284000000
      00000000000000000000000000000000000000000000C6C3C600C6C3C600C6C3
      C6000000000000000000C6C3C600000000000000000000008400000084000000
      0000000000000000840000000000000000000000000042414200424142004241
      420042414200424142004241420042414200424142004241420042414200C6C7
      C60000000000C6C7C60042414200424142000000000084080800EFEFEF00E7E7
      E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7C600B5B6B500ADAE
      AD009C9E9C008400000000000000000000008482840000000000C6C3C6000000
      0000C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C6000000
      00000000000000000000000000000000000000000000C6C3C600C6C3C600C6C3
      C600000000000000000084828400000000000000000000000000000084000000
      0000000000000000840000000000000000000000000000000000424142000000
      0000000000000000000000000000000000000000000000000000000000004241
      4200C6C7C60042414200C6C7C600424142000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7C600B5B6
      B500ADAEAD008400000000000000000000008482840000000000C6C3C6000000
      0000C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600848284000000
      0000000000000000000000000000000000000000000000000000000000008482
      8400848284000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004241
      4200000000001818180018181800181818001818180018181800000000004241
      4200424142004241420042414200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7
      C600B5B6B5008400000000000000000000008482840000000000C6C3C600C6C3
      C600C6C3C600C6C3C600C6C3C6000000000000000000C6C3C600848284000000
      0000000000000000000000000000000000000000000000000000848284000000
      0000000000008482840000000000000000000000000000000000000084000000
      0000000000000000840000000000000000000000000000000000000000004241
      4200000000000000000000000000000000000000000000000000000000000000
      0000424142000000000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      080084000000840000000000000000000000000000008482840084828400C6C3
      C600C6C3C600C6C3C600C6C3C600000000000000000084828400848284008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000424142000000000018181800181818001818180018181800181818000000
      0000424142000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000008400000000000000000000000000000000000000000000008482
      8400C6C3C600C6C3C600C6C3C600C6C3C6008482840084828400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000424142000000000000000000000000000000000000000000000000000000
      0000000000004241420000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000848284008482840084828400848284008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000000000004241420042414200424142004241420042414200424142004241
      4200424142004241420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848284000000000000000000000000008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000418400004184000041
      8400004184000041840000418400004184000041840000418400004184000041
      8400004184000041840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000061A500424142000086C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6DFC600C6DFC600C6DFC600F7FF
      FF0084E7E7004241420000414200000000004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200000000000000000042414200424142004241420042414200424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000808080008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000061A50042C7E7000086C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6DFC600C6DFC600C6DF
      C60084E7E70042C7E700004142000000000042414200D6D7D600D6D7D600CECF
      CE00CECFCE00C6C7C600B5B6B500ADAEAD00A5A6A5009C9E9C009C9E9C004241
      42000000000042414200424142004241420042414200DEDFDE00D6D7D600D6D7
      D600CECFCE00C6C7C600BDBEBD00ADAEAD00A5A6A5009C9E9C009C9E9C004241
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000061A50084C7E7000086C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6DF
      C60084E7E70042C7E700004142000000000042414200DEDFDE00D6D7D600D6D7
      D600CECFCE00CECFCE00C6C7C600B5B6B5004241420042414200424142004241
      42004241420042414200424142000000000042414200DEDFDE00181818001818
      1800D6D7D60018181800181818001818180018181800181818009C9E9C004241
      4200000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000061A50084C7E7000086C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C60084E7E70042C7E700004142000000000042414200DEDFDE00DEDFDE00D6D7
      D600D6D7D600CECFCE00CECFCE00181818008C8E8C00C6C7C600C6C7C6008486
      84004241420042414200000000000000000042414200E7E7E700DEDFDE00DEDF
      DE00D6D7D600D6D7D600CECFCE00C6C7C600BDBEBD00ADAEAD00A5A6A5004241
      4200000000000000000000000000000000001010100000000000000000000000
      0000181818001818180000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000061A50084C7E7000086C60084A6
      A500A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C60084E7E70042C7E700004142000000000042414200DEDFDE00DEDFDE00D6D7
      D600D6D7D600D6D7D6004241420094969400C6C7C600C6C7C600FFFF00008486
      84008486840042414200000000000000000042414200E7E7E700181818001818
      1800DEDFDE001818180018181800181818001818180018181800ADAEAD004241
      4200000000000000000000000000000000001010100018181800000000002120
      2100212021000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000061A50084C7E7000086C60084A6
      A50084A6A500A5A6A500A5A6A500C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C60084E7E70042C7E700004142000000000042414200E7E7E700DEDFDE00DEDF
      DE00D6D7D600D6D7D60042414200C6C7C600C6C7C600C6C7C600C6C7C6008486
      8400C6C7C60042414200000000000000000042414200EFEFEF00E7E7E700E7E7
      E700DEDFDE00DEDFDE00D6D7D600D6D7D600CECFCE00C6C7C600BDBEBD004241
      4200000000000000000000000000000000001818180021202100292829002928
      2900292829000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000061A50084E7E7000086C6000086
      C6000086C6000086C6000086C6000086C6000086C6000086C6000086C6000086
      C60084E7E70042C7E700004142000000000042414200E7E7E700E7E7E700DEDF
      DE00DEDFDE00D6D7D60042414200C6C7C600FFFF0000C6C7C600C6C7C6008486
      8400C6C7C60042414200000000000000000042414200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDFDE00DEDFDE00D6D7D60031303100CECFCE00C6C7C6004241
      4200000000000000000000000000000000001818180021202100292829002928
      2900292829002928290029282900212021000000000000000000840000008400
      0000840000000000000000000000000000000061A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C7E700004142000000000042414200EFEFEF00E7E7E700E7E7
      E700DEDFDE00DEDFDE004241420094969400FFFF0000FFFF0000C6C7C6008486
      84008486840042414200000000000000000042414200F7F7F700313031003130
      3100E7E7E700E7E7E700DEDFDE0031303100CECFCE0031303100CECFCE004241
      4200000000000000000000000000000000001818180021202100292829002928
      2900393839002928290029282900000000000000000000000000000000008400
      0000840000008400000000000000000000000061A50084E7E7000086C60000A6
      E7000086C6000086C6000086C6000086C6000086C6000086C6000086C60042C7
      E70084E7E70042C7E700004142000000000042414200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDFDE00DEDFDE001818180094969400C6C7C600C6C7C6008486
      84001818180000000000000000000000000042414200F7F7F70031303100D6D7
      D60031303100E7E7E70031303100CECFCE0031303100CECFCE00424142004241
      4200424142000000000084000000840000001818180021202100292829002928
      2900292829002928290000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000061A50084C7E7000086C6000000
      00000061A50000000000F7FFFF00F7FFFF00C6C7C600C6C7C600F7FFFF000086
      C60084E7E70084C7E700004142000000000042414200EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700DEDFDE00DEDFDE004241420042414200424142004241
      4200000000000000000000000000000000004241420000000000F7F7F7004241
      4200D6D7D60031303100CECFCE0031303100C6C7C60031303100C6C7C600C6C7
      C600C6C7C6003130310084000000840000001818180021202100292829002928
      2900292829000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000061A50084E7E7000086C6000000
      00000061A50000000000C6DFC600C6DFC6008486840084868400F7FFFF000061
      A50084E7E70084C7E700004142000000000042414200F7F7F700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700DEDFDE00DEDFDE00D6D7D600D6D7D6004241
      4200000000000000000000000000000000004241420042414200424142004241
      420042414200C6C7C60031303100C6C7C60031303100C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C60084000000840000001010100018181800212021002120
      2100000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000061A50042C7E7000086C6000000
      00000061A50000000000C6DFC600C6DFC6008461630084A6A500C6DFC6000061
      A50084E7E70084C7E700004142000000000042414200F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00E7E7E700E7E7E7004241420042414200424142004241
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000031303100C6C7C60031303100C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C60084000000840000001010100010101000181818000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000061A50084E7E7000086C6000000
      00000061A50000000000F7FFFF00C6DFC6004241420042414200F7FFFF000061
      A50084E7E70084C7E700004142000000000042414200F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00E7E7E70042414200C6C7C600424142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031303100C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C6003130310084000000840000001010100010101000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000061A50084E7E7000086C600C6DF
      C6000086C6000000000000000000000000000000000000000000000000000061
      A50084E7E7000041840000000000000000004241420000000000F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00E7E7E7004241420042414200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000313031001010080010100800101008001010
      0800101008000000000084000000840000000808080000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000084868400848684008486
      8400848684008486840084868400848684008486840084868400848684008486
      8400848684000000000000000000000000004241420042414200424142004241
      4200424142004241420042414200424142004241420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004241420042414200424142004241420042414200424142004241
      4200424142004241420042414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004241420084868400C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000042202100422021004220
      2100422021004220210042202100422021004220210042202100422021004220
      2100422021004220210042202100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004241
      4200F7FFFF0042414200C6C7C600F7FFFF00C6DFC600C6DFC600C6DFC600F7FF
      FF00F7FFFF00C6C7C6004241420000000000000000004220210084E3E70084E3
      E70084E3E70084E3E70084E3E70084E3E70084E3E70084E3E70084E3E70084E3
      E70084E3E70084E3E70042202100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212021002120
      2100181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424142008486
      84004241420084616300F7FFFF00F7FFFF00C6C7C600C6DFC600C6DFC600C6DF
      C600F7FFFF00C6C7C60042414200000000000000000042202100F7FBFF0042C3
      E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042A2E70042A2
      E70042A2E70084E3E70042202100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212021002120
      2100212021001818180000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042414200C6C7
      C600C6C7C600C6C7C600C6C7C600F7FFFF00C6DFC600C6C7C600C6DFC600C6DF
      C600C6DFC600C6DFC60042414200000000000000000042202100F7FBFF0042C3
      E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042A2E70042A2
      E70042A2E70084E3E70042202100000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002120
      2100212021002120210000000000000000000000000000000000000000000000
      000010101000000000000000000000000000000000000000000042414200C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6DFC600C6C7C600C6C7
      C600C6DFC600C6DFC60042414200000000000000000042202100F7FBFF0042C3
      E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3
      E70042C3E70084E3E70042202100000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000212021002120210021202100000000000000000000000000000000001010
      100010101000000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6DF
      C600C6C7C600C6DFC60042414200000000000000000042202100F7FBFF0042C3
      E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3
      E70042C3E70084E3E70042202100000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000002120210021202100212021000000000000000000181818001818
      180000000000000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000042202100F7FBFF0042C3
      E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3E70042C3
      E70042C3E70084E3E70042202100000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000021202100212021002120210021202100181818000000
      000000000000000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000042202100F7FBFF0084C3
      E70042C3E70042C3E70042C3E70084E3E700F7FBFF00F7FBFF00F7FBFF00F7FB
      FF00F7FBFF0084E3E70042202100000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000212021002120210021202100000000000000
      000000000000000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000042202100F7FBFF0084E3
      E70084C3E70084C3E70084C3E700F7FBFF004220210042202100422021004220
      2100422021004220210042202100000000000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000029282900292829002928290021202100212021000000
      000000000000000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000042202100F7FBFF00F7FB
      FF00F7FBFF00F7FBFF00F7FBFF00422021000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003130310031303100292829000000000000000000212021002120
      210000000000000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000000000000422021004220
      2100422021004220210042202100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003938
      3900393839003130310031303100000000000000000000000000000000002120
      210021202100000000000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7CBA500C66100000000
      000000000000C6A20000C6610000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424142003938
      3900393839003938390000000000000000000000000000000000000000000000
      000021202100212021000000000000000000000000000000000042414200F7FF
      FF00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6DFC60042414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7CBA500C6A2
      2100C6A22100C6A2000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424142004241
      4200393839000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042414200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0042414200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7CB
      A500C66100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424142004241
      4200424142004241420042414200424142004241420042414200424142004241
      4200424142004241420042414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000041840000418400004184000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000041840042C7E70000A6E70042A6E7000041
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000041840042C7E7000086C6000041420042C7E7000041
      8400004184000041840000418400000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000042414200424142004241
      4200424142004241420084000000BDBEBD00B5B6B500ADAEAD00A5A6A5009C9E
      9C00949694008C8E8C0084868400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000041840042A6E70000414200000000000086C6000041
      840042C7E70042C7E70000A6E700004184000000000000000000000000000000
      000000000000000000000000000084000000B5B6B500ADAEAD00A5A6A5009C9E
      9C00949694008C8E8C0084868400840000004241420084868400008684008486
      8400008684008486840084080800C6C7C6003130310031303100313031003130
      310031303100313031008C8E8C00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000041840042A6E70000414200000000000041420042C7
      E700004142000041420042C7E700004184000000000000000000000000000000
      000000000000000000000000000084000000BDBEBD0031303100313031003130
      310031303100313031008C8E8C00840000004241420000868400848684000086
      8400848684000086840084080800CECFCE00C6C7C600BDBEBD00B5B6B500ADAE
      AD00A5A6A5009C9E9C0094969400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004184000086C60042C7E70000414200004184000000
      00000000000000A6E70000418400000000000000000042414200424142004241
      420042414200424142004241420084080800C6C7C600BDBEBD00B5B6B500ADAE
      AD00A5A6A5009C9E9C0094969400840000004241420084868400008684008486
      8400008684008486840084080800D6D7D600313031003130310031303100B5B6
      B500840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000004220210084A6A5000086C60000A6E7000041840042A6E7000086
      C600004184000041840000000000000000000000000042414200ADAEAD00A5A6
      A5009C9E9C00949694008486840084080800CECFCE0031303100313031003130
      310031303100313031009C9E9C00840000004241420000868400848684000086
      8400848684000086840084080800DEDFDE00D6D7D600CECFCE00C6C7C600BDBE
      BD00840000000000000084000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000042202100A5A6A500A5A6A500848684000041840042C7E700004184000041
      8400000000000000000000000000000000000000000042414200BDBEBD003130
      310031303100313031003130310084080800D6D7D600CECFCE00C6C7C600BDBE
      BD00B5B6B500ADAEAD00A5A6A500840000004241420084868400008684008486
      8400008684008486840084080800E7E7E700DEDFDE00D6D7D600CECFCE00C6C7
      C600840000008400000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000004220
      2100C6C7C600C6C7C60042616300A5A6A5008486840042202100000000000000
      0000000000000000000000000000000000000000000042414200C6C7C600B5B6
      B500ADAAAD00A5A6A5009C9E9C0084080800DEDFDE003130310031303100C6C7
      C600840000008400000084000000840000004241420000868400848684000086
      8400848684000086840084080800840808008408080084080800840808008408
      0800840000004241420000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000042202100C6DF
      C600C6C7C60042616300C6C7C600C6C7C6004220210000000000000000000000
      0000000000000000000000000000000000000000000042414200CECFCE003130
      310031303100313031003130310084101000DEDFDE00DEDFDE00D6D7D600CECF
      CE00840000000000000084000000000000004241420084868400008684008486
      8400008684008486840000868400848684000086840084868400008684008486
      8400008684004241420000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000042202100C6C7C600F7FF
      FF0042414200C6C7C600C6C7C600422021000000000000000000000000000000
      0000000000000000000000000000000000000000000042414200D6D7D600BDBE
      BD00ADAAAD00B5B6B500ADAEAD0084101000E7E7E700DEDFDE00DEDFDE00D6D7
      D600840000008400000000000000000000004241420000868400848684003130
      3100313031003130310031303100313031003130310031303100313031008486
      8400848684004241420000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      00008400000000000000000000000000000042202100C6DFC600C6C7C6004220
      2100C6DFC600C6C7C60042202100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042414200E7E3E7003134
      3100393839008C8E8C00424142008C1010008408080084080800840808008408
      0800840808000000000000000000000000004241420084868400848684003130
      3100C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600313031008486
      8400008684004241420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000000000000000000042202100C6DFC60042202100F7FF
      FF00F7FFFF004220210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042414200EFEFEF00D6D7
      D600C6C3C600C6C7C60042414200000000000000000000000000000000000000
      0000000000000000000000000000000000004241420000868400848684000086
      84004241420000FFFF00313031003130310000FFFF0042414200848684000086
      8400848684004241420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042202100F7FFFF00C6DF
      C600422021000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042414200F7F7F700EFEF
      EF00DEDFDE00D6D7D60042414200424142000000000000000000000000000000
      0000000000000000000000000000000000000000000042414200424142004241
      4200424142004241420000FFFF0000FFFF004241420042414200424142004241
      4200424142000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000422021004220
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042414200424142004241
      4200424142004241420042414200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004241420042414200424142004241420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      object BFCStatement1: TMenuItem
        Caption = 'BFC Statement'
        object CERTIFYCW1: TMenuItem
          Action = acInsertBFCCertifyCW
        end
        object CERTIFYCCW2: TMenuItem
          Action = acInsertBFCCertifyCCW
        end
        object INVERTNEXT1: TMenuItem
          Action = acInsertBFCInvertnext
        end
        object CLIP2: TMenuItem
          Action = acInsertBFCClip
        end
        object NOCLIP2: TMenuItem
          Action = acInsertBFCNoClip
        end
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
    Options = [ofOverwritePrompt, ofEnableSizing]
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
  object SynEditSearch1: TSynEditSearch
    Left = 136
    Top = 296
  end
end
