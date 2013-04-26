unit atualizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_diag, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Black, Menus, StdCtrls, cxButtons, PngImage, cxImage, dxBevel,
  cxProgressBar, dxSkinOffice2010Blue, dxSkinOffice2010Silver, ExtCtrls;

type
  TformAtualizar = class(TformModeloDiag)
    Label1: TLabel;
    cxProgressBar1: TcxProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAtualizar: TformAtualizar;

implementation

{$R *.dfm}

end.
