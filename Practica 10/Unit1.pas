unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    lbl1: TLabel;
    TextAreaOO: TEdit;
    TextAreaOP: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type TPoint3D = Packed Record
  X,Y,Z : Real;
  end;

var
  Form1: TForm1;
  P, Q : TPoint;
  Cubo : Array[1..10] of TPoint3D;
  //Las coordenadas x, y Proyectadas
  Xp, Yp : Integer;
  //angulo
  alpha, S, C : Real;
  //Auxiliares
  Xaux, YAux, Zaux : Real;
  //Distancias de perspectiva
  OjoAObjeto, OjoAPantalla : Real; 

implementation

{$R *.dfm}
//
//Constructor
//
procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,400,400);
  //Angulo
  alpha := (5*PI)/180;
  //Coordenadas de Cada punto del cubo
  //Piso
  Cubo[1].X := +20; Cubo[1].Y := +20; Cubo[1].Z := -20;
  Cubo[2].X := +20; Cubo[2].Y := -20; Cubo[2].Z := -20;
  Cubo[3].X := -20; Cubo[3].Y := -20; Cubo[3].Z := -20;
  Cubo[4].X := -20; Cubo[4].Y := +20; Cubo[4].Z := -20;
  Cubo[5].X := +20; Cubo[5].Y := +20; Cubo[5].Z := -20;
  //Techo
  Cubo[6].X := +20; Cubo[6].Y := +20; Cubo[6].Z := 20;
  Cubo[7].X := +20; Cubo[7].Y := -20; Cubo[7].Z := 20;
  Cubo[8].X := -20; Cubo[8].Y := -20; Cubo[8].Z := 20;
  Cubo[9].X := -20; Cubo[9].Y := +20; Cubo[9].Z := 20;
  Cubo[10].X := +20; Cubo[10].Y := +20; Cubo[10].Z := 20;
  //Calculo de ojo de pantalla;
  OjoAObjeto := 2 * 40;
  OjoAPantalla := 2 * 40;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Close();
end;
//
//Boton 1
//
procedure TForm1.Button1Click(Sender: TObject);
//Procedimiento Perspectiva
procedure ProyPerspectiva(x,y,z : Real; var Xpan, Ypan: Integer);
var xAux, yAux, zAux: Real;
begin
  //Z del cubo mas una distancia para mover el cubo
  //Calculo de X Pantalla
  zAux := z + OjoAObjeto;
  xAux := x * OjoAPantalla / zAux;
  Xpan := round(xAux) + 200;
  //Calculo de Y de pantala
  zAux := z + OjoAObjeto;
  yAux := y * OjoAPantalla / zAux;
  Ypan := round(yAux) + 200;
end;
//Variables
var i : Integer;
begin
  for i := 1 to 4 do
  begin
    ProyPerspectiva(Cubo[i].X, Cubo[i].Y, Cubo[i].Z, P.X, P.Y);
    ProyPerspectiva(Cubo[i+1].X, Cubo[i+1].Y, Cubo[i+1].Z, Q.X, Q.Y);
    //Pinta
    Image1.Canvas.Pen.Color := ClRed;
    Image1.Canvas.MoveTo(P.X, P.Y);
    Image1.Canvas.LineTo(Q.X, Q.Y);
  end;
  for i := 6 to 9 do
  begin
    ProyPerspectiva(Cubo[i].X, Cubo[i].Y, Cubo[i].Z, P.X, P.Y);
    ProyPerspectiva(Cubo[i+1].X, Cubo[i+1].Y, Cubo[i+1].Z, Q.X, Q.Y);
    //Pinta
    Image1.Canvas.Pen.Color := ClBlue;
    Image1.Canvas.MoveTo(P.X, P.Y);
    Image1.Canvas.LineTo(Q.X, Q.Y);
  end;
  for i := 1 to 4 do
  begin
    ProyPerspectiva(Cubo[i].X, Cubo[i].Y, Cubo[i].Z, P.X, P.Y);
    ProyPerspectiva(Cubo[i+5].X, Cubo[i+5].Y, Cubo[i+5].Z, Q.X, Q.Y);
    //Pinta
    Image1.Canvas.Pen.Color := ClRed;
    Image1.Canvas.MoveTo(P.X, P.Y);
    Image1.Canvas.LineTo(Q.X, Q.Y);
  end;
  Image1.Canvas.Pen.Color := ClBlack;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,400,400);
end;

