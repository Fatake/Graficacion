unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt2: TEdit;
    edt3: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn5: TButton;
    lbl8: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure lbl5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var dato1, dato2, res : Integer;
begin
   dato1 := StrtoInt(edt1.text);
   dato2 := StrtoInt(edt2.text);
   res := dato1 + dato2;
   edt3.text := InttoStr(res);
end;

procedure TForm1.btn2Click(Sender: TObject);
var dato1, dato2, res : Integer;
begin
  dato1 := StrtoInt(edt1.text);
  dato2 := StrtoInt(edt2.text);
  res := dato1 - dato2;
  edt3.text := InttoStr(res);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  close();
end;

procedure TForm1.btn3Click(Sender: TObject);
var dato1, dato2, res : Integer;
begin
  dato1 := StrtoInt(edt1.text);
  dato2 := StrtoInt(edt2.text);
  res := dato1 * dato2;
  edt3.text := InttoStr(res);
end;

procedure TForm1.btn4Click(Sender: TObject);
var dato1, dato2, res : Integer;
begin
  dato1 := StrtoInt(edt1.text);
  dato2 := StrtoInt(edt2.text);
  res := dato1 / dato2;
  edt3.text := InttoStr(res);
end;


end.
