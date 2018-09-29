unit USMCadContato;

interface

uses
  System.SysUtils, System.Classes, USMPai, Data.FMTBcd, Datasnap.Provider,
  Data.DB, Data.SqlExpr, USMConexao;

type
  TSMCadContato = class(TSMPai)
    SQL_Endereco: TSQLDataSet;
    SQL_Telefone: TSQLDataSet;
    DSEndereco: TDataSource;
    DSTelefone: TDataSource;
    SQL_CadastroCODIGO_CONTATO: TIntegerField;
    SQL_CadastroNOME_CONTATO: TStringField;
    SQL_CadastroDTNASCIMENTO_CONTATO: TDateField;
    SQL_EnderecoCODIGO_ENDERECO: TIntegerField;
    SQL_EnderecoRUA_ENDERECO: TStringField;
    SQL_EnderecoNUMERO_ENDERECO: TStringField;
    SQL_EnderecoCONTATO_CODCONTATO: TIntegerField;
    SQL_TelefoneCODIGO_TELEFONE: TIntegerField;
    SQL_TelefoneNUMERO_TELEFONE: TStringField;
    SQL_TelefoneCONTATO_CODCONTATO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMCadContato: TSMCadContato;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
