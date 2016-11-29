unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

end.
