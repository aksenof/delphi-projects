unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Menu: TMainMenu;
    File11: TMenuItem;
    Help1: TMenuItem;
    Exit1: TMenuItem;
    Autors1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Exit1Click(Sender: TObject);
    procedure Autors1Click(Sender: TObject);
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

uses Unit2;

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Autors1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Visible:=False;
Edit5.Visible:=False;
Edit6.Visible:=False;
Edit7.Visible:=False;
Label4.Visible:=False;
Label5.Visible:=False;
Label6.Visible:=False;
Label7.Visible:=False;
Label8.Visible:=False;
Label9.Visible:=False;
Label10.Visible:=False;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c,d,x1,x2,x:Real;
begin
a:=StrtoFloat(Edit1.Text);
b:=StrtoFloat(Edit2.Text);
c:=StrtoFloat(Edit3.Text);
d:=Sqr(b)-4*a*c;
if d>0
then
  begin
    Edit4.Text:=FloattoStr(d);
    x1:=(-b-sqrt(d))/(2*a);
    x2:=(-b+sqrt(d))/(2*a);
    Edit5.Text:=FloattoStrF(x1, ffNumber, 15, 1);
    Edit6.Text:=FloattoStrF(x2, ffNumber, 15, 1);
    Edit4.Visible:=True;
    Edit5.Visible:=True;
    Edit6.Visible:=True;
    Edit7.Visible:=False;
    Label4.Visible:=True;
    Label5.Visible:=False;
    Label6.Visible:=False;
    Label7.Visible:=True;
    Label8.Visible:=True;
    Label9.Visible:=True;
    Label10.Visible:=False;
  end;

if d=0
then
  begin
    x:=(-b)/(2*a);
    Edit7.Text:=FloattoStrF(x, ffNumber, 15, 1);
    Edit7.Visible:=True;
    Label5.Visible:=True;
    Label7.Visible:=True;
    Label10.Visible:=True;

    Edit4.Visible:=False;
    Edit5.Visible:=False;
    Edit6.Visible:=False;

    Label4.Visible:=False;
    Label6.Visible:=False;
    Label8.Visible:=False;
    Label9.Visible:=False;


  end;

if d<0
then
  begin
    Label6.Visible:=True;

    Edit4.Visible:=False;
    Edit5.Visible:=False;
    Edit6.Visible:=False;
    Edit7.Visible:=False;
    Label4.Visible:=False;
    Label5.Visible:=False;
    Label7.Visible:=False;
    Label8.Visible:=False;
    Label9.Visible:=False;
    Label10.Visible:=False;

  end;
end;

end.
