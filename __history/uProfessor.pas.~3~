unit uProfessor;

interface

uses
uDB;

Type TProfessor = class(TObject)
public
    function GetNome: String;
    procedure SetNome(aNome: String);
    function GetCodigo: Integer;
    procedure SetCodigo(aCodigo: Integer);
    function GetCpf: String;
    procedure SetCpf (aCpf: String);
    class procedure ListarProfessor; static;

    constructor Create(aNome: String; aCodigo: Integer; aCpf: String);
private
 nome: String;
 codigo: Integer;
 cpf: String;
end;

implementation
constructor  TProfessor.Create(aNome: String; aCodigo: Integer; aCpf: String);
begin
   Self.nome := aNome;
   Self.codigo := aCodigo;
   Self.Cpf := aCpf;
end;

function TProfessor.GetCodigo: Integer;
begin
   result := Self.Codigo;
end;

function TProfessor.GetCpf: String;
begin
  result := Self.Cpf;
end;

function TProfessor.GetNome: String;
begin
   result := Self.Nome;
end;



class procedure TProfessor.ListarProfessor;
begin
    DataModule1.FDQueryEstudante.Close;
    DataModule1.FDQueryEstudante.SQL.Text := 'SELECT * FROM professores WHERE ativo = true';
    DataModule1.FDQueryEstudante.Open;
end;

procedure TProfessor.SetCodigo(aCodigo: Integer);
begin
    Self.Codigo := aCodigo;
end;

procedure TProfessor.SetCpf(aCpf: String);
begin
    Self.Cpf := aCpf;
end;

procedure TProfessor.SetNome(aNome: String);
begin
   Self.Nome := aNome;
end;

end.
