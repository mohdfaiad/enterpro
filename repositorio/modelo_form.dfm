object FormModeloForm: TFormModeloForm
  Left = 0
  Top = 0
  Caption = 'FormModelo'
  ClientHeight = 212
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ActionAtalho: TActionList
    Images = formPrincipal.cxImageBigNormal
    Left = 352
    Top = 24
    object Action1: TAction
      Caption = 'Action1'
    end
  end
end
