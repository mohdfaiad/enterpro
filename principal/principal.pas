unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinOffice2010Black, dxSkinsdxBarPainter,
  dxSkinsForm, dxBar, dxStatusBar, dxRibbonStatusBar, cxClasses, dxRibbon,
  dxSkinsdxRibbonPainter, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  dxAlertWindow, mxWebUpdate, cxStyles, dxBarApplicationMenu, cxContainer,
  cxEdit, PngImage, cxImage, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  ExtCtrls, dxSkinOffice2007Blue, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle;

type
  TformPrincipal = class(TForm)
    dxRibbonTab1: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    StatusBar: TdxRibbonStatusBar;
    dxBarManager: TdxBarManager;
    dxSkinController: TdxSkinController;
    cxImageBigNormal: TcxImageList;
    dxBarManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    ActionManager: TActionManager;
    ActSobre: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    ActAtualizar: TAction;
    cxImageNormal: TcxImageList;
    ActEntrar: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    mxWebUpdate: TmxWebUpdate;
    cxStyleRepository: TcxStyleRepository;
    HeaderNegrito: TcxStyle;
    ColunaMarcada: TcxStyle;
    GrupoCaixa: TcxStyle;
    FiltroCaixa: TcxStyle;
    ActConfig: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarApplicationMenu: TdxBarApplicationMenu;
    dxBarManagerBar2: TdxBar;
    imgLogo: TcxImage;
    tmrRelogio: TTimer;
    FundoGrade: TcxStyle;
    procedure ActSobreExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActEntrarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActConfigExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmrRelogioTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    processos: integer;
    telas: integer;
  public
    { Public declarations }
    procedure GetPrivilegios(tag: word; consultar, adicionar, modificar, excluir: boolean);
    function Pergunta(msg, titulo: string): boolean;
    procedure IniciaProcesso;
    procedure TerminaProcesso;
    procedure IniciaTela;
    procedure TerminaTela;
  end;

var
  formPrincipal: TformPrincipal;

implementation

uses
  sobre, atualizar, entrar, pergunta, teste_sel, teste_cad;

{$R *.dfm}

procedure TformPrincipal.IniciaProcesso;
begin
  inc(processos);
end;

procedure TformPrincipal.TerminaProcesso;
begin
  dec(processos);
end;

procedure TformPrincipal.IniciaTela;
begin
  inc(telas);
end;

procedure TformPrincipal.TerminaTela;
begin
  dec(telas);
end;

function TformPrincipal.Pergunta(msg: string; titulo: string): boolean;
begin
  formPergunta := TformPergunta.Create(Application);
  try
    formPergunta.Caption := titulo;
    formPergunta.lbMsg.Caption := msg;
    Result := (formPergunta.ShowModal = mrOk);
  finally
    formPergunta.Release;
  end;
end;

procedure TformPrincipal.tmrRelogioTimer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := FormatDateTime('HH:NN', now);
  StatusBar.Panels[1].Text := Format('T=%d  S=%d', [telas, processos]);
end;

procedure TformPrincipal.GetPrivilegios(tag: word; consultar, adicionar, modificar, excluir: boolean);
begin

end;

procedure TformPrincipal.ActAtualizarExecute(Sender: TObject);
begin
  formAtualizar := TformAtualizar.Create(Self);
  try
    formAtualizar.ShowModal;
  finally
    formAtualizar.Release;
  end;
end;

procedure TformPrincipal.ActConfigExecute(Sender: TObject);
begin
  formSelTeste := TformSelTeste.Create(Self);
  try
    formSelTeste.ShowModal;
  finally
    formSelTeste.Release;
  end;
end;

procedure TformPrincipal.ActEntrarExecute(Sender: TObject);
begin
  formEntrar := TformEntrar.Create(Self);
  try
    formEntrar.ShowModal;
  finally
    formEntrar.Release;
  end;
end;

procedure TformPrincipal.ActSobreExecute(Sender: TObject);
begin
  formSobre := TformSobre.Create(Self);
  try
    formSobre.ShowModal;
  finally
    formSobre.Release;
  end;
end;

procedure TformPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Pergunta('Deseja mesmo sair do Expresso?', 'Sair');
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  { numero de processos }
  processos := 0;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  imgLogo.Align := alClient;
end;

end.
