unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, uDB, uEstudante, uEditarEstud, System.Generics.Collections, uMenuEstudantes, uAdicionarProfessor, uProfessor, uEditarProf, uDisciplina, uAdicionarDisciplina;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    AdicionarEstudantes: TButton;
    DeletarEstudantes: TButton;
    ListarEstudantes: TButton;
    EditarEstudantes: TButton;
    ListBoxEstudantes: TListBox;
    TabSheet2: TTabSheet;
    DeletarProfessor: TButton;
    ListarProfessor: TButton;
    EditarProfessor: TButton;
    AdicionarProfessor: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label2: TLabel;
    ListBoxProfessores: TListBox;
    EditarDisciplina: TButton;
    AdicionarDisciplina: TButton;
    ListBoxDisciplinas: TListBox;
    Label3: TLabel;
    DeletarDisciplina: TButton;
    ListarDisciplina: TButton;
    procedure AdicionarEstudantesClick(Sender: TObject);
    procedure ListarEstudantesClick(Sender: TObject);
    procedure DeletarEstudantesClick(Sender: TObject);
    procedure EditarEstudantesClick(Sender: TObject);
    procedure AdicionarProfessorClick(Sender: TObject);
    procedure DeletarProfessorClick(Sender: TObject);
    procedure EditarProfessorClick(Sender: TObject);
    procedure ListarProfessorClick(Sender: TObject);
    procedure DeletarDisciplinaClick(Sender: TObject);
    procedure ListarDisciplinasClick(Sender: TObject);
    procedure AdicionarDisciplinaClick(Sender: TObject);
  private
    { Private declarations }
  public
     procedure DeletarEstudante(Estudante: TEstudante);
     procedure ListarEstudante(Estudante: TEstudante);
     procedure ListarProfessores(Professor: TProfessor);
     procedure DeletarProfessores(Professor: TProfessor);
     procedure DeletarDisciplinas (Disciplina: TDisciplina);

  end;

var
  FormEstudantes: TFormEstudantes;
  FormProfessores: TFormProfessores;
  Form2: TForm2;
  FormDisciplinas: TFormDisciplinas;


implementation
  uses
  uDeletarEstud;


{$R *.dfm}

procedure TForm2.AdicionarDisciplinaClick(Sender: TObject);
begin
  var f : TFormDisciplinas := TFormDisciplinas.Create(self);
  f.ShowModal;
end;

procedure TForm2.AdicionarEstudantesClick(Sender: TObject);
begin
     var f : TFormEstudantes := TFormEstudantes.Create(self);
  f.ShowModal;
end;

procedure TForm2.AdicionarProfessorClick(Sender: TObject);
begin
  var f : TFormProfessores := TFormProfessores.Create(self);
  f.ShowModal;
end;

procedure TForm2.DeletarDisciplinaClick(Sender: TObject);
var Disciplina : TDisciplina;
begin
  DeletarDisciplinas(Disciplina);
end;

procedure TForm2.EditarEstudantesClick(Sender: TObject);

  VAR
  Nome: string;
  id: Integer;

begin
  if ListBoxEstudantes.ItemIndex = -1 then
  begin
    ShowMessage('Selecione um estudante para editar.');
    Exit;
  end;

  // Extrai o ID do item selecionado (ex: "3 - Luis")
 Nome := ListBoxEstudantes.Items[ListBoxEstudantes.ItemIndex];
 id := StrToInt(Copy(nome, 1, Pos(' -', nome) - 1));

  // Cria e abre o formulário de edição
  FormEditarEstudantes := TFormEditarEstudantes.Create(Self);
  FormEditarEstudantes.CarregarEstudante(id); // Método que carrega os dados
  FormEditarEstudantes.ShowModal;
  FormEditarEstudantes.Free;

  ListarEstudantesClick(nil)
end;


procedure TForm2.EditarProfessorClick(Sender: TObject);
  VAR
  Nome, cpf: string;
  id: Integer;

begin
  if ListBoxProfessores.ItemIndex = -1 then
  begin
    ShowMessage('Selecione um professor para editar.');
    Exit;
  end;

  // Extrai o ID do item selecionado (ex: "3 - Luis")
 Nome := ListBoxProfessores.Items[ListBoxProfessores.ItemIndex];
 id := StrToInt(Copy(nome, 1, Pos(' -', nome) - 1));

  // Cria e abre o formulário de edição
  FormEditarProfessores := TFormEditarProfessores.Create(Self);
  FormEditarProfessores.CarregarProfessores(id); // Método que carrega os dados
  FormEditarProfessores.ShowModal;
  FormEditarProfessores.Free;

  ListarProfessorClick(nil)
end;

procedure TForm2.DeletarEstudantesClick(Sender: TObject);

var Estudante : TEstudante;
begin
     DeletarEstudante(Estudante);
end;


procedure TForm2.DeletarProfessorClick(Sender: TObject);
var
Professor: TProfessor;
begin
    DeletarProfessores(Professor);
end;

procedure TForm2.DeletarProfessores(Professor: TProfessor);
var
  nome: string;
  id: Integer;
  cpf: String;
  confirmacao: Integer;
