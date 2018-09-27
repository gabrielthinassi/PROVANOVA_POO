unit USMConexao;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TSMConexao = class(TDSServerModule)
    CON_FB: TSQLConnection;
    SQL_ProximoCodigo: TSQLDataSet;
    DSP_ProximoCodigo: TDataSetProvider;
    CDS_ProximoCodigo: TClientDataSet;
    SQL_ExecuteReader: TSQLDataSet;
    DSP_ExecuteReader: TDataSetProvider;
    CDS_ExecuteReader: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    function ProximoCodigo(Tabela: String): Integer;
    function ExecuteReader(SQL: String): OleVariant;
  end;

implementation


{$R *.dfm}


{ TSMConexao }

function TSMConexao.ExecuteReader(SQL: String): OleVariant;
begin
  try
    CDS_ExecuteReader.Close;
    CDS_ExecuteReader.CommandText := SQL;
    CDS_ExecuteReader.Open;

    Result := CDS_ExecuteReader.Data
  except on E: Exception do
    raise Exception.Create('Não foi possível executar o Comando! ' + E.Message);
  end;
end;

function TSMConexao.ProximoCodigo(Tabela: String): Integer;
begin
  CDS_ProximoCodigo.Close;
  CDS_ProximoCodigo.CommandText := 'select gen_id(GEN_'+Tabela+'_ID, 1) as CODIGO from RDB$DATABASE';
  CDS_ProximoCodigo.Open;

  if not CDS_ProximoCodigo.IsEmpty then
    Result := CDS_ProximoCodigo.FieldByName('CODIGO').AsInteger
  else
    raise Exception.Create('Não foi possível Buscar o ProximoCodigo!');
end;

end.

