unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, Math;

type

  { TForm2 }

  TForm2 = class(TForm)
        Button1: TButton;
        Button12: TButton;
    Button2: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Edit1: TEdit;

    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);

  private

  public

  end;

var
  Form2: TForm2;
  a, b, c: Real;
  znak: String;

implementation

{$R *.lfm}

{ TForm2 }
uses Unit1;

procedure TForm2.ClickBut(Sender: TObject);
begin
  Form2.Edit1.Text:=Form2.Edit1.Text + (Sender as TButton).Caption; //имя кнопки = вывод в Edit
end;

procedure TForm2.ClickZnak(Sender: TObject);
begin
  //нужно сделать так, чтобы если '-' нажимается раньше цифры, то выводить его
 //if a<>null then
 a:=StrToFloat(Edit1.Text);
 Form2.Edit1.Clear;
 znak:=(Sender as TButton). Caption;
 //else b:=b;
end;

//Базовый
procedure TForm2.MenuItem6Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Hide;
end;
//Копировать
procedure TForm2.MenuItem4Click(Sender: TObject);
begin
  Form2.Edit1.CopyToClipboard;
end;
//Вставить
procedure TForm2.MenuItem5Click(Sender: TObject);
begin
  Form2.Edit1.PasteFromClipboard;
end;

//C
procedure TForm2.Button22Click(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

// CE
procedure TForm2.Button21Click(Sender: TObject);
begin
   Edit1.Clear;
end;

// %
procedure TForm2.Button20Click(Sender: TObject);
begin
 //процент не работает
  a:=StrToFloat(Edit1.Text);
  if a<>null then
  a:=a/b*100
  else a:=b/100 ;
  Form2.Edit1.Text:=IntToStr(round(a));
  a:=0;
end;

// <-
procedure TForm2.Button23Click(Sender: TObject);
var
  str: string;
begin
  str:=Edit1.Text;
  if str <> '' then
  Delete(str, Length(str),1);
  Form2.Edit1.Text:=str;
end;
// Корень
procedure TForm2.Button25Click(Sender: TObject);
begin
a:=StrToFloat(Form2.Edit1.Text);
a:=sqrt(a);
Form2.Edit1.Text:=FloatToStr(a);
a:=0;
end;

//модуль
procedure TForm2.Button30Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=abs(a);
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button34Click(Sender: TObject);
begin
  Form2.Edit1.Text:=FloatToStr(a)+ '^';
end;

// =
procedure TForm2.Button16Click(Sender: TObject);
begin
  b:=StrToFloat(Edit1.Text);
  Form2.Edit1.Clear;
  case znak of
  '+' : c:=a+b;
  '-' : c:=a-b;
  '*' : c:=a*b;
  '/' : c:=a/b;
  '^' : c:=power(a,b);
  end;
  Form2.Edit1.Text:=FloatToStr(c);
end;
// -
procedure TForm2.Button19Click(Sender: TObject);
begin
  //работает только на положительное число
  {
  a:=StrToFloat(Edit1.Text);
  if a<>0 then begin
  if a=a then a:=-a
  else '-'a:=a;
  end;
  Edit1.Text:=FloatToStr(a);
  a:=0; }
end;

// x^2
procedure TForm2.Button11Click(Sender: TObject);
begin
  a:=StrToFloat(Form2.Edit1.Text);
  a:=sqr(a);
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;

// 1/x
procedure TForm2.Button10Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=1/(a);
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;

//sin
procedure TForm2.Button12Click(Sender: TObject);
var
 a : single;
begin
  a:=StrToFloat(Form2.Edit1.Text);
  a:=sin(a);  //неправильно работает
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;

//cos
procedure TForm2.Button26Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=cos(a);   //неправильно работает
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;

end.

