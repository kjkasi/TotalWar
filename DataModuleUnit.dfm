object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 230
  Top = 477
  Height = 284
  Width = 890
  object TotalWar: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=\\192.168.0.100\upload\TotalWar\TotalWar.UDL'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 8
  end
  object Units: TADOTable
    Active = True
    Connection = TotalWar
    CursorType = ctStatic
    TableDirect = True
    TableName = 'MyUnits'
    Left = 64
    Top = 8
  end
  object dsUnits: TDataSource
    DataSet = Units
    Left = 120
    Top = 8
  end
  object Info: TADOTable
    Active = True
    Connection = TotalWar
    CursorType = ctStatic
    TableDirect = True
    TableName = 'MyInfo'
    Left = 64
    Top = 64
  end
  object dsInfo: TDataSource
    DataSet = Info
    Left = 120
    Top = 64
  end
end