begin
  if ListBoxProfessores.ItemIndex = -1 then
  begin
    ShowMessage('Selecione um professor para deletar.');
    Exit;
  end;


  nome := ListBoxProfessores.Items[ListBoxProfessores.ItemIndex];
  id := StrToInt(Copy(nome, 1, Pos(' -', nome) - 1));

  confirmacao := MessageDlg('Deseja realmente excluir este professor?', mtConfirmation, [mbYes, mbNo], 0);
  if confirmacao = mrYes then
  begin
    uProfessor.TProfessor.DeletarProfessor(id, nome, cpf);
    ShowMessage('Professor deletado com sucesso!');

    ListarProfessorClick(nil); // Recarrega a listagem
  end;
end;



procedure TForm2.DeletarDisciplinas(Disciplina: TDisciplina);
  var
  nome: string;
  id: Integer;
  confirmacao: Integer;
begin
  if ListBoxEstudantes.ItemIndex = -1 then
  begin
    ShowMessage('Selecione um estudante para deletar.');
    Exit;
  end;


  nome := ListBoxDisciplinas.Items[ListBoxDisciplinas.ItemIndex];
  id := StrToInt(Copy(nome, 1, Pos(' -', nome) - 1));

  confirmacao := MessageDlg('Deseja realmente excluir esta disciplina?', mtConfirmation, [mbYes, mbNo], 0);
  if confirmacao = mrYes then
  begin
    uDisciplina.TDisciplina.DeletarDisciplina(id, nome);
    ShowMessage('Disciplina deletada com sucesso!');

    ListarDisciplinasClick(nil); // Recarrega a listagem
  end;
end;

procedure TForm2.DeletarEstudante(Estudante: TEstudante);
    var
  nome: string;
  id: Integer;
  confirmacao: Integer;
begin
  if ListBoxEstudantes.ItemIndex = -1 then
  begin
    ShowMessage('Selecione um estudante para deletar.');
    Exit;
  end;


  nome := ListBoxEstudantes.Items[ListBoxEstudantes.ItemIndex];
  id := StrToInt(Copy(nome, 1, Pos(' -', nome) - 1));

  confirmacao := MessageDlg('Deseja realmente excluir este estudante?', mtConfirmation, [mbYes, mbNo], 0);
  if confirmacao = mrYes then
  begin
    uEstudante.TEstudante.DeletarEstudante(id, nome);
    ShowMessage('Estudante deletado com sucesso!');

    ListarEstudantesClick(nil); // Recarrega a listagem
  end;
end;

procedure TForm2.ListarEstudantesClick(Sender: TObject);
var
estudante: TEstudante;
begin
   ListarEstudante(Estudante);
end;

procedure TForm2.ListarProfessorClick(Sender: TObject);
var
Professor: TProfessor;
begin
   ListarProfessores(Professor);
end;

procedure TForm2.ListarProfessores(Professor: TProfessor);
begin
  ListBoxProfessores.Items.Clear;
  FormProfessores.ListaProfessores.Clear;

  try
   uProfessor.TProfessor.ListarProfessor;

    while not DataModule1.FDQueryEstudante.Eof do
    begin



      Professor := TProfessor.Create(DataModule1.FDQueryEstudante.FieldByName('nome').AsString,DataModule1.FDQueryEstudante.FieldByName('id').AsInteger, DataModule1.FDQueryEstudante.FieldByName('cpf').AsString);
      FormProfessores.ListaProfessores.add(Professor);
      DataModule1.FDQueryEstudante.Next;



    end;
     for var prof in FormProfessores.listaprofessores do begin
      ListBoxProfessores.AddItem(Prof.GetCodigo.ToString + ' - '+ 'Professor(a): ' + prof.GetNome + ' Cpf: ' + prof.GetCpf, nil);

    end;
  except
    on E: Exception do
      ShowMessage('Erro ao listar professores: ' + E.Message);
  end;

end;




procedure TForm2.ListarDisciplinasClick(Sender: TObject);
var Disciplina : TDisciplina;
begin
  ListBoxDisciplinas.Items.Clear;
  FormDisciplinas.ListaDisciplinas.Clear;

  try
   uDisciplina.TDisciplina.ListarDisciplina;

    while not DataModule1.FDQueryEstudante.Eof do
    begin



      Disciplina := TDisciplina.Create(DataModule1.FDQueryEstudante.FieldByName('nome').AsString,DataModule1.FDQueryEstudante.FieldByName('id').AsInteger);
      FormDisciplinas.ListaDisciplinas.add(Disciplina);
      DataModule1.FDQueryEstudante.Next;



    end;
     for var discip in FormDisciplinas.listadisciplinas do begin
      ListBoxDisciplinas.AddItem(discip.GetCodigo.ToString + ' - ' + discip.GetNome, nil);
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao listar estudantes: ' + E.Message);
  end;

end;

procedure TForm2.ListarEstudante(Estudante: TEstudante);
begin
  ListBoxEstudantes.Items.Clear;
  FormEstudantes.ListaEstudantes.Clear;

  try
   uEstudante.TEstudante.ListarEstudante;

    while not DataModule1.FDQueryEstudante.Eof do
    begin



     Estudante := TEstudante.Create(DataModule1.FDQueryEstudante.FieldByName('nome').AsString,DataModule1.FDQueryEstudante.FieldByName('id').AsInteger);
      FormEstudantes.ListaEstudantes.add(Estudante);
      DataModule1.FDQueryEstudante.Next;



    end;
     for var estud in FormEstudantes.listaestudantes do begin
      ListBoxEstudantes.AddItem(estud.GetCodigo.ToString + ' - ' + estud.GetNome, nil);

    end;
  except
    on E: Exception do
      ShowMessage('Erro ao listar estudantes: ' + E.Message);
  end;

end;
end.
