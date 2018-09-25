unit UDMCadContato;

interface

uses
  System.SysUtils, System.Classes, UDMPai, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, UDMConexao, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.SqlExpr;

type
  TDMCadContato = class(TDMPai)
    CDS_CadastroCODIGO_CONTATO: TIntegerField;
    CDS_CadastroNOME_CONTATO: TStringField;
    CDS_CadastroDTNASCIMENTO_CONTATO: TDateField;
    CDS_CadastroSQL_Telefone: TDataSetField;
    CDS_CadastroSQL_Endereco: TDataSetField;
    CDS_Endereco: TClientDataSet;
    CDS_Telefone: TClientDataSet;
    CDS_EnderecoCODIGO_ENDERECO: TIntegerField;
    CDS_EnderecoRUA_ENDERECO: TStringField;
    CDS_EnderecoNUMERO_ENDERECO: TStringField;
    CDS_TelefoneCODIGO_TELEFONE: TIntegerField;
    CDS_TelefoneNUMERO_TELEFONE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadContato: TDMCadContato;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
