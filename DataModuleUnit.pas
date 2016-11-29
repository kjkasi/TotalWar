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
    BuyUnit: TADOQuery;
    Move: TADOQuery;
    dsEnemies: TDataSource;
    Enemies: TADOQuery;
    MoveUnit: TADOStoredProc;
    procedure UnitsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.UnitsAfterScroll(DataSet: TDataSet);
begin
  DataModule1.Enemies.Close ();
  DataModule1.Enemies.SQL.Clear ();
  DataModule1.Enemies.SQL.Append ('SELECT * FROM ListEnemes (' +
    DataModule1.Units.FieldByName ('ID').AsString + ')');
  DataModule1.Enemies.Open ();

end;

end.
