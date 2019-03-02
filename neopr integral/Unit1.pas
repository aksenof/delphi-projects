unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
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
var n, a : integer;
begin
  a:=StrToInt(Edit1.Text);
  n:=StrToInt(Edit2.Text);
  Label5.Caption:=IntToStr(n+1);
  Label6.Caption:=IntToStr(n+1);
  Label8.Caption:=IntToStr(a);
  Label3.Visible:=True;
  Label4.Visible:=True;
  Label5.Visible:=True;
  Label6.Visible:=True;
  Label7.Visible:=True;
  Label8.Visible:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close;
end;

end.
