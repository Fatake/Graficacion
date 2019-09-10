unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn5: TButton;
    img1: TImage;
    btn6: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    btn4: TButton;
    btn7: TButton;
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn5Click(Sender: TObject);
begin
  close();
end;

procedure TForm1.btn1Click(Sender: TObject);
var i, renglon  : Integer;
var x, a, b, dx, fx : Real;
var minimo, maximo: Real;
var letrero : string;
begin
  a := StrtoInt(edt1.text);
  b := StrToInt(edt2.text);
  minimo := a*a; {Se le asigna f(a)= a*a}
  maximo := minimo;
  x := a;
  dx := (b-a)/600; {Diferencia del xd o delta x b-a/n}
  for i := 1 to 600 do
  begin
    fx := x*x; {Vartiable fx se lñe asgina la funcion f(x)=x*x}
    if(fx < minimo)then
    begin
       minimo := fx;{Se asgina la funcion fx a minimo}
    end;
    if(fx > maximo)then
    begin
       maximo := fx;
    end;
    x := x+ dx;
  end;
  x := a;
 for i := 1 to 600 do
  begin
    fx := x*x;
    {Raund funcion que redondea o trunca}
    renglon := round(((400-0)/(minimo - maximo))*(fx - maximo)+0);
    img1.Canvas.Pixels[i, renglon] := clRed;
    x := x +dx;
  end;
  letrero := 'min: ' + InttoStr(round(minimo));
  img1.Canvas.TextOut(10,10,letrero);
  letrero := 'max: ' + InttoStr(round(maximo));
  img1.Canvas.TextOut(10,30,letrero);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,600,400);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  {Constructor de el formulario}
  img1.Canvas.Rectangle(0,0,600,400);
  edt1.Text := '-3';
  edt2.Text := '6';
end;

procedure TForm1.btn2Click(Sender: TObject);
var i, renglon  : Integer;
var x, a, b, dx, fx : Real;
var minimo, maximo: Real;
var letrero : string;
begin
  a := StrtoInt(edt1.text);
  b := StrToInt(edt2.text);
  minimo := 2*(a)-3; {Se le asigna f(a)= 2x -3}
  maximo := minimo;
  x := a;
  dx := (b-a)/600; {Diferencia del xd o delta x b-a/n}
  for i := 1 to 600 do
  begin
    fx := 2*(x)-3; {Vartiable fx se lñe asgina la funcion f(x)=x*x}
    if(fx < minimo)then
    begin
       minimo := fx;{Se asgina la funcion fx a minimo}
    end;
    if(fx > maximo)then
    begin
       maximo := fx;
    end;
    x := x+ dx;
  end;
  x := a;
 for i := 1 to 600 do
  begin
    fx := 2*x-3;
    renglon := round(((400-0)/(minimo - maximo))*(fx - maximo)+0);
    img1.Canvas.Pixels[i, renglon] := clBlue;
    x := x +dx;
  end;
  letrero := 'min: ' + InttoStr(round(minimo));
  img1.Canvas.TextOut(10,10,letrero);
  letrero := 'max: ' + InttoStr(round(maximo));
  img1.Canvas.TextOut(10,30,letrero);
end;

procedure TForm1.btn3Click(Sender: TObject);
var i, renglon  : Integer;
var x, a, b, dx, fx : Real;
var minimo, maximo: Real;
var letrero : string;
begin
  a := StrtoInt(edt1.text);
  b := StrToInt(edt2.text);
  minimo := Sin(a);
  maximo := minimo;
  x := a;
  dx := (b-a)/600; {Diferencia del xd o delta x b-a/n}
  for i := 1 to 600 do
  begin
    fx := Sin(x); {Vartiable fx se lñe asgina la funcion f(x)=x*x}
    if(fx < minimo)then
    begin
       minimo := fx;{Se asgina la funcion fx a minimo}
    end;
    if(fx > maximo)then
    begin
       maximo := fx;
    end;
    x := x+ dx;
  end;
  x := a;
 for i := 1 to 600 do
  begin
    fx := Sin(x);
    renglon := round(((400-0)/(minimo - maximo))*(fx - maximo)+0);
    img1.Canvas.Pixels[i, renglon] := clGreen;
    x := x +dx;
  end;
  letrero := 'min: ' + InttoStr(round(minimo));
  img1.Canvas.TextOut(10,10,letrero);
  letrero := 'max: ' + InttoStr(round(maximo));
  img1.Canvas.TextOut(10,30,letrero);
end;

procedure TForm1.btn4Click(Sender: TObject);
var i, renglon  : Integer;
var x, a, b, dx, fx : Real;
var minimo, maximo: Real;
var letrero : string;
begin
  a := StrtoInt(edt1.text);
  b := StrToInt(edt2.text);
  minimo := (a*a*a) + (10*a*a) + a;
  maximo := minimo;
  x := a;
  dx := (b-a)/600; {Diferencia del xd o delta x b-a/n}
  for i := 1 to 600 do
  begin
    fx := (x*x*x) + (10*x*x) + x; {Vartiable fx se lñe asgina la funcion f(x)=x*x}
    if(fx < minimo)then
    begin
       minimo := fx;{Se asgina la funcion fx a minimo}
    end;
    if(fx > maximo)then
    begin
       maximo := fx;
    end;
    x := x+ dx;
  end;
  x := a;
 for i := 1 to 600 do
  begin
    fx := (x*x*x) + (10*x*x) + x;
    renglon := round(((400-0)/(minimo - maximo))*(fx - maximo)+0);
    img1.Canvas.Pixels[i, renglon] := clBlack;
    x := x +dx;
  end;
  letrero := 'min: ' + InttoStr(round(minimo));
  img1.Canvas.TextOut(10,10,letrero);
  letrero := 'max: ' + InttoStr(round(maximo));
  img1.Canvas.TextOut(10,30,letrero);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  ShowMessage('mi nombre');
end;

end.
