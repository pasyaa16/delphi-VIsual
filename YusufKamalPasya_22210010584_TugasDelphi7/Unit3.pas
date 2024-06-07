unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    e1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    btn2: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;


implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  DataModule4.zqry1.SQL.Clear;
  DataModule4.zqry1.SQL.Add('insert into kategori values (null,"'+e1.Text+'")');
  DataModule4.zqry1.ExecSQL;

  DataModule4.zqry1.SQL.Clear;
  DataModule4.zqry1.SQL.Add('select * from kategori');
  DataModule4.zqry1.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  with DataModule4.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('update kategori set name="'+e1.Text+'" where id= "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kategori');
    Open;
  end;
  ShowMessage('Data Berhasil DiUpdate!');
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  // Implementasi untuk btn4Click jika diperlukan
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
begin
  with DataModule4.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('delete from kategori where id= "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kategori');
    Open;
  end;
  ShowMessage('Data Berhasil Di Hapus!');
end;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
e1.Text:= DataModule4.zqry1.Fields[1].AsString;
a:= DataModule4.zqry1.Fields[0] .AsString;
end;

end.
