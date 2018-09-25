unit UDMPai;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, UDMConexao;

type
  TDMPai = class(TDataModule)
    DSPC_Cadastro: TDSProviderConnection;
    CDS_Cadastro: TClientDataSet;
    procedure CDS_CadastroAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPai: TDMPai;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMPai.CDS_CadastroAfterDelete(DataSet: TDataSet);
begin
  CDS_Cadastro.ApplyUpdates(0);
end;

end.
