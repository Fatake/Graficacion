unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    imgLienzo: TImage;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure imgLienzoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgLienzoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1, x2, y1, y2 : Integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  imgLienzo.Canvas.Rectangle(0,0,300,300);
end;

procedure TForm1.imgLienzoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x1 := X;
  y1 := Y;
end;

procedure TForm1.imgLienzoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x2 := X;
  y2 := Y;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  imgLienzo.Canvas.MoveTo(x1,y1);
 imgLienzo.Canvas.LineTo(x2,y2);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  imgLienzo.Canvas.Rectangle(0,0,300,300);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  imgLienzo.Canvas.MoveTo(x1,y1);
  imgLienzo.Canvas.Pen.Color := clWhite;
  imgLienzo.Canvas.LineTo(x2,y2);
  imgLienzo.Canvas.Pen.Color := clBlack;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  imgLienzo.Canvas.Brush.Color := clWhite;
  imgLienzo.Canvas.Pen.Color := clWhite;
  imgLienzo.Canvas.Rectangle(x1,y1,x2,y2);
  imgLienzo.Canvas.Brush.Color := clBlack;
  imgLienzo.Canvas.Pen.Color := clBlack;
end;

end.
