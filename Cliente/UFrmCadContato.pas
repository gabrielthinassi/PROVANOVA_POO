unit UFrmCadContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPaiCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  UDMCadContato,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadContato: TFrmCadContato;

implementation

{$R *.dfm}

procedure TFrmCadContato.BitBtn1Click(Sender: TObject);
begin
  inherited;
  // DMCadContato.CDS_Cadastro.Close;
  // DMCadContato.CDS_Cadastro.FetchParams;
  // DMCadContato.CDS_Cadastro.Params[0].AsInteger := StrToInt(edtCodigo.Text);
  // DMCadContato.CDS_Cadastro.Open;
end;

procedure TFrmCadContato.edtCodigoExit(Sender: TObject);
begin
  inherited;
  AbrirCDS(edtCodigo.AsInteger);
end;

procedure TFrmCadContato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // if Assigned(FrmCadContato) then
  // FreeAndNil(FrmCadContato);
end;

procedure TFrmCadContato.FormCreate(Sender: TObject);
begin
  inherited;
  DMCadastro := TDMCadContato.Create(Self);
  DMCadastro.CodigoAtual := 0;
end;

end.
