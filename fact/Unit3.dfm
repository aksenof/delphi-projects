object Form3: TForm3
  Left = 701
  Top = 171
  Width = 351
  Height = 307
  Caption = 'Thems'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 32
    Top = 24
    Width = 271
    Height = 24
    Caption = #1042#1099#1073#1080#1088#1077#1090#1077' '#1086#1076#1085#1091' '#1080#1079' '#1090#1077#1084' '#1085#1080#1078#1077': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RadioButton1: TRadioButton
    Left = 96
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Blue (Standart)'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 96
    Top = 120
    Width = 113
    Height = 17
    Caption = 'Green'
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 96
    Top = 160
    Width = 113
    Height = 17
    Caption = 'White'
    TabOrder = 2
    OnClick = RadioButton3Click
  end
  object Button1: TButton
    Left = 112
    Top = 208
    Width = 89
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
end
