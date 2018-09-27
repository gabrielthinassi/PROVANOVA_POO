unit UFrmCadContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPaiCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  UDMCadContato,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, UFrmConsultaContato;

type
  TFrmCadContato = class(TFrmPaiCadastro)
    DSEndereco: TDataSource;
    DSTelefone: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    tbEndereco: TTabSheet;
    tbTelefone: TTabSheet;
    gridEndereco: TDBGrid;
    gridTelefone: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure edtCodigoButtonClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadContato: TFrmCadContato;

implementation

{$R *.dfm}

procedure TFrmCadContato.btnConsultaClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsultaContato, FrmConsultaContato);
  FrmConsultaContato.ShowModal;

  if FrmConsultaContato.Codigo > 0 then
  begin
    edtCodigo.Text := IntToStr(FrmConsultaContato.Codigo);
    AbrirCDS(FrmConsultaContato.Codigo);
    btnIncluir.SetFocus;
  end;
  FreeAndNil(FrmConsultaContato);
end;

procedure TFrmCadContato.edtCodigoButtonClick(Sender: TObject);
begin
  inherited;
  btnConsulta.Click;
end;

procedure TFrmCadContato.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnIncluir.SetFocus;
end;

procedure TFrmCadContato.FormCreate(Sender: TObject);
begin
  inherited;
  DMCadastro := TDMCadContato.Create(Self);
  DMCadastro.CodigoAtual := 0;
end;

procedure TFrmCadContato.FormDestroy(Sender: TObject);
begin
  inherited;
  //if Assigned(FrmCadContato) then
  //  FreeAndNil(FrmCadContato);
end;

end.
