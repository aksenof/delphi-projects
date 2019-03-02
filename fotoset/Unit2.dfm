object Form2: TForm2
  Left = 523
  Top = 253
  BorderStyle = bsToolWindow
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 254
  ClientWidth = 484
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 80
    Top = 40
    Width = 50
    Height = 20
    Caption = #1051#1086#1075#1080#1085':'
  end
  object Label2: TLabel
    Left = 64
    Top = 80
    Width = 62
    Height = 20
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Edit1: TEdit
    Left = 144
    Top = 40
    Width = 241
    Height = 28
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 80
    Width = 241
    Height = 28
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 144
    Top = 128
    Width = 121
    Height = 41
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 128
    Width = 121
    Height = 41
    Caption = #1057#1073#1088#1086#1089
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 144
    Top = 184
    Width = 249
    Height = 33
    Caption = #1042#1086#1081#1090#1080' '#1082#1072#1082' '#1075#1086#1089#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'login'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'password'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 64
    Top = 200
  end
end
