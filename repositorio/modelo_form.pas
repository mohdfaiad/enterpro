unit modelo_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxBar, ActnList, cxClasses, dxBarExtItems, cxGraphics,
  cxControls, dxStatusBar, ExtCtrls, cxDropDownEdit, cxDBEdit, cxCheckBox,
  cxCalendar, cxMemo, cxMaskEdit, cxContainer, cxEdit, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxGroupBox, cxRadioGroup,
  cxLookAndFeels, cxLookAndFeelPainters, cxButtons, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxNavigator, cxDBNavigator, cxCurrencyEdit, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxSkinOffice2010Black,
  XPStyleActnCtrls, ActnMan, DB, Uni;

type
  TFormModeloForm = class(TForm)
    ActionAtalho: TActionList;
    Action1: TAction;
    procedure controlEnter(Sender: TObject);
    procedure controlExit(Sender: TObject);
    procedure checkMouseEnter(Sender: TObject);
    procedure checkMouseLeave(Sender: TObject);
    procedure labelMouseEnter(Sender: TObject);
    procedure labelMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigControls;
  public
    { Public declarations }
    function CampoRequerido(c: string): boolean;
    procedure EditarDataSet(DataSet: TDataSet);
  end;

var
  FormModeloForm: TFormModeloForm;

implementation

uses principal;

{$R *.dfm}

function TFormModeloForm.CampoRequerido(c: string): boolean;
begin
  result := false;
end;

procedure TFormModeloForm.EditarDataSet(DataSet: TDataSet);
begin
  repeat until true;
end;

procedure TFormModeloForm.controlEnter(Sender: TObject);
var
  i: word;
  campoid: string;
begin
  campoid := '';
  if Sender is TcxTextEdit then
   begin
     TcxTextEdit(Sender).Style.Color := clInfoBK;
     TcxTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxTextEdit(Sender).Style.BorderStyle := ebsThick;
     TcxTextEdit(Sender).Style.Shadow := True;
   end else
  if Sender is TcxMaskEdit then
   begin
     TcxMaskEdit(Sender).Style.Color := clInfoBK;
     TcxMaskEdit(Sender).Style.Font.Style := [fsBold];
     TcxMaskEdit(Sender).Style.BorderStyle := ebsThick;
     TcxMaskEdit(Sender).Style.Shadow := True;
   end else
  if Sender is TcxComboBox then
   begin
     TcxComboBox(Sender).Style.Color := clInfoBK;
     TcxComboBox(Sender).Style.Font.Style := [fsBold];
     TcxComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxComboBox(Sender).Style.Shadow := True;
   end else
  if Sender is TcxDBTextEdit then
   begin
     TcxDBTextEdit(Sender).Style.Color := clInfoBK;
     TcxDBTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBTextEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBTextEdit(Sender).Style.Shadow := True;
     if copy(TcxDBTextEdit(Sender).DataBinding.DataField, 1, 3) = 'id_' then
       campoid := 'edt' + copy(TcxDBTextEdit(Sender).Name, 4, length(TcxDBTextEdit(Sender).Name) - 3);
   end else
  if Sender is TcxDBMaskEdit then
   begin
     TcxDBMaskEdit(Sender).Style.Color := clInfoBK;
     TcxDBMaskEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBMaskEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBMaskEdit(Sender).Style.Shadow := True;
   end else
  if Sender is TcxCurrencyEdit then
   begin
     TcxCurrencyEdit(Sender).Style.Color := clInfoBK;
     TcxCurrencyEdit(Sender).Style.Font.Style := [fsBold];
     TcxCurrencyEdit(Sender).Style.BorderStyle := ebsThick;
     TcxCurrencyEdit(Sender).Style.Shadow := True;
   end else
  if Sender is TcxDBCurrencyEdit then
   begin
     TcxDBCurrencyEdit(Sender).Style.Color := clInfoBK;
     TcxDBCurrencyEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBCurrencyEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBCurrencyEdit(Sender).Style.Shadow := True;
   end else
  if Sender is TcxDBDateEdit then
   begin
     TcxDBDateEdit(Sender).Style.Color := clInfoBk;
     TcxDBDateEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBDateEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBDateEdit(Sender).Style.Shadow := True;
   end else
  if Sender is TcxDBComboBox then
   begin
     TcxDBComboBox(Sender).Style.Color := clInfoBk;
     TcxDBComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxDBComboBox(Sender).Style.Shadow := True;
   end else
  if Sender is TcxLookupComboBox then
   begin
     TcxLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxLookupComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxLookupComboBox(Sender).Style.Shadow := True;
   end else
  if Sender is TcxDBLookupComboBox then
   begin
     TcxDBLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBLookupComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxDBLookupComboBox(Sender).Style.Shadow := True;
   end else
  if Sender is TcxDBMemo then
   begin
     TcxDBMemo(Sender).Style.Color := clInfoBK;
     TcxDBMemo(Sender).Style.Font.Style := [fsBold];
     TcxDBMemo(Sender).Style.BorderStyle := ebsThick;
   end;

  { coloco o label em negrito }
  for i := 0 to ComponentCount - 1 do
   begin
    if Components[i] is TLabel then
     begin
       if (Components[i] as TLabel).FocusControl = Sender then
        begin
          if Assigned((Components[i] as TLabel).OnClick) then
            (Components[i] as TLabel).Font.Style := [fsBold, fsUnderline]
          else
            (Components[i] as TLabel).Font.Style := [fsBold];
        end;
     end else
    if Components[i] is TcxTextEdit then
     begin
       if campoid > '' then
         if TcxTextEdit(Components[i]).Name = campoid then
          begin
            TcxTextEdit(Components[i]).Style.Font.Style := [fsBold];
            TcxTextEdit(Components[i]).Style.BorderStyle := ebsThick;
          end;
     end;
   end;

