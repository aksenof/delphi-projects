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
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Settings1: TMenuItem;
    Thems: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ThemsClick(Sender: TObject);
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

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
end;

procedure TForm1.About1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,f,n:integer;
begin
n:=StrtoInt(Edit1.Text);
f:=1;
for i:=1 to n do
f:=f*i;
Edit2.Text:=InttoStr(f);
end;

procedure TForm1.ThemsClick(Sender: TObject);
begin
Form3.Show;
end;

end.
