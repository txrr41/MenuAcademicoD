object FormDeletar: TFormDeletar
  Left = 0
  Top = 0
  Caption = 'FormDeletar'
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
    Left = 152
    Top = 80
    Width = 321
    Height = 185
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 32
      Width = 182
      Height = 22
      Caption = 'Deletar Estudante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 64
      Top = 75
      Width = 39
      Height = 15
      Caption = 'Codigo'
    end
    object EditCodigo: TEdit
      Left = 64
      Top = 96
      Width = 201
      Height = 23
      TabOrder = 0
    end
    object Deletar: TButton
      Left = 120
      Top = 141
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 1
      OnClick = DeletarClick
    end
  end
end
