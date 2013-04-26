unit modelo_data;

interface

uses
  SysUtils, Classes, DB, DBAccess, IniFiles, UniProvider, MySQLUniProvider,
  MemDS, Uni, InterBaseUniProvider;

type
  TdataModelo = class(TDataModule)
    UniConnection: TUniConnection;
    InterBaseUniProvider: TInterBaseUniProvider;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IniciaTransacao;
    procedure GravaTransacao;
    procedure CancelaTransacao;
  end;

var
  dataModelo: TdataModelo;

implementation

uses
  funcoes, principal;

{$R *.dfm}

procedure TdataModelo.IniciaTransacao;
begin
  if not UniConnection.InTransaction then
    UniConnection.StartTransaction;
end;

procedure TdataModelo.GravaTransacao;
begin
  if UniConnection.InTransaction then
    UniConnection.Commit;
end;

procedure TdataModelo.CancelaTransacao;
begin
  if UniConnection.InTransaction then
    UniConnection.Rollback;
end;

procedure TdataModelo.DataModuleCreate(Sender: TObject);
var
  ConfigINI: TIniFile;
  servidor: string;
begin
  formPrincipal.IniciaProcesso;

//  { leio o arquivo de configuração }
//  ConfigINI := TIniFile.Create(funcoes.GetINIFileName);
//  servidor  := ConfigINI.ReadString('servidor', 'endereco', '');
//  ConfigINI.Free;
//
//  { verifico o tipo de conexão }
//  if (servidor > '') then
//   begin
//
//     { servidor local ou hospedado pelo cliente }
//     UniConnection.Server   := servidor;
//     UniConnection.Username := 'tcx';
//     UniConnection.Password := 'tcx';
//
//   end else
//   begin
//
//     { servidor na nuvem decisao.net }
//     UniConnection.Server   := 'mysql.decisao.net';
//     UniConnection.Username := 'd3c15a0';
//     UniConnection.Password := 'D3c15a0*';
//
//   end;

end;

procedure TdataModelo.DataModuleDestroy(Sender: TObject);
begin
  formPrincipal.TerminaProcesso;
end;

end.
