unit UDMPai;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, UDMConexao, ClassPaiCadastro;

type
  TDMPai = class(TDataModule)
    DSPC_Cadastro: TDSProviderConnection;
    CDS_Cadastro: TClientDataSet;
    procedure CDS_CadastroAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FCodigoAtual: Integer;
    FClasseFilha: TFClassPaiCadastro;
  public
    { Public declarations }
    property CodigoAtual: Integer read FCodigoAtual write FCodigoAtual;
    property ClasseFilha: TFClassPaiCadastro read FClasseFilha write FClasseFilha;
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
