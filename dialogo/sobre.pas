unit sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_diag, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Black, Menus, cxLabel, StdCtrls, cxButtons, PngImage, cxImage,
  dxBevel, dxSkinOffice2010Blue, dxSkinOffice2010Silver, ExtCtrls,
  dxGDIPlusClasses;

type
  TformSobre = class(TformModeloDiag)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSobre: TformSobre;

implementation

uses
  principal;

{$R *.dfm}

procedure TformSobre.FormShow(Sender: TObject);
begin
  inherited;
  lbMsg.Caption := lbMsg.Caption + ' ' +
    formPrincipal.mxWebUpdate.ProductInfo.Version;
end;

end.
