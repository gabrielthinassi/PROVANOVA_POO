unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mmCadastro: TMenuItem;
    mmContato: TMenuItem;
    mmSair: TMenuItem;
    procedure mmContatoClick(Sender: TObject);
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
  if FrmGridsTESTE = nil then
  begin
    Application.CreateForm(TFrmGridsTESTE, FrmGridsTESTE);
    FrmGridsTESTE.Show;
  end else
  begin
    FrmGridsTESTE.Show;
  end;
end;

end.
