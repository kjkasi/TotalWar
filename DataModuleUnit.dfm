object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 209
  Top = 612
  Height = 150
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
end
