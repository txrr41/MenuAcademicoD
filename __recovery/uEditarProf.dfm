object FormEditarProfessores: TFormEditarProfessores
  Left = 0
  Top = 0
  Caption = 'FormEditarProfessores'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 160
    Top = 88
    Width = 337
    Height = 241
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 32
      Width = 163
      Height = 22
      Caption = 'Editar Professor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 64
      Top = 83
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 64
      Top = 133
      Width = 19
      Height = 15
      Caption = 'Cpf'
    end
    object EditNome: TEdit
      Left = 64
      Top = 104
      Width = 201
      Height = 23
      TabOrder = 0
    end
    object Adiconar: TButton
      Left = 128
      Top = 205
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = AdiconarClick
    end
    object EditCpf: TEdit
      Left = 64
      Top = 154
      Width = 201
      Height = 23
      TabOrder = 2
    end
  end
end
