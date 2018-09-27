program PrjServidor;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UFrmServidor in 'UFrmServidor.pas' {FrmServidor},
  USMConexao in 'USMConexao.pas' {SMConexao: TDSServerModule},
  USC in 'USC.pas' {SC: TDataModule},
  USMPai in 'USMPai.pas' {SMPai: TDataModule},
  USMCadContato in 'USMCadContato.pas' {SMCadContato: TDSServerModule},
  ClassContato in '..\Classes\ClassContato.pas',
  ClassPaiCadastro in '..\Classes\ClassPaiCadastro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServidor, FrmServidor);
  Application.CreateForm(TSC, SC);
  Application.Run;
end.

