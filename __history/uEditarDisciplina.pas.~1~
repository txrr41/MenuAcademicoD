unit uEditarDisciplina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDB;

type
  TFormEditarDisciplinas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    EditNome: TEdit;
    Editar: TButton;
    procedure EditarClick(Sender: TObject);
  private
    FId: Integer;
  public
    procedure CarregarDisciplina (ID: Integer);
  end;

var
  FormEditarDisciplinas: TFormEditarDisciplinas;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFormEditarDisciplinas.CarregarDisciplina(ID: Integer);
begin
FId := Id;

  DataModule1.FDQueryEstudante.SQL.Text := 'SELECT nome FROM estudantes WHERE id = :id';
  DataModule1.FDQueryEstudante.ParamByName('id').AsInteger := Id;
  DataModule1.FDQueryEstudante.Open;

  EditNome.Text := DataModule1.FDQueryEstudante.FieldByName('nome').AsString;
end;

procedure TFormEditarDisciplinas.EditarClick(Sender: TObject);
begin
DataModule1.FDQueryEstudante.Close;
  DataModule1.FDQueryEstudante.SQL.Text := 'UPDATE estudantes SET nome = :nome WHERE id = :id';
  DataModule1.FDQueryEstudante.ParamByName('nome').AsString := EditNome.Text;
  DataModule1.FDQueryEstudante.ParamByName('id').AsInteger :=
  FId;
; // Pega o ID armazenado
  DataModule1.FDQueryEstudante.ExecSQL;

  ShowMessage('Disciplina atualizada com sucesso!');
  Close;
end;

end.
