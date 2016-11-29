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

end.
