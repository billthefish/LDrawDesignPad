object frEditorChild: TfrEditorChild
  Left = 385
  Top = 152
  Width = 715
  Height = 380
  Caption = 'Untergeordnetes MDI'
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 293
    Width = 707
    Height = 7
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object pnInfo: TPanel
    Left = 0
    Top = 300
    Width = 707
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
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object lbInfo: TListBox
      Left = 13
      Top = 0
      Width = 694
      Height = 46
      Hint = 
        'Doublecklick on a L3P error message to jump to the error'#39's posit' +
        'ion.'
      Align = alClient
      ItemHeight = 13
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
    Width = 707
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
    Gutter.Font.Name = 'Terminal'
    Gutter.Font.Style = []
    Highlighter = frMain.SynLDRSyn
    SearchEngine = frMain.SynEditSearch1
    TabWidth = 2
    OnChange = MemoChange
    RemovedKeystrokes = <
      item
        Command = ecContextHelp
        ShortCut = 112
      end>
    AddedKeystrokes = <
      item
        Command = ecContextHelp
        ShortCut = 16496
      end>
  end
end
