object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 657
    Height = 441
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Estudantes'
      object Label1: TLabel
        Left = 227
        Top = 32
        Width = 210
        Height = 29
        Caption = 'Menu Estudantes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Source Code Pro'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 263
        Top = 112
        Width = 122
        Height = 34
        Caption = 'Adicionar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 263
        Top = 168
        Width = 122
        Height = 33
        Caption = 'Deletar'
        TabOrder = 1
      end
      object Button3: TButton
        Left = 263
        Top = 224
        Width = 122
        Height = 34
        Caption = 'Listar'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 263
        Top = 280
        Width = 122
        Height = 33
        Caption = 'Atualizar'
        TabOrder = 3
      end
      object ListBox1: TListBox
        Left = 72
        Top = 32
        Width = 481
        Height = 345
        ItemHeight = 15
        TabOrder = 4
        Visible = False
      end
      object Button5: TButton
        Left = 263
        Top = 319
        Width = 113
        Height = 25
        Caption = 'Sair'
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Professores'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Disciplinas'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'Turmas'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'Matriculas'
      ImageIndex = 4
    end
  end
end
