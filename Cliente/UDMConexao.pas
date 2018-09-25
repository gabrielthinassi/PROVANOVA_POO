unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, UCC, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Data.DB, Data.SqlExpr;

type
  TDMConexao = class(TDataModule)
    CON_DS: TSQLConnection;
  private
    FInstanceOwner: Boolean;
    FSMConexaoClient: TSMConexaoClient;
    function GetSMConexaoClient: TSMConexaoClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMConexaoClient: TSMConexaoClient read GetSMConexaoClient write FSMConexaoClient;

end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TDMConexao.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TDMConexao.Destroy;
begin
  FSMConexaoClient.Free;
  inherited;
end;

function TDMConexao.GetSMConexaoClient: TSMConexaoClient;
begin
  if FSMConexaoClient = nil then
  begin
    CON_DS.Open;
    FSMConexaoClient:= TSMConexaoClient.Create(CON_DS.DBXConnection, FInstanceOwner);
  end;
  Result := FSMConexaoClient;
end;

end.
