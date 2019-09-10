object Form1: TForm1
  Left = 867
  Top = 295
  Width = 645
  Height = 480
  Caption = 'Form1'
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 24
    Top = 24
    Width = 400
    Height = 400
  end
  object Panel1: TPanel
    Left = 448
    Top = 0
    Width = 177
    Height = 441
    Color = clBtnHighlight
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 72
      Width = 94
      Height = 13
      Caption = 'Proyeccion Paralela'
    end
    object Label1: TLabel
      Left = 16
      Top = 248
      Width = 69
      Height = 13
      Caption = 'Ojo a  Pantalla'
    end
    object Label2: TLabel
      Left = 19
      Top = 200
      Width = 59
      Height = 13
      Caption = 'Ojo a Objeto'
    end
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Pinta Cubo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 88
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 88
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Rotacion X-'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Autor'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 96
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 88
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Rotacion Z-'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 88
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Rotacion Y-'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Rotacion Z +'
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 8
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 8
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 8
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Rotacion X+'
      TabOrder = 9
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 8
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Rotacion Y+'
      TabOrder = 10
      OnClick = Button11Click
    end
    object TextAreaOO: TEdit
      Left = 16
      Top = 216
      Width = 41
      Height = 21
      TabOrder = 11
    end
    object TextAreaOP: TEdit
      Left = 16
      Top = 264
      Width = 41
      Height = 21
      TabOrder = 12
    end
    object Button12: TButton
      Left = 8
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Establecer'
      TabOrder = 13
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 88
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Alejar'
      TabOrder = 14
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 88
      Top = 264
      Width = 75
      Height = 25
      Caption = 'cercar'
      TabOrder = 15
      OnClick = Button14Click
    end
  end
end
