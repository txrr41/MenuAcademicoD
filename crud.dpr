program crud;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2},
  uEstudante in 'uEstudante.pas',
  uProfessor in 'uProfessor.pas',
  uDisciplina in 'uDisciplina.pas',
  uTurma in 'uTurma.pas',
  uMatricula in 'uMatricula.pas',
  uMenuEstudantes in 'uMenuEstudantes.pas' {FormEstudantes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormEstudantes, FormEstudantes);
  Application.Run;
end.
