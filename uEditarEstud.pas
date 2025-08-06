unit uEditarEstud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDB;

type
  TFormEditarEstudantes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    EditNome: TEdit;
    Adiconar: TButton;
    procedure AdiconarClick(Sender: TObject);
    private
  FIdEstudante: Integer;

  private
    { Private declarations }
  public
    procedure CarregarEstudante(ID: Integer);
  end;

var
  FormEditarEstudantes: TFormEditarEstudantes;

implementation

{$R *.dfm}

{ TFormEditarEstudantes }

procedure TFormEditarEstudantes.AdiconarClick(Sender: TObject);

begin
  DataModule1.FDQueryEstudante.Close;
  DataModule1.FDQueryEstudante.SQL.Text := 'UPDATE estudantes SET nome = :nome WHERE id = :id';
  DataModule1.FDQueryEstudante.ParamByName('nome').AsString := EditNome.Text;
  DataModule1.FDQueryEstudante.ParamByName('id').AsInteger :=
  FIdEstudante;
; // Pega o ID armazenado
  DataModule1.FDQueryEstudante.ExecSQL;

  ShowMessage('Estudante atualizado com sucesso!');
  Close;
end;



procedure TFormEditarEstudantes.CarregarEstudante(ID: Integer);
begin

 FIdEstudante := Id;

  DataModule1.FDQueryEstudante.SQL.Text := 'SELECT nome FROM estudantes WHERE id = :id';
  DataModule1.FDQueryEstudante.ParamByName('id').AsInteger := Id;
  DataModule1.FDQueryEstudante.Open;

  EditNome.Text := DataModule1.FDQueryEstudante.FieldByName('nome').AsString;
end;

end.
