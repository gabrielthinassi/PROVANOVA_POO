unit ClassPaiCadastro;

interface

uses Classes, DB;

type
  TClassPaiCadastro = class(TPersistent)
    public
      class function TabelaPrincipal: string; virtual;
      class function CampoChave: string; virtual;
  end;

  TFClassPaiCadastro = class of TClassPaiCadastro;

implementation

{ TClassPaiCadastro }

class function TClassPaiCadastro.CampoChave: string;
begin
  Result := '';
end;

class function TClassPaiCadastro.TabelaPrincipal: string;
begin
  Result := '';
end;

end.
