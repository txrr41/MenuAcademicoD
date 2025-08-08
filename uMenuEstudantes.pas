unit uMenuEstudantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, uEstudante, System.Generics.Collections;

type
  TFormEstudantes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EditNome: TEdit;
    Label3: TLabel;
    Adiconar: TButton;

    procedure AdiconarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); // Evento do formulário
    procedure InserirEstudante(Estudante: TEstudante);
    procedure CriarLista;

  public var ListaEstudantes: TObjectList<TEstudante>;
  end;


implementation

{$R *.dfm}
uses uDB;

procedure TFormEstudantes.FormCreate(Sender: TObject);
begin
  CriarLista;
end;

procedure TFormEstudantes.AdiconarClick(Sender: TObject);
var Estudante : TEstudante;
begin
  InserirEstudante(Estudante);
end;

procedure TFormEstudantes.CriarLista;
begin
  ListaEstudantes := TObjectList<TEstudante>.Create;
end;

procedure TFormEstudantes.InserirEstudante(Estudante: TEstudante);
var
  id, nome: String;
  Insert: TEstudante;
begin
  try
    nome := EditNome.Text;

    DataModule1.FDQueryEstudante.SQL.Text :=
      'INSERT INTO estudantes (nome) VALUES (' + QuotedStr(nome) + ') returning id';
    DataModule1.FDQueryEstudante.Open;

    Insert := TEstudante.Create(nome, DataModule1.FDQueryEstudante.FieldByName('id').AsInteger);
    ListaEstudantes.Add(Insert);
    DataModule1.FDQueryEstudante.Next;

    ShowMessage('Estudante Adicionado Com Sucesso');

    self.Close();

  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;


end.

