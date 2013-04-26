unit entrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_diag, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, StdCtrls,
  cxButtons, PngImage, cxImage, dxBevel, dxSkinOffice2010Black, Menus,
  cxTextEdit, dxSkinOffice2010Blue, dxSkinOffice2010Silver, ExtCtrls;

type
  TformEntrar = class(TformModeloDiag)
    edtEmail: TLabel;
    edtSenha: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEntrar: TformEntrar;

implementation

{$R *.dfm}

end.
