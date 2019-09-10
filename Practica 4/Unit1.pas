unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn6Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.btn1Click(Sender: TObject);
var i, j : Integer;
begin
    j := 200;
    for i := 1 to 200 do
    begin
      img1.Canvas.Pixels[i,i] := clBlue;
    end;
    for i := 1 to 200 do
    begin
      img1.Canvas.Pixels[i,j] := clBlue;
      j := j -1;
    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var i, j : Integer;
begin
  j := 0;
  for i := 200 to 400 do
  begin
    img1.Canvas.Pixels[i,j] := clRed;
    j := j + 1;
  end;
  j := 200;
  for i := 200 to 400 do
  begin
    img1.Canvas.Pixels[i,j] := clRed;
    j := j - 1;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
var i, j, k : Integer;
begin
  j := 250;
  for k := 1 to 3 do
    begin
      for i := 1 to 200 do
      begin
           img1.Canvas.Pixels[i,j] := clGreen;
      end;
      j := j + 50;
    end;
end;

procedure TForm1.btn4Click(Sender: TObject);
var i, j, k : Integer;
begin
  i := 250;
  for k := 1 to 3 do
    begin
      for j := 200 to 400 do
      begin
           img1.Canvas.Pixels[i,j] := clBlack;
      end;
      i := i + 50;
    end;
end;

procedure TForm1.btn5Click(Sender: TObject);
var i : Integer;
begin
  img1.Canvas.Rectangle(0,0,400,400);
  for i := 1 to 400 do
    begin
      img1.Canvas.Pixels[i,200] := clBlack;
    end;
  for i := 1 to 400 do
    begin
      img1.Canvas.Pixels[200,i] := clBlack;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i : Integer;
begin

  img1.Canvas.Rectangle(0,0,400,400);
  for i := 1 to 400 do
    begin
      img1.Canvas.Pixels[i,200] := clBlack;
    end;
  for i := 1 to 400 do
    begin
      img1.Canvas.Pixels[200,i] := clBlack;
    end;
end;

end.