end;

procedure TformModeloForm.controlExit(Sender: TObject);
var
  i: word;
  campoid: string;
begin
  if Sender is TcxTextEdit then
   begin
     TcxTextEdit(Sender).Style.Color := clSilver;
     TcxTextEdit(Sender).Style.Font.Style := [];
     TcxTextEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxTextEdit(Sender).Style.Shadow := False;
   end else
  if Sender is TcxMaskEdit then
   begin
     TcxMaskEdit(Sender).Style.Color := clSilver;
     TcxMaskEdit(Sender).Style.Font.Style := [];
     TcxMaskEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxMaskEdit(Sender).Style.Shadow := False;
   end else
  if Sender is TcxComboBox then
   begin
     TcxComboBox(Sender).Style.Color := clSilver;
     TcxComboBox(Sender).Style.Font.Style := [];
     TcxComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxComboBox(Sender).Style.Shadow := False;
   end else
  if Sender is TcxDBTextEdit then
   begin
     TcxDBTextEdit(Sender).Style.Color := clWindow;
     TcxDBTextEdit(Sender).Style.Font.Style := [];
     TcxDBTextEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBTextEdit(Sender).Style.Shadow := False;
     if copy(TcxDBTextEdit(Sender).DataBinding.DataField, 1, 3) = 'id_' then
       campoid := 'edt' + copy(TcxDBTextEdit(Sender).Name, 4, length(TcxDBTextEdit(Sender).Name) - 3);
   end else
  if Sender is TcxDBMaskEdit then
   begin
     TcxDBMaskEdit(Sender).Style.Color := clWindow;
     TcxDBMaskEdit(Sender).Style.Font.Style := [];
     TcxDBMaskEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBMaskEdit(Sender).Style.Shadow := False;
   end else
  if Sender is TcxCurrencyEdit then
   begin
     TcxCurrencyEdit(Sender).Style.Color := clWindow;
     TcxCurrencyEdit(Sender).Style.Font.Style := [];
     TcxCurrencyEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxCurrencyEdit(Sender).Style.Shadow := False;
   end else
  if Sender is TcxDBCurrencyEdit then
   begin
     TcxDBCurrencyEdit(Sender).Style.Color := clWindow;
     TcxDBCurrencyEdit(Sender).Style.Font.Style := [];
     TcxDBCurrencyEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBCurrencyEdit(Sender).Style.Shadow := False;
   end else
  if Sender is TcxDBDateEdit then
   begin
     TcxDBDateEdit(Sender).Style.Color := clWindow;
     TcxDBDateEdit(Sender).Style.Font.Style := [];
     TcxDBDateEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBDateEdit(Sender).Style.Shadow := False;
   end else
  if Sender is TcxDBComboBox then
   begin
     TcxDBComboBox(Sender).Style.Color := clWindow;
     TcxDBComboBox(Sender).Style.Font.Style := [];
     TcxDBComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBComboBox(Sender).Style.Shadow := False;
   end else
  if Sender is TcxLookupComboBox then
   begin
     TcxLookupComboBox(Sender).Style.Color := clWindow;
     TcxLookupComboBox(Sender).Style.Font.Style := [];
     TcxLookupComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxLookupComboBox(Sender).Style.Shadow := False;
   end else
  if Sender is TcxDBLookupComboBox then
   begin
     TcxDBLookupComboBox(Sender).Style.Color := clWindow;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [];
     TcxDBLookupComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBLookupComboBox(Sender).Style.Shadow := False;
   end else
  if Sender is TcxDBMemo then
   begin
     TcxDBMemo(Sender).Style.Color := clWindow;
     TcxDBMemo(Sender).Style.Font.Style := [];
     TcxDBMemo(Sender).Style.BorderStyle := ebsUltraFlat;
   end;

  { coloco o label em fonte normal }
  for i := 0 to ComponentCount -1 do
   begin
     if Components[i] is TLabel then
      begin
        if (Components[i] as TLabel).FocusControl = Sender then
         if Assigned((Components[i] as TLabel).OnClick) then
           (Components[i] as TLabel).Font.Style := [fsUnderline]
         else
           (Components[i] as TLabel).Font.Style := [];
      end else
     if Components[i] is TcxTextEdit then
      begin
        if campoid > '' then
          if TcxTextEdit(Components[i]).Name = campoid then
           begin
             TcxTextEdit(Components[i]).Style.Font.Style := [];
             TcxTextEdit(Components[i]).Style.BorderStyle := ebsUltraFlat;
           end;
      end;
   end;
end;

procedure TformModeloForm.checkMouseEnter(Sender: TObject);
begin
  TcxDBCheckBox(Sender).Style.Shadow := True;
  TcxDBCheckBox(Sender).Style.Color := clMoneyGreen;
  TcxDBCheckBox(Sender).Style.Font.Style := [fsBold];
end;

