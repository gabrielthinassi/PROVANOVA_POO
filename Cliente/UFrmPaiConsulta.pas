unit UFrmPaiConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPai, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDMPai;

type
  TFrmPaiConsulta = class(TFrmPai)
    pnlTop: TPanel;
    pnlBot: TPanel;
    cbxCampos: TComboBox;
    cbxOpcoes: TComboBox;
    edtValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DS: TDataSource;
    btnConsultar: TBitBtn;
    btnConfirmar: TBitBtn;
  private
    { Private declarations }
    FDMConsulta: TDMPai;
  public
    { Public declarations }
    Codigo: Integer;
    property DMConsulta: TDMPai read FDMConsulta write FDMConsulta;
  end;

var
  FrmPaiConsulta: TFrmPaiConsulta;

implementation

{$R *.dfm}

end.
