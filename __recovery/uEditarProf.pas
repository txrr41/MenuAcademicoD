unit uEditarProf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDB;

type
  TFormEditarProfessores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    EditNome: TEdit;
    Adiconar: TButton;
    EditCpf: TEdit;
    procedure AdiconarClick(Sender: TObject);
  private
   FId: Integer;
    { Private declarations }
  public
    procedure CarregarProfessores(id: integer);
  end;

var
  FormEditarProfessores: TFormEditarProfessores;

implementation

{$R *.dfm}

procedure TFormEditarProfessores.AdiconarClick(Sender: TObject);
begin
  DataModule1.FDQueryEstudante.Close;
  DataModule1.FDQueryEstudante.SQL.Text := 'UPDATE professores SET nome = :nome, cpf = :cpf WHERE id = :id';
  DataModule1.FDQueryEstudante.ParamByName('nome').AsString := EditNome.Text;
  DataModule1.FDQueryEstudante.ParamByName('cpf').AsString := EditCpf.Text;
  DataModule1.FDQueryEstudante.ParamByName('id').AsInteger :=
  FId;
; // Pega o ID armazenado
  DataModule1.FDQueryEstudante.ExecSQL;

  ShowMessage('Professor atualizado com sucesso!');
  Close;
end;

procedure TFormEditarProfessores.CarregarProfessores(id: integer);
begin
 FId := Id;

  DataModule1.FDQueryEstudante.SQL.Text := 'SELECT nome, cpf FROM professores WHERE id = :id';
  DataModule1.FDQueryEstudante.ParamByName('id').AsInteger := Id;
  DataModule1.FDQueryEstudante.Open;

  EditNome.Text := DataModule1.FDQueryEstudante.FieldByName('nome').AsString;
  EditCpf.Text := DataModule1.FDQueryEstudante.FieldByName('cpf').AsString;
end;

end.
