object frMain: TfrMain
  Left = 204
  Top = 161
  Width = 819
  Height = 441
  Caption = 'LDDesignPad for LDraw'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDefault
  WindowMenu = Window1
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 368
    Width = 811
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
    Width = 811
    Height = 30
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    Color = clBtnFace
    ParentColor = False
    PopupMenu = pmToolbars
    RowSize = 30
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 615
      Top = 2
      Width = 155
      Height = 26
      Align = alNone
      AutoSize = True
      BorderWidth = 1
      Caption = 'External Programs'
      Color = clBtnFace
      DragKind = dkDock
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
      object ToolButton9: TToolButton
        Left = 5
        Top = 0
        Action = acL3PCheck
      end
      object ToolButton1: TToolButton
        Left = 28
        Top = 0
        Action = acLDView
      end
      object ToolButton4: TToolButton
        Left = 51
        Top = 0
        Action = acMLCad
      end
      object ToolButton30: TToolButton
        Left = 74
        Top = 0
        Action = acL3Lab
        PopupMenu = pmMemo
      end
      object ToolButton24: TToolButton
        Left = 97
        Top = 0
        Action = acUserDefined
      end
      object ToolButton32: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton32'
        ImageIndex = 36
        Style = tbsSeparator
      end
      object btPolling: TToolButton
        Left = 128
        Top = 0
        Hint = 'Enable / Disable polling to external programs'
        Caption = 'acPolling'
        DropdownMenu = pmPolling
        ImageIndex = 37
        OnClick = btPollingClick
      end
    end
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 124
      Height = 26
      Align = alNone
      AutoSize = True
      BorderWidth = 1
      Caption = 'Files'
      Color = clBtnFace
      DragKind = dkDock
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
      Left = 433
      Top = 2
      Width = 78
      Height = 26
      Align = alNone
      AutoSize = True
      BorderWidth = 1
      Caption = 'Search & Replace'
      Color = clBtnFace
      DragKind = dkDock
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
      Left = 524
      Top = 2
      Width = 78
      Height = 26
      Align = alNone
      AutoSize = True
      BorderWidth = 1
      Caption = 'Windows'
      Color = clBtnFace
      DragKind = dkDock
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
        Action = WindowCascade1
      end
      object ToolButton6: TToolButton
        Left = 28
        Top = 0
        Action = WindowTileHorizontal1
      end
      object ToolButton7: TToolButton
        Left = 51
        Top = 0
        Action = WindowTileVertical1
      end
    end
    object ToolBar5: TToolBar
      Left = 148
      Top = 2
      Width = 272
      Height = 26
      Align = alNone
      AutoSize = True
      BorderWidth = 1
      Caption = 'Editing'
      Color = clBtnFace
      DragKind = dkDock
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
        HelpType = htKeyword
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
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Images = ilToolBarColor
    Left = 8
    Top = 272
    object File1: TMenuItem
      Caption = '&File'
      Hint = 'File Commands'
      object FileNewItem: TMenuItem
        Action = acFileNew
        Hint = 'New|Create new file'
      end
      object FileOpenItem: TMenuItem
        Action = acFileOpen
      end
      object FileCloseItem: TMenuItem
        Action = acFileClose
        Hint = 'Close|Close current file'
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
        Hint = 'Reload|Reload current file'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object LastOpen1: TMenuItem
        Caption = 'Last opened'
        Enabled = False
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Action = acFileExit
        Hint = 'Close|Exit LDraw DesignPad'
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
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
        ShortCut = 16472
      end
      object CopyItem: TMenuItem
        Action = acEditCopy
        ShortCut = 16451
      end
      object PasteItem: TMenuItem
        Action = acEditPaste
        ShortCut = 16470
      end
      object SelectAll1: TMenuItem
        Action = acSelectAll
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
      object N12: TMenuItem
        Caption = '-'
      end
      object Toolbars: TMenuItem
        Caption = '&Toolbars'
        Hint = 'Show or Hide Toolbars'
        object FilesToolbar: TMenuItem
          Action = acFileToolbar
          AutoCheck = True
        end
        object Edit2: TMenuItem
          Action = acEditingToolbar
          AutoCheck = True
        end
        object SearchReplace1: TMenuItem
          Action = acSearchToolbar
          AutoCheck = True
        end
        object Windows2: TMenuItem
          Action = acWindowsToolbar
          AutoCheck = True
        end
        object ExternalPrograms3: TMenuItem
          Action = acExternalsToolbar
          AutoCheck = True
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miMiscOptions: TMenuItem
        Action = acOptions
        Caption = '&Misc Options'
      end
      object miEditorOptions: TMenuItem
        Action = acEditOptions
        Hint = 'Options|Change Program Settings'
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
    object Tools1: TMenuItem
      Caption = '&Tools'
      Hint = 'LDraw Tools'
      object Plugins1: TMenuItem
        Caption = '&Plugins'
        object Nonefound1: TMenuItem
          Caption = '(None found)'
        end
      end
      object Insert1: TMenuItem
        Caption = '&Insert'
        object StandardPartHeader1: TMenuItem
          Action = acInsertPartHeader
        end
        object UpdateHeader1: TMenuItem
          Action = acInsertUpdateLine
        end
      end
      object ExternalPrograms1: TMenuItem
        Caption = 'External Programs'
        object L3PCheck1: TMenuItem
          Action = acL3PCheck
        end
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
      object TrimLines1: TMenuItem
        Action = acTrimLines
      end
      object InlinePart2: TMenuItem
        Action = acInline
        ShortCut = 16457
      end
    end
    object Window1: TMenuItem
      Caption = '&Window'
      Hint = 'Window commands'
      object WindowCascadeItem: TMenuItem
        Action = WindowCascade1
      end
      object WindowTileItem: TMenuItem
        Action = WindowTileHorizontal1
      end
      object WindowTileItem2: TMenuItem
        Action = WindowTileVertical1
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      Hint = 'Help'
      object HelpAboutItem: TMenuItem
        Action = HelpAbout
        Hint = 'About|Displays information about the program'
      end
      object LDDPHomepage1: TMenuItem
        Action = acHomepage
      end
      object CheckforUpdate1: TMenuItem
        Caption = '&Check for Update'
        Hint = 'Check for latest update'
        OnClick = CheckforUpdate1Click
      end
    end
  end
  object ActionList1: TActionList
    Images = ilToolBarColor
    Left = 8
    Top = 240
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
    object WindowCascade1: TWindowCascade
      Category = 'Windows'
      Caption = '&Cascade'
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Windows'
      Caption = 'Tile &horizontal'
      Hint = 'Tile horizontal'
      ImageIndex = 15
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Windows'
      Caption = 'Tile &vertical'
      Hint = 'Tile vertical'
      ImageIndex = 16
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
    object acL3PCheck: TAction
      Category = 'Externals'
      Caption = 'L3P-Check'
      Hint = 'Check with L3P'
      ImageIndex = 21
      OnExecute = acL3PCheckExecute
    end
    object acOptions: TAction
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
      Caption = 'LDDP &Homepage'
      ImageIndex = 32
      OnExecute = acHomepageExecute
    end
    object acInline: TAction
      Category = 'Editor'
      Caption = 'I&nline Part'
      Hint = 'Inline a part'
      ImageIndex = 33
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
      OnUpdate = acFindNextUpdate
    end
    object acL3Lab: TAction
      Category = 'Externals'
      Caption = 'L3Lab'
      Hint = 'Start L3Lab'
      ImageIndex = 20
      OnExecute = acL3LabExecute
    end
    object acInsertBFC: TAction
      Category = 'EditorBlocks'
      Caption = 'BFC Statement'
      OnExecute = acInsertBFCExecute
    end
    object acEditOptions: TAction
      Caption = '&Editor Options'
      OnExecute = acEditOptionsExecute
    end
    object acFileToolbar: TAction
      Category = 'Toolbars'
      AutoCheck = True
      Caption = 'Files'
      Checked = True
      OnExecute = acFileToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acEditingToolbar: TAction
      Category = 'Toolbars'
      AutoCheck = True
      Caption = 'Editing'
      Checked = True
      OnExecute = acEditingToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acSearchToolbar: TAction
      Category = 'Toolbars'
      AutoCheck = True
      Caption = 'Search && Replace'
      Checked = True
      OnExecute = acSearchToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acWindowsToolbar: TAction
      Category = 'Toolbars'
      AutoCheck = True
      Caption = 'Windows'
      Checked = True
      OnExecute = acWindowsToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acExternalsToolbar: TAction
      Category = 'Toolbars'
      AutoCheck = True
      Caption = 'External Programs'
      Checked = True
      OnExecute = acExternalsToolbarExecute
      OnUpdate = acToolbarUpdate
    end
    object acFilePrint: TPrintDlg
      Category = 'File'
      Caption = '&Print'
      ImageIndex = 36
      ShortCut = 16464
      OnAccept = acFilePrintAccept
    end
    object acHighlightLdraw: TAction
      Caption = 'LDraw'
      OnExecute = acHighlightLdrawExecute
    end
    object acHighlightPascal: TAction
      Caption = 'Pascal'
      OnExecute = acHighlightPascalExecute
    end
    object acHighlightCpp: TAction
      Caption = 'C++'
      OnExecute = acHighlightCppExecute
    end
    object acMRUList: TAction
      Caption = 'acMRUList'
      OnExecute = acMRUListExecute
    end
  end
  object ilToolBarColor: TImageList
    Left = 40
    Top = 240
    Bitmap = {
      494C010126002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      8400848484004263630084A5A50084A5A5004221210084A5A500C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60042212100000000000000000000000000A5A5
      A5004263630042636300A5A5A500A5A5A50084A5C60084A5C600006363000063
      6300A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      8400848484004263630084A5A50084A5A5004242420084848400C6C6C600C6C6
      C600C6C6C600C6C6C60084A5A500424242000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A50084A5C60084A5
      C60084A5C600A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210084848400848484008484
      840084636300C6C6C600A5A5A500A5A5A5004242420042424200848484008484
      8400C6C6C60084A5A5004242420000000000000000000000000000A5E700C6A5
      E700C6A5E700C6A5E700C6A5E700C6A5E70084C6E700A5A5A500A5A5A500A5A5
      A50084A5C6000063630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004221210084848400846363008463
      630084A5A50084A5A500C6C6C600C6C6C600A5A5A500A5A5A500424242004242
      42008484840042424200422121004221210000000000C6A5E700C6A5E700C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C60084C6E700A5A5A500A5A5
      A50084A5C60084A5C60084A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000422121008484840084A5
      A50084A5A500422121004221210084848400C6C6C600C6C6C600A5A5A500A5A5
      A5004242420084A5A50084A5A500422121000000000084E7E700C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C60084C6E700A5A5
      A500A5A5A50084A5C60084A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000422121004221
      21008484840042424200C6C6C600422121004221210084848400C6C6C600C6C6
      C600A5A5A500A5A5A50084A5A500422121000000000084E7E700C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC6004263630042212100C6DEC600C6C6C60084C6
      E700A5A5A50084A5C60000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200C6DEC600C6DEC600C6C6C600C6C6C600422121004221210084A5
      A500C6C6C600C6C6C600A5A5A500422121000000000084E7E700F7FFFF00F7FF
      FF00C6DEC600C6DEC60084A5A50042212100424242004242420084C6C600C6A5
      E700A5A5A500A5A5A50000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200F7FFFF00F7FFFF00C6DEC600C6DEC600C6C6C6004242420084A5
      A50000C6000084A5A500422121000000000000000000C6DEC600F7FFFF00F7FF
      FF00C6DEC6008484840042212100C6C6C600C6DEC60084848400000000008484
      A500C6C6C600A5A5A50084A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC60042424200848484004242
      E7004221210042212100000000000000000000000000C6DEC600F7FFFF00F7FF
      FF008484840042212100C6C6C600C6DEC600C6DEC600C6DEC60084C6C60084A5
      C600C6C6C600A5A5A50084A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0042424200422121004221
      2100000000000000000000000000000000000000000000000000C6DEC600A5A5
      A50042212100C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6A5
      E700C6C6C6004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7FF
      FF00C6DEC600F7FFFF00F7FFFF00F7FFFF00C6DEC600C6DEC600C6DEC600C6A5
      E700C6C6C600A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500C6DEC600C6DEC600F7FFFF00F7FFFF00C6DEC600C6DEC600C6A5E7000084
      C600A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200F7FFFF00F7FFFF00424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6DEC600C6DEC60084E7E70084E7E70084E7E700C6A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000008400004221210084E7E700000000000000000000000000FFFFFF00C6C6
      C600846363008463630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200C6A5000084C6000042E7
      A50084E7840042A50000A5A5A500C6A50000C6A50000C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500C6DEC600C6C6
      C600A5A5A50084A5840084A5840084A563008484630042212100422121004284
      210042C642004284210042212100422121004242420000A5E70000A5E70000A5
      E70000A5E70000A5E700422121004221210042E7420042212100426363004221
      2100008400000084000042212100000000000000000000000000FFFFFF00C6C6
      C6008463630000000000000000004ACE4A004ACE4A005AC65A006BBD6B006BBD
      6B0000000000000000000000000000000000424242008463000000E7A50000E7
      A50000E7A50084E7840000C6C600C6C64200C6A50000C6A50000C6A50000C6A5
      0000C6A5000084630000846300004242420042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6DEC600C6C6A500C6C6A500C6C6A500C6C6A500C6C6A5004221
      210084E784004242420000000000000000004242420000A5E70000A5E70000A5
      E70000A5E70000A5E7004221210042E742004221210042636300424242000000
      0000422121000084000000840000422121000000000000000000FFFFFF00C6C6
      C600846363008463630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420042A5000084E7840084E7
      840000E7A50000E7A50000E7E70084C60000C6A50000C6A50000848484008484
      8400C684000084630000844200004242420042424200A5A5A500F7FFFF00F7FF
      FF00C6DEC600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A500A5A5A5004221
      2100422121004221210000000000000000004242420000A5E70000A5E70000A5
      E70042A5E70042A5E700422121004221210084A5A50084848400424242000000
      0000422121000084000042E74200000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600F7FFFF000000
      0000000000000000000000000000000000004221210000E7A50000E7A50084E7
      840000E7A50000E7A50084C6000042A50000C6C64200C6A5000084C6000000E7
      A5004263630084630000426363004242420042424200A5A5A500F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00424242000000000000000000000000004242420000A5E70042A5E70042C6
      E70042C6E70042C6E7004221210042A521004221210084848400000000004221
      21000084000042E7420000000000000000000000000000000000FFFFFF00C6C6
      C600846363008463630084636300846363000000000000000000000000000000
      000000000000000000000000000000000000000000004221210000E7A50000E7
      E70000E7A50000C6C60000E7A50000E7A50084A5A50084A5A50000C6840000E7
      A50000C684008463000042424200000000004242420084636300846363008463
      6300846363008463630084636300846363008463630084636300846363008463
      6300424242000000000000000000000000000000000042212100422121004221
      210042212100422121000000000084E7630042A5210042212100422121000084
      000042E742004221210000000000000000000000000000000000FFFFFF00C6C6
      C60084636300000000000000000000000000000000001818EF003131DE004A4A
      CE004A4ACE006B6BBD000000000000000000000000004221210042A5000000E7
      A5008463630042A5000000E7A50084E7840042E7000000E7A50000C6C60000E7
      A5000084000084420000424242000000000042424200C6C64200C6C64200C6C6
      4200C6A54200C6A54200C6A52100C6A52100C6842100C6840000C6840000C684
      0000424242000000000000000000000000000000000042212100848484008463
      63004242420042212100000000004221210084E7630042A521004284210042E7
      4200422121000000000000000000000000000000000000000000FFFFFF00C6C6
      C600846363008463630084636300846363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000422121008463
      0000C6A50000C6C6420042A5000000E7A50000E7A50000E7E70000E7E7000084
      00008442000042424200000000000000000042424200C6C64200C6C64200C6C6
      4200C6A54200C6A54200C6A52100C6A52100C6842100C6840000C6840000C684
      0000424242000000000000000000000000000000000042424200C6C6C60084A5
      A500846363004221210000000000000000004221210084E7630084E763004221
      2100000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
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
      C600FFFFFF00A5A5A50042424200C6C6C6008463000084420000844200008463
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
      210084A500004242420000000000000000004263630000000000000000000000
      000000000000000000000000000000000000000084000021C6000021C6000021
      C6000021C6000021C6000021C6000021C600000084000021E7000021E7000021
      E7000021C60000008400000084000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084E7
      000042636300000000000000000000000000000000004263630084A5000084A5
      000084C6000084C6000042424200000000000021C6000021C6000021C6000021
      C6000021C6000021C600000084000021E7000021E7000021E7008463E7000021
      E700000084000021C6000021C6000021C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004221210084E7210084C6
      00008484840000000000000000000000000000000000C6C6C6008463630084C6
      000084E76300C6C6630042424200000000000021C6000021C6000021C6000021
      C6000021C6000021E7004242E7004221E7000021E7000021E7000021C6000021
      E7000021E7008463E7004242E700000000000000000000000000840000000000
      0000000000000000000000000000212121001818180018181800101010001010
      1000080808000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000212121001818180018181800101010001010
      1000080808000000000000000000000000000000000042212100C6DEC60084C6
      000084848400000000000000000000000000000000004263630084A50000C6C6
      420084E78400C6DEC60042424200000000000021C6000021C6000021C6000021
      E7000021E7004221E7000021E7000021C6000021E7004242E7000021E7004242
      E7004242E7000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000292929002121210021212100181818001010
      1000101010000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000292929002121210021212100181818001010
      100010101000000000000000000000000000000000004221210084E7210084C6
      0000426363000000000000000000000000004263630084A5000084E7210084E7
      0000A5A5A500C6DEC60042424200000000000021C6000021E7000021E7004221
      E7000000FF000021C6000021E7000021C6004221E7000021E7008463E7000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084E7
      000084A5000042424200424242004263630084A50000C6DEC60084E700004263
      6300C6C6C60042636300426363000000000000000000000000004221E7000021
      E7004242E7000021E7004242E7008463E7004242E70000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000212121001818180018181800101010001010
      1000080808000808080000000000000000000000000084000000840000000000
      0000000000000000000000000000212121001818180018181800101010001010
      100008080800080808000000000000000000000000008484840084A5000084E7
      000084C6000084C6000084C6000084C60000C6DEC60084C60000426363000000
      0000000000000000000042636300000000000000000000000000000000000000
      00004221E7008463E7004242E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000292929002121210021212100181818001010
      1000101010000808080008080800000000000000000000000000840000000000
      0000000000000000000000000000292929002121210021212100181818001010
      10001010100008080800080808000000000000000000000000004263630084C6
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
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF00FFFFFF000000FF000000FF000000FF00FFFF
      FF000000FF000000FF000000FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400008484000084840000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF000000FF00FFFF
      FF000000FF00FFFFFF000000FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      84000084840000848400008484000084840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426363004263
      630000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF000000
      FF00FFFFFF000000FF000000FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263630084E7000084C6
      0000422121000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      840000848400008484000084840000FFFF0000FFFF00008484000084840000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004242420084C6000084E7
      210084C60000422121000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      84000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      84000084840000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000004263630000000000000000004242420084A5
      000084E7210084A500004263630000000000FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF002121210018181800181818001010
      1000000000000000000021212100212121001818180000000000000000001818
      18001010100000000000000000000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF000084840000848400008484000084840000FFFF0000FF
      FF0000FFFF00008484000000000000000000000000004242420084C6000084C6
      000084A5000084A5000042636300000000000000000000000000000000004263
      630084E7000084E700004263630000000000FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF002121210021212100181818001818
      1800000000002929290029292900000000002121210018181800000000002121
      21001818180000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000848400008484000084840000848400008484000084840000FF
      FF0000FFFF000000000000000000000000000000000042424200C6C6630084E7
      630084C6000084636300C6C6C600000000000000000000000000000000008484
      840084C6000084E72100422121000000000000000000FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF002929290021212100000000000000
      0000000000000000000000000000000000002121210021212100000000002121
      2100212121000000000000000000000000000000000000000000000000000000
      000000FFFF0000848400008484000084840000848400008484000084840000FF
      FF00000000000000000000000000000000000000000042424200C6DEC60084E7
      8400C6C6420084A5000042636300000000000000000000000000000000008484
      840084C60000C6DEC600422121000000000000000000FFFFFF000000FF000000
      FF00FFFFFF0000000000FFFFFF000000FF00FFFFFF0000000000FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF002929290029292900000000000000
      0000000000000000000000000000000000002929290021212100000000002929
      2900212121002121210018181800101010000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000042424200C6DEC600A5A5
      A50084E7000084E7210084A50000426363000000000000000000000000004263
      630084C6000084E72100422121000000000000000000FFFFFF000000FF000000
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF003131310029292900000000000000
      0000000000000000000031313100313131002929290000000000000000003131
      3100292929000000000000000000181818008400000084000000840000008400
      0000840000008400000000848400008484000084840000848400840000008400
      000084000000840000008400000084000000000000004263630042636300C6C6
      C6004263630084E70000C6DEC60084A5000042636300424242004242420084A5
      000084E7000084E70000426363000000000000000000FFFFFF000000FF000000
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF003939390031313100000000000000
      0000000000000000000000000000000000003131310029292900000000003939
      390031313100000000000000000021212100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF00FFFFFF00FFFFFF008400000084000000840000008400
      0000FFFFFF008400000084000000840000000000000042636300000000000000
      0000000000004263630084C60000C6DEC60084C6000084C6000084C6000084C6
      000084E7000084A50000848484000000000000000000FFFFFF000000FF000000
      FF00FFFFFF00000000000000000000000000FFFFFF000000FF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF003939390039393900000000000000
      0000000000000000000000000000000000003131310031313100000000004242
      420039393900000000000000000029292900FFFFFF0084000000840000008400
      000084000000FFFFFF008400000084000000FFFFFF0084000000840000008400
      0000FFFFFF008400000084000000840000000000000000000000000000000000
      000000000000000000004263630084C6000084E7000084E7210084E7210084E7
      210084C60000426363000000000000000000FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF00FFFFFF004242420039393900000000000000
      0000000000004242420042424200000000003939390031313100000000004242
      420042424200000000000000000031313100FFFFFF0084000000840000008400
      000084000000FFFFFF008400000084000000FFFFFF008400000084000000FFFF
      FF0084000000FFFFFF0084000000840000000000000000000000000000000000
      0000000000000000000000000000848484004263630042636300426363004263
      630084848400000000000000000000000000FFFFFF000000FF000000FF000000
      FF000000FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF004242420042424200000000000000
      000000000000000000004A4A4A00424242004242420000000000000000004A4A
      4A0042424200424242003939390031313100FFFFFF0084000000840000008400
      000084000000FFFFFF008400000084000000FFFFFF008400000084000000FFFF
      FF0084000000FFFFFF0084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084000000840000008400
      000084000000FFFFFF00FFFFFF00FFFFFF008400000084000000FFFFFF008400
      00008400000084000000FFFFFF00840000000000000000000000000000000000
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
      00008400000084000000FFFFFF00840000000063A50084C6E7000084C60084A5
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
      E70084E7E70042C6E70000424200000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE008C101000EFEFEF00EFEFEF00E7E7E700DEDE
      DE00DEDEDE008408080000000000000000000000000084080800E7E7E7008408
      080084000000840000008400000084000000840000008400000084000000FFFF
      FF00840000000000000000000000000000000063A50084E7E7000084C60000A5
      E7000084C6000084C6000084C6000084C6000084C6000084C6000084C60042C6
      E70084E7E70042C6E70000424200000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE008C101000F7F7F700EFEFEF00EFEFEF00E7E7
      E700DEDEDE008408080000000000000000000000000084080800EFEFEF008408
      0800840808008408080084080800840000008400000084000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C600FFFF
      FF000063A500FFFFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600F7FFFF000084
      C60084E7E70084C6E70000424200000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084080800840808008408
      08008408080084080800840808008C1010008408080084080800840808008408
      0800840808008408080000000000000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C600FFFF
      FF000063A500FFFFFF00C6DEC600C6DEC6008484840084848400F7FFFF000063
      A50084E7E70084C6E70000424200000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000FF0084848400000000000000000084000000840000008400
      00008400000084000000FFFFFF00840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084000000840000000000
      0000000000000000000000000000000000000063A50042C6E7000084C600FFFF
      FF000063A500FFFFFF00C6DEC600C6DEC6008463630084A5A500C6DEC6000063
      A50084E7E70084C6E70000424200000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484008484
      8400848484000000FF000000FF00848484000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      00008400000084000000840000008400000084000000FFFFFF00840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C600FFFF
      FF000063A500FFFFFF00F7FFFF00C6DEC6004242420042424200F7FFFF000063
      A50084E7E70084C6E70000424200000000000000000000000000000000000000
      0000000000008484840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000063A50084E7E7000084C600C6DE
      C6000084C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000063
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
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000C6C6C6008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242000000000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000C6C6
      C600840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200C6C6C6000000000000000000000000000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5B500ADAD
      AD009C9C9C008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C6008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200C6C6C60042424200000000000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5
      B500ADADAD008400000000000000000000000000000000000000000000000000
      00004242420042424200424242004242420084000000C6C6C600840000008400
      000084000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF008484840000000000840000000000000000000000000000000000
      00000000840000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600424242004242420042424200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600B5B5B5008400000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600FFFFFF008484840084000000840000008400
      0000000000000000000000000000000000004242420084848400C6C6C600C6C6
      C600C6C6C600FFFFFF0084848400424242000000000000000000000000000000
      84000000840000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60042424200C6C6C60042424200000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      080084000000840000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF0084848400000000000000
      00000000000000000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00424242000000000000000000000084000000
      8400000084000000840000008400000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200C6C6C600C6C6C600424242000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00000000000000
      00000000000000000000000000000000000042424200C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600424242000000000000000000000000000000
      84000000840000000000000000000000840042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200C6C6C60000000000C6C6C600424242000000000084080800840808008408
      0800840808008408080084080800840808008400000084000000840000008400
      00008400000084000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200000000000000000000000000000000004242420084848400FFFFFF00FFFF
      FF00C6C6C600C6C6C60084848400424242000000000000000000000000000000
      0000000084000000000000000000000084000000000042424200424242004242
      420042424200424242004242420042424200424242004242420042424200C6C6
      C60000000000C6C6C60042424200424242000000000084080800EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5B500ADAD
      AD009C9C9C0084000000000000000000000042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      420000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000008400000000000000000042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004242
      4200C6C6C60042424200C6C6C600424242000000000084080800EFEFEF00EFEF
      EF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600B5B5
      B500ADADAD0084000000000000000000000042424200C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200FFFFFF000000000000000000000000000000000000000000FFFFFF004242
      4200424242004242420042424200000000000000000084080800F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600B5B5B50084000000000000000000000042424200C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000000000000000000000000000000000000000000000004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00424242000000000000000000000000000000000084080800840808008408
      0800840808008408080084080800840808008408080084080800840808008408
      0800840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFF0000FFFF0000C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      000042424200FFFFFF000000000000000000000000000000000000000000FFFF
      FF00424242000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF00840000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004242420000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424242004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
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
      42004242420042424200424242000000000042424200DEDEDE00000000000000
      0000D6D6D60000000000000000000000000000000000000000009C9C9C004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00CECECE00000000008C8C8C00C6C6C600C6C6C6008484
      84004242420042424200000000000000000042424200E7E7E700DEDEDE00DEDE
      DE00D6D6D600D6D6D600CECECE00C6C6C600BDBDBD00ADADAD00A5A5A5004242
      4200000000000000000000000000000000001010100000000000000000000000
      0000181818001818180000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000063A50084C6E7000084C60084A5
      A500A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084E7E70042C6E700004242000000000042424200DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D6004242420094949400C6C6C600C6C6C600FFFF00008484
      84008484840042424200000000000000000042424200E7E7E700000000000000
      0000DEDEDE000000000000000000000000000000000000000000ADADAD004242
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
      E700E7E7E700DEDEDE00DEDEDE00D6D6D60000000000CECECE00C6C6C6004242
      4200000000000000000000000000000000001818180021212100292929002929
      2900292929002929290029292900212121000000000000000000840000008400
      0000840000000000000000000000000000000063A50084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70042C6E700004242000000000042424200EFEFEF00E7E7E700E7E7
      E700DEDEDE00DEDEDE004242420094949400FFFF0000FFFF0000C6C6C6008484
      84008484840042424200000000000000000042424200F7F7F700000000000000
      0000E7E7E700E7E7E700DEDEDE0000000000CECECE0000000000CECECE004242
      4200000000000000000000000000000000001818180021212100292929002929
      2900393939002929290029292900000000000000000000000000000000008400
      0000840000008400000000000000000000000063A50084E7E7000084C60000A5
      E7000084C6000084C6000084C6000084C6000084C6000084C6000084C60042C6
      E70084E7E70042C6E700004242000000000042424200EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE000000000094949400C6C6C600C6C6C6008484
      84001818180000000000000000000000000042424200F7F7F70000000000D6D6
      D60000000000E7E7E70000000000CECECE0000000000CECECE00424242004242
      4200424242000000000084000000840000001818180021212100292929002929
      2900292929002929290000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000063A50084C6E7000084C600FFFF
      FF000063A500FFFFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600F7FFFF000084
      C60084E7E70084C6E700004242000000000042424200EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700DEDEDE00DEDEDE004242420042424200424242004242
      42000000000000000000000000000000000042424200FFFFFF00F7F7F7004242
      4200D6D6D60000000000CECECE0000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C6000000000084000000840000001818180021212100292929002929
      2900292929000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000063A50084E7E7000084C600FFFF
      FF000063A500FFFFFF00C6DEC600C6DEC6008484840084848400F7FFFF000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D6004242
      4200000000000000000000000000000000004242420042424200424242004242
      420042424200C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000001010100018181800212121002121
      2100000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000063A50042C6E7000084C600FFFF
      FF000063A500FFFFFF00C6DEC600C6DEC6008463630084A5A500C6DEC6000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00E7E7E700E7E7E7004242420042424200424242004242
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000001010100010101000181818000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000063A50084E7E7000084C600FFFF
      FF000063A500FFFFFF00F7FFFF00C6DEC6004242420042424200F7FFFF000063
      A50084E7E70084C6E700004242000000000042424200F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00E7E7E70042424200C6C6C600424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084000000840000001010100010101000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000063A50084E7E7000084C600C6DE
      C6000084C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000063
      A50084E7E70000428400000000000000000042424200FFFFFF00F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00E7E7E7004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000808080000000000000000000000
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
      0000101010000808080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004242420084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000C6C6001010100000C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200F7FFFF0042424200C6C6C600F7FFFF00C6DEC600C6DEC600C6DEC600F7FF
      FF00F7FFFF00C6C6C60042424200000000000000000000000000000000000000
      000000000000000000000000000000000000424242003939390000C6C60000C6
      C60010101000C663840000C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121002121
      2100181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242008484
      84004242420084636300F7FFFF00F7FFFF00C6C6C600C6DEC600C6DEC600C6DE
      C600F7FFFF00C6C6C60042424200000000000000000000000000000000000000
      00000000000000000000080808000000000000C6C60000C6C60084E7E70084E7
      E7001818180084E7E70000C6C600080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121002121
      2100212121001818180000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200C6C6
      C600C6C6C600C6C6C600C6C6C600F7FFFF00C6DEC600C6C6C600C6DEC600C6DE
      C600C6DEC600C6DEC60042424200000000000000000000000000000000000000
      0000181818001010100000C6C60000C6C60084E7E70084E7E70084E7E7001818
      1800C663840084E7E70000C6C600080808000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100212121002121210000000000000000000000000000000000000000000000
      000010101000000000000000000000000000000000000000000042424200C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DEC600C6C6C600C6C6
      C600C6DEC600C6DEC60042424200000000000000000000000000000000008463
      630000C6C60000C6C60084E7E70084E7E70084E7E70084E7E70084E7E7002929
      290084E7E70084E7E70000C6C600101010000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000212121002121210021212100000000000000000000000000000000001010
      100010101000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6DE
      C600C6C6C600C6DEC60042424200000000000000000000000000000000008463
      630084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70021212100C663
      840084E7E70084E7E70000C6C600101010000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000002121210021212100212121000000000000000000181818001818
      180000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC600424242000000000000000000000000008463630084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7003131310084E7
      E70084E7E70084E7E70000C6C600000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000021212100212121002121210021212100181818000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC600424242000000000000000000000000008463630084E7
      E70084E7E70084E7E70084E7E70084E7E700F7FFFF0031313100C663840084E7
      E70084E7E70084E7E70000C6C600080808000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000212121002121210021212100000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC6004242420000000000000000008463630084E7E70084E7
      E70084E7E70084E7E700FFFFFF00FFFFFF00424242003939390084E7E70084E7
      E70084E7E70084E7E70000C6C600101010000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000029292900292929002929290021212100212121000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC6004242420000000000000000008463630084E7E70084E7
      E700FFFFFF00FFFFFF00846363008463630084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70000C6C600101010000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003131310031313100292929000000000000000000212121002121
      210000000000000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC600424242000000000084636300FFFFFF00FFFFFF00FFFF
      FF00846363008463630084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E700181818000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900393939003131310031313100000000000000000000000000000000002121
      210021212100000000000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000008463630084636300846363008463
      63008463630084E7E70084E7E70084E7E70084E7E700F7FFFF00F7FFFF0084E7
      E70084E7E700F7FFFF0084E7E700292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242003939
      3900393939003939390000000000000000000000000000000000000000000000
      000021212100212121000000000000000000000000000000000042424200F7FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6DEC60042424200000000000000000000000000000000000000
      00008463630084E7E70084E7E700F7FFFF00F7FFFF008463630084636300F7FF
      FF00F7FFFF008463630084636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200393939000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0042424200000000000000000000000000000000000000
      000084636300FFFFFF00FFFFFF00846363008463630000000000000000008463
      6300846363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200000000000000000000000000000000000000
      0000000000008463630084636300000000000000000000000000000000000000
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
      8400008484008484840084080800C6C6C6000000000000000000000000000000
      000000000000000000008C8C8C00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042840042A5E70000424200000000000042420042C6
      E700004242000042420042C6E700004284000000000000000000000000000000
      000000000000000000000000000084000000BDBDBD0000000000000000000000
      000000000000000000008C8C8C00840000004242420000848400848484000084
      8400848484000084840084080800CECECE00C6C6C600BDBDBD00B5B5B500ADAD
      AD00A5A5A5009C9C9C0094949400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004284000084C60042C6E70000424200004284000000
      00000000000000A5E70000428400000000000000000042424200424242004242
      420042424200424242004242420084080800C6C6C600BDBDBD00B5B5B500ADAD
      AD00A5A5A5009C9C9C0094949400840000004242420084848400008484008484
      8400008484008484840084080800D6D6D600000000000000000000000000B5B5
      B500840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000004221210084A5A5000084C60000A5E7000042840042A5E7000084
      C600004284000042840000000000000000000000000042424200ADADAD00A5A5
      A5009C9C9C00949494008484840084080800CECECE0000000000000000000000
      000000000000000000009C9C9C00840000004242420000848400848484000084
      8400848484000084840084080800DEDEDE00D6D6D600CECECE00C6C6C600BDBD
      BD0084000000FFFFFF0084000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000042212100A5A5A500A5A5A500848484000042840042C6E700004284000042
      8400000000000000000000000000000000000000000042424200BDBDBD000000
      000000000000000000000000000084080800D6D6D600CECECE00C6C6C600BDBD
      BD00B5B5B500ADADAD00A5A5A500840000004242420084848400008484008484
      8400008484008484840084080800E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600840000008400000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000004221
      2100C6C6C600C6C6C60042636300A5A5A5008484840042212100000000000000
      0000000000000000000000000000000000000000000042424200C6C6C600BDBD
      BD00ADADAD00A5A5A5009C9C9C0084080800DEDEDE000000000000000000C6C6
      C600840000008400000084000000840000004242420000848400848484000084
      8400848484000084840084080800840808008408080084080800840808008408
      0800840000004242420000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000042212100C6DE
      C600C6C6C60042636300C6C6C600C6C6C6004221210000000000000000000000
      0000000000000000000000000000000000000000000042424200CECECE000000
      000000000000000000000000000084101000DEDEDE00DEDEDE00D6D6D600CECE
      CE0084000000FFFFFF0084000000000000004242420084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484004242420000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000042212100C6C6C600F7FF
      FF0042424200C6C6C600C6C6C600422121000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200D6D6D600CECE
      CE00C6C6C600B5B5B500ADADAD0084101000E7E7E700DEDEDE00DEDEDE00D6D6
      D600840000008400000000000000000000004242420000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484004242420000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      00008400000000000000000000000000000042212100C6DEC600C6C6C6004221
      2100C6DEC600C6C6C60042212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200E7E7E7000000
      000000000000C6C6C600424242008C1010008408080084080800840808008408
      0800840808000000000000000000000000004242420084848400848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000008484
      8400008484004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000000000000000000042212100C6DEC60042212100F7FF
      FF00F7FFFF004221210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200EFEFEF00E7E7
      E700D6D6D600CECECE0042424200FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000004242420000848400848484000084
      84004242420000FFFF00000000000000000000FFFF0042424200848484000084
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
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF00E3C7F81F000000008081E00700000000
      0000C00300000000000080010000000000018001000000000000000000000000
      8000000000000000C000000000000000F000000000000000F001000000000000
      E003000000000000E00F800100000000C07F800100000000C07FC00300000000
      E0FFE00700000000F8FFF81F00000000F81FFFFFFC8F800FE0070007F807800F
      C00300078003800080010003800180C08001000380008000000000008000800F
      000000000000800700000000000184070000000300008007000000030000800F
      000000070001800180010007820387018001000782078001C0030007830F800F
      E0070007839F800FF81FFFFFC7FFFFFFFFFFFFFFFFFFFFFF4C03CC03F8010000
      37FFB7FFFFFF00009403B403F801000087FFB7FF07FF0000A403B40388010000
      C3FFCFFFDFFF0000FBFFFFFFFFFF0000FFFFFFFFDFFF00004C03CC0388010000
      37FFB7FF07FF00009403B403F801000087FFB7FFFFFF0000A403B403F8010000
      C3FFCFFFFFFF0000FBFFFFFFFFFF0000FFFFFFDFFFFFFFFFFFFFFF07FEFFFEFF
      F3FFFC01FFFFFFFFE1FFF000C27FC27FC1FFC000FFFFFFFF83010000C200C200
      87810000FFFFFFFF87810001DE07DE0787810007CE079E078701001F07FF07FF
      8001C07FCE009E00801DF1FFDE00DE00C03FFEE8FFFFFFFFE07FFEABC200C200
      FFFFFE4BFFFFFFFFFFFFFEEBFEFFFEFFE0002A4AFE7FFFFFE0006ADAF81FFFFF
      E0006259E007FFCFE0006ADAC003FF87F0002A4AC003FF830000FFFFC00380C1
      00000C67C00381E100000927E00781E180003F27F00F81E184403F20F81F80E1
      84403C660000800187003F260000B80187003F260000FC03030039260000FE07
      03803C600000FFFF03C1FFFF0000FFFFFFFFFC008003FFC38003FC000001FF99
      8003FC000001F99C8003FC000001809C8003E0000001009C8003E0000001F989
      8003E0000001FB838003E0070001FF9F800380070001DF9F800380070001831F
      80038007000123BF8003801F000133F98003801F000193808003801F0001E300
      FFFF801F000347F9FFFFFFFF80078FFBFFF3FFFFFFFFFFFFFFE1FF3FC0078003
      FFC1FE3F80038003FF83C07F00018003F00780F700018003C00F00E700018003
      801F00C100008003801F00E600008003000F00F680008003000F81FEC0008003
      000FC3BFE0018003000FFFB7E0078003801FFFB3F0078003801FFFC1F0038003
      C03FFFF3F803FFFFF0FFFFF7FFFFFFFF8003FFFFFFFFFFFF0001000C000FF9FF
      00010008000FF9FF00010001000FF3C700010003000F73C700010003000F27FF
      00010003000F07C700010003000F00C700010003000F01E300010007000403F1
      0001000F000006380001000F00000E380001000FF8001E380001001FFC003F01
      0003003FFE047F838007007FFFFFFFFFFFFFFFFFF801FFF1FFFFFFFFF001FFC0
      FFFFEFFDE001FF00FFFFC7FFC001FC00FFFFC3FBC001F000EFFFE3F7C001E000
      EF83F1E7C001E000DFC3F8CFC001C000DFE3FC1FC001C000DFD3FE3FC0018000
      EF3BFC1FC0018000F0FFF8CFC0010000FFFFE1E7C0010000FFFFC3F3C001F001
      FFFFC7FDC001F067FFFFFFFFC001F9FFFF1FFFFFFFFFFFFFFE0FFFFFFC00FFFF
      FC01FE008000FFFFFC40FE000000FFFFFC40FE000000FFFFFC1980000000FFF7
      F80380000001C1F7F00F80000003C3FBE03F80000003C7FBC07F80010003CBFB
      80FF80030003DCF701FF80070003FF0F03FF807F0003FFFF87FF80FF8007FFFF
      CFFF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmMemo: TPopupMenu
    AutoHotkeys = maManual
    Images = ilToolBarColor
    MenuAnimation = [maLeftToRight]
    Left = 136
    Top = 272
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
        Action = acInsertBFC
      end
    end
    object Plugins3: TMenuItem
      Caption = '&Plugins'
      object TMenuItem
      end
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
  object HttpCLi1: THttpCli
    URL = 'http://home.arcor.de/deckard/lddp.ver'
    LocalAddr = '0.0.0.0'
    ProxyPort = '80'
    Agent = 'Mozilla/3.0 (compatible)'
    Accept = 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*'
    NoCache = True
    ContentTypePost = 'application/x-www-form-urlencoded'
    MultiThreaded = False
    SocksLevel = '5'
    SocksAuthentication = socksNoAuthentication
    Left = 40
    Top = 336
  end
  object pmPolling: TPopupMenu
    Left = 104
    Top = 272
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
    Top = 336
  end
  object pmL3P: TPopupMenu
    OnPopup = pmL3PPopup
    Left = 72
    Top = 272
    object Fixerror1: TMenuItem
      Caption = 'Autofix error'
      OnClick = Fixerror1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Fixallerrors1: TMenuItem
      Caption = 'Autofix all errors'
      OnClick = Fixallerrors1Click
    end
  end
  object SynLDRSyn: TSynLDRSyn
    Left = 40
    Top = 304
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
    Top = 304
  end
  object SynCppSyn: TSynCppSyn
    DefaultFilter = 'C++ Files (*.c,*.cpp,*.h,*.hpp)|*.c;*.cpp;*.h;*.hpp'
    Left = 72
    Top = 304
  end
  object SynPasSyn: TSynPasSyn
    Left = 104
    Top = 304
  end
  object pmToolbars: TPopupMenu
    Left = 40
    Top = 272
    object Files1: TMenuItem
      Action = acFileToolbar
      AutoCheck = True
    end
    object Editing1: TMenuItem
      Action = acEditingToolbar
      AutoCheck = True
    end
    object SearchandReplace1: TMenuItem
      Action = acSearchToolbar
      AutoCheck = True
    end
    object Windows1: TMenuItem
      Action = acWindowsToolbar
      AutoCheck = True
    end
    object ExternalPrograms2: TMenuItem
      Action = acExternalsToolbar
      AutoCheck = True
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'dat'
    Filter = 
      'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|Pascal, Delp' +
      'hi (*.pas,*.dpr)|*.pas;*.dpr|C,C++(*.c)|*.c|All Files (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofFileMustExist, ofEnableSizing]
    Title = 'Choose LDraw File...'
    Left = 8
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'dat'
    Filter = 
      'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|All Files (*' +
      '.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save File as...'
    Left = 40
    Top = 208
  end
end
