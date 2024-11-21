unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, mySQLDbTables, frxClass, frxDBSet,
  Mask, DBCtrls;

type
  TForm5 = class(TForm)
    MySQLQuery1: TMySQLQuery;
    MySQLDatabase1: TMySQLDatabase;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    frxDBDataset1: TfrxDBDataset;
    Edit1: TEdit;
    Button2: TButton;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}



procedure TForm5.Button1Click(Sender: TObject);
begin
  if (MySQLQuery1.Active = false)
    then
      begin
        MySQLQuery1.ParamByName('par1').AsString := edit1.Text + '%';
        MySQLQuery1.Active := true
      end
    else
    MySQLQuery1.Active:= false;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
