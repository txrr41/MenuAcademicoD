unit uAdicionarProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uProfessor, System.Generics.Collections, uDB;

type
  TFormProfessores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    EditNome: TEdit;
    Adiconar: TButton;
    EditCpf: TEdit;
    Label2: TLabel;
    procedure AdiconarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
      procedure InserirProfessor (Professor: TProfessor);
      var ListaProfessores: TObjectList<TProfessor>;
      procedure CriarLista;
  end;


implementation

{$R *.dfm}


{ TFormProfessores }

procedure TFormProfessores.AdiconarClick(Sender: TObject);
var Professor: TProfessor;
begin
    InserirProfessor(Professor);
end;

procedure TFormProfessores.CriarLista;
begin
   ListaProfessores:= TObjectList<TProfessor>.Create;
end;

procedure TFormProfessores.FormCreate(Sender: TObject);
begin
   CriarLista;
end;

procedure TFormProfessores.InserirProfessor(Professor: TProfessor);
var
  id, nome, cpf: String;
  Insert: TProfessor;
begin
  try
    nome := EditNome.Text;
    cpf := EditCpf.Text;

    DataModule1.FDQueryEstudante.SQL.Text :=
      'INSERT INTO professores (nome, cpf) VALUES (' + QuotedStr(nome) + ',' +  QuotedStr(cpf) + ') returning id';
    DataModule1.FDQueryEstudante.Open;

    Insert := TProfessor.Create(nome, DataModule1.FDQueryEstudante.FieldByName('id').AsInteger, cpf);
    ListaProfessores.Add(Insert);
    DataModule1.FDQueryEstudante.Next;

    ShowMessage('Professor Adicionado Com Sucesso');

    self.Close();

  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;

end.
