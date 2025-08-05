unit uEstudante;

interface
 Type TEstudante = class(TObject)
 public
    nome: String;
    codigo: Integer;
    public
    constructor Create(aNome: String; aCodigo: Integer);
 end;

implementation
constructor TEstudante.Create(aNome: String; aCodigo: Integer);
begin
  Self.Nome:=aNome;
  Self.Codigo := aCodigo;
end;

end.
