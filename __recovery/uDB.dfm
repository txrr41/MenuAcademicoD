object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=root'
      'DriverID=PG')
    Left = 56
    Top = 56
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Users\Kauan\Documents\Crudd\lib\libpq.dll'
    Left = 176
    Top = 56
  end
  object FDQueryEstudante: TFDQuery
    Connection = FDConnection1
    Left = 304
    Top = 64
  end
end
