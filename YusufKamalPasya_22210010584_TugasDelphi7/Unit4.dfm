object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 293
  Top = 297
  Height = 150
  Width = 249
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\user\Downloads\Compressed\libmysql\libmysql.dll'
    Left = 32
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 80
    Top = 32
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 128
    Top = 32
  end
end
