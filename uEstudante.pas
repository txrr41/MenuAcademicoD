unit uEstudante;

interface
 Type Estudante = class(TObject)
 public
    nome: String;
    codigo: Integer;
    public
    constructor Create(aNome: String; aCodigo: Integer);
 end;

implementation
constructor Estudante.Create(aNome: String; aCodigo: Integer);
begin
  Self.Nome:=aNome;
  Self.Codigo := aCodigo;
end;

end.
