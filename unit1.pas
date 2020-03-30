unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ActnList,
  Menus, Buttons, ExtCtrls, Grids, LCLIntf, ComCtrls,
  ShellAPI, Windows, Unit2, Math, LCLTranslator, Unit3, Unit4;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button12: TButton;
    Edit1: TEdit;
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

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c: Real;
  znak: String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ClickBut(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption; //имя кнопки = вывод в Edit
end;

procedure TForm1.ClickZnak(Sender: TObject);
begin
 a:=StrToFloat(Edit1.Text);
 Edit1.Clear;
 znak:=(Sender as TButton). Caption;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  SetDefaultLang('ru', 'lang');
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  SetDefaultLang('en', 'lang');
end;

//Копировать
procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;
//Вставить
procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;
//Расширенный
procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;
//справка
procedure TForm1.MenuItem8Click(Sender: TObject);
begin
   Form3.Show;
end;
//о программе
procedure TForm1.MenuItem9Click(Sender: TObject);
begin
   Form4.Show;
end;

// %
procedure TForm1.Button20Click(Sender: TObject);
begin
  //b := StrToFloat(Edit1.Text)* a * 0.01;
  a:=StrToFloat(Edit1.Text);
  a:=a/100;
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;
// CE
procedure TForm1.Button21Click(Sender: TObject);
begin
  Edit1.Clear;
end;
// C
procedure TForm1.Button22Click(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;
// <-
procedure TForm1.Button23Click(Sender: TObject);
var
  str: string;
begin
  str:=Edit1.Text;
  if str <> '' then
  Delete(str, Length(str),1);
  Edit1.Text:=str;
end;
// Корень
procedure TForm1.Button25Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;
// =
procedure TForm1.Button16Click(Sender: TObject);
begin
  b:=StrToFloat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+' : c:=a+b;
  '-' : c:=a-b;
  '*' : c:=a*b;
  '/' : c:=a/b;
  end;
  Edit1.Text:=FloatToStr(c);
end;
// -
procedure TForm1.Button19Click(Sender: TObject);
begin
  if Edit1.Text <> '0' then
  begin
    if Edit1.Text[1] = '-' then Edit1.Text := RightStr(Edit1.Text, Length(Edit1.Text) - 1)
    else Edit1.Text := '-' + Edit1.Text;
  end;
end;
// x^2
procedure TForm1.Button11Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=sqr(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;
// 1/x
procedure TForm1.Button10Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=1/(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

end.

