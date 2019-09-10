object Form1: TForm1
  Left = 239
  Top = 163
  Width = 886
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 152
    Top = 40
    Width = 300
    Height = 300
  end
  object pnl1: TPanel
    Left = 648
    Top = 0
    Width = 217
    Height = 441
    Caption = 'pnl1'
    TabOrder = 0
  end
  object btn1: TButton
    Left = 720
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Punto Azul'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 720
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Punto Rojo'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 720
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Punto Verde'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 720
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Linea Roja'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 720
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 784
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 6
    OnClick = btn6Click
  end
end
