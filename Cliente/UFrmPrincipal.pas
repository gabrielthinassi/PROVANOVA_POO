unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UFrmCadContato;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mmCadastro: TMenuItem;
    mmContato: TMenuItem;
    mmSair: TMenuItem;
    mmGridTESTE: TMenuItem;
    procedure mmContatoClick(Sender: TObject);
    procedure mmGridTESTEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UFrmGridsTESTE;

{$R *.dfm}

procedure TFrmPrincipal.mmContatoClick(Sender: TObject);
begin
  if FrmCadContato = nil then
    Application.CreateForm(TFrmCadContato, FrmCadContato);
  if not FrmCadContato.Showing then
    FrmCadContato.Show;
end;

procedure TFrmPrincipal.mmGridTESTEClick(Sender: TObject);
begin
  if FrmGridsTESTE = nil then
    Application.CreateForm(TFrmGridsTESTE, FrmGridsTESTE);
  if not FrmGridsTESTE.Showing then
    FrmGridsTESTE.Show;
end;

end.
