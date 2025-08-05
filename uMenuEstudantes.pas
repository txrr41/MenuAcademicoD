unit uMenuEstudantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uMain, uEstudante;

type TFormEstudantes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EditCodigo: TEdit;
    EditNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Adiconar: TButton;
    procedure AdiconarClick(Sender: TObject);
    private

    public
    procedure InserirEstudante(Estudante: TEstudante);


  end;

var
  FormEstudantes: TFormEstudantes;

implementation

{$R *.dfm}
uses uDB;
procedure TFormEstudantes.AdiconarClick(Sender: TObject);
var Estudante: TEstudante;
begin
   InserirEstudante(Estudante);
end;

procedure TFormEstudantes.InserirEstudante(Estudante: TEstudante);
begin
var
  id, nome, lista: String;

  id := EditCodigo.Text;
  nome := EditNome.Text;
      try
 begin

 DataModule1.FDQueryEstudante.SQL.Text := 'INSERT INTO estudantes (nome, id) VALUES ('+ QuotedStr(nome) + ',' + id +')';
 DataModule1.FDQueryEstudante.ExecSQL;

  end;
     ShowMessage('Estudante Adicionado Com Sucesso');
     FormEstudantes.Close;

  except
    on E: Exception do
    begin
      if Pos('PRIMARY KEY', UpperCase(E.Message)) > 0 then
        ShowMessage('Erro: Já existe um estudante com esse código (ID).')
      else
        ShowMessage('Erro: Já existe um estudante com esse código (ID).');
    end;
  end;
end;

end.

