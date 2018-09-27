//
// Created by the DataSnap proxy generator.
// 26/09/2018 22:55:22
//

unit UCC;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TSMConexaoClient = class(TDSAdminClient)
  private
    FProximoCodigoCommand: TDBXCommand;
    FExecuteReaderCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function ProximoCodigo(Tabela: string): Integer;
    function ExecuteReader(SQL: string): OleVariant;
  end;

  TSMCadContatoClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
  end;

implementation

function TSMConexaoClient.ProximoCodigo(Tabela: string): Integer;
begin
  if FProximoCodigoCommand = nil then
  begin
    FProximoCodigoCommand := FDBXConnection.CreateCommand;
    FProximoCodigoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProximoCodigoCommand.Text := 'TSMConexao.ProximoCodigo';
    FProximoCodigoCommand.Prepare;
  end;
  FProximoCodigoCommand.Parameters[0].Value.SetWideString(Tabela);
  FProximoCodigoCommand.ExecuteUpdate;
  Result := FProximoCodigoCommand.Parameters[1].Value.GetInt32;
end;

function TSMConexaoClient.ExecuteReader(SQL: string): OleVariant;
begin
  if FExecuteReaderCommand = nil then
  begin
    FExecuteReaderCommand := FDBXConnection.CreateCommand;
    FExecuteReaderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecuteReaderCommand.Text := 'TSMConexao.ExecuteReader';
    FExecuteReaderCommand.Prepare;
  end;
  FExecuteReaderCommand.Parameters[0].Value.SetWideString(SQL);
  FExecuteReaderCommand.ExecuteUpdate;
  Result := FExecuteReaderCommand.Parameters[1].Value.AsVariant;
end;


constructor TSMConexaoClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TSMConexaoClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TSMConexaoClient.Destroy;
begin
  FProximoCodigoCommand.DisposeOf;
  FExecuteReaderCommand.DisposeOf;
  inherited;
end;

procedure TSMCadContatoClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TSMCadContato.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;


constructor TSMCadContatoClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TSMCadContatoClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TSMCadContatoClient.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  inherited;
end;

end.

