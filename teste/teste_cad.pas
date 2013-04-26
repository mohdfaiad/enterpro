unit teste_cad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_cad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2010Black, cxControls, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage, StdCtrls, cxButtons, ExtCtrls, dxBevel,
  dxSkinOffice2007Blue, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, DB, dxSkinOffice2010Silver, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle;

type
  TformCadTeste = class(TformModeloCad)
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadTeste: TformCadTeste;

implementation

{$R *.dfm}

end.
