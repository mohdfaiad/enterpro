unit teste_sel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_sel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinsdxBarPainter, dxBar,
  ActnList, dxStatusBar, dxRibbonStatusBar, cxClasses, dxRibbon, cxContainer,
  cxEdit, cxMaskEdit, cxTextEdit, cxDropDownEdit, StdCtrls, ExtCtrls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxGDIPlusClasses, cxImage, dxBevel,
  dxSkinOffice2007Blue, dxSkinsdxRibbonPainter, cxNavigator,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle;

type
  TformSelTeste = class(TformModeloSel)
    gridSelDBTableView1CODIGO: TcxGridDBColumn;
    gridSelDBTableView1NOME: TcxGridDBColumn;
    gridSelDBTableView1FONE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateDataModule; override;
    procedure CreateDetailForm; override;
  end;

var
  formSelTeste: TformSelTeste;

implementation

uses data_teste, teste_cad;

{$R *.dfm}

procedure TformSelTeste.CreateDataModule;
begin
  dataSel := TDataTeste.Create(Self);
end;

procedure TformSelTeste.CreateDetailForm;
begin
  detailForm := TformCadTeste.Create(Self);
end;

end.
