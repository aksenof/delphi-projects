object Form3: TForm3
  Left = 893
  Top = 167
  Width = 333
  Height = 385
  Caption = #1058#1077#1084#1099
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 254
    Height = 23
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1076#1085#1091' '#1080#1079' '#1090#1077#1084' '#1085#1080#1078#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RadioButton1: TRadioButton
    Left = 104
    Top = 96
    Width = 113
    Height = 33
    Caption = 'White (Standart)'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 104
    Top = 152
    Width = 113
    Height = 33
    Caption = 'Blue'
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 104
    Top = 208
    Width = 113
    Height = 33
    Caption = 'Gray'
    TabOrder = 2
    OnClick = RadioButton3Click
  end
  object Button1: TButton
    Left = 112
    Top = 272
    Width = 97
    Height = 33
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
end
