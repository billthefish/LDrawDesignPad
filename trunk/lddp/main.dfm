object frMain: TfrMain
  Left = 195
  Top = 165
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
    Top = 376
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
    SimplePanel = False
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
    Top = 336
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
    object N7: TMenuItem
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
        Hint = 'Open the LDDP homepage in a browser window'
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
    Left = 40
    Top = 336
    object acFileNew: TAction
      Category = 'File'
      Caption = '&New'
      Hint = 'Neu|Neue Datei erstellen'
      ImageIndex = 6
      ShortCut = 16462
      OnExecute = acFileNewExecute
    end
    object acFileOpen: TFileOpen
      Category = 'File'
      Caption = '&Open'
      Dialog.DefaultExt = 'dat'
      Dialog.Filter = 
        'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|Pascal, Delp' +
        'hi (*.pas,*.dpr)|*.pas;*.dpr|C,C++(*.c)|*.c|All Files (*.*)|*.*'
      Dialog.Options = [ofHideReadOnly, ofAllowMultiSelect, ofFileMustExist, ofEnableSizing]
      Dialog.Title = 'Choose LDraw File...'
      Hint = 'Open|Open a file'
      ImageIndex = 7
      ShortCut = 16463
      OnAccept = acFileOpenAccept
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
    object acFileSaveAs: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As'
      Dialog.DefaultExt = 'dat'
      Dialog.Filter = 
        'LDraw-Files (*.ldr ,*.dat ,*.mpd)|*.dat;*.mpd;*.ldr|All Files (*' +
        '.*)|*.*'
      Dialog.Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
      Dialog.Title = 'Save File as...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 18
      BeforeExecute = acFileSaveAsBeforeExecute
      OnAccept = acFileSaveAsAccept
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
  end
  object MRUManager: TJvMRUManager
    Duplicates = dupIgnore
    Mode = rmAppend
    RemoveOnSelect = True
    IniStorage = fstMain
    RecentMenu = LastOpen1
    OnClick = MRUManagerClick
    Left = 72
    Top = 336
  end
  object fstMain: TJvFormStorage
    Active = False
    Options = []
    StoredValues = <
      item
        Value = ''
        KeyString = 'InstallPath'
      end>
    Left = 104
    Top = 336
  end
  object ilToolBarColor: TImageList
    Left = 136
    Top = 336
    Bitmap = {
      494C010126002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A000000001001000000000000050
      0000000000000000000000000000000000000000000000008810881088100000
      0000000000000821082188100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000881088101042104288318810
      8810000008219052186318638810881000000000000000000000000090629062
      8031803190629052000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810104210421042104288319052
      9052881090521863186318631863186388100000000000009452883188319452
      9452906290628031803194520000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810104210421042104288319052
      9052082110421863186318631863905208210000000094521863186318631863
      9452945294529062906290629452000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810104210421042903118639452
      9452082108211042104218639052082100000000000080729872987298729872
      9872107394529452945290628031000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008810104290319031905290521863
      1863945294520821082110420821881088100000987298727863786378637863
      7863186310739452945290629062905200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000881010429052905288108810
      1042186318639452945208219052905288100000907378637863786378637863
      7863786318631073945294529062906200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088108810104208211863
      8810881010421863186394529452905288100000907378637863786378637863
      8831881078631863107394529062803100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000082178637863
      18631863881088109052186318639452881000009073FE7FFE7F786378639052
      8810082108211063987294529452803100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000821FE7FFE7F
      78637863186308219052000390528810000000007863FE7FFE7F786310428810
      1863786310420000105218639452906200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000821FE7FFE7FFE7F
      FE7F7863082110420871881088100000000000007863FE7FFE7F104288101863
      7863786378631063906218639452906200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000821FE7FFE7FFE7F
      FE7FFE7F08218810881000000000000000000000000078639452881018637863
      7863786378637863987218638831000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7F08210000000000000000000000000000000000009452FE7F7863FE7FFE7F
      FE7F786378637863987218639452000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7F08210000000000000000000000000000000000000000945278637863FE7F
      FE7F786378639872006294520000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000008210821FE7FFE7F
      0821000000000000000000000000000000000000000000000000000078637863
      9073907390739872000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00008810882388108002000288109073000000000000FF7F1863903190310000
      0000000000000000000000000000000000000821980210038853904388029452
      9802980298029802980298029001900108210821945278631863945290429042
      9032103288108810081208230812881088100821807280728072807280728810
      88108823881088318810000200028810000000000000FF7F1863903100000000
      292729270B2FED36ED3600000000000000000821900180538053805390430063
      18239802980298029802980290019001082108219452FE7FFE7F786378631853
      1853185318531853881090430821000000000821807280728072807280728810
      88238810883108210000881000020002881000000000FF7F1863903190310000
      0000000000000000000000000000000000000821880290439043805380538073
      10039802980210421042180290011001082108219452FE7FFE7F786318631863
      9452945294529452881088108810000000000821807280728072887288728810
      88109052104208210000881000028823000000000000FF7F1863186318631863
      186318631863FE7F000000000000000000008810805380539043805380531003
      88021823980210038053883190018831082108219452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7F08210000000000000821807288720873087308738810
      88128810104200008810000288230000000000000000FF7F1863903190319031
      9031000000000000000000000000000000000000881080538073805300638053
      8053905290520043805300439001082100000821903190319031903190319031
      9031903190319031903108210000000000000000881088108810881088100000
      90338812881088100002882388100000000000000000FF7F1863903100000000
      000000006374C66C29652965AD5D000000000000881088028053903188028053
      9043880380530063805300021001082100000821182318231823982298229812
      9812181218021802180208210000000000000000881010429031082188100000
      88109033881208128823881000000000000000000000FF7F1863903190319031
      9031000000000000000000000000000000000000000088109001980218238802
      8053805380738073000210010821000000000821182318231823982298229812
      9812181218021802180208210000000000000000082118639052903188100000
      00008810903390338810000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000008810881098029802
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
      1000100010001000100010001000100000008810186308211863FF7F94520821
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
      0000883100000000000000000000000000000040806080608060806080608060
      8060004080708070807080600040004080600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000883190039003883100000000
      0000000088319002900210031003082100008060806080608060806080600040
      8070807080709071807000408060806080600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000881090131003104200000000
      0000000018639031100390331833082100008060806080608060806080700871
      8870807080708060807080709071087100000000000010000000000000000000
      8410630C630C4208420821040000000000000000000010000000000000000000
      8410630C630C4208420821040000000000000000881078631003104200000000
      0000000088319002182390437863082100008060806080608070807088708070
      8060807008718070087108710000000000000000000010001000000000000000
      A51484108410630C420842080000000000000000100010000000000000000000
      A51484108410630C420842080000000000000000881090131003883100000000
      0000883190029013900394527863082100008060807080708870007C80608070
      8060887080709071000000000000000000001000100010001000100000000000
      0000000000000000000000000000000000001000100010001000100000000000
      0000000000000000000000000000000000000000883190039003900208210821
      8831900278639003883118638831883100000000000088708070087180700871
      9071087100000000000000000000000000000000000010001000000000000000
      8410630C630C4208420821042104000000000000100010000000000000000000
      8410630C630C4208420821042104000000000000104290029003100310031003
      1003786310038831000000000000883100000000000000000000887090710871
      0000000000000000000000000000000000000000000010000000000000000000
      A51484108410630C420842082104210400000000000010000000000000000000
      A51484108410630C420842082104210400000000000088311003901390139013
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
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0042E07F00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7F007C007C007C
      FF7F007C007C007CFF7F007C007C007CFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000420042
      0042E07FE07FE07F000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7F007CFF7FFF7F
      FF7F007CFF7F007CFF7F007CFF7F007CFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000042004200420042
      0042E07FE07FE07FE07FE07F0000000000000000000000000000000000000000
      000000000000883188310000000000000000000000000000FF7FFF7F007CFF7F
      FF7FFF7F007CFF7F007CFF7F007C007CFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000420042004200420042
      00420042E07FE07FE07FE07FE07F000000000000000000000000000000000000
      0000000088319003100388100000000000000000000000000000FF7F007C007C
      FF7FFF7FFF7FFF7FFF7FFF7F007CFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000420042004200420042
      E07FE07F00420042E07FE07FE07F000000000000000000000000000000000000
      000000000821100390131003881000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F007CFF7F0000000000000000000000000000
      00000000000000000000000000000000000000000000004200420042E07FE07F
      E07FE07FE07FE07F00420042E07F000000000000000000000000000000000000
      883100000000082190029013900288310000FF7F007C007C007C007C007C007C
      007CFF7F007C007C007C007CFF7FFF7FFF7F8410630C630C4208000000008410
      8410630C00000000630C4208000000000000000000000042E07FE07FE07F0042
      004200420042E07FE07FE07F0042000000000000082110031003900290028831
      000000000000000088319003900388310000FF7FFF7F007C007CFF7FFF7F007C
      007CFF7F007C007CFF7FFF7F007C007CFF7F84108410630C630C0000A514A514
      00008410630C00008410630C000000000000000000000000E07FE07F00420042
      0042004200420042E07FE07F0000000000000000082118339033100390311863
      0000000000000000104210039013881000000000FF7F007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7FFF7FFF7F007C007CFF7FA514841000000000000000000000
      0000841084100000841084100000000000000000000000000000E07F00420042
      0042004200420042E07F00000000000000000000082178639043182390028831
      0000000000000000104210037863881000000000FF7F007C007CFF7F0000FF7F
      007CFF7F0000FF7FFF7F007C007C007CFF7FA514A51400000000000000000000
      0000A51484100000A51484108410630C4208000000000000000000000042E07F
      E07FE07FE07F0042000000000000000000000000082178639452900390139002
      8831000000000000883110039013881000000000FF7F007C007CFF7F0000FF7F
      FF7FFF7F0000FF7F007C007C007CFF7FFF7FC618A5140000000000000000C618
      C618A51400000000C618A51400000000630C1000100010001000100010000042
      0042004200421000100010001000100010000000883188311863883190037863
      9002883108210821900290039003883100000000FF7F007C007CFF7F00000000
      0000FF7FFF7FFF7FFF7FFF7F007CFF7FFF7FE71CC61800000000000000000000
      0000C618A5140000E71CC618000000008410FF7FFF7FFF7FFF7F1000FF7FFF7F
      FF7F1000100010001000FF7F1000100010000000883100000000000088311003
      7863100310031003100390039002104200000000FF7F007C007CFF7F00000000
      0000FF7F007CFF7FFF7FFF7F007C007CFF7FE71CE71C00000000000000000000
      0000C618C61800000821E71C00000000A514FF7F1000100010001000FF7F1000
      1000FF7F100010001000FF7F1000100010000000000000000000000000008831
      100390039013901390131003883100000000FF7FFF7F007C007CFF7FFF7F0000
      0000FF7FFF7F007C007C007C007C007CFF7F0821E71C00000000000008210821
      0000E71CC61800000821082100000000C618FF7F1000100010001000FF7F1000
      1000FF7F10001000FF7F1000FF7F100010000000000000000000000000000000
      104288318831883188311042000000000000FF7F007C007C007C007CFF7F0000
      00000000FF7FFF7F007C007C007CFF7FFF7F0821082100000000000000002925
      0821082100000000292508210821E71CC618FF7F1000100010001000FF7F1000
      1000FF7F10001000FF7F1000FF7F100010000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000
      000000000000FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      000000000000000000000000000000000000FF7F1000100010001000FF7FFF7F
      FF7F10001000FF7F100010001000FF7F10000000000000000000000000000000
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
      1000100010001000100010001000FF7F10008051107300629052945218631863
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
      9073907390739073907390730873002100000000000010420000000000000000
      00000000000010420000000000000000000000003004BD77BD779C737B6F7B6F
      5108BD77BD779C737B6F7B6F300400000000000030049C733004100010001000
      1000100010001000FF7F10000000000000008051907300628072006200620062
      0062006200620062087390730873002100000000000000001042000000000000
      00000000000010420000000000000000000000003004DE7BBD77BD779C737B6F
      5108DE7BBD77BD779C737B6F30040000000000003004BD773004300430043004
      100010001000100010001000000000000000805110730062FF7F8051FF7FFE7F
      FE7F18631863FE7F006290731073002100000000104200000000000010420000
      0000000000000000000000000000000000000000300430043004300430043004
      51083004300430043004300430040000000000003004BD77BD779C737B6F7B6F
      5A6B39671863100000000000000000000000805190730062FF7F8051FF7F7863
      786310421042FE7F805190731073002100000000104200000000000010420000
      000000000000000000000000007C10420000000010001000100010001000FF7F
      10001000100010001000FF7F1000000000000000300430043004300430043004
      300430041000100000000000000000000000805108730062FF7F8051FF7F7863
      7863903190527863805190731073002100000000000000000000000010420000
      000000001042104210421042007C007C10420000100010001000100010001000
      1000100010001000100010001000000000000000100010001000100010001000
      10001000FF7F100000000000000000000000805190730062FF7F8051FF7FFE7F
      786308210821FE7F805190731073002100000000000000000000000010420000
      0000007C007C007C007C007C007C007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000100010001000100010001000
      10001000100010000000000000000000000080519073006278630062FF7FFF7F
      FF7FFF7FFF7FFF7F805190730041000000000000000010421042000000000000
      000000000000000000000000007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104210421042104210421042
      1042104210421042104210420000000000000000000000000000000000000000
      000000000000000000000000007C000000000000000000000000000000000000
      0000000000000000000010001000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000100018631000100000000000000000000000000000000000
      0000100010000000000000000000000000000000000008210821082108210821
      0821082108210821082108210000000000000000300430043004300430043004
      3004100010001000100010001000000000000000000000000000000000000000
      0000000000001000186310001000100000000000000000000000000000000000
      1000100010000000000000000000000000000000082118631863186318631863
      18631863186318630821186300000000000000003004BD779C737B6F7B6F5A6B
      5A6B39671863D65AB556734E1000000000000000000000000000000000000000
      0000000010001863100010001000000000000000000000000000000000001000
      1000100000000000000000000000000000000821082108210821082108210821
      08210821082108210821082118630821000000003004BD77BD779C737B6F7B6F
      5A6B5A6B39671863D65AB5561000000000000000000000000000082108210821
      0821100018631000100010000000000000000000000010421863FF7F10420000
      1000000000000000000000400000000000000821186318631863186318631863
      E07FE07FE07F18631863082108210821000000003004DE7BBD77BD779C737B6F
      7B6F5A6B5A6B39671863D65A1000000000000000000000000000186318631863
      FF7F1042100010001000000000000000000008211042186318631863FF7F1042
      0821000000000000004000400000000000000821186318631863186318631863
      1042104210421863186308211863082100000000300430043004300430043004
      3004300430043004300410001000000000000000000010421863186318631863
      1863FF7F1042000000000000000000000000082118631863186318631863FF7F
      0821000000000040004000400040004000000821082108210821082108210821
      0821082108210821082108211863186308210000100010001000100010001000
      10001000100010001000FF7F1000000000000000000018631863186318631863
      18631863FF7F00000000000000000000000008211863FF7FFF03186318631863
      0821000000000000004000400000000000400821186318631863186318631863
      1863186318631863082118630000186308210000300430043004300430043004
      3004100010001000100010001000000000000821186318631863186318631863
      18631863186318630821000000000000000008211042FF7FFF7F186318631042
      0821000000000000000000400000000000400000082108210821082108210821
      08210821082108211863000018630821082100003004BD779C737B6F7B6F5A6B
      5A6B39671863D65AB556734E1000000000000821186318631863186318631863
      1863186318631863082100000000000000000000000010421863186310420000
      000000000000000000000000000000000040000000000821FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0821186308211863082100003004BD77BD779C737B6F7B6F
      5A6B5A6B39671863D65AB55610000000000008211863FF7FFF03186318631863
      1863186318631863082100000000000000000000000000000000000000000000
      0000000000400000000000000000000000000000000000000821FF7F00000000
      000000000000FF7F0821082108210821000000003004DE7BBD77BD779C737B6F
      7B6F5A6B5A6B39671863D65A10000000000008211863FF7FFF03186318631863
      1863186318631863082100000000000000000000000000000000000000000000
      0000000000400000000000400000000000000000000000000821FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F08210000000000000000300430043004300430043004
      30043004300430043004100010000000000000000000FF7FFF7FFF03FF031863
      1863186318630000000000000000000000000000000000000000000000000000
      00000000004000000000004000400000000000000000000000000821FF7F0000
      0000000000000000FF7F08210000000000000000100010001000100010001000
      10001000100010001000FF7F100000000000000000001042FF7FFF7FFF7F1863
      1863186310420000000000000000000000000000000000000000000000000000
      00000000000000400040004000400040000000000000000000000821FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0821000000000000100010001000100010001000
      1000100010001000100010001000000000000000000000000000186318631863
      1863000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000400040000000000000000000000000000008210821
      0821082108210821082108210821000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000082108210821
      0821000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000400000000000000000000000000000000000000000
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
      D65A0821082108210821082108210821000008217B6F000000005A6B00000000
      000000000000734E082100000000000000000000000000000000420842080000
      0000000000001000100010000000000000008051107300621863186318631863
      18631863186318631863907308730021000008217B6F7B6F5A6B5A6B39673967
      00003146186318631042082108210000000008219C737B6F7B6F5A6B5A6B3967
      1863F75EB5569452082100000000000000004208000000000000630C630C0000
      0000000000001000100010000000000000008051107300629052945218631863
      18631863186318631863907308730021000008217B6F7B6F5A6B5A6B5A6B0821
      524A18631863FF031042104208210000000008219C73000000007B6F00000000
      000000000000B556082100000000000000004208630C00008410841000000000
      0000000000000000000000000000000000008051107300629052905294529452
      18631863186318631863907308730021000008219C737B6F7B6F5A6B5A6B0821
      1863186318631863104218630821000000000821BD779C739C737B6F7B6F5A6B
      5A6B39671863F75E08210000000000000000630C8410A514A514A51400000000
      0000000000001000100010000000000000008051907300620062006200620062
      00620062006200620062907308730021000008219C739C737B6F7B6F5A6B0821
      1863FF0318631863104218630821000000000821BD77BD779C739C737B6F7B6F
      5A6B00003967186308210000000000000000630C8410A514A514A514A514A514
      8410000000001000100010000000000000008051907390739073907390739073
      9073907390739073907390730873002100000821BD779C739C737B6F7B6F0821
      524AFF03FF031863104210420821000000000821DE7B000000009C739C737B6F
      000039670000396708210000000000000000630C8410A514A514E71CA514A514
      0000000000000000100010001000000000008051907300628072006200620062
      0062006200620062087390730873002100000821BD77BD779C739C737B6F7B6F
      0000524A186318631042630C0000000000000821DE7B00005A6B00009C730000
      396700003967082108210821000010001000630C8410A514A514A514A5140000
      000000000000000000001000100010000000805110730062FF7F8051FF7FFE7F
      FE7F18631863FE7F006290731073002100000821BD77BD77BD779C739C737B6F
      7B6F082108210821082100000000000000000821FF7FDE7B08215A6B00003967
      000018630000186318631863000010001000630C8410A514A514A51400000000
      100010001000000000000000100010001000805190730062FF7F8051FF7F7863
      786310421042FE7F805190731073002100000821DE7BBD77BD77BD779C739C73
      7B6F7B6F5A6B5A6B082100000000000000000821082108210821082118630000
      1863000018631863186318631863100010004208630C84108410000000000000
      100010001000000000000000100010001000805108730062FF7F8051FF7F7863
      7863903190527863805190731073002100000821DE7BDE7BBD77BD77BD779C73
      9C73082108210821082100000000000000000000000000000000000000001863
      00001863186318631863186318631000100042084208630C0000000000000000
      100010001000000000000000100010001000805190730062FF7F8051FF7FFE7F
      786308210821FE7F805190731073002100000821DE7BDE7BDE7BBD77BD77BD77
      9C73082118630821000000000000000000000000000000000000000000000000
      1863186318631863186318630000100010004208420800000000000000000000
      00001000100010001000100010001000000080519073006278630062FF7FFF7F
      FF7FFF7FFF7FFF7F805190730041000000000821FF7FDE7BDE7BDE7BBD77BD77
      9C73082108210000000000000000000000000000000000000000000000000000
      0000000000000000000000000000100010002104000000000000000000000000
      0000000010001000100010001000000000000000104210421042104210421042
      1042104210421042104210420000000000000821082108210821082108210821
      0821082100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008210821
      0821082108210821082108210821082100000000000000000000000000000000
      0000000000000000000042082104000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000082110421863
      1863186318631863186318637863082100000000000000000000000000000000
      0000000000000000000000634208006300000000000000000000000000000000
      000000000000000000000000000000000000000000000000630C000000000000
      0000000000000000000000000000000000000000000000000821FE7F08211863
      FE7F786378637863FE7FFE7F1863082100000000000000000000000000000000
      00000821E71C0063006342089841006300000000000000000000000000000000
      0000000000000000000000000000000000000000000084108410630C00000000
      000000000000000000000000000000000000000000000821104208219031FE7F
      FE7F1863786378637863FE7F1863082100000000000000000000000000002104
      00000063006390739073630C9073006321040000000000000000000000000000
      00000000000000000000000000000000000000000000841084108410630C0000
      0000000000000000000000000000000000000000000008211863186318631863
      FE7F786318637863786378637863082100000000000000000000630C42080063
      0063907390739073630C98419073006321040000000000001000000000000000
      0000000000000000000000000000000000000000000000008410841084100000
      0000000000000000000042080000000000000000000008211863186318631863
      1863186378631863186378637863082100000000000000009031006300639073
      9073907390739073A51490739073006342080000000000001000000000000000
      0000000010001000100010001000000000000000000000000000841084108410
      000000000000000042084208000000000000000000000821FE7F186318631863
      1863186318631863786318637863082100000000000000009031907390739073
      9073907390738410984190739073006342080000000010000000000000000000
      0000000000001000100010001000000000000000000000000000000084108410
      841000000000630C630C0000000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000090319073907390739073
      907390739073C618907390739073006300000000000010000000000000000000
      0000000000000000100010001000000000000000000000000000000000008410
      841084108410630C00000000000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000090319073907390739073
      9073FE7FC6189841907390739073006321040000000010000000000000000000
      0000000000001000000010001000000000000000000000000000000000000000
      841084108410000000000000000000000000000000000821FE7F186318631863
      186318631863186318631863786308210000000090319073907390739073FF7F
      FF7F0821E71C9073907390739073006342080000000000001000000000000000
      000010001000000000000000100000000000000000000000000000000000A514
      A514A5148410841000000000000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000903190739073FF7FFF7F9031
      9031907390739073907390739073006342080000000000000000100010001000
      10000000000000000000000000000000000000000000000000000000C618C618
      A51400000000841084100000000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100009031FF7FFF7FFF7F903190319073
      90739073907390739073907390739073630C0000000000000000000000000000
      000000000000000000000000000000000000000000000000E71CE71CC618C618
      000000000000000084108410000000000000000000000821FE7F186318631863
      1863186318631863186318637863082100009031903190319031903190739073
      90739073FE7FFE7F90739073FE7F9073A5140000000000000000000000000000
      000000000000000000000000000000000000000000000821E71CE71CE71C0000
      000000000000000000008410841000000000000000000821FE7F186318631863
      1863186318631863186318637863082100000000000000000000903190739073
      FE7FFE7F90319031FE7FFE7F9031903100000000000000000000000000000000
      0000000000000000000000000000000000000000000008210821E71C00000000
      000000000000000000000000000000000000000000000821FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F0821000000000000000000009031FF7FFF7F
      9031903100000000903190310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008210821082108210821
      0821082108210821082108210821082100000000000000000000000090319031
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
      1863000000000000000000000000314610000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000041
      8872002100000021087300210021087300410000000000000000000000000000
      1000F75E00000000000000000000314610000821004210420042104200423004
      39671863F75ED65AB5569452734E524A10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000041
      0062087300210041000000008072004100000000082108210821082108210821
      30041863F75ED65AB5569452734E524A10000821104200421042004210423004
      5A6B000000000000D65A10001000100010000000000000000000000000000000
      0000000000000000000010000000000000000000000000000000000088109052
      00628072004188720062004100410000000000000821B5569452734E524A1042
      3004396700000000000000000000734E10000821004210420042104200423004
      7B6F5A6B39671863F75E1000FF7F100000000000000010001000100010001000
      0000000000000000000010000000000000000000000000000000881094529452
      10420041087300410041000000000000000000000821F75E0000000000000000
      30045A6B39671863F75ED65AB556945210000821104200421042004210423004
      9C737B6F5A6B3967186310001000000000000000000010001000100010000000
      0000000000000000000000001000000000000000000000008810186318638831
      945210428810000000000000000000000000000008211863F75EB5569452734E
      30047B6F00000000186310001000100010000821004210420042104200423004
      3004300430043004300410000821000000000000000010001000100000000000
      0000000000000000000000001000000000000000000088107863186388311863
      1863881000000000000000000000000000000000082139670000000000000000
      50087B6F7B6F5A6B39671000FF7F100000000821104200421042004210420042
      1042004210420042104200420821000000000000000010001000000010000000
      000000000000000000000000100000000000000088101863FE7F082118631863
      881000000000000000000000000000000000000008215A6B39671863D65AB556
      50089C737B6F7B6F5A6B10001000000000000821004210420000000000000000
      0000000000000000104210420821000000000000000010000000000000001000
      1000000000000000000010000000000000008810786318638810786318638810
      000000000000000000000000000000000000000008219C730000000018630821
      5108300430043004300430040000000000000821104210420000186318631863
      1863186318630000104200420821000000000000000000000000000000000000
      000010001000100010000000000000000000881078638810FE7FFE7F88100000
      00000000000000000000000000000000000000000821BD779C735A6B39670821
      FF7F0000000000000000000000000000000008210042104200420821E07F0000
      0000E07F08211042004210420821000000000000000000000000000000000000
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
    Left = 168
    Top = 336
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
    Left = 200
    Top = 336
  end
  object pmPolling: TPopupMenu
    Left = 232
    Top = 336
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
    Left = 264
    Top = 336
  end
  object pmL3P: TPopupMenu
    OnPopup = pmL3PPopup
    Left = 328
    Top = 336
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
    Left = 8
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
    Margins.Left = 25
    Margins.Right = 15
    Margins.Top = 25
    Margins.Bottom = 25
    Margins.Header = 15
    Margins.Footer = 15
    Margins.LeftHFTextIndent = 2
    Margins.RightHFTextIndent = 2
    Margins.HFInternalMargin = 0.5
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
    Left = 361
    Top = 336
  end
  object SynCppSyn: TSynCppSyn
    DefaultFilter = 'C++ Files (*.c,*.cpp,*.h,*.hpp)|*.c;*.cpp;*.h;*.hpp'
    Left = 40
    Top = 304
  end
  object SynPasSyn: TSynPasSyn
    Left = 72
    Top = 304
  end
  object pmToolbars: TPopupMenu
    Left = 296
    Top = 336
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
end
