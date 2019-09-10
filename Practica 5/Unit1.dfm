object Form1: TForm1
  Left = 220
  Top = 182
  Width = 930
  Height = 480
  Caption = 'Funcion'
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
    Left = 40
    Top = 32
    Width = 600
    Height = 400
  end
  object lbl3: TLabel
    Left = 40
    Top = 0
    Width = 214
    Height = 23
    Caption = 'Graficadora de Funciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 520
    Top = 8
    Width = 40
    Height = 12
    Caption = 'FCC BUAP'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 696
    Top = 0
    Width = 217
    Height = 441
    TabOrder = 0
    object lbl1: TLabel
      Left = 104
      Top = 104
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object lbl2: TLabel
      Left = 102
      Top = 136
      Width = 6
      Height = 13
      Caption = 'B'
    end
    object edt1: TEdit
      Left = 32
      Top = 104
      Width = 65
      Height = 21
      TabOrder = 0
      Text = '-1'
    end
    object edt2: TEdit
      Left = 32
      Top = 128
      Width = 65
      Height = 21
      TabOrder = 1
      Text = '1'
    end
    object btn1: TButton
      Left = 32
      Top = 176
      Width = 113
      Height = 25
      Caption = 'f(x)=X^2'
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 32
      Top = 272
      Width = 113
      Height = 25
      Caption = 'f(x)=2x-3'
      TabOrder = 3
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 32
      Top = 208
      Width = 113
      Height = 25
      Caption = 'f(x)=sin(x)'
      TabOrder = 4
      OnClick = btn3Click
    end
    object btn5: TButton
      Left = 136
      Top = 408
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 5
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 32
      Top = 320
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 6
      OnClick = btn6Click
    end
    object btn4: TButton
      Left = 32
      Top = 240
      Width = 113
      Height = 25
      Caption = 'f(x)=x^3+10x^2+x'
      TabOrder = 7
      OnClick = btn4Click
    end
    object btn7: TButton
      Left = 32
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Autor'
      TabOrder = 8
      OnClick = btn7Click
    end
  end
end
