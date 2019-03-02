unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    Menu: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Settings1: TMenuItem;
    Thems: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Exit1Click(Sender: TObject);
    procedure ThemsClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.ThemsClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b,s,h,x,yp,yn,yk:Real; i,n:Integer;
begin
a:=StrToFloat(Edit1.Text);
b:=StrToFloat(Edit2.Text);
n:=StrToInt(Edit3.Text);
h:=(b-a)/n;
yp:=0;
x:=a;
for i:=1 to n-1 do
  begin
    x:=x+h;
    yp:=yp+sin(x);
  end;
yn:=sin(a);
yk:=sin(b);
s:=((yk+yn)/2+yp)*h;
Edit4.Text:=FloattoStr(s);
end;

end.

