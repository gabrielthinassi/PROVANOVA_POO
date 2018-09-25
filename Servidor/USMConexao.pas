unit USMConexao;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DBXFirebird, Data.DB, Data.SqlExpr;

type
  TSMConexao = class(TDSServerModule)
    CON_FB: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation


{$R *.dfm}


end.

