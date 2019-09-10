unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    dlgColor1: TColorDialog;
    edt5: TEdit;
    btn8: TButton;
    lbl5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn4Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,y1,x2,y2 : Integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,500,500);
  edt1.Text := '0';
  edt2.Text := '0';
  edt3.Text := '0';
  edt4.Text := '0';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  ShowMessage('Paulo Cesar Ruiz Lozano');
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  img1.Canvas.MoveTo(x1,y1);{Se mueve el apuntador imaginario}
  img1.Canvas.LineTo(x2,y2);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
    img1.Canvas.MoveTo(x1,y1);{Se mueve el apuntador imaginario}
    img1.Canvas.Rectangle(x1,y1,x2,y2);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,500,500);
  edt1.Text := '0';
  edt2.Text := '0';
  edt3.Text := '0';
  edt4.Text := '0';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  {
  Si el metodo de ecucion de dlgcolor fue aceptado o no
  }
  if(dlgColor1.Execute)then
  begin
    img1.Canvas.Pen.Color := dlgColor1.Color;
  end;
end;

procedure TForm1.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    edt5.Text := '('+InttoStr(X)+','+InttoStr(y)+')';
    {Cursor := crCross;}
end;

procedure TForm1.img1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x1 := X;
  y1 := Y;
  edt1.Text := IntToStr(X);
  edt2.Text := IntToStr(Y);
end;

procedure TForm1.img1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x2 := X;
  y2 := y;
  edt3.Text := IntToStr(X);
  edt4.Text := IntToStr(Y);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if(dlgColor1.Execute)then
  begin
    img1.Canvas.Brush.Color := dlgColor1.Color;
  end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  img1.Canvas.Ellipse(x1,y1,x2,y2);
end;

end.
