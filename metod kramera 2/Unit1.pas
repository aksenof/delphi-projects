unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

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
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Button2: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Image1: TImage;
    Label9: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit9: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
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

var a1, b1, c1, a2, b2, c2, a3, b3, c3, s1, s2, s3, d, d1, d2, d3, x1, x2, x3 : Real;

procedure TForm1.Button1Click(Sender: TObject);
begin
// a1 + b1 + c1 = s1
// a2 + b2 + c2 = s2
// a3 + b3 + c3 = s3

a1:=strtofloat(Edit1.text);
b1:=strtofloat(Edit2.text);
c1:=strtofloat(Edit3.text);
s1:=strtofloat(Edit4.text);

a2:=strtofloat(Edit5.text);
b2:=strtofloat(Edit6.text);
c2:=strtofloat(Edit7.text);
s2:=strtofloat(Edit8.text);

a3:=strtofloat(Edit9.text);
b3:=strtofloat(Edit10.text);
c3:=strtofloat(Edit11.text);
s3:=strtofloat(Edit12.text);

d := (a1*( (b2*c3) - (b3*c2) )) - (b1*( (a2*c3) - (a3*c2) )) + (c1*( (a2*b3) - (a3*b2) ));

if d <> 0 then
  begin
    Label10.Visible:=True;
    Label11.Visible:=True;
    Label12.Visible:=True;
    Label13.Visible:=True;
    Label14.Visible:=False;
    Label24.Visible:=True;
    Edit13.Visible:=True;
    Edit14.Visible:=True;
    Edit15.Visible:=True;
    Edit16.Visible:=True;
    Edit13.Text:=floattostr(d);

    d1 := (s1*( (b2*c3) - (b3*c2) )) - (b1*( (s2*c3) - (s3*c2) )) + (c1*( (s2*b3) - (s3*b2) ));
    d2 := (a1*( (s2*c3) - (s3*c2) )) - (s1*( (a2*c3) - (a3*c2) )) + (c1*( (a2*s3) - (a3*s2) ));
    d3 := (a1*( (b2*s3) - (b3*s2) )) - (b1*( (a2*s3) - (a3*s2) )) + (s1*( (a2*b3) - (a3*b2) ));

    x1 := d1/d;
    x2 := d2/d;
    x3 := d3/d;

    Edit14.Text:=floattostrF(x1, ffNumber, 15, 2);
    Edit15.Text:=floattostrF(x2, ffNumber, 15, 2);
    Edit16.Text:=floattostrF(x3, ffNumber, 15, 2);
  end;

if d = 0 then
  begin
    Label10.Visible:=True;
    Label11.Visible:=False;
    Label12.Visible:=False;
    Label13.Visible:=False;
    Label24.Visible:=False;
    Label14.Visible:=True;
    Edit13.Visible:=False;
    Edit14.Visible:=False;
    Edit15.Visible:=False;
    Edit16.Visible:=False;
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
Edit10.Text:='';
Edit11.Text:='';
Edit12.Text:='';

Label10.Visible:=False;
Label11.Visible:=False;
Label12.Visible:=False;
Label13.Visible:=False;
Label14.Visible:=False;
Label24.Visible:=False;

Edit13.Visible:=False;
Edit14.Visible:=False;
Edit15.Visible:=False;
Edit16.Visible:=False;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Randomize;

a1:=Random(100) - 50;
a2:=Random(100) - 50;
a3:=Random(100) - 50;
b1:=Random(100) - 50;
b2:=Random(100) - 50;
b3:=Random(100) - 50;
c1:=Random(100) - 50;
c2:=Random(100) - 50;
c3:=Random(100) - 50;
s1:=Random(100) - 50;
s2:=Random(100) - 50;
s3:=Random(100) - 50;

Edit1.Text:=floattostr(a1);
Edit2.Text:=floattostr(a2);
Edit3.Text:=floattostr(a3);
Edit4.Text:=floattostr(b1);
Edit5.Text:=floattostr(b2);
Edit6.Text:=floattostr(b3);
Edit7.Text:=floattostr(c1);
Edit8.Text:=floattostr(c2);
Edit9.Text:=floattostr(c3);
Edit10.Text:=floattostr(s1);
Edit11.Text:=floattostr(s2);
Edit12.Text:=floattostr(s3);

end;

end.
