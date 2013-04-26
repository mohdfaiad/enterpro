inherited formAtualizar: TformAtualizar
  Caption = 'Atualizar'
  ClientHeight = 163
  ClientWidth = 381
  ExplicitWidth = 387
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 96
    Width = 381
    ExplicitTop = 101
    ExplicitWidth = 362
  end
  inherited lbMsg: TLabel
    Width = 158
    Caption = 'Verificando atualiza'#231#227'o '
    ExplicitWidth = 158
  end
  object Label1: TLabel [2]
    Left = 96
    Top = 47
    Width = 146
    Height = 14
    Caption = 'Baixando nova vers'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnlRodape: TPanel
    Top = 101
    Width = 381
    ExplicitTop = 101
    ExplicitWidth = 373
    inherited pnlBtnCancelar: TPanel
      Left = 236
      ExplicitLeft = 228
    end
    inherited pnlBtnOk: TPanel
      Left = 91
      ExplicitLeft = 83
    end
  end
  object cxProgressBar1: TcxProgressBar
    Left = 96
    Top = 64
    TabOrder = 2
    Width = 266
  end
end
