program PrjServidor;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UFrmServidor in 'UFrmServidor.pas' {FrmServidor},
  USMConexao in 'USMConexao.pas' {SMConexao: TDSServerModule},
  USC in 'USC.pas' {SC: TDataModule},
  USMPai in 'USMPai.pas' {SMPai: TDataModule},
  USMCadContato in 'USMCadContato.pas' {SMCadContato: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServidor, FrmServidor);
  Application.CreateForm(TSC, SC);
  Application.CreateForm(TSMPai, SMPai);
  Application.CreateForm(TSMCadContato, SMCadContato);
  Application.Run;
end.

