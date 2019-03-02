unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;
                     
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label10: TLabel;
    Button3: TButton;
    Button2: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var c1,m1,c2,m2,c3,m3,t1,t2,t3:integer;
begin
c1:=StrtoInt(Edit1.Text);
m1:=StrtoInt(Edit2.Text);
c2:=StrtoInt(Edit3.Text);
m2:=StrtoInt(Edit4.Text);
t1:=c1*60+m1;
t2:=c2*60+m2;
t3:=t2-t1;
c3:=t3 div 60;
m3:=t3 mod 60;
Edit5.Text:=InttoStr(c3);
Edit6.Text:=InttoStr(m3);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Label10.Visible:=True;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close
end;

end.
