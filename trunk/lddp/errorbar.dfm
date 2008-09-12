object frErrorWindow: TfrErrorWindow
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Error List'
  ClientHeight = 98
  ClientWidth = 599
  Color = clBtnFace
  Constraints.MinHeight = 100
  Constraints.MinWidth = 300
  DockSite = True
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ErrorListView: TListView
    Left = 0
    Top = 0
    Width = 599
    Height = 98
    Align = alClient
    Checkboxes = True
    Columns = <
      item
        Caption = 'Fix'
        MaxWidth = 30
        MinWidth = 30
        Width = 30
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
    PopupMenu = pmL3P
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = ErrorListViewDblClick
    OnSelectItem = ErrorListViewSelectItem
  end
  object JvDockClient1: TJvDockClient
    DirectDrag = False
    CustomDock = False
    Left = 8
    Top = 16
  end
  object pmL3P: TPopupMenu
    Left = 40
    Top = 16
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
  object ActionList1: TActionList
    Left = 72
    Top = 16
    object acErrorCheck: TAction
      Category = 'Error Check'
      Caption = 'Run Error Check'
      Hint = 'Check for errors|Check for errors'
      ShortCut = 121
      OnExecute = acErrorCheckExecute
    end
    object acECFixError: TAction
      Category = 'Error Check'
      Caption = 'Fix Selected Error'
      Enabled = False
      OnExecute = acECFixErrorExecute
    end
    object acECFixAllErrors: TAction
      Category = 'Error Check'
      Caption = 'Fix All Errors'
      Enabled = False
      OnExecute = acECFixAllErrorsExecute
    end
    object acECMarkAll: TAction
      Category = 'Error Check'
      Caption = 'Mark All Errors'
      Enabled = False
      OnExecute = acECMarkAllExecute
    end
    object acECUnMarkAll: TAction
      Category = 'Error Check'
      Caption = 'Unmark All Errors'
      Enabled = False
      OnExecute = acECUnMarkAllExecute
    end
    object acECFixAllMarkedErrors: TAction
      Category = 'Error Check'
      Caption = 'Fix All Marked Errors'
      Enabled = False
      OnExecute = acECFixAllMarkedErrorsExecute
    end
    object acECFixAllMarkedErrorsTyped: TAction
      Category = 'Error Check'
      Caption = 'Fix All Marked Errors of Selected Type'
      Enabled = False
      OnExecute = acECFixAllMarkedErrorsTypedExecute
    end
    object acECFixAllErrorsTyped: TAction
      Category = 'Error Check'
      Caption = 'Fix All Errors of Selected Type'
      Enabled = False
      OnExecute = acECFixAllErrorsTypedExecute
    end
    object acECMarkAllTyped: TAction
      Category = 'Error Check'
      Caption = 'Mark All Errors of the Selected Type'
      Enabled = False
      OnExecute = acECMarkAllTypedExecute
    end
    object acECUnMarkAllTyped: TAction
      Category = 'Error Check'
      Caption = 'Unmark All Errors of the Selected Type'
      Enabled = False
      OnExecute = acECUnMarkAllTypedExecute
    end
    object acECCopy: TAction
      Category = 'Error Check'
      Caption = 'Copy Error List To Clipboard'
      Enabled = False
      OnExecute = acECCopyExecute
    end
  end
end
