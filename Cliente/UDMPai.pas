unit UDMPai;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, UDMConexao, ClassPaiCadastro;

type
  TDMPai = class(TDataModule)
    DSPC_Cadastro: TDSProviderConnection;
    CDS_Cadastro: TClientDataSet;
    CDS_Consulta: TClientDataSet;
    procedure CDS_CadastroAfterDelete(DataSet: TDataSet);
    procedure CDS_CadastroBeforePost(DataSet: TDataSet);
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

procedure TDMPai.CDS_CadastroBeforePost(DataSet: TDataSet);
begin
  if CDS_Cadastro.State = dsInsert then
    CDS_Cadastro.FieldByName(ClasseFilha.CampoChave).AsInteger := DMConexao.ProximoCodigo(ClasseFilha.TabelaPrincipal);
end;

end.
