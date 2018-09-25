unit UFrmGridsTESTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDMCadContato, UFrmPaiCadastro, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TFrmGridsTESTE = class(TFrmPaiCadastro)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridsTESTE: TFrmGridsTESTE;

implementation

{$R *.dfm}

procedure TFrmGridsTESTE.Button1Click(Sender: TObject);
begin
  inherited;
  DMCadContato.CDS_Cadastro.Close;
  DMCadContato.CDS_Cadastro.FetchParams;
  DMCadContato.CDS_Cadastro.Params[0].AsInteger := StrToInt(Edit1.Text);
  DMCadContato.CDS_Cadastro.Open;

end;

end.
