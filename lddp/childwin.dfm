object frEditorChild: TfrEditorChild
  Left = 385
  Top = 152
  Width = 628
  Height = 380
  VertScrollBar.Range = 53
  ActiveControl = Button1
  Caption = 'Editor MDI Child'
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  object Splitter1: TSplitter
    Left = 0
    Top = 327
    Width = 628
    Height = 7
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object pnInfo: TPanel
    Left = 0
    Top = 334
    Width = 628
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnInfo'
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 13
      Height = 46
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 12
        Height = 12
        Caption = 'X'
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object lbInfo: TListBox
      Left = 13
      Top = 0
      Width = 615
      Height = 46
      Hint = 
        'Doubleclick on a L3P error message to jump to the error'#39's positi' +
        'on.'
      Align = alClient
      ItemHeight = 14
      ParentFont = False
      ParentShowHint = False
      PopupMenu = frMain.pmL3P
      ShowHint = True
      TabOrder = 1
      OnDblClick = lbInfoDblClick
    end
  end
  object memo: TSynEdit
    Left = 0
    Top = 0
    Width = 628
    Height = 327
    Align = alClient
    ParentColor = False
    ParentFont = False
    PopupMenu = frMain.pmMemo
    TabOrder = 1
    OnClick = memoClick
    OnKeyDown = MemoKeyDown
    OnKeyUp = MemoKeyDown
    Gutter.LeftOffset = 0
    Gutter.RightOffset = 0
    Highlighter = frMain.SynLDRSyn
    SearchEngine = frMain.SynEditSearch1
    TabWidth = 2
    OnChange = MemoChange
    OnGutterClick = memoGutterClick
    RemovedKeystrokes = <>
    AddedKeystrokes = <
      item
        Command = ecContextHelp
        ShortCut = 16496
      end>
  end
end
