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
begin
  img1.Canvas.Pixels[150,150] := RGB(0,0,200);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  img1.Canvas.Pixels[200,200] := RGB(200,0,0);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  img1.Canvas.Pixels[250,200] := clGreen;
end;

procedure TForm1.btn4Click(Sender: TObject);
var i : Integer;
begin

  for i := 1 to 300 do
    begin
      img1.Canvas.Pixels[i,i] := clRed;
    end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,300,300);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  img1.Canvas.Rectangle(0,0,300,300);
end;

end.