procedure TForm1.Button8Click(Sender: TObject);
var i : Integer;
begin
  S := sin(alpha);//Seno
  C := cos(alpha);//Coseno
  //S y C son variables que almacenan sin y cos entonces
  //Se simplican los calculos para no calcular lo mismo varias veces
  //Rotacion
  for i := 1 to 10 do
  begin
    Xaux := Cubo[i].X * C + Cubo[i].Y * S;
    Yaux := -1 * Cubo[i].X * S + Cubo[i].Y * C;
    Cubo[i].X := Xaux;
    Cubo[i].Y := Yaux;
  end;
  Form1.Button9Click(Sender); 
  Form1.Button1Click(Sender);
end;

procedure TForm1.Button10Click(Sender: TObject);
var i : Integer;
begin
  S := sin(alpha);//Seno
  C := cos(alpha);//Coseno
  //S y C son variables que almacenan sin y cos entonces
  //Se simplican los calculos para no calcular lo mismo varias veces
  //Rotacion
  for i := 1 to 10 do
  begin
    Yaux := Cubo[i].Y * C + Cubo[i].Z * S;
    Zaux := -1 * Cubo[i].Y * S + Cubo[i].Z * C;

    Cubo[i].Y := Yaux;
    Cubo[i].Z := Zaux;
  end;
  Form1.Button9Click(Sender); 
  Form1.Button1Click(sender);
end;

procedure TForm1.Button11Click(Sender: TObject);
var i : Integer;
begin
  S := sin(alpha);//Seno
  C := cos(alpha);//Coseno
  //S y C son variables que almacenan sin y cos entonces
  //Se simplican los calculos para no calcular lo mismo varias veces
  //Rotacion
  for i := 1 to 10 do
  begin
    Xaux := -1 * Cubo[i].Z * S + Cubo[i].X * C;
    Zaux := Cubo[i].Z * C + Cubo[i].X * S;

    Cubo[i].X := Xaux;
    Cubo[i].Z := Zaux;
  end;
  Form1.Button9Click(Sender);
  Form1.Button1Click(sender);
end;

procedure TForm1.Button6Click(Sender: TObject);
var i : Integer;
begin
  S := sin(-alpha);//Seno
  C := cos(-alpha);//Coseno
  //S y C son variables que almacenan sin y cos entonces
  //Se simplican los calculos para no calcular lo mismo varias veces
  //Rotacion
  for i := 1 to 10 do
  begin
    Xaux := Cubo[i].X * C + Cubo[i].Y * S;
    Yaux := -1 * Cubo[i].X * S + Cubo[i].Y * C;
    Cubo[i].X := Xaux;
    Cubo[i].Y := Yaux;
  end;
  Form1.Button9Click(Sender); 
  Form1.Button1Click(Sender);
end;

procedure TForm1.Button7Click(Sender: TObject);
var i : Integer;
begin
  S := sin(-alpha);//Seno
  C := cos(-alpha);//Coseno
  //S y C son variables que almacenan sin y cos entonces
  //Se simplican los calculos para no calcular lo mismo varias veces
  //Rotacion
  for i := 1 to 10 do
  begin
    Xaux := -1 * Cubo[i].Z * S + Cubo[i].X * C;
    Zaux := Cubo[i].Z * C + Cubo[i].X * S;

    Cubo[i].X := Xaux;
    Cubo[i].Z := Zaux;
  end;
  Form1.Button9Click(Sender);
  Form1.Button1Click(sender);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i : Integer;
begin
  S := sin(-alpha);//Seno
  C := cos(-alpha);//Coseno
  //S y C son variables que almacenan sin y cos entonces
  //Se simplican los calculos para no calcular lo mismo varias veces
  //Rotacion
  for i := 1 to 10 do
  begin
    Yaux := Cubo[i].Y * C + Cubo[i].Z * S;
    Zaux := -1 * Cubo[i].Y * S + Cubo[i].Z * C;

    Cubo[i].Y := Yaux;
    Cubo[i].Z := Zaux;
  end;
  Form1.Button9Click(Sender); 
  Form1.Button1Click(sender);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  OjoAObjeto := StrToInt(TextAreaOO.Text)* 40;
  OjoAPantalla := StrToInt(TextAreaOP.Text) * 40;
  Form1.Button9Click(Sender); 
  Form1.Button1Click(sender);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 OjoAObjeto := OjoAObjeto * 1.10;
 Form1.Button9Click(Sender);
 Form1.Button1Click(sender);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  OjoAObjeto := OjoAObjeto / 1.10;
  Form1.Button9Click(Sender);
  Form1.Button1Click(sender);
end;

end.
