inherited formEntrar: TformEntrar
  Caption = 'Entrar'
  ClientHeight = 171
  ClientWidth = 379
  ExplicitWidth = 385
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 104
    Width = 379
    ExplicitLeft = 7
    ExplicitTop = 112
    ExplicitWidth = 365
  end
  inherited lbMsg: TLabel
    Left = 7
    Top = 95
    Width = 41
    Caption = 'Entrar'
    Visible = False
    ExplicitLeft = 7
    ExplicitTop = 95
    ExplicitWidth = 41
  end
  object edtEmail: TLabel [2]
    Left = 96
    Top = 8
    Width = 42
    Height = 13
    Caption = 'e-mail'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtSenha: TLabel [3]
    Left = 96
    Top = 53
    Width = 39
    Height = 13
    Caption = 'senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnlRodape: TPanel
    Top = 109
    Width = 379
    ExplicitTop = 109
    ExplicitWidth = 373
    inherited pnlBtnCancelar: TPanel
      Left = 234
      ExplicitLeft = 228
    end
    inherited pnlBtnOk: TPanel
      Left = 89
      ExplicitLeft = 83
    end
  end
  object cxTextEdit1: TcxTextEdit
    Left = 95
    Top = 23
    TabOrder = 3
    Text = 'cxTextEdit1'
    Width = 265
  end
  object cxTextEdit2: TcxTextEdit
    Left = 95
    Top = 68
    TabOrder = 2
    Text = 'cxTextEdit1'
    Width = 178
  end
end
