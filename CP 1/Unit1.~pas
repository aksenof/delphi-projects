unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Image2: TImage;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a, b, c, d, alfa, betta : real;
begin
a:=strtofloat(Edit1.text);
b:=strtofloat(Edit2.text);
c:=strtofloat(Edit3.text);
d:=strtofloat(Edit4.text);
alfa:=(Ln(c)/Ln(4)) + sin(3.14*a*d);
betta:=0.025+exp(1/3*Ln( exp( abs(alfa+0.5) )*Ln(b) ) );
Edit5.Text:=FloattoStrF(alfa, ffNumber, 15, 1);
Edit6.Text:=FloattoStrF(betta, ffNumber, 15, 2);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit1.text := '';
Edit2.text := '';
Edit3.text := '';
Edit4.text := '';
Edit5.text := '';
Edit6.text := '';
end;

end.