procedure TformModeloForm.checkMouseLeave(Sender: TObject);
begin
  TcxDBCheckBox(Sender).Style.Shadow := False;
  TcxDBCheckBox(Sender).Style.Color := clCream;
  TcxDBCheckBox(Sender).Style.Font.Style := [];
end;

procedure TformModeloForm.labelMouseEnter(Sender: TObject);
begin
  if ((TLabel(Sender).Font.Color = clMaroon) or
      (TLabel(Sender).Font.Color = clNavy)) and
     (TLabel(Sender).Font.Style = [fsUnderline]) then
   TLabel(Sender).Font.Style := [fsBold, fsUnderline];
end;

procedure TformModeloForm.labelMouseLeave(Sender: TObject);
begin
  if ((TLabel(Sender).Font.Color = clMaroon) or
      (TLabel(Sender).Font.Color = clNavy)) and
     (TLabel(Sender).Font.Style = [fsBold, fsUnderline]) then
   TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TformModeloForm.ConfigControls;
var
  i, j: word;
  c: string;
  A: TAction;
  LB: TLabel;
  consultar,
  adicionar,
  modificar,
  excluir: boolean;
begin

  consultar := false;
  adicionar := false;
  modificar := false;
  excluir   := false;

  { keypreview = enter proximo campo }
  Self.KeyPreview := True;

  { fonte padrão }
  Self.Font.Name := 'Verdana';

  { laço dos componentes visuais menos grade }
  for i := 0 to ComponentCount - 1 do
   begin

     { TActionList }
