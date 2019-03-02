unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    StringGrid1: TStringGrid;
    Button3: TButton;
    Button4: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    StringGrid2: TStringGrid;
    Button5: TButton;
    Edit10: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit11: TEdit;
    Button6: TButton;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Edit12: TEdit;
    Label15: TLabel;
    Edit13: TEdit;
    Button7: TButton;
    Button8: TButton;
    Label16: TLabel;
    Edit14: TEdit;
    Label17: TLabel;
    Edit15: TEdit;
    Label18: TLabel;
    Edit16: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var m:array of Integer; i, i1, j1, n: Integer;

procedure TForm1.Button1Click(Sender: TObject);

begin
Randomize;
n:=strtoint(Edit1.Text);
SetLength(m,n);
Edit2.Text:='';
for i:=0 to n-1 do
  begin
    m[i]:=Random(100)-50;
    Edit2.Text:=Edit2.Text+' '+IntToStr(m[i]);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var max, min, k, s : Integer;
begin
max:=m[0];
min:=m[0];
s:=0;
k:=0;
for i:=0 to n-1 do
  begin
    s:=s+m[i];
    if m[i]>max then max:=m[i];
    if m[i]<min then min:=m[i];
    if m[i]>0 then k:=k+1;
  end;
Edit3.Text:=IntToStr(max);
Edit4.Text:=IntToStr(min);
Edit5.Text:=IntToStr(s);
Edit6.Text:=IntToStr(k);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Randomize;
with StringGrid1 do
  begin
    for i1:=0 to RowCount-1 do
      Cells[0,i1]:=IntToStr(i1);
    for j1:=0 to ColCount-1 do
      Cells[j1,0]:=IntToStr(j1);
  end;
with StringGrid1 do
  begin
    for i1:=1 to RowCount-1 do
      for j1:=1 to ColCount-1 do
        Cells[j1,i1]:=IntToStr(Random(100));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i1, j1, max1, min1, s1 : Integer;
begin
with StringGrid1 do
  begin
    max1:=StrToInt(Cells[1,1]);
    min1:=StrToInt(Cells[1,1]);
    s1:=0;
      for i1:=1 to rowcount-1 do
        for j1:=1 to rowcount-1 do
          begin
            if StrToInt(Cells[j1,i1])>max1 then
            max1:=StrToInt(Cells[j1,i1]);
            if StrToInt(Cells[j1,i1])<min1 then
            min1:=StrToInt(Cells[j1,i1]);
            if i1=j1 then
            s1:=s1+StrToInt(Cells[j1,i1]);
          end;
  end;
Edit7.Text:=IntToStr(max1);
Edit8.Text:=IntToStr(min1);
Edit9.Text:=IntToStr(s1);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Randomize;
with StringGrid2 do
  begin
    for i1:=0 to RowCount-1 do
      for j1:=0 to ColCount-1 do
        Cells[j1,i1]:=IntToStr(Random(100));
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);   // ввод
var i1, stlb: Integer;
begin
stlb:=StrToInt(Edit10.Text);
with StringGrid2 do
  begin
  for i1:=1 to RowCount-1 do
    Edit11.Text := Edit11.Text+' '+StringGrid2.Cells[stlb, i1];
  end;
end;



procedure TForm1.Button7Click(Sender: TObject);
begin
Randomize;
n:=strtoint(Edit12.Text);
SetLength(m,n);
Edit13.Text:='';
for i:=0 to n-1 do
  begin
    m[i]:=Random(100) - 50;
    Edit13.Text:=Edit13.Text+' '+IntToStr(m[i]);
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var i, sumchet : Integer; chet: String;
begin
  chet := '';
  sumchet:=0;
  for i:=0 to n-1 do
  begin
    if m[i] mod 2 = 0 then
    begin
       chet := chet + ' ' + IntToStr(m[i]);
       sumchet := sumchet + m[i];
    end;
  end;

  Edit16.Text:='';

  for i:=0 to n-1 do
  begin
    if m[i] > 0 then
    begin
       m[i] := sumchet;
    end;
    Edit16.Text:= Edit16.Text + ' ' + IntToStr(m[i]);
  end;

  Edit14.Text:=chet;
  Edit15.Text:=IntToStr(sumchet);

end;

end.
