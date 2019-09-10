unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    lbl1: TLabel;
    dlgColor1: TColorDialog;
    tmr1: TTimer;
    edt1: TEdit;
    edt2: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    btn10: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  grados: Integer; 
  bandera: Boolean;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,300,300);
  grados := 0;
  bandera := False;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  close();
end;

procedure TForm1.btn1Click(Sender: TObject);
var seg : array[1..4] of TPoint;
{
 Pascal permite poner indices superiores e inferiores
 array[indice inferior .. indice superior]
}
var i : Integer;
var xAux, yAux, alpha : Real;
begin
  seg[1].X := -10;
  seg[1].Y := 0;
  seg[2] := Point(0,10);
  seg[3] := Point(10,0);
  seg[4] := Point(0,-100);
  //Traslacion del objeto
  for i := 1 to 4 do
  begin
    seg[i].X := seg[i].X + 150;
    seg[i].Y := seg[i].Y + 150;
  end;
  //Pintar
  img1.Canvas.Polygon(seg);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,300,300);
  img1.Canvas.Brush.Color := clWhite;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  ShowMessage('Paulo Cesar Ruiz Lozano');
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if(dlgColor1.Execute)then
  begin
    img1.Canvas.Pen.Color := dlgColor1.Color;
  end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if(dlgColor1.Execute)then
  begin
    img1.Canvas.Brush.Color := dlgColor1.Color;
  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var seg : array[1..4] of TPoint;
var i: Integer;
var xAux, yAux, alpha : Real;
var BUAP : TBitmap;
begin
  BUAP := TBitmap.Create;
  BUAP.LoadFromFile('EscudoBuap.bmp');

  //Hora
  edt1.Text := TimeToStr(Time);
  //Fecha
  edt2.Text := DateToStr(Date);
  //Biblioteca de tiempo Ttimer
  seg[1] := Point(-10,0);
  seg[2] := Point(0,10);
  seg[3] := Point(10,0);
  seg[4] := Point(0,-100);
  alpha := (-grados*pi)/180.0;
  //Rotacion del Objeto
  for i := 1 to 4 do
  begin
    xAux := seg[i].X * Cos(alpha) + seg[i].Y * Sin(alpha);
    yAux := -seg[i].X * Sin(alpha) + seg[i].y * Cos(alpha);
    //aginacion de las nuevas coordenadas
    seg[i].X := Round(xAux);
    seg[i].Y := Round(yAux);
    //Traslacion
    seg[i].X := seg[i].X + 150;
    seg[i].Y := seg[i].Y + 150;
  end;
  //Limpiar pantalla
  img1.Canvas.Brush.Color := clWhite;
  img1.Canvas.Rectangle(0,0,300,300);
  img1.Canvas.Draw(0,0,BUAP);
  //Pintar
  img1.Canvas.Polygon(seg);
  grados := grados + 6;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  tmr1.Enabled := False;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  grados := 0;
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
  tmr1.Enabled := True;
end;

end.
