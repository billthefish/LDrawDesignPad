object frmDATCurve: TfrmDATCurve
  Left = 395
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Bendible Objects Creator'
  ClientHeight = 236
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
    Left = 8
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
  object lblMessage: TLabel
    Left = 16
    Top = 240
    Width = 3
    Height = 13
    Caption = ' '
  end
  object lblLength: TLabel
    Left = 8
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
    Left = 8
    Top = 200
    Width = 97
    Height = 28
    Caption = 'Generate Curve'
    Enabled = False
    ModalResult = 1
    TabOrder = 6
  end
  object btnCancel: TButton
    Left = 288
    Top = 200
    Width = 97
    Height = 28
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object gbxStartPoint: TGroupBox
    Left = 8
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
    Left = 200
    Top = 72
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
      EditText = '0'
      TabOrder = 0
      Text = '0.'
      Value = 0.000000000000000000
      OnChange = feCP1XChange
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
      EditText = '0'
      TabOrder = 1
      Text = '0.'
      Value = 0.000000000000000000
      OnChange = feCP1XChange
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
      EditText = '0'
      TabOrder = 2
      Text = '0.'
      Value = 0.000000000000000000
      OnChange = feCP1XChange
    end
  end
  object gbxCont2: TGroupBox
    Left = 200
    Top = 128
    Width = 177
    Height = 41
    Caption = 'Control Point 2'
    Enabled = False
    TabOrder = 3
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
      EditText = '0'
      TabOrder = 0
      Text = '0.'
      Value = 0.000000000000000000
      OnChange = feCP1XChange
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
      EditText = '0'
      TabOrder = 1
      Text = '0.'
      Value = 0.000000000000000000
      OnChange = feCP1XChange
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
      EditText = '0'
      TabOrder = 2
      Text = '0.'
      Value = 0.000000000000000000
      OnChange = feCP1XChange
    end
  end
  object gbxEndPoint: TGroupBox
    Left = 8
    Top = 128
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
    Left = 200
    Top = 176
    Width = 177
    Height = 17
    Caption = 'Manually Enter Control Points'
    Enabled = False
    TabOrder = 4
    OnClick = cbxContEnableClick
  end
  object feLength: TJvValidateEdit
    Left = 8
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
    EditText = '0'
    HasMinValue = True
    TabOrder = 7
    Text = '0.'
    Value = 0.000000000000000000
    OnChange = feLengthChange
  end
end
