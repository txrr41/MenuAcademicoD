program crud;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2},
  uDB in 'uDB.pas' {DataModule1: TDataModule},
  uEstudante in 'uEstudante.pas',
  uProfessor in 'uProfessor.pas',
  uDisciplina in 'uDisciplina.pas',
  uTurma in 'uTurma.pas',
  uMatricula in 'uMatricula.pas',
  uMenuEstudantes in 'uMenuEstudantes.pas' {FormEstudantes},

  uEditarEstud in 'uEditarEstud.pas' {FormEditarEstudantes},
  uAdicionarProfessor in 'uAdicionarProfessor.pas' {FormProfessores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormEstudantes, FormEstudantes);
  Application.CreateForm(TFormEditarEstudantes, FormEditarEstudantes);
  Application.CreateForm(TFormProfessores, FormProfessores);
  Application.Run;
end.
