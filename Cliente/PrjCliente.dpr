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
  UFrmGridsTESTE in 'UFrmGridsTESTE.pas' {FrmGridsTESTE},
  ClassPaiCadastro in '..\Classes\ClassPaiCadastro.pas',
  ClassContato in '..\Classes\ClassContato.pas',
  UFrmCadContato in 'UFrmCadContato.pas' {FrmCadContato},
  UFrmPaiConsulta in 'UFrmPaiConsulta.pas' {FrmPaiConsulta},
  UFrmConsultaContato in 'UFrmConsultaContato.pas' {FrmConsultaContato};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
