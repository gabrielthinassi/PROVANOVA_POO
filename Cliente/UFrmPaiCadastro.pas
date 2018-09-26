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
    BitBtn1: TBitBtn;
    procedure pnlTopExit(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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

{$R *.dfm}

{ TFrmPaiCadastro }

procedure TFrmPaiCadastro.AbrirCDS(Codigo: Integer);
begin
  if ((Codigo = 0) or (Codigo = DMPai.CodigoAtual)) then
    Exit;

  DMCadastro.CDS_Cadastro.Close;
  DMCadastro.CDS_Cadastro.FetchParams;
  DMCadastro.CDS_Cadastro.Params[0].AsInteger := Codigo;
  DMCadastro.CDS_Cadastro.Open;

end;

procedure TFrmPaiCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  AbrirCDS(StrToInt(edtCodigo.Text));
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

procedure TFrmPaiCadastro.NavegarRegistro(Sentido: Integer);
begin
  case Sentido of
  0: DMCadastro.CDS_Cadastro.First;
  1: DMCadastro.CDS_Cadastro.Prior;
  2: DMCadastro.CDS_Cadastro.Next;
  3: DMCadastro.CDS_Cadastro.Last;
  end;
end;

procedure TFrmPaiCadastro.pnlTopExit(Sender: TObject);
begin
  inherited;
  AbrirCDS(StrToInt(edtCodigo.Text));
end;

end.
