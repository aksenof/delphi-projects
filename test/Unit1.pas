unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
var k:integer;
begin
k:=StrtoInt(Edit1.Text);
if k=1957
then Label3.Visible:=True;
     Label4.Visible:=False;
if k<>1957
then Label4.Visible:=True;
end;  

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Text:='';
Label3.Visible:=False;
Label4.Visible:=False;
end;

end.
