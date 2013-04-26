unit modelo_sel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_form, ActnList, dxSkinsCore, dxSkinOffice2010Black,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxStatusBar, dxRibbonStatusBar,
  cxClasses, dxRibbon, dxBar, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  ExtCtrls, cxContainer, cxEdit, cxMaskEdit, cxTextEdit, cxDropDownEdit,
  StdCtrls, modelo_datacad, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxGDIPlusClasses, cxImage, dxBevel, dxSkinOffice2007Blue,
  dxSkinsdxRibbonPainter, cxNavigator, modelo_cad, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle;

type
  TformModeloSel = class(TFormModeloForm)
    dxBarManSel: TdxBarManager;
    dxRibbonSelTabCadastro: TdxRibbonTab;
    dxRibbonSel: TdxRibbon;
    StatusBar: TdxRibbonStatusBar;
    dxBarManSelBarOperacoes: TdxBar;
    actNovo: TAction;
    actEditar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    actExcluir: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actImprimir: TAction;
    actExcel: TAction;
    actCopiar: TAction;
    actMarcar: TAction;
    actDesmarcar: TAction;
    actInverter: TAction;
    dxRibbonSelTabExportar: TdxRibbonTab;
    dxBarManSelBarSelecionar: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarManSelBarExportar: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    actTransferir: TAction;
    actFechar: TAction;
    dxBarManSelBarSair: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxRibbonSelTabAvancado: TdxRibbonTab;
    actGrafico: TAction;
    actAuditoria: TAction;
    actLixeira: TAction;
    actAgrupar: TAction;
    dxBarManSelBarAvancado: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    pnlSel: TPanel;
    lbSel1: TLabel;
    lbSel2: TLabel;
    cmbSel: TcxComboBox;
    edtSel: TcxMaskEdit;
    gridSel: TcxGrid;
    gridSelDBTableView1: TcxGridDBTableView;
    gridSelLevel1: TcxGridLevel;
    tmrRelogioSel: TTimer;
    imgSelFiltro: TcxImage;
    dxBevel1: TdxBevel;
    actEmail: TAction;
    dxBarLargeButton16: TdxBarLargeButton;
    procedure actFecharExecute(Sender: TObject);
    procedure edtSelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actCopiarExecute(Sender: TObject);
    procedure actMarcarExecute(Sender: TObject);
    procedure actTransferirExecute(Sender: TObject);
    procedure actGraficoExecute(Sender: TObject);
    procedure actAuditoriaExecute(Sender: TObject);
    procedure actLixeiraExecute(Sender: TObject);
    procedure actAgruparExecute(Sender: TObject);
    procedure gridSelDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure actDesmarcarExecute(Sender: TObject);
    procedure tmrRelogioSelTimer(Sender: TObject);
    procedure cmbSelPropertiesChange(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dataSel: TdataModeloCad;
    detailForm: TformModeloCad;
    procedure CreateDataModule; virtual;
    procedure CreateDetailForm; virtual;
  end;

var
  formModeloSel: TformModeloSel;

implementation

uses
  principal;

{$R *.dfm}

procedure TformModeloSel.FormCreate(Sender: TObject);
begin
  inherited;
  CreateDataModule;
end;

procedure TformModeloSel.FormShow(Sender: TObject);
var
  i: word;
begin

  inherited;

  { desativo todos os botões que só funcionam com dados }
  for i := 0 to ActionAtalho.ActionCount - 1 do
   begin
     if ActionAtalho.Actions[i].Tag > 0 then
       TAction(ActionAtalho.Actions[i]).Enabled := false;
   end;

  { preencho o combo com os nomes dos campos }
  cmbSel.Properties.Items.AddStrings(dataSel.GetSelFieldNames);
  cmbSel.ItemIndex := cmbSel.Tag;

  { foco no conteúdo }
  try
    edtSel.SetFocus;
  except
  end;

end;

procedure TformModeloSel.CreateDataModule;
begin

end;

procedure TformModeloSel.CreateDetailForm;
begin

end;

procedure TformModeloSel.actAgruparExecute(Sender: TObject);
begin
  inherited;
  actAgrupar.Checked := not actAgrupar.Checked;
  gridSelDBTableView1.OptionsView.GroupByBox := actAgrupar.Checked;
end;

procedure TformModeloSel.actAuditoriaExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Auditoria');
end;

procedure TformModeloSel.actCopiarExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Copiar');
end;

procedure TformModeloSel.actDesmarcarExecute(Sender: TObject);
begin
  inherited;
  gridSelDBTableView1.DataController.ClearSelection;
end;

procedure TformModeloSel.actEditarExecute(Sender: TObject);
begin
  inherited;
  ShowMessage(String(cmbSel.Properties.Items.Objects[2]));

  if dataSel.GetDetailRecord(dataSel.qrySel.FieldByName('CODIGO').AsInteger) then
   begin
     try
       CreateDetailForm;
       detailForm.ShowModal;
     finally
       detailForm.Release;
     end;
   end;

end;

procedure TformModeloSel.actEmailExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('E-mail');
end;

procedure TformModeloSel.actExcelExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Excel');
end;

procedure TformModeloSel.actExcluirExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Excluir');
end;

procedure TformModeloSel.actFecharExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TformModeloSel.actGraficoExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Gráfico');
end;

procedure TformModeloSel.actImprimirExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Imprimir');
end;

procedure TformModeloSel.actLixeiraExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Lixeira');
end;

procedure TformModeloSel.actMarcarExecute(Sender: TObject);
begin
  inherited;
  gridSelDBTableView1.DataController.SelectAll;
end;

procedure TformModeloSel.actNovoExecute(Sender: TObject);
begin
  inherited;
  ShowMessage(dataSel.GetSelFieldNames.Text);
end;

procedure TformModeloSel.actTransferirExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Transferir');
end;

procedure TformModeloSel.cmbSelPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    edtSel.SetFocus;
  except
  end;
end;

procedure TformModeloSel.edtSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if Key = vk_return then
   begin

     { efetuo a busca }
     dataSel.qrySel.Open;
     if dataSel.qrySel.RecordCount > 0 then
      begin
        gridSel.Visible := True;
      end else
      begin
        gridSel.Visible := True;
        dataSel.qrySel.Close;
      end;
   end;

end;

procedure TformModeloSel.gridSelDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
var
  n: longint;
  i: word;
begin
  inherited;
  { ativo ou desativo botões de acordo com o número de registros selecionados }
  n := gridSelDBTableView1.DataController.GetSelectedCount;
  for i := 0 to ActionAtalho.ActionCount - 1 do
   begin
     if ActionAtalho.Actions[i].Tag = 1 then
       TAction(ActionAtalho.Actions[i]).Enabled := (n = 1);
     if ActionAtalho.Actions[i].Tag = 2 then
       TAction(ActionAtalho.Actions[i]).Enabled := (n > 0);
     if ActionAtalho.Actions[i].Tag = 3 then
       TAction(ActionAtalho.Actions[i]).Enabled := (n > 1);
   end;
  if n > 0 then
    StatusBar.Panels[1].Text := Format('%d marcados', [n])
  else
    StatusBar.Panels[1].Text := '';
end;

procedure TformModeloSel.tmrRelogioSelTimer(Sender: TObject);
begin
  inherited;
  StatusBar.Panels[0].Text := FormatDateTime('HH:NN', now);
end;

end.
