object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 96
    Top = 64
    Width = 457
    Height = 297
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 32
      Width = 152
      Height = 23
      Caption = 'Menu Acad'#234'mico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 23
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object BtnEstudantes: TButton
      Left = 152
      Top = 88
      Width = 129
      Height = 25
      Caption = 'Estudantes'
      TabOrder = 0
      OnClick = BtnEstudantesClick
    end
    object BtnProfessores: TButton
      Left = 152
      Top = 127
      Width = 129
      Height = 25
      Caption = 'Professores'
      TabOrder = 1
    end
    object BtnDisciplinas: TButton
      Left = 152
      Top = 169
      Width = 129
      Height = 25
      Caption = 'Disciplinas'
      TabOrder = 2
    end
    object BtnTurmas: TButton
      Left = 152
      Top = 213
      Width = 129
      Height = 25
      Caption = 'Turmas'
      TabOrder = 3
    end
    object BtnMatriculas: TButton
      Left = 152
      Top = 253
      Width = 129
      Height = 25
      Caption = 'Matriculas'
      TabOrder = 4
      OnClick = BtnMatriculasClick
    end
  end
end
