unit UDMCadContato;

interface

uses
  System.SysUtils, System.Classes, UDMPai, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, UDMConexao, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.SqlExpr, ClassContato;

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
    procedure CDS_EnderecoBeforeDelete(DataSet: TDataSet);
    procedure CDS_TelefoneBeforeDelete(DataSet: TDataSet);
    procedure CDS_EnderecoNewRecord(DataSet: TDataSet);
    procedure CDS_TelefoneNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
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

procedure TDMCadContato.CDS_EnderecoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (CDS_Cadastro.State in [dsEdit, dsInsert]) then
    CDS_Cadastro.Edit;
end;

procedure TDMCadContato.CDS_EnderecoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDS_Endereco.FieldByName('CONTATO_CODCONTATO').AsInteger := CDS_Cadastro.FieldByName('CODIGO_CONTATO').AsInteger;
end;

procedure TDMCadContato.CDS_TelefoneBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (CDS_Cadastro.State in [dsEdit, dsInsert]) then
    CDS_Cadastro.Edit;
end;

procedure TDMCadContato.CDS_TelefoneNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDS_Telefone.FieldByName('CONTATO_CODCONTATO').AsInteger := CDS_Cadastro.FieldByName('CODIGO_CONTATO').AsInteger;
end;

procedure TDMCadContato.DataModuleCreate(Sender: TObject);
begin
  inherited;
  ClasseFilha := TClassContato;
end;

procedure TDMCadContato.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  CDS_Endereco.Close;
  CDS_Telefone.Close;
end;

end.
