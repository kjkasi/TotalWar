unit DataModuleUnit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    TotalWar: TADOConnection;
    Units: TADOTable;
    dsUnits: TDataSource;
    Info: TADOTable;
    dsInfo: TDataSource;
    Tavern: TADOTable;
    dsTavern: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
