unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    FILE1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    DATAMASTER1: TMenuItem;
    KETEGORI1: TMenuItem;
    SATUAN1: TMenuItem;
    SUPPLIER1: TMenuItem;
    KUSTOMER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    PENJUALAN1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    LAPORAN1: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    LAPORANSTOKBARANG1: TMenuItem;
    LAPORANBARANG1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure KETEGORI1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
   mm1.Items[1].visible:=False;
   mm1.Items[2].visible:=False;
   mm1.Items[3].visible:=False;
end;

procedure TForm1.LOGIN1Click(Sender: TObject);
begin
  form2.Show;
end;

procedure TForm1.KETEGORI1Click(Sender: TObject);
begin
     form3.Show;
end;

procedure TForm1.LOGOUT1Click(Sender: TObject);
begin
    mm1.Items[1].visible:=False;
    mm1.Items[2].visible:=False;
    mm1.Items[3].visible:=False;
end;

end.