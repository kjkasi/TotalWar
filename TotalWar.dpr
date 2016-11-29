program TotalWar;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  DataModuleUnit in 'DataModuleUnit.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
