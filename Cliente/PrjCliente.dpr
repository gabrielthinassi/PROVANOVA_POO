program PrjCliente;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UCC in 'UCC.pas',
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule},
  UFrmPai in 'UFrmPai.pas' {FrmPai},
  UFrmPaiCadastro in 'UFrmPaiCadastro.pas' {FrmPaiCadastro},
  UDMPai in 'UDMPai.pas' {DMPai: TDataModule},
  UDMCadContato in 'UDMCadContato.pas' {DMCadContato: TDataModule},
  UFrmGridsTESTE in 'UFrmGridsTESTE.pas' {FrmGridsTESTE};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDMPai, DMPai);
  Application.CreateForm(TDMCadContato, DMCadContato);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
