unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
Form1.Color:=clGradientActiveCaption;
Form2.Color:=clGradientActiveCaption;
Form3.Color:=clGradientActiveCaption;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
Form1.Color:=clMoneyGreen;
Form2.Color:=clMoneyGreen;
Form3.Color:=clMoneyGreen;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
Form1.Color:=clWhite;
Form2.Color:=clWhite;
Form3.Color:=clWhite;
end;

end.
