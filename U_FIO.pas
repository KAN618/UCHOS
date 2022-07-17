unit U_FIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBTable, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TF_FIO = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    T: TIBTable;
    T_FIO: TIBTransaction;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_FIO: TF_FIO;

implementation

{$R *.dfm}
uses Unit1, U_edit;


procedure TF_FIO.Button1Click(Sender: TObject);
begin
  T.Post;
  t_FIO.Commit;
  Close;
end;

procedure TF_FIO.Button2Click(Sender: TObject);
begin
  t_FIO.Rollback;
  Close;
end;

procedure TF_FIO.FormShow(Sender: TObject);
begin
  T.Open;
end;

end.
