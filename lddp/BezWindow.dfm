object frmDATCurve: TfrmDATCurve
  Left = 395
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Bendible Objects Creator'
  ClientHeight = 311
  ClientWidth = 384
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
    Top = 216
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
    Left = 8
    Top = 264
    Width = 97
    Height = 33
    Caption = 'Generate Curve'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 280
    Top = 264
    Width = 97
    Height = 33
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object gbxStartPoint: TGroupBox
    Left = 16
    Top = 72
    Width = 177
    Height = 41
    Caption = 'Start Point'
    TabOrder = 2
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
    TabOrder = 3
    object feCP1X: TJvFloatEdit2
      Left = 8
      Top = 16
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 0
      OnChange = feCP1XChange
      MaxDecimals = 5
      HasMaxValue = False
      HasMinValue = False
    end
    object feCP1Z: TJvFloatEdit2
      Left = 120
      Top = 16
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 1
      OnChange = feCP1XChange
      MaxDecimals = 5
      HasMaxValue = False
      HasMinValue = False
    end
    object feCP1Y: TJvFloatEdit2
      Left = 64
      Top = 16
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 2
      OnChange = feCP1XChange
      MaxDecimals = 5
      HasMaxValue = False
      HasMinValue = False
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
    object feCP2X: TJvFloatEdit2
      Left = 8
      Top = 16
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 0
      OnChange = feCP1XChange
      MaxDecimals = 5
      HasMaxValue = False
      HasMinValue = False
    end
    object feCP2Y: TJvFloatEdit2
      Left = 64
      Top = 16
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 1
      OnChange = feCP1XChange
      MaxDecimals = 5
      HasMaxValue = False
      HasMinValue = False
    end
    object feCP2Z: TJvFloatEdit2
      Left = 120
      Top = 16
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 2
      OnChange = feCP1XChange
      MaxDecimals = 5
      HasMaxValue = False
      HasMinValue = False
    end
  end
  object gbxEndPoint: TGroupBox
    Left = 200
    Top = 72
    Width = 177
    Height = 41
    Caption = 'End Point'
    TabOrder = 5
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
    TabOrder = 7
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
    TabOrder = 8
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
  object feLength: TJvFloatEdit2
    Left = 16
    Top = 48
    Width = 145
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 9
    Visible = False
    OnChange = feLengthChange
    MaxDecimals = 5
    HasMaxValue = False
    HasMinValue = True
  end
end
