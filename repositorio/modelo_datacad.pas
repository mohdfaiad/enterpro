unit modelo_datacad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_data, UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS,
  InterBaseUniProvider;

type
  TdataModeloCad = class(TdataModelo)
    qrySel: TUniQuery;
    qryCad: TUniQuery;
    dsrSel: TUniDataSource;
    dsrCad: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetSelFieldNames: TStrings;
    function GetDetailRecord(id: LargeInt): boolean;
  end;

var
  dataModeloCad: TdataModeloCad;

implementation

{$R *.dfm}

function TdataModeloCad.GetDetailRecord(id: LargeInt): boolean;
begin
  try
    qryCad.Params[0].AsLargeInt := id;
    qryCad.Open;
    Result := true;
  except
    Result := false;
  end;
end;

function TdataModeloCad.GetSelFieldNames: TStrings;
var
  i: Integer;
  s, o: TStrings;
  sel, temp: string;
begin
  sel := qrySel.SQL.Text;
  s := TStringList.Create;
  o := TStringList.Create;
  { origem dos campos }
  if pos('*', sel) > 0 then
   begin
     ShowMessage('O SQL não pode ser [SELECT * FROM]. Você precisa especificar os campos.');
   end else
   begin
     sel := copy(sel, pos('SELECT', ansiuppercase(sel)) + 6, length(sel) - 6);
     i := pos('FROM', ansiuppercase(sel));
     sel := trim(copy(sel, 1, i - 1));
     while pos(',', sel) > 0 do
      begin
        temp := trim(copy(sel, 1, pos(',', sel) - 1));
        if pos(#32, temp) > 0 then
          temp := trim(copy(temp, 1, pos(#32, temp) - 1));
        o.Add(temp);
        sel := trim(copy(sel, pos(',', sel) + 1, length(sel) - pos(',', sel)));
      end;
     if pos(#32, sel) > 0 then
       sel := trim(copy(sel, 1, pos(#32, sel) - 1));
     o.Add(sel);
   end;
  { monto array com a descricao + origem dos campos }
  for i := 0 to qrySel.Fields.Count - 1 do
   begin
     s.AddObject(
        qrySel.Fields[i].DisplayLabel,
        TObject(o[i]));
   end;
  Result := s;
end;

end.
