unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit1, Unit2;

type
  TForm3 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Button1: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
  Form1.Color := clWhite;
  Form2.Color := clWhite;
  Form3.Color := clWhite;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
  Form1.Color := clActiveCaption;
  Form2.Color := clActiveCaption;
  Form3.Color := clActiveCaption;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
  Form1.Color := clSilver;
  Form2.Color := clSilver;
  Form3.Color := clSilver;
end;

end.
