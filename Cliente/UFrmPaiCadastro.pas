unit UFrmPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPai, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Data.DB, UDMPai;

type
  TFrmPaiCadastro = class(TFrmPai)
    pnlTop: TPanel;
    Panel1: TPanel;
    btnConsulta: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    edtCodigo: TJvCalcEdit;
    pnlNavegacao: TPanel;
    btnPrimeiro: TBitBtn;
    btnUltimo: TBitBtn;
    btnProximo: TBitBtn;
    btnAnterior: TBitBtn;
    DS: TDataSource;
    procedure pnlTopExit(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDMCadastro: TDMPai;
  public
    { Public declarations }
    property DMCadastro: TDMPai read FDMCadastro write FDMCadastro;
    procedure AbrirCDS(Codigo: Integer);
    procedure NavegarRegistro(Sentido: Integer);

  end;

var
  FrmPaiCadastro: TFrmPaiCadastro;

implementation

uses
  Datasnap.DBClient, UDMConexao;

{$R *.dfm}

{ TFrmPaiCadastro }

procedure TFrmPaiCadastro.AbrirCDS(Codigo: Integer);
begin
  if ((Codigo = 0) or (Codigo = DMCadastro.CodigoAtual)) then
    Exit;

  DMCadastro.CDS_Cadastro.Close;
  DMCadastro.CDS_Cadastro.FetchParams;
  DMCadastro.CDS_Cadastro.Params[0].AsInteger := Codigo;
  DMCadastro.CDS_Cadastro.Open;

end;

procedure TFrmPaiCadastro.btnAnteriorClick(Sender: TObject);
begin
  inherited;
  NavegarRegistro(1);
end;

procedure TFrmPaiCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Cancelar?', mtInformation, mbYesNo, 0) = mrYes then
    DMCadastro.CDS_Cadastro.CancelUpdates;
end;

procedure TFrmPaiCadastro.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente Excluir o registro?', mtInformation, mbYesNo, 0) = mrYes then
  begin
    DMCadastro.CDS_Cadastro.Delete;
    DMCadastro.CDS_Cadastro.ApplyUpdates(0);
  end;
end;

procedure TFrmPaiCadastro.btnGravarClick(Sender: TObject);
begin
  inherited;
  try
    DMCadastro.CDS_Cadastro.ApplyUpdates(0);
  except on E: Exception do
    raise Exception.Create('Erro ao tentar Gravar!' + E.Message);
  end;
end;

procedure TFrmPaiCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  try
    if not DMCadastro.CDS_Cadastro.Active then
      DMCadastro.CDS_Cadastro.Open;
    DMCadastro.CDS_Cadastro.Insert;
  except on E: Exception do
    raise Exception.Create('Erro ao tentar Incluir Registro!' + E.Message);
  end;
end;

procedure TFrmPaiCadastro.btnPrimeiroClick(Sender: TObject);
begin
  inherited;
  NavegarRegistro(0);
end;

procedure TFrmPaiCadastro.btnProximoClick(Sender: TObject);
begin
  inherited;
  NavegarRegistro(2);
end;

procedure TFrmPaiCadastro.btnUltimoClick(Sender: TObject);
begin
  inherited;
  NavegarRegistro(3);
end;

procedure TFrmPaiCadastro.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(DMCadastro) then
  begin
    edtCodigo.Text := DMCadastro.CDS_Cadastro.FieldByName(DMCadastro.ClasseFilha.CampoChave).AsString;
    DMCadastro.CodigoAtual := DMCadastro.CDS_Cadastro.FieldByName(DMCadastro.ClasseFilha.CampoChave).AsInteger;
  end;
end;

procedure TFrmPaiCadastro.DSStateChange(Sender: TObject);
begin
  inherited;
  btnIncluir.Enabled  := DS.State in [dsBrowse, dsInactive];
  btnExcluir.Enabled  := DS.State in [dsBrowse];
  btnGravar.Enabled   := DS.State in [dsEdit, dsInsert];
  btnCancelar.Enabled := DS.State in [dsEdit, dsInsert];
  btnConsulta.Enabled := DS.State in [dsBrowse, dsInactive];

  pnlTop.Enabled := DS.State in [dsBrowse, dsInactive];

end;

procedure TFrmPaiCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DS.DataSet.Close;
  DMCadastro.CodigoAtual := 0;
end;

procedure TFrmPaiCadastro.FormShow(Sender: TObject);
begin
  inherited;
  edtCodigo.Text := IntToStr(DMCadastro.CodigoAtual);
end;

procedure TFrmPaiCadastro.NavegarRegistro(Sentido: Integer);
var
  SQL: String;
  CDSTemp: TClientDataSet;
begin
  CDSTemp := TClientDataSet.Create(Self);
  try
    with DMCadastro, ClasseFilha do
    begin
      case Sentido of
        0: SQL := 'SELECT MIN(' + CampoChave + ') AS CODIGO FROM ' + TabelaPrincipal;
        1: SQL := 'SELECT MAX(' + CampoChave + ') AS CODIGO FROM ' + TabelaPrincipal
                    + ' WHERE ' + CampoChave + ' < ' + IntToStr(CodigoAtual);
        2: SQL := 'SELECT MIN(' + CampoChave + ') AS CODIGO FROM ' + TabelaPrincipal
                    + ' WHERE ' + CampoChave + ' > ' + IntToStr(CodigoAtual);
        3: SQL := 'SELECT MAX('+CampoChave+') AS CODIGO FROM '+TabelaPrincipal;
      end;

      CDSTemp.Data := DMConexao.ExecuteReader(SQL);
      if not CDSTemp.IsEmpty then
        AbrirCDS(CDSTemp.FieldByName('CODIGO').AsInteger)
      else
        edtCodigo.Text := IntToStr(CodigoAtual);
    end;
  finally
    CDSTemp.Free;
  end;
end;

procedure TFrmPaiCadastro.pnlTopExit(Sender: TObject);
begin
  inherited;
  if edtCodigo.Text <> '' then
    AbrirCDS(edtCodigo.AsInteger);
end;

end.
