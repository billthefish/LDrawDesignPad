object frEditorChild: TfrEditorChild
  Left = 460
  Top = 155
  Width = 628
  Height = 393
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
    Top = 281
    Width = 620
    Height = 7
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object pnInfo: TPanel
    Left = 0
    Top = 288
    Width = 620
    Height = 71
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnInfo'
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 16
      Height = 71
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
    object lbInfo: TListView
      Left = 16
      Top = 0
      Width = 604
      Height = 71
      Align = alClient
      Checkboxes = True
      Columns = <
        item
          Caption = 'Fix'
          MaxWidth = 25
          MinWidth = 25
          Width = 25
        end
        item
          Caption = 'Line Number'
          MaxWidth = 72
          MinWidth = 72
          Width = 72
        end
        item
          AutoSize = True
          Caption = 'Error'
        end>
      ReadOnly = True
      RowSelect = True
      PopupMenu = frMain.pmL3P
      TabOrder = 1
      ViewStyle = vsReport
      OnDblClick = lbInfoDblClick
      OnSelectItem = lbInfoSelectItem
    end
  end
  object memo: TSynEdit
    Left = 0
    Top = 0
    Width = 620
    Height = 281
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
