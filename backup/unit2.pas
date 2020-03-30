unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ActnList, Menus, Buttons, ExtCtrls, Grids, LCLIntf, ComCtrls,
  ShellAPI, Windows, Math, LCLTranslator, Unit3, Unit4;

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
    Label1: TLabel;

    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
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
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure RadioButton6Change(Sender: TObject);
    procedure RadioButton7Change(Sender: TObject);

  private

  public

  end;
    const digit:string[16]='0123456789ABCDEF'; //цифры в СС 2-16
var
  Form2: TForm2;
  a, b, c: Real;
  znak: String;
  n: integer;

implementation

{$R *.lfm}

{ TForm2 }
uses Unit1;
function FromDec(n,r:integer):string;
begin
result:='';
repeat
result:=digit[(n mod r)+1]+result;
n:=n div r;
until n=0;
end;

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

procedure TForm2.FormCreate(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=sqr(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;
//Русский
procedure TForm2.MenuItem11Click(Sender: TObject);
begin
   SetDefaultLang('ru', 'lang');
end;
//Английский
procedure TForm2.MenuItem12Click(Sender: TObject);
begin
    SetDefaultLang('en', 'lang');
end;
//Базовый
procedure TForm2.MenuItem6Click(Sender: TObject);
begin
  Form1.Show;
 Form2.Hide;
end;
//справка
procedure TForm2.MenuItem8Click(Sender: TObject);
begin
  Form3.Show;
end;
//о программе
procedure TForm2.MenuItem9Click(Sender: TObject);
begin
  Form4.Show;
end;
//двоичная
procedure TForm2.RadioButton1Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,2);
  n:=0;
end;
//троичная
procedure TForm2.RadioButton2Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,3);
  n:=0;
end;
//четвертичная
procedure TForm2.RadioButton3Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,4);
  n:=0;
end;
//пятеричная
procedure TForm2.RadioButton4Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,5);
  n:=0;
end;
//шестиричная
procedure TForm2.RadioButton5Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,6);
  n:=0;
end;
//семеричная
procedure TForm2.RadioButton6Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,7);
  n:=0;
end;
//восьмиричная
procedure TForm2.RadioButton7Change(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Form2.Label1.Caption:=FromDec(n,8);
  n:=0;
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
  a:=a/100;
  Edit1.Text:=FloatToStr(a);
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
//ln
procedure TForm2.Button32Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=ln(a);
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;
//log
procedure TForm2.Button33Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=log10(a);
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
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
  if Edit1.Text <> '0' then
  begin
    if Edit1.Text[1] = '-' then Edit1.Text := RightStr(Edit1.Text, Length(Edit1.Text) - 1)
    else Edit1.Text := '-' + Edit1.Text;
  end;
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
begin
  a:=StrToFloat(Form2.Edit1.Text);
  a:=sin(a);  //работает с радианами https://www.cyberforum.ru/delphi-beginners/thread7875.html
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;
//cos
procedure TForm2.Button26Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=cos(a);   //работает с радианами
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;
//tg
procedure TForm2.Button27Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=sin(a)/cos(a);   //работает с радианами
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;
//ctg
procedure TForm2.Button28Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=cos(a)/sin(a);   //работает с радианами
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
end;

function Fact(N: double): double;
begin
  if N > 1 then
    Fact := N * Fact(N - 1)
  else
    Fact := 1;
end;

//факториал
procedure TForm2.Button31Click(Sender: TObject);
  begin
  a:=StrToFloat(Edit1.Text);
  a:=Fact(a);
  Form2.Edit1.Text:=FloatToStr(a);
  a:=0;
  end;

end.

