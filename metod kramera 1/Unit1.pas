unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Button1: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Button2: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label14: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

var a1, b1, c1, a2, b2, c2, d, dx, dy, x, y : Real;

procedure TForm1.Button1Click(Sender: TObject);

begin
// a1 + b1 = c1
// a2 + b2 = c2
a1:=strtofloat(Edit1.text);
b1:=strtofloat(Edit2.text);
c1:=strtofloat(Edit3.text);
a2:=strtofloat(Edit4.text);
b2:=strtofloat(Edit5.text);
c2:=strtofloat(Edit6.text);
d := (a1*b2) - (b1*a2);

if d <> 0 then
  begin
    Label10.Visible:=True;
    Label11.Visible:=True;
    Label12.Visible:=True;
    Label13.Visible:=True;
    Label14.Visible:=False;
    Edit7.Visible:=True;
    Edit8.Visible:=True;
    Edit9.Visible:=True;
    Edit7.Text:=floattostr(d);
    dx := (c1*b2) - (c2*b1);
    dy := (a1*c2) - (a2*c1);
    x := dx/d;
    y := dy/d;
    Edit8.Text:=floattostrF(x, ffNumber, 15, 2);
    Edit9.Text:=floattostrF(y, ffNumber, 15, 2);
  end;

if d = 0 then
  begin
    Label10.Visible:=True;
    Label11.Visible:=False;
    Label12.Visible:=False;
    Label13.Visible:=False;
    Label14.Visible:=True;
    Edit7.Visible:=False;
    Edit8.Visible:=False;
    Edit9.Visible:=False;
  end

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';

Label10.Visible:=False;
Label11.Visible:=False;
Label12.Visible:=False;
Label13.Visible:=False;
Label14.Visible:=False;

Edit7.Visible:=False;
Edit8.Visible:=False;
Edit9.Visible:=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Randomize;

a1:=Random(100) - 50;
a2:=Random(100) - 50;
b1:=Random(100) - 50;
b2:=Random(100) - 50;
c1:=Random(100) - 50;
c2:=Random(100) - 50;

Edit1.Text:=floattostr(a1);
Edit2.Text:=floattostr(b1);
Edit3.Text:=floattostr(c1);
Edit4.Text:=floattostr(a2);
Edit5.Text:=floattostr(b2);
Edit6.Text:=floattostr(c2);

end;

end.
