unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Buttons;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Button1: TButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid3: TDBGrid;
    SpeedButton5: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule1.BuyUnit.SQL.Clear ();
  DataModule1.BuyUnit.SQL.Append ('EXECUTE BuyUnit ' + DataModule1.Tavern.FieldByName ('ID').AsString);
  DataModule1.BuyUnit.ExecSQL ();

  DataModule1.Units.Requery ();
  DataModule1.Tavern.Requery ();
  DataModule1.Info.Requery ();
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  DataModule1.Move.SQL.Clear ();
  DataModule1.Move.SQL.Append ('EXECUTE Move ' +
    DataModule1.Units.FieldByName ('ID').AsString + ', W');
  DataModule1.Move.ExecSQL ();

  DataModule1.Units.Requery ();

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin

  DataModule1.Move.SQL.Clear ();
  DataModule1.Move.SQL.Append ('EXECUTE Move ' +
    DataModule1.Units.FieldByName ('ID').AsString + ', N');
  DataModule1.Move.ExecSQL ();

  DataModule1.Units.Requery ();

end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin

  DataModule1.Move.SQL.Clear ();
  DataModule1.Move.SQL.Append ('EXECUTE Move ' +
    DataModule1.Units.FieldByName ('ID').AsString + ', E');
  DataModule1.Move.ExecSQL ();

  DataModule1.Units.Requery ();

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin

  DataModule1.Move.SQL.Clear ();
  DataModule1.Move.SQL.Append ('EXECUTE Move ' +
    DataModule1.Units.FieldByName ('ID').AsString + ', S');
  DataModule1.Move.ExecSQL ();

  DataModule1.Units.Requery ();

end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
  UnitID, MyX, MyY, EnemyX, EnemyY : Integer;
  Direction : char;
begin

  UnitID := DataModule1.Units.FieldByName ('ID').Value;

  MyX := DataModule1.Units.FieldByName ('X').Value;
  MyY := DataModule1.Units.FieldByName ('Y').Value;

  EnemyX := DataModule1.Enemies.FieldByName ('X').Value;
  EnemyY := DataModule1.Enemies.FieldByName ('Y').Value;

  if EnemyY > MyY then Direction := 'N';
  if EnemyY < MyY then Direction := 'S';
  if EnemyX > MyX then Direction := 'E';
  if EnemyX < MyX then Direction := 'W';

  DataModule1.Move.SQL.Clear ();
  DataModule1.Move.SQL.Append ('Execute Move ' +
    IntToStr (UnitID) + ', ' +  Direction);
  DataModule1.Move.ExecSQL ();

  DataModule1.Units.Requery ();
  DataModule1.Enemies.Requery ();

end;

end.
