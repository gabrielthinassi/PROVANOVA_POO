unit UFrmConsultaContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPaiConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, UDMCadContato;

type
  TFrmConsultaContato = class(TFrmPaiConsulta)
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContato: TFrmConsultaContato;

implementation

{$R *.dfm}

procedure TFrmConsultaContato.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  Codigo := DS.DataSet.FieldByName('CODIGO_CONTATO').AsInteger;
  Close;
end;

procedure TFrmConsultaContato.btnConsultarClick(Sender: TObject);
var
  Campo, Opcao, SQL: String;
begin
  inherited;

  case cbxCampos.ItemIndex of
  0: Campo := 'CODIGO_CONTATO';
  1: Campo := 'NOME_CONTATO';
  2: Campo := 'DTNASCIMENTO_CONTATO';
  end;

  case cbxOpcoes.ItemIndex of
  0: Opcao := '(''' + edtValor.Text + '%'')';  //Iniciado com
  1: Opcao := '(''%' + edtValor.Text + ''')';  //Terminado com
  2: Opcao := '(''' + edtValor.Text + ''')';   //Igual a
  3: Opcao := '(''%' + edtValor.Text + '%'')'; //Que Contem
  end;

  SQL := 'select ' + #13 +
         '    CONTATO.CODIGO_CONTATO,      ' + #13 +
         '    CONTATO.NOME_CONTATO,        ' + #13 +
         '    CONTATO.DTNASCIMENTO_CONTATO ' + #13 +
         'from CONTATO                     ' + #13 +
         'where ' + Campo + ' like ' + Opcao ;

  DMConsulta.CDS_Consulta.Close;
  DMConsulta.CDS_Consulta.CommandText := SQL;
  DMConsulta.CDS_Consulta.Open;
  DS.DataSet := DMConsulta.CDS_Consulta;

end;

procedure TFrmConsultaContato.FormCreate(Sender: TObject);
begin
  DMConsulta := TDMCadContato.Create(Self);
  inherited;
end;

end.
