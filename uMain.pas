unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Adicionar: TButton;
    Deletar: TButton;
    Listar: TButton;
    Atualizar: TButton;
    ListBox1: TListBox;
    Sair: TButton;
    procedure AdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
     ListaEstudantes: TStringList;
  end;

var
  Form2: TForm2;


implementation
  uses
  uMenuEstudantes, uDeletarEstud;


{$R *.dfm}

procedure TForm2.AdicionarClick(Sender: TObject);
begin
    FormEstudantes.ShowModal;
end;

procedure TForm2.DeletarClick(Sender: TObject);
begin
     FormDeletar.ShowModal;
end;

procedure TForm2.ListarClick(Sender: TObject);
begin
    ListBox1.Visible := true;
    Listar.Visible := true;
end;

procedure TForm2.SairClick(Sender: TObject);
begin
    Sair.Visible := False;
    ListBox1.Visible := false;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   ListaEstudantes := TStringList.Create;
end;

end.

