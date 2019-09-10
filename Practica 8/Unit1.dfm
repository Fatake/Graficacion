object Form1: TForm1
  Left = 477
  Top = 161
  Width = 671
  Height = 474
  Caption = 'Practica 8'
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
  object imgLienzo: TImage
    Left = 96
    Top = 56
    Width = 300
    Height = 300
    Cursor = crCross
    OnMouseDown = imgLienzoMouseDown
    OnMouseUp = imgLienzoMouseUp
  end
  object pnl1: TPanel
    Left = 464
    Top = 0
    Width = 185
    Height = 433
    TabOrder = 0
    object btn1: TButton
      Left = 48
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Linea'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 48
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Borra'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 48
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Borrado Rec'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 104
      Top = 360
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Salir'
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 48
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Selec Borra'
      TabOrder = 4
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 48
      Top = 152
      Width = 75
      Height = 25
      Caption = 'btn6'
      TabOrder = 5
    end
  end
end
