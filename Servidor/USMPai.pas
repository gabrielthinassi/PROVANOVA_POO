unit USMPai;

interface

uses
  System.SysUtils, System.Classes, DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, USMConexao;

type
  TSMPai = class(TDSServerModule)
    SQL_Cadastro: TSQLDataSet;
    DSP_Cadastro: TDataSetProvider;
    SQL_Consulta: TSQLDataSet;
    DSP_Consulta: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FSMConexao: TSMConexao;
  public
    { Public declarations }
    property SMConexao: TSMConexao read FSMConexao write FSMConexao;
  end;

var
  SMPai: TSMPai;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TSMPai.DSServerModuleCreate(Sender: TObject);
begin
  SMConexao := TSMConexao.Create(Self);
end;

end.
