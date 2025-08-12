unit uDisciplina;

interface

uses
uDB;

Type TDisciplina = class(TObject)
private
    nome: String;
    codigo: Integer;
public
function GetNome : String;
procedure SetNome (aNome: String);
function GetCodigo: Integer;
procedure SetCodigo (aCodigo: Integer);
class procedure ListarDisciplina; static;
class procedure DeletarDisciplina (id: Integer; nome: String); static;
constructor Create(aNome: String; aCodigo: Integer);

end;

implementation

{ TDisciplina }

constructor TDisciplina.Create(aNome: String; aCodigo: Integer);
begin
   Self.nome := aNome;
   Self.codigo := aCodigo;
end;

class procedure TDisciplina.DeletarDisciplina(id: Integer; nome: String);
begin
    DataModule1.FDQueryEstudante.SQL.Text := 'UPDATE disciplinas SET ativo = false WHERE id = :id';
    DataModule1.FDQueryEstudante.ParamByName('id').AsInteger := id;
    DataModule1.FDQueryEstudante.ExecSQL;
end;

function TDisciplina.GetCodigo: Integer;
begin
    result := Self.Codigo;
end;

function TDisciplina.GetNome: String;
begin
    result := Self.nome;
end;

class procedure TDisciplina.ListarDisciplina;
begin
    DataModule1.FDQueryEstudante.Close;
    DataModule1.FDQueryEstudante.SQL.Text := 'SELECT * FROM disciplinas WHERE ativo = true';
    DataModule1.FDQueryEstudante.Open;
end;

procedure TDisciplina.SetCodigo(aCodigo: Integer);
begin
     Self.Codigo := aCodigo;
end;

procedure TDisciplina.SetNome(aNome: String);
begin
    Self.nome := aNome
end;

end.
