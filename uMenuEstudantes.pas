unit uMenuEstudantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uMain;

type TFormEstudantes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;


    procedure Button1Click(Sender: TObject);

  end;

var
  FormEstudantes: TFormEstudantes;

implementation

{$R *.dfm}
uses uDB;
procedure TFormEstudantes.Button1Click(Sender: TObject);
begin
var
  id, nome, lista: String;

  id := Edit1.Text;
  nome := Edit2.Text;

  lista := 'Código: ' + id + ' | Nome: ' + nome;
  Form2.ListaEstudantes.Add(lista);
  Form2.ListBox1.Items.Assign(Form2.ListaEstudantes);

 DataModule1.FDQueryEstudante.SQL.Text := 'INSERT INTO estudantes (nome, id) VALUE ('+ QuotedStr(nome) + ',' + id +')';
 DataModule1.FDQueryEstudante.ExecSQL;
  end;
end.
