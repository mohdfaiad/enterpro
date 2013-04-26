unit modelo_diag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Black, Menus, StdCtrls,
  cxButtons, PngImage, cxImage, dxBevel, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, modelo_form,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, ExtCtrls, dxGDIPlusClasses,
  dxSkinOffice2007Blue, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle;

type
  TformModeloDiag = class(TFormModeloForm)
    dxBevel1: TdxBevel;
    pnlRodape: TPanel;
    pnlBtnCancelar: TPanel;
    pnlBtnOk: TPanel;
    btnCancelar: TcxButton;
    btnOK: TcxButton;
    pnlDialogo: TPanel;
    imgDiagTema: TcxImage;
    lbMsg: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formModeloDiag: TformModeloDiag;

implementation

uses
  principal;

{$R *.dfm}

end.
