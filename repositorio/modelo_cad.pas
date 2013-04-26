unit modelo_cad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_diag, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinOffice2010Black, cxControls, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage, StdCtrls, cxButtons, ExtCtrls, dxBevel,
  dxSkinOffice2007Blue, dxSkinOffice2010Silver, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle;

type
  TformModeloCad = class(TformModeloDiag)
    dxBevel2: TdxBevel;
    pnlCad: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formModeloCad: TformModeloCad;

implementation

{$R *.dfm}

end.