//     if Components[i] is TActionList then
//      begin
//        for j := 0 to TActionList(Components[i]).ActionCount - 1 do
//         begin
//           { privilégios }
//           if TActionList(Components[i]).Actions[j].Tag > 0 then
//            begin
//              formPrincipal.GetPrivilegios(TActionList(Components[i]).Actions[j].Tag, consultar, adicionar, modificar, excluir);
//              if not consultar then
//                TAction(TActionList(Components[i]).Actions[j]).Visible := False;
//            end;
//         end;
//      end else

     { TLabel }
     if Components[i] is TLabel then
      begin
        TLabel(Components[i]).Transparent := True;

        { privilégios }
        if Assigned(TLabel(Components[i]).OnClick) and (TLabel(Components[i]).Tag > 0) then
         begin
           formPrincipal.GetPrivilegios(TLabel(Components[i]).Tag, consultar, adicionar, modificar, excluir);
           if not consultar then
            begin
              TLabel(Components[i]).OnClick := nil;
              if Assigned(TLabel(Components[i]).FocusControl) then
                TLabel(Components[i]).FocusControl.Enabled := False;
            end;
         end;

        if Assigned(TLabel(Components[i]).OnClick) then
         begin

           TLabel(Components[i]).Font.Style := [fsUnderline];
           TLabel(Components[i]).Font.Color := clMaroon;
           TLabel(Components[i]).OnMouseEnter := labelMouseEnter;
           TLabel(Components[i]).OnMouseLeave := labelMouseLeave;
           TLabel(Components[i]).Cursor := crHandPoint;

           { crio uma ação para o label Alt+letra }
           A := TAction.Create(Self);
           A.Caption := TLabel(Components[i]).Caption;
           A.OnExecute := TLabel(Components[i]).OnClick;
           c := TLabel(Components[i]).Caption;
           j := 0;
           repeat
             inc(j);
           until (c[j] in ['A'..'Z']) or (j = length(c));
           A.ShortCut := TextToShortCut('Alt+' + c[j]);
           A.ActionList := ActionAtalho;

         end else
         begin
           TLabel(Components[i]).Font.Style := [fsBold];
           TLabel(Components[i]).Font.Color := clWhite;
           TLabel(Components[i]).OnMouseEnter := nil;
           TLabel(Components[i]).OnMouseLeave := nil;
           TLabel(Components[i]).Cursor := crDefault;
         end;
      end else

     { TcxTextEdit }
     if Components[i] is TcxTextEdit then
      begin
        TcxTextEdit(Components[i]).BeepOnEnter := False;
        if TcxTextEdit(Components[i]).Properties.CharCase = ecNormal then
          TcxTextEdit(Components[i]).Properties.CharCase := ecUpperCase;
        if TcxTextEdit(Components[i]).Properties.CharCase = ecLowerCase then
          TcxTextEdit(Components[i]).Properties.CharCase := ecNormal;
        if TcxTextEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxTextEdit(Components[i]).TabStop := False;
           TcxTextEdit(Components[i]).Style.Color := clBtnFace;
           TcxTextEdit(Components[i]).OnEnter := nil;
           TcxTextEdit(Components[i]).OnExit := nil;
           TcxTextEdit(Components[i]).OnKeyDown := nil;
         end else
         begin
           TcxTextEdit(Components[i]).TabStop := True;
           TcxTextEdit(Components[i]).Style.Color := clSilver;
           TcxTextEdit(Components[i]).Style.BorderStyle := ebsThick;
           TcxTextEdit(Components[i]).OnEnter := controlEnter;
           TcxTextEdit(Components[i]).OnExit := controlExit;
         end;
      end else

     { TcxComboBox }
     if Components[i] is TcxComboBox then
      begin
        TcxComboBox(Components[i]).BeepOnEnter := False;
        if TcxComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxComboBox(Components[i]).TabStop := False;
           TcxComboBox(Components[i]).Style.Color := clBtnFace;
           TcxComboBox(Components[i]).OnEnter := nil;
           TcxComboBox(Components[i]).OnExit := nil;
           TcxComboBox(Components[i]).OnKeyDown := nil;
         end else
         begin
           TcxComboBox(Components[i]).TabStop := True;
           TcxComboBox(Components[i]).Style.Color := clSilver;
           TcxComboBox(Components[i]).Style.BorderStyle := ebsThick;
           TcxComboBox(Components[i]).OnEnter := controlEnter;
           TcxComboBox(Components[i]).OnExit := controlExit;
         end;
      end else

     { TcxDBDateEdit }
     if Components[i] is TcxDBDateEdit then
     begin
        TcxDBDateEdit(Components[i]).BeepOnEnter := False;
        if TcxDBDateEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxDBDateEdit(Components[i]).TabStop := False;
           TcxDBDateEdit(Components[i]).Style.Color := clBtnFace;
           TcxDBDateEdit(Components[i]).OnEnter := nil;
           TcxDBDateEdit(Components[i]).OnExit := nil;
           TcxDBDateEdit(Components[i]).OnKeyDown := nil;
         end else
         begin
           TcxDBDateEdit(Components[i]).TabStop := True;
           TcxDBDateEdit(Components[i]).Style.Color := clWindow;
           TcxDBDateEdit(Components[i]).OnEnter := controlEnter;
           TcxDBDateEdit(Components[i]).OnExit := controlExit;
         end;

       if TcxDBDateEdit(Components[i]).DataBinding.DataSource.Name = 'dsrCad' then
        if CampoRequerido(TcxDBDateEdit(Components[i]).DataBinding.DataField) and
          TcxDBDateEdit(Components[i]).Visible then
         begin
           LB := TLabel.Create(TcxDBDateEdit(Components[i]).Parent);
           LB.Parent := TcxDBDateEdit(Components[i]).Parent;
           LB.Font.Color := clRed;
           LB.Caption := '*';
           LB.Transparent := True;
           LB.Top := TcxDBDateEdit(Components[i]).Top;
           LB.Left := TcxDBDateEdit(Components[i]).Left +
             TcxDBDateEdit(Components[i]).Width;
         end;
     end;

     { TcxDBTextEdit }
     if Components[i] is TcxDBTextEdit then
      begin
        TcxDBTextEdit(Components[i]).BeepOnEnter := False;
        if (TcxDBTextEdit(Components[i]).DataBinding.DataField = 'id') and
           (TcxDBTextEdit(Components[i]).Tag <> 2) then
          TcxDBTextEdit(Components[i]).Properties.ReadOnly := True;
        if TcxDBTextEdit(Components[i]).Properties.CharCase = ecNormal then
          TcxDBTextEdit(Components[i]).Properties.CharCase := ecUpperCase;
        if TcxDBTextEdit(Components[i]).Properties.CharCase = ecLowerCase then
          TcxDBTextEdit(Components[i]).Properties.CharCase := ecNormal;
        if TcxDBTextEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxDBTextEdit(Components[i]).TabStop := False;
           TcxDBTextEdit(Components[i]).Style.Color := clBtnFace;
           TcxDBTextEdit(Components[i]).OnEnter := nil;
           TcxDBTextEdit(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBTextEdit(Components[i]).Properties.AutoSelect := False;
           TcxDBTextEdit(Components[i]).TabStop := True;
           TcxDBTextEdit(Components[i]).Style.Color := clWindow;
           TcxDBTextEdit(Components[i]).OnEnter := controlEnter;
           TcxDBTextEdit(Components[i]).OnExit := controlExit;
           if TcxDBTextEdit(Components[i]).DataBinding.DataSource.Name = 'dsrCad' then
            if CampoRequerido(TcxDBTextEdit(Components[i]).DataBinding.DataField) and
              TcxDBTextEdit(Components[i]).Visible then
             begin
               LB := TLabel.Create(TcxDBTextEdit(Components[i]).Parent);
               LB.Parent := TcxDBTextEdit(Components[i]).Parent;
               LB.Font.Color := clRed;
               LB.Caption := '*';
               LB.Transparent := True;
               LB.Top := TcxDBTextEdit(Components[i]).Top;
               LB.Left := TcxDBTextEdit(Components[i]).Left +
                 TcxDBTextEdit(Components[i]).Width;
             end;
         end;
      end else

     { TcxMaskEdit }
     if Components[i] is TcxMaskEdit then
      begin
        TcxMaskEdit(Components[i]).BeepOnEnter := False;
        if TcxMaskEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxMaskEdit(Components[i]).TabStop := False;
           TcxMaskEdit(Components[i]).Style.Color := clBtnFace;
           TcxMaskEdit(Components[i]).OnEnter := nil;
           TcxMaskEdit(Components[i]).OnExit := nil;
           TcxMaskEdit(Components[i]).OnKeyDown := nil;
         end else
         begin
           TcxMaskEdit(Components[i]).TabStop := True;
           TcxMaskEdit(Components[i]).Style.Color := clSilver;
           TcxMaskEdit(Components[i]).Style.BorderStyle := ebsThick;
           TcxMaskEdit(Components[i]).OnEnter := controlEnter;
           TcxMaskEdit(Components[i]).OnExit := controlExit;
         end;
      end else

     { TcxDBMaskEdit }
     if Components[i] is TcxDBMaskEdit then
      begin
        TcxDBMaskEdit(Components[i]).BeepOnEnter := False;
        if TcxDBMaskEdit(Components[i]).Properties.CharCase = ecNormal then
          TcxDBMaskEdit(Components[i]).Properties.CharCase := ecUpperCase;
        if TcxDBMaskEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxDBMaskEdit(Components[i]).TabStop := False;
           TcxDBMaskEdit(Components[i]).Style.Color := clBtnFace;
           TcxDBMaskEdit(Components[i]).OnEnter := nil;
           TcxDBMaskEdit(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBMaskEdit(Components[i]).Properties.AutoSelect := False;
           TcxDBMaskEdit(Components[i]).TabStop := True;
           TcxDBMaskEdit(Components[i]).Style.Color := clWindow;
           TcxDBMaskEdit(Components[i]).OnEnter := controlEnter;
           TcxDBMaskEdit(Components[i]).OnExit := controlExit;
           if TcxDBMaskEdit(Components[i]).DataBinding.DataSource.Name = 'dsrCad' then
            if CampoRequerido(TcxDBMaskEdit(Components[i]).DataBinding.DataField) and
               TcxDBMaskEdit(Components[i]).Visible then
             begin
               LB := TLabel.Create(TcxDBMaskEdit(Components[i]).Parent);
               LB.Parent := TcxDBMaskEdit(Components[i]).Parent;
               LB.Font.Color := clRed;
               LB.Caption := '*';
               LB.Top := TcxDBMaskEdit(Components[i]).Top;
               LB.Left := TcxDBMaskEdit(Components[i]).Left +
                 TcxDBMaskEdit(Components[i]).Width;
             end;
         end;
      end else

     { TcxCurrencyEdit }
     if Components[i] is TcxCurrencyEdit then
      begin
        TcxCurrencyEdit(Components[i]).BeepOnEnter := False;
        if TcxCurrencyEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxCurrencyEdit(Components[i]).TabStop := False;
           TcxCurrencyEdit(Components[i]).Style.Color := clBtnFace;
           TcxCurrencyEdit(Components[i]).OnEnter := nil;
           TcxCurrencyEdit(Components[i]).OnExit := nil;
         end else
         begin
           TcxCurrencyEdit(Components[i]).Properties.AutoSelect := False;
           TcxCurrencyEdit(Components[i]).TabStop := True;
           TcxCurrencyEdit(Components[i]).Style.Color := clWindow;
           TcxCurrencyEdit(Components[i]).OnEnter := controlEnter;
           TcxCurrencyEdit(Components[i]).OnExit := controlExit;
         end;
      end else

     { TcxDBCurrencyEdit }
     if Components[i] is TcxDBCurrencyEdit then
      begin
        TcxDBCurrencyEdit(Components[i]).BeepOnEnter := False;
        if TcxDBCurrencyEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxDBCurrencyEdit(Components[i]).TabStop := False;
           TcxDBCurrencyEdit(Components[i]).Style.Color := clBtnFace;
           TcxDBCurrencyEdit(Components[i]).OnEnter := nil;
           TcxDBCurrencyEdit(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBCurrencyEdit(Components[i]).Properties.AutoSelect := False;
           TcxDBCurrencyEdit(Components[i]).TabStop := True;
           TcxDBCurrencyEdit(Components[i]).Style.Color := clWindow;
           TcxDBCurrencyEdit(Components[i]).OnEnter := controlEnter;
           TcxDBCurrencyEdit(Components[i]).OnExit := controlExit;
           if TcxDBCurrencyEdit(Components[i]).DataBinding.DataSource.Name = 'dsrCad' then
            if CampoRequerido(TcxDBCurrencyEdit(Components[i]).DataBinding.DataField) and
               TcxDBCurrencyEdit(Components[i]).Visible then
             begin
               LB := TLabel.Create(TcxDBCurrencyEdit(Components[i]).Parent);
               LB.Parent := TcxDBCurrencyEdit(Components[i]).Parent;
               LB.Font.Color := clRed;
               LB.Caption := '*';
               LB.Top := TcxDBCurrencyEdit(Components[i]).Top;
               LB.Left := TcxDBCurrencyEdit(Components[i]).Left +
                 TcxDBCurrencyEdit(Components[i]).Width;
             end;
         end;
      end else

     { TcxDBComboBox }
     if Components[i] is TcxDBComboBox then
      begin
        TcxDBComboBox(Components[i]).BeepOnEnter := False;
        TcxDBComboBox(Components[i]).Tag := 1;
        if TcxDBComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxDBComboBox(Components[i]).TabStop := False;
           TcxDBComboBox(Components[i]).Style.Color := clBtnFace;
           TcxDBComboBox(Components[i]).OnEnter := nil;
           TcxDBComboBox(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBComboBox(Components[i]).TabStop := True;
           TcxDBComboBox(Components[i]).Style.Color := clWindow;
           TcxDBComboBox(Components[i]).Style.LookAndFeel.Kind := lfOffice11;
           TcxDBComboBox(Components[i]).StyleFocused.ButtonStyle := btsOffice11;
           TcxDBComboBox(Components[i]).StyleHot.ButtonStyle := btsOffice11;
           TcxDBComboBox(Components[i]).StyleHot.BorderStyle := ebsOffice11;
           TcxDBComboBox(Components[i]).OnEnter := controlEnter;
           TcxDBComboBox(Components[i]).OnExit := controlExit;
           TcxDBComboBox(Components[i]).Properties.DropDownListStyle := lsFixedList;
           TcxDBComboBox(Components[i]).Properties.ClearKey := TextToShortcut('Del');
           TcxDBComboBox(Components[i]).Properties.Sorted := True;
           if TcxDBComboBox(Components[i]).DataBinding.DataSource.Name = 'dsrCad' then
            if CampoRequerido(TcxDBComboBox(Components[i]).DataBinding.DataField) and
               TcxDBComboBox(Components[i]).Visible then
             begin
               LB := TLabel.Create(TcxDBComboBox(Components[i]).Parent);
               LB.Parent := TcxDBComboBox(Components[i]).Parent;
               LB.Font.Color := clRed;
               LB.Caption := '*';
               LB.Transparent := True;
               LB.Top := TcxDBComboBox(Components[i]).Top;
               LB.Left := TcxDBComboBox(Components[i]).Left +
                 TcxDBComboBox(Components[i]).Width;
             end;
         end;
      end else

     { TcxDBLookupComboBox }
     if Components[i] is TcxDBLookupComboBox then
      begin
        TcxDBLookupComboBox(Components[i]).BeepOnEnter := False;
        TcxDBLookupComboBox(Components[i]).Tag := 1;
        if TcxDBLookupComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxDBLookupComboBox(Components[i]).TabStop := False;
           TcxDBLookupComboBox(Components[i]).Style.Color := clBtnFace;
           TcxDBLookupComboBox(Components[i]).OnEnter := nil;
           TcxDBLookupComboBox(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBLookupComboBox(Components[i]).TabStop := True;
           TcxDBLookupComboBox(Components[i]).Style.Color := clWindow;
           TcxDBLookupComboBox(Components[i]).Style.LookAndFeel.Kind := lfOffice11;
           TcxDBLookupComboBox(Components[i]).StyleFocused.ButtonStyle := btsOffice11;
           TcxDBLookupComboBox(Components[i]).StyleHot.ButtonStyle := btsOffice11;
           TcxDBLookupComboBox(Components[i]).StyleHot.BorderStyle := ebsOffice11;
           TcxDBLookupComboBox(Components[i]).OnEnter := controlEnter;
           TcxDBLookupComboBox(Components[i]).OnExit := controlExit;
           TcxDBLookupComboBox(Components[i]).Properties.ImmediatePost := True;
           TcxDBLookupComboBox(Components[i]).Properties.DropDownListStyle := lsFixedList;
           TcxDBLookupComboBox(Components[i]).Properties.ListOptions.GridLines := glVertical;
           TcxDBLookupComboBox(Components[i]).Properties.ListOptions.ShowHeader := False;
           TcxDBLookupComboBox(Components[i]).Properties.ClearKey := TextToShortcut('Del');
           if TcxDBLookupComboBox(Components[i]).DataBinding.DataSource.Name = 'dsrCad' then
            if CampoRequerido(TcxDBLookupComboBox(Components[i]).DataBinding.DataField) and
               TcxDBLookupComboBox(Components[i]).Visible then
             begin
               LB := TLabel.Create(TcxDBLookupComboBox(Components[i]).Parent);
               LB.Parent := TcxDBLookupComboBox(Components[i]).Parent;
               LB.Font.Color := clRed;
               LB.Caption := '*';
               LB.Transparent := True;
               LB.Top := TcxDBLookupComboBox(Components[i]).Top;
               LB.Left := TcxDBLookupComboBox(Components[i]).Left +
                 TcxDBLookupComboBox(Components[i]).Width;
             end;
         end;
      end else

     { TcxLookupComboBox }
     if Components[i] is TcxLookupComboBox then
      begin
        TcxLookupComboBox(Components[i]).BeepOnEnter := False;
        TcxLookupComboBox(Components[i]).Tag := 1;
        if TcxLookupComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxLookupComboBox(Components[i]).TabStop := False;
           TcxLookupComboBox(Components[i]).Style.Color := clBtnFace;
           TcxLookupComboBox(Components[i]).OnEnter := nil;
           TcxLookupComboBox(Components[i]).OnExit := nil;
         end else
         begin
           TcxLookupComboBox(Components[i]).TabStop := True;
           TcxLookupComboBox(Components[i]).Style.Color := clWindow;
           TcxLookupComboBox(Components[i]).OnEnter := controlEnter;
           TcxLookupComboBox(Components[i]).OnExit := controlExit;
         end;
      end else

     { TcxCheckBox }
     if Components[i] is TcxCheckBox then
      begin
        TcxCheckBox(Components[i]).ParentColor := True;
        TcxCheckBox(Components[i]).Properties.ImmediatePost := True;
        TcxCheckBox(Components[i]).Style.BorderStyle := ebsThick;
        TcxCheckBox(Components[i]).Style.TransparentBorder := True;
        TcxCheckBox(Components[i]).OnMouseEnter := checkMouseEnter;
        TcxCheckBox(Components[i]).OnMouseLeave := checkMouseLeave;
        TcxCheckBox(Components[i]).Cursor := crHandPoint;
        TcxCheckBox(Components[i]).Transparent := True;
//        if TcxCheckBox(Components[i]).Tag = 77 then
//          TcxCheckBox(Components[i]).Visible :=
//            (formPrincipal.qyUsuarios.FieldByName('OCULTOS').AsString = 'S');
      end else

     { TcxDBCheckBox }
     if Components[i] is TcxDBCheckBox then
      begin
        TcxDBCheckBox(Components[i]).ParentColor := True;
        TcxDBCheckBox(Components[i]).Properties.ImmediatePost := True;
        TcxDBCheckBox(Components[i]).Style.BorderStyle := ebsThick;
        TcxDBCheckBox(Components[i]).Style.TransparentBorder := True;
        TcxDBCheckBox(Components[i]).Properties.ValueChecked := 'S';
        TcxDBCheckBox(Components[i]).Properties.ValueUnchecked := 'N';
        TcxDBCheckBox(Components[i]).OnMouseEnter := checkMouseEnter;
        TcxDBCheckBox(Components[i]).OnMouseLeave := checkMouseLeave;
        TcxDBCheckBox(Components[i]).Cursor := crHandPoint;
        TcxDBCheckBox(Components[i]).Transparent := True;
//        if TcxDBCheckBox(Components[i]).Tag = 77 then
//          TcxDBCheckBox(Components[i]).Visible :=
//            (formPrincipal.cdsUsuarios.FieldByName('OCULTOS').AsString = 'S');
      end else

     { TcxDBRadioGroup }
     if Components[i] is TcxDBRadioGroup then
      begin
        TcxDBRadioGroup(Components[i]).Style.BorderStyle := ebsOffice11;
        TcxDBRadioGroup(Components[i]).Transparent := True;
        TcxDBRadioGroup(Components[i]).Style.LookAndFeel.NativeStyle := False;
        TcxDBRadioGroup(Components[i]).Style.LookAndFeel.Kind := lfOffice11;
        TcxDBRadioGroup(Components[i]).Properties.ImmediatePost := True;
        TcxDBRadioGroup(Components[i]).Cursor := crHandPoint;
      end else

     { TcxButton }
     if Components[i] is TcxButton then
      begin
        TcxButton(Components[i]).Cursor := crHandPoint;
        TcxButton(Components[i]).LookAndFeel.NativeStyle := False;
      end else

     { TcxTabSheet }
     if Components[i] is TcxPageControl then
      begin
        TcxPageControl(Components[i]).LookAndFeel.NativeStyle := False;
        TcxPageControl(Components[i]).LookAndFeel.Kind := lfOffice11;
        TcxPageControl(Components[i]).ActivePageIndex := 0;
      end else

     { TcxTabSheet }
     if Components[i] is TcxTabSheet then
      begin
//        if TcxTabSheet(Components[i]).Tag = 99 then
//          TcxTabSheet(Components[i]).TabVisible :=
//            (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S');
      end else

     { TcxGroupBox }
     if Components[i] is TcxGroupBox then
      begin
//        if TcxGroupBox(Components[i]).Tag = 99 then
//          TcxGroupBox(Components[i]).Visible :=
//            (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S');
      end else

     { TcxGrid }
     if Components[i] is TcxGrid then
      begin
        TcxGrid(Components[i]).LookAndFeel.NativeStyle := False;
      end else

     { TcxDBNavigator }
     if Components[i] is TcxDBNavigator then
      begin
        TcxDBNavigator(Components[i]).LookAndFeel.NativeStyle := False;
        TcxDBNavigator(Components[i]).LookAndFeel.Kind := lfOffice11;
        TcxDBNavigator(Components[i]).Buttons.ConfirmDelete := False;
        TcxDBNavigator(Components[i]).Buttons.Append.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.Edit.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.Filter.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.First.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.GotoBookmark.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.Last.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.Next.Visible := True;
        TcxDBNavigator(Components[i]).Buttons.NextPage.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.Prior.Visible := True;
        TcxDBNavigator(Components[i]).Buttons.PriorPage.Visible := False;
        TcxDBNavigator(Components[i]).Buttons.SaveBookmark.Visible := False;
        TcxDBNavigator(Components[i]).Width := 150;
      end else

     { TcxGridDBTableView }
     if Components[i] is TcxGridDBTableView then
      begin
        TcxGridDBTableView(Components[i]).OptionsView.GroupByBox := False;
        TcxGridDBTableView(Components[i]).OptionsView.Indicator := False;
        TcxGridDBTableView(Components[i]).OptionsView.FocusRect := False;
        TcxGridDBTableView(Components[i]).OptionsView.NoDataToDisplayInfoText := '[ sem registros ]';
        TcxGridDBTableView(Components[i]).OptionsView.Footer := True;
        TcxGridDBTableView(Components[i]).OptionsSelection.CellSelect := False;
        TcxGridDBTableView(Components[i]).OptionsSelection.HideFocusRectOnExit := False;
        TcxGridDBTableView(Components[i]).OptionsSelection.InvertSelect := False;
        if TcxGridDBTableView(Components[i]).ColumnCount > 0 then
         for j := (TcxGridDBTableView(Components[i]).ColumnCount - 1) downto 0 do
          begin
            if (TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxCheckBoxProperties) or
               (TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxLookupComboBoxProperties) or
               (TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxCurrencyEditProperties) or
               (TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxDateEditProperties) then
             begin
               TcxGridDBTableView(Components[i]).OptionsSelection.CellSelect     := True;
               TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := True;
               TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
               TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := True;
               TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
               TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
               TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
               TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
               TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := False;
               if TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxCheckBoxProperties then
                begin
                  TcxGridDBTableView(Components[i]).Columns[j].Width := 30;
                  TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ImmediatePost := True;
                  TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ValueChecked := 'S';
                  TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ValueUnchecked := 'N';
                end
             end else
             begin
               if TcxGridDBTableView(Components[i]).Columns[j].Tag = 0 then
                begin
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := True;
                end else
                begin
                  TcxGridDBTableView(Components[i]).OptionsSelection.CellSelect     := True;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := True;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := True;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
                  TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := True;
                end;
             end;
            { primeira coluna tem a contagem }
            if j = 0 then
             begin
               with TcxGridDBTableView(Components[i]).DataController.Summary.FooterSummaryItems.Add do
                begin
                  ItemLink := TcxGridDBTableView(Components[i]).Columns[j];
                  Kind := skCount;
                  Position := spFooter;
                end;
             end;
            { formato para campo inteiro }
            if (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'LargeInt') or
               (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'Integer') or
               (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'SmallInt') or
               (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'Word') then
             begin
               if (copy(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.FieldName, 1, 2) = 'id') then
                begin
                  if (TNumericField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat = '') then
                    TNumericField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat := '00000#';
                end;
               TcxGridDBTableView(Components[i]).Columns[j].HeaderAlignmentHorz := taRightJustify;
//               if TcxGridDBTableView(Components[i]).Columns[j].Properties <> nil then
//                 TcxGridDBTableView(Components[i]).Columns[j].Width := 70;
             end else
            { formato para campo dinheiro }
            if (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'Currency') or
               (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'Float') or
               (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'FMTBcd') then
             begin
               if (TNumericField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat = '') then
                 TNumericField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat := '#,##0.00';
               TcxGridDBTableView(Components[i]).Columns[j].HeaderAlignmentHorz := taRightJustify;
               TcxGridDBTableView(Components[i]).Columns[j].Width := 90;
               { adiciona a soma dos valores no rodapé total }
               with TcxGridDBTableView(Components[i]).DataController.Summary.FooterSummaryItems.Add do
                begin
                  Format := TNumericField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat;
                  ItemLink := TcxGridDBTableView(Components[i]).Columns[j];
                  Kind := skSum;
                  Position := spFooter;
                end;
             end else
            { formato para campo data/hora }
            if (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'DateTime') or
               (TcxGridDBTableView(Components[i]).Columns[j].DataBinding.ValueType = 'SQLTimeStamp') then
             begin
               if (TDateTimeField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat = '') then
                 TDateTimeField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).DisplayFormat := 'DD/MM/YYYY';
               TDateTimeField(TcxGridDBTableView(Components[i]).Columns[j].DataBinding.Field).Alignment := taCenter;
               TcxGridDBTableView(Components[i]).Columns[j].Width := 90;
             end;
          end;
        if not TcxGridDBTableView(Components[i]).OptionsSelection.CellSelect then
         begin
           TcxGridDBTableView(Components[i]).Styles.Selection := formPrincipal.ColunaMarcada;
           TcxGridDBTableView(Components[i]).Styles.Inactive := formPrincipal.ColunaMarcada;
         end;
      end else

     { TUniQuery }
     if Components[i] is TUniQuery then
      begin
        { datasets auxiliares "filhos" do principal }
        if TUniQuery(Components[i]).CachedUpdates then
         begin
           TUniQuery(Components[i]).AfterInsert := EditarDataSet;
           TUniQuery(Components[i]).AfterEdit := EditarDataSet;
           TUniQuery(Components[i]).AfterDelete := EditarDataSet;
         end;
      end else

     { TLargeintField }
     if Components[i] is TLargeintField then
      begin
        if TLargeintField(Components[i]).DisplayFormat = '' then
         begin
           TLargeintField(Components[i]).DisplayFormat := '00000#';
           TLargeintField(Components[i]).EditFormat := '#';
         end;
      end else

     { TIntegerField }
     if Components[i] is TIntegerField then
      begin
        if TIntegerField(Components[i]).DisplayFormat = '' then
         begin
           TIntegerField(Components[i]).DisplayFormat := '00000#';
           TIntegerField(Components[i]).EditFormat := '#';
         end;
      end

   end;
end;

procedure TFormModeloForm.FormCreate(Sender: TObject);
begin
  formPrincipal.IniciaTela;
end;

procedure TFormModeloForm.FormDestroy(Sender: TObject);
begin
  formPrincipal.TerminaTela;
end;

procedure TFormModeloForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  atag: word;
begin

  { tratamento da tag }
  if ActiveControl = nil then
    atag := 0
  else
    atag := ActiveControl.Tag;

  { enter = tab }
  if (key = vk_Return) and (atag = 0) then
    if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
      if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);

  { tratamento das teclas up/down }
  if not odd(atag) then
   begin
     case key of
       vk_Down: Perform(wm_NextDlgCtl, 0, 0);
       vk_Up: Perform(wm_NextDlgCtl, 1, 0);
     end;
   end;

end;

procedure TFormModeloForm.FormShow(Sender: TObject);
begin
  ConfigControls;
end;

end.
