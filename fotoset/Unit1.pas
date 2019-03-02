unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StdCtrls,
  Mask, TeEngine, Series, TeeProcs, Chart, DbChart, Menus;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    GroupBox4: TGroupBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Button4: TButton;
    GroupBox5: TGroupBox;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Image2: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    Button2: TButton;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Button3: TButton;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label15: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    ADOTable5: TADOTable;
    DataSource5: TDataSource;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label16: TLabel;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOTable1.Post;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOTable2.Post;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ADOTable3.Post;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ADOTable4.Post;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Close;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form1.Hide;
  Form2.Show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  WinExec('hh Help.chm', SW_RESTORE);
end;

end.
