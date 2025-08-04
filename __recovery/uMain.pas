unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    BtnEstudantes: TButton;
    BtnProfessores: TButton;
    BtnDisciplinas: TButton;
    BtnTurmas: TButton;
    BtnMatriculas: TButton;
    Label1: TLabel;
    procedure BtnEstudantesClick(Sender: TObject);
    procedure BtnMatriculasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnEstudantesClick(Sender: TObject);
begin

end;

procedure TForm2.BtnMatriculasClick(Sender: TObject);
begin

end;

end.
