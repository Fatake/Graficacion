object Form1: TForm1
  Left = 192
  Top = 151
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 664
    Top = 24
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object lbl2: TLabel
    Left = 664
    Top = 56
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object lbl3: TLabel
    Left = 664
    Top = 104
    Width = 16
    Height = 13
    Caption = 'lbl3'
  end
  object lbl4: TLabel
    Left = 664
    Top = 136
    Width = 16
    Height = 13
    Caption = 'lbl4'
  end
  object lbl5: TLabel
    Left = 168
    Top = 72
    Width = 55
    Height = 13
    Caption = 'Operador 1'
    OnClick = lbl5Click
  end
  object lbl6: TLabel
    Left = 168
    Top = 96
    Width = 55
    Height = 13
    Caption = 'Operador 2'
  end
  object lbl7: TLabel
    Left = 168
    Top = 144
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object lbl8: TLabel
    Left = 264
    Top = 8
    Width = 131
    Height = 23
    Caption = 'Calculadora Fcc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 232
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'op1'
  end
  object btn1: TButton
    Left = 736
    Top = 24
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 736
    Top = 56
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 736
    Top = 96
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 736
    Top = 136
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = btn4Click
  end
  object edt2: TEdit
    Left = 232
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 232
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edt3'
  end
  object btn5: TButton
    Left = 776
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 7
    OnClick = btn5Click
  end
end
