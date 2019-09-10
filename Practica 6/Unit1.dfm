object Form1: TForm1
  Left = 252
  Top = 124
  Width = 821
  Height = 583
  Caption = 'Paint'
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
    Left = 24
    Top = 24
    Width = 500
    Height = 500
    Cursor = crCross
    OnMouseDown = img1MouseDown
    OnMouseMove = img1MouseMove
    OnMouseUp = img1MouseUp
  end
  object pnl1: TPanel
    Left = 560
    Top = 0
    Width = 241
    Height = 537
    TabOrder = 0
    object lbl1: TLabel
      Left = 40
      Top = 40
      Width = 12
      Height = 13
      Caption = 'x1'
    end
    object lbl2: TLabel
      Left = 40
      Top = 72
      Width = 12
      Height = 13
      Caption = 'y1'
    end
    object lbl3: TLabel
      Left = 40
      Top = 104
      Width = 12
      Height = 13
      Caption = 'x2'
    end
    object lbl4: TLabel
      Left = 40
      Top = 136
      Width = 12
      Height = 13
      Caption = 'y2'
    end
    object lbl5: TLabel
      Left = 88
      Top = 296
      Width = 36
      Height = 13
      Caption = 'Colores'
    end
    object btn1: TButton
      Left = 80
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Linea 1'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 80
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Rectangulo'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 32
      Top = 320
      Width = 75
      Height = 25
      Caption = 'Contorno'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 128
      Top = 320
      Width = 75
      Height = 25
      Caption = 'Fondo'
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 8
      Top = 504
      Width = 75
      Height = 25
      Caption = 'Autor'
      TabOrder = 4
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 160
      Top = 504
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 5
      OnClick = btn6Click
    end
    object btn7: TButton
      Left = 8
      Top = 464
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 6
      OnClick = btn7Click
    end
    object edt5: TEdit
      Left = 16
      Top = 8
      Width = 57
      Height = 21
      TabOrder = 7
      Text = '(000,000)'
    end
    object btn8: TButton
      Left = 80
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Circulo'
      TabOrder = 8
      OnClick = btn8Click
    end
  end
  object edt1: TEdit
    Left = 624
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 624
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 624
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 624
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object dlgColor1: TColorDialog
    Color = clNavy
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 592
    Top = 240
  end
end
