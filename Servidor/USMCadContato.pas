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
    procedure DSServerModuleCreate(Sender: TObject);
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

procedure TSMCadContato.DSServerModuleCreate(Sender: TObject);
begin
  SMConexao := TSMConexao.Create(Self);
  inherited;
end;

end.
