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
    AfterScroll = UnitsAfterScroll
    TableDirect = True
    TableName = 'MyUnits'
    Left = 8
    Top = 64
  end
  object dsUnits: TDataSource
    DataSet = Units
    Left = 8
    Top = 120
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
    Left = 64
    Top = 120
  end
  object Tavern: TADOTable
    Active = True
    Connection = TotalWar
    CursorType = ctStatic
    TableDirect = True
    TableName = 'MyTavern'
    Left = 120
    Top = 64
  end
  object dsTavern: TDataSource
    DataSet = Tavern
    Left = 120
    Top = 120
  end
  object Move: TADOQuery
    Connection = TotalWar
    Parameters = <>
    Left = 232
    Top = 64
  end
  object dsEnemies: TDataSource
    DataSet = Enemies
    Left = 280
    Top = 120
  end
  object Enemies: TADOQuery
    Connection = TotalWar
    Parameters = <>
    Left = 280
    Top = 64
  end
  object MoveUnit: TADOStoredProc
    Connection = TotalWar
    ProcedureName = 'Move;1'
    Parameters = <>
    Left = 336
    Top = 64
  end
  object BuyUnit: TADOStoredProc
    Connection = TotalWar
    ProcedureName = 'BuyUnit;1'
    Parameters = <>
    Left = 176
    Top = 64
  end
end
