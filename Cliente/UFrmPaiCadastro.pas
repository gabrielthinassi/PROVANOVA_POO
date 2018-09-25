unit UFrmPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPai, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPaiCadastro: TFrmPaiCadastro;

implementation

{$R *.dfm}

end.
