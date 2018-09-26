unit ClassContato;

interface

uses ClassPaiCadastro;

type
  TClassContato = class(TClassPaiCadastro)
    public
      class function TabelaPrincipal: string; override;
      class function CampoChave: string; override;
  end;

implementation

{ TClassContato }

class function TClassContato.CampoChave: string;
begin
  Result := 'CODIGO_CONTATO';
end;

class function TClassContato.TabelaPrincipal: string;
begin
  Result := 'CONTATO';
end;

end.

