object frEditorChild: TfrEditorChild
  Left = 385
  Top = 152
  Width = 628
  Height = 380
  VertScrollBar.Range = 53
  ActiveControl = Button1
  AutoScroll = False
  Caption = 'Editor MDI Child'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 293
    Width = 620
    Height = 7
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object pnInfo: TPanel
    Left = 0
    Top = 300
    Width = 620
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
    object lbInfo: TListBox
      Left = 13
      Top = 0
      Width = 607
      Height = 46
      Hint = 
        'Doubleclick on a L3P error message to jump to the error'#39's positi' +
        'on.'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
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
    Width = 620
    Height = 293
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    PopupMenu = frMain.pmMemo
    TabOrder = 1
    OnClick = memoClick
    OnKeyDown = MemoKeyDown
    OnKeyUp = MemoKeyDown
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
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
