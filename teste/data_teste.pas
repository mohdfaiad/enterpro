unit data_teste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, modelo_datacad, DB, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider, InterBaseUniProvider;

type
  TdataTeste = class(TdataModeloCad)
    qrySelCODIGO: TIntegerField;
    qrySelNOME: TStringField;
    qrySelFONE: TStringField;
    qryCadCODIGO: TIntegerField;
    qryCadPESSOAFISICA: TStringField;
    qryCadRAZAOSOCIAL: TStringField;
    qryCadNOME: TStringField;
    qryCadDATANASC: TDateTimeField;
    qryCadNATURALIDADE: TStringField;
    qryCadSEXO: TStringField;
    qryCadESTADOCIVIL: TStringField;
    qryCadRG: TStringField;
    qryCadCPF: TStringField;
    qryCadCGC: TStringField;
    qryCadIE: TStringField;
    qryCadPAI: TStringField;
    qryCadMAE: TStringField;
    qryCadLOGRADOURO: TStringField;
    qryCadNUMERO: TIntegerField;
    qryCadCOMPLEMENTO: TStringField;
    qryCadBAIRRO: TStringField;
    qryCadCIDADE: TStringField;
    qryCadESTADO: TStringField;
    qryCadCEP: TStringField;
    qryCadMUNIBGE: TStringField;
    qryCadFONE: TStringField;
    qryCadFAX: TStringField;
    qryCadEMAIL: TStringField;
    qryCadHOMEPAGE: TStringField;
    qryCadCELULAR: TStringField;
    qryCadDATACADAST: TDateTimeField;
    qryCadOBSERVACOES: TStringField;
    qryCadCONTATO: TStringField;
    qryCadDATAFUND: TDateTimeField;
    qryCadPROFISSAO: TStringField;
    qryCadEQUIPAMENTO: TStringField;
    qryCadSALARIO: TFloatField;
    qryCadORGAOEXP: TStringField;
    qryCadSOUNDBYTES: TIntegerField;
    qryCadPROTESTO: TStringField;
    qryCadSPC: TStringField;
    qryCadSERASA: TStringField;
    qryCadIMOVEL: TStringField;
    qryCadPROTESTO_DATA: TDateTimeField;
    qryCadSPC_DATA: TDateTimeField;
    qryCadSERASA_DATA: TDateTimeField;
    qryCadPROTESTO_USER: TStringField;
    qryCadSPC_USER: TStringField;
    qryCadSERASA_USER: TStringField;
    qryCadIMOVEL_TIPO: TStringField;
    qryCadCODEMPREEND: TIntegerField;
    qryCadPROCESSO_OK: TStringField;
    qryCadFGTS: TStringField;
    qryCadPIS: TStringField;
    qryCadVALOR_FGTS: TFloatField;
    qryCadCONTRATO: TStringField;
    qryCadKMS: TIntegerField;
    qryCadCOMISSIONADO: TStringField;
    qryCadNOMEUSER: TStringField;
    qryCadDESCONTO: TFloatField;
    qryCadFINANCEIRO: TStringField;
    qryCadESTORNO: TStringField;
    qryCadCODEMPRESA: TIntegerField;
    qryCadTROCAVENDEDOR: TStringField;
    qryCadINTERNET: TStringField;
    qryCadMUDAEMPRESA: TStringField;
    qryCadCOMISSAO: TFloatField;
    qryCadTIPO: TStringField;
    qryCadCODFORNECEDOR: TIntegerField;
    qryCadCODTRANSPORTADOR: TIntegerField;
    qryCadCODASSOCIADO: TIntegerField;
    qryCadNOME_FAMILIA: TStringField;
    qryCadRECEBIMENTO: TStringField;
    qryCadCUSTO: TStringField;
    qryCadSEQUENCIAS: TStringField;
    qryCadRECALCULO: TStringField;
    qryCadCOMPRAS: TStringField;
    qryCadTRANSFERENCIA: TStringField;
    qryCadRELATORIOS: TStringField;
    qryCadLIMITECREDITO: TFloatField;
    qryCadTIPO_BLOQUEIO: TStringField;
    qryCadTIPO_IMPEDIMENTO: TStringField;
    qryCadOCULTO: TStringField;
    qryCadVENDADIRETA: TStringField;
    qryCadTECNICOLOGIN: TStringField;
    qryCadFECHAMENTO: TStringField;
    qryCadLOG_USUARIO: TStringField;
    qryCadLOG_TIPO: TStringField;
    qryCadLOG_MAQUINA: TStringField;
    qryCadLOG_DATAREMOTO: TDateTimeField;
    qryCadSENHAWEB: TStringField;
    qryCadPERCCOMIS_PROD: TFloatField;
    qryCadPERCCOMIS_PECA: TFloatField;
    qryCadPERCCOMIS_SERV: TFloatField;
    qryCadPERCCOMIS_CALCULO: TStringField;
    qryCadCODLINHA: TIntegerField;
    qryCadCODCENTRO: TIntegerField;
    qryCadCODPLANO: TIntegerField;
    qryCadCALC_BASEICMS: TStringField;
    qryCadCAIXA: TStringField;
    qryCadOCULTOS: TStringField;
    qryCadANALISES: TStringField;
    qryCadLOGS: TStringField;
    qryCadENTREGA1: TStringField;
    qryCadENTREGA2: TStringField;
    qryCadRESIDENCIA_TEMPO: TStringField;
    qryCadALUGUEL: TStringField;
    qryCadALUGUEL_VALOR: TFloatField;
    qryCadTRAB_SALARIO: TFloatField;
    qryCadCONJ_SALARIO: TFloatField;
    qryCadTRAB_EMPRESA: TStringField;
    qryCadTRAB_ADMISSAO: TDateField;
    qryCadTRAB_ENDERECO: TStringField;
    qryCadTRAB_CIDADE: TStringField;
    qryCadTRAB_FONE: TStringField;
    qryCadTRAB_CARGO: TStringField;
    qryCadCONJ_NOME: TStringField;
    qryCadCONJ_DATANASC: TDateField;
    qryCadCONJ_RG: TStringField;
    qryCadCONJ_CPF: TStringField;
    qryCadCONJ_CARTEIRA: TStringField;
    qryCadCONJ_EMPRESA: TStringField;
    qryCadCONJ_ADMISSAO: TDateField;
    qryCadCONJ_CARGO: TStringField;
    qryCadCONJ_ENDERECO: TStringField;
    qryCadCONJ_FONE: TStringField;
    qryCadCARTEIRA: TStringField;
    qryCadREFERENCIA1: TStringField;
    qryCadREFERENCIA2: TStringField;
    qryCadREFERENCIA3: TStringField;
    qryCadVALOR_CONTRATO: TFloatField;
    qryCadIM: TStringField;
    qryCadCNAE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataTeste: TdataTeste;

implementation

{$R *.dfm}

end.
