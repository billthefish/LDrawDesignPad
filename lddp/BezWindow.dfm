object frmDATCurve: TfrmDATCurve
  Left = 395
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Bendible Objects Creator'
  ClientHeight = 306
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblType: TLabel
    Left = 16
    Top = 8
    Width = 32
    Height = 16
    Caption = 'Type'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblContEnable: TLabel
    Left = 40
    Top = 218
    Width = 138
    Height = 13
    Caption = 'Manually Enter Control Points'
  end
  object lblMessage: TLabel
    Left = 16
    Top = 240
    Width = 3
    Height = 13
    Caption = ' '
  end
  object lblLength: TLabel
    Left = 16
    Top = 32
    Width = 3
    Height = 13
    Caption = ' '
  end
  object lblType2: TLabel
    Left = 56
    Top = 8
    Width = 4
    Height = 16
    Caption = ' '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnGenerate: TButton
    Left = 16
    Top = 264
    Width = 97
    Height = 28
    Caption = 'Generate Curve'
    Enabled = False
    ModalResult = 1
    TabOrder = 8
  end
  object btnCancel: TButton
    Left = 280
    Top = 264
    Width = 97
    Height = 28
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
  object gbxStartPoint: TGroupBox
    Left = 16
    Top = 72
    Width = 177
    Height = 41
    Caption = 'Start Point'
    TabOrder = 0
    object lblStart1: TLabel
      Left = 8
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblStart3: TLabel
      Left = 120
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblStart2: TLabel
      Left = 64
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
  end
  object gbxCont1: TGroupBox
    Left = 16
    Top = 120
    Width = 177
    Height = 41
    Caption = 'Control Point 1'
    Enabled = False
    TabOrder = 2
    object feCP1X: TJvValidateEdit
      Left = 8
      Top = 16
      Width = 49
      Height = 21
      CheckChars = '0123456789.'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfFloat
      DecimalPlaces = 9
      TabOrder = 0
      Text = '0.'
      Value = 0.000000000000000000
    end
    object feCP1Y: TJvValidateEdit
      Left = 64
      Top = 16
      Width = 49
      Height = 21
      CheckChars = '0123456789.'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfFloat
      DecimalPlaces = 9
      TabOrder = 1
      Text = '0.'
      Value = 0.000000000000000000
    end
    object feCP1Z: TJvValidateEdit
      Left = 120
      Top = 16
      Width = 49
      Height = 21
      CheckChars = '0123456789.'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfFloat
      DecimalPlaces = 9
      TabOrder = 2
      Text = '0.'
      Value = 0.000000000000000000
    end
  end
  object gbxCont2: TGroupBox
    Left = 16
    Top = 168
    Width = 177
    Height = 41
    Caption = 'Control Point 2'
    Enabled = False
    TabOrder = 4
    object feCP2X: TJvValidateEdit
      Left = 8
      Top = 16
      Width = 49
      Height = 21
      CheckChars = '0123456789.'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfFloat
      DecimalPlaces = 9
      TabOrder = 0
      Text = '0.'
      Value = 0.000000000000000000
    end
    object feCP2Y: TJvValidateEdit
      Left = 64
      Top = 16
      Width = 49
      Height = 21
      CheckChars = '0123456789.'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfFloat
      DecimalPlaces = 9
      TabOrder = 1
      Text = '0.'
      Value = 0.000000000000000000
    end
    object feCP2Z: TJvValidateEdit
      Left = 120
      Top = 16
      Width = 49
      Height = 21
      CheckChars = '0123456789.'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfFloat
      DecimalPlaces = 9
      TabOrder = 2
      Text = '0.'
      Value = 0.000000000000000000
    end
  end
  object gbxEndPoint: TGroupBox
    Left = 200
    Top = 72
    Width = 177
    Height = 41
    Caption = 'End Point'
    TabOrder = 1
    object lblEnd1: TLabel
      Left = 8
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblEnd2: TLabel
      Left = 64
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblEnd3: TLabel
      Left = 120
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
  end
  object cbxContEnable: TCheckBox
    Left = 16
    Top = 216
    Width = 17
    Height = 17
    Caption = 'cbxContEnable'
    Enabled = False
    TabOrder = 6
    OnClick = cbxContEnableClick
  end
  object gbxACont1: TGroupBox
    Left = 200
    Top = 120
    Width = 177
    Height = 41
    Caption = 'Adjusted Control Point 1'
    TabOrder = 3
    object lblACont11: TLabel
      Left = 8
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblACont13: TLabel
      Left = 120
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblACont12: TLabel
      Left = 64
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
  end
  object gbxACont2: TGroupBox
    Left = 200
    Top = 168
    Width = 177
    Height = 41
    Caption = 'Adjusted Control Point 2'
    TabOrder = 5
    object lblACont21: TLabel
      Left = 8
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblACont22: TLabel
      Left = 64
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
    object lblACont23: TLabel
      Left = 120
      Top = 16
      Width = 3
      Height = 13
      Caption = ' '
    end
  end
  object feLength: TJvValidateEdit
    Left = 16
    Top = 48
    Width = 105
    Height = 21
    CheckChars = '0123456789.'
    CriticalPoints.CheckPoints = cpNone
    CriticalPoints.ColorAbove = clBlue
    CriticalPoints.ColorBelow = clRed
    TrimDecimals = True
    DisplayFormat = dfFloat
    DecimalPlaces = 9
    HasMinValue = True
    TabOrder = 9
    Text = '0.'
    Value = 0.000000000000000000
  end
end
