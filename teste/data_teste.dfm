inherited dataTeste: TdataTeste
  inherited qrySel: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CLIENTES'
      '  (CODIGO, NOME, FONE)'
      'VALUES'
      '  (:CODIGO, :NOME, :FONE)')
    SQLDelete.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    SQLUpdate.Strings = (
      'UPDATE CLIENTES'
      'SET'
      '  CODIGO = :CODIGO, NOME = :NOME, FONE = :FONE'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    SQLLock.Strings = (
      'SELECT NULL FROM CLIENTES'
      'WHERE'
      'CODIGO = :Old_CODIGO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT CODIGO, NOME, FONE FROM CLIENTES'
      'WHERE'
      '  CODIGO = :CODIGO')
    SQL.Strings = (
      'SELECT'
      '  CODIGO,'
      '  NOME,'
      '  FONE'
      'FROM '
      '  CLIENTES')
    object qrySelCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CODIGO'
      Required = True
    end
    object qrySelNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object qrySelFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FONE'
      FixedChar = True
    end
  end
  inherited qryCad: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CLIENTES'
      
        '  (CODIGO, PESSOAFISICA, RAZAOSOCIAL, NOME, DATANASC, NATURALIDA' +
        'DE, SEXO, ESTADOCIVIL, RG, CPF, CGC, IE, PAI, MAE, LOGRADOURO, N' +
        'UMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, CEP, MUNIBGE, FONE, ' +
        'FAX, EMAIL, HOMEPAGE, CELULAR, DATACADAST, OBSERVACOES, CONTATO,' +
        ' DATAFUND, PROFISSAO, EQUIPAMENTO, SALARIO, ORGAOEXP, SOUNDBYTES' +
        ', PROTESTO, SPC, SERASA, IMOVEL, PROTESTO_DATA, SPC_DATA, SERASA' +
        '_DATA, PROTESTO_USER, SPC_USER, SERASA_USER, IMOVEL_TIPO, CODEMP' +
        'REEND, PROCESSO_OK, FGTS, PIS, VALOR_FGTS, CONTRATO, KMS, COMISS' +
        'IONADO, NOMEUSER, DESCONTO, FINANCEIRO, ESTORNO, CODEMPRESA, TRO' +
        'CAVENDEDOR, INTERNET, MUDAEMPRESA, COMISSAO, TIPO, CODFORNECEDOR' +
        ', CODTRANSPORTADOR, CODASSOCIADO, NOME_FAMILIA, RECEBIMENTO, CUS' +
        'TO, SEQUENCIAS, RECALCULO, COMPRAS, TRANSFERENCIA, RELATORIOS, L' +
        'IMITECREDITO, TIPO_BLOQUEIO, TIPO_IMPEDIMENTO, OCULTO, VENDADIRE' +
        'TA, TECNICOLOGIN, FECHAMENTO, LOG_USUARIO, LOG_TIPO, LOG_MAQUINA' +
        ', LOG_DATAREMOTO, SENHAWEB, PERCCOMIS_PROD, PERCCOMIS_PECA, PERC' +
        'COMIS_SERV, PERCCOMIS_CALCULO, CODLINHA, CODCENTRO, CODPLANO, CA' +
        'LC_BASEICMS, CAIXA, OCULTOS, ANALISES, LOGS, ENTREGA1, ENTREGA2,' +
        ' RESIDENCIA_TEMPO, ALUGUEL, ALUGUEL_VALOR, TRAB_SALARIO, CONJ_SA' +
        'LARIO, TRAB_EMPRESA, TRAB_ADMISSAO, TRAB_ENDERECO, TRAB_CIDADE, ' +
        'TRAB_FONE, TRAB_CARGO, CONJ_NOME, CONJ_DATANASC, CONJ_RG, CONJ_C' +
        'PF, CONJ_CARTEIRA, CONJ_EMPRESA, CONJ_ADMISSAO, CONJ_CARGO, CONJ' +
        '_ENDERECO, CONJ_FONE, CARTEIRA, REFERENCIA1, REFERENCIA2, REFERE' +
        'NCIA3, VALOR_CONTRATO, IM, CNAE)'
      'VALUES'
      
        '  (:CODIGO, :PESSOAFISICA, :RAZAOSOCIAL, :NOME, :DATANASC, :NATU' +
        'RALIDADE, :SEXO, :ESTADOCIVIL, :RG, :CPF, :CGC, :IE, :PAI, :MAE,' +
        ' :LOGRADOURO, :NUMERO, :COMPLEMENTO, :BAIRRO, :CIDADE, :ESTADO, ' +
        ':CEP, :MUNIBGE, :FONE, :FAX, :EMAIL, :HOMEPAGE, :CELULAR, :DATAC' +
        'ADAST, :OBSERVACOES, :CONTATO, :DATAFUND, :PROFISSAO, :EQUIPAMEN' +
        'TO, :SALARIO, :ORGAOEXP, :SOUNDBYTES, :PROTESTO, :SPC, :SERASA, ' +
        ':IMOVEL, :PROTESTO_DATA, :SPC_DATA, :SERASA_DATA, :PROTESTO_USER' +
        ', :SPC_USER, :SERASA_USER, :IMOVEL_TIPO, :CODEMPREEND, :PROCESSO' +
        '_OK, :FGTS, :PIS, :VALOR_FGTS, :CONTRATO, :KMS, :COMISSIONADO, :' +
        'NOMEUSER, :DESCONTO, :FINANCEIRO, :ESTORNO, :CODEMPRESA, :TROCAV' +
        'ENDEDOR, :INTERNET, :MUDAEMPRESA, :COMISSAO, :TIPO, :CODFORNECED' +
        'OR, :CODTRANSPORTADOR, :CODASSOCIADO, :NOME_FAMILIA, :RECEBIMENT' +
        'O, :CUSTO, :SEQUENCIAS, :RECALCULO, :COMPRAS, :TRANSFERENCIA, :R' +
        'ELATORIOS, :LIMITECREDITO, :TIPO_BLOQUEIO, :TIPO_IMPEDIMENTO, :O' +
        'CULTO, :VENDADIRETA, :TECNICOLOGIN, :FECHAMENTO, :LOG_USUARIO, :' +
        'LOG_TIPO, :LOG_MAQUINA, :LOG_DATAREMOTO, :SENHAWEB, :PERCCOMIS_P' +
        'ROD, :PERCCOMIS_PECA, :PERCCOMIS_SERV, :PERCCOMIS_CALCULO, :CODL' +
        'INHA, :CODCENTRO, :CODPLANO, :CALC_BASEICMS, :CAIXA, :OCULTOS, :' +
        'ANALISES, :LOGS, :ENTREGA1, :ENTREGA2, :RESIDENCIA_TEMPO, :ALUGU' +
        'EL, :ALUGUEL_VALOR, :TRAB_SALARIO, :CONJ_SALARIO, :TRAB_EMPRESA,' +
        ' :TRAB_ADMISSAO, :TRAB_ENDERECO, :TRAB_CIDADE, :TRAB_FONE, :TRAB' +
        '_CARGO, :CONJ_NOME, :CONJ_DATANASC, :CONJ_RG, :CONJ_CPF, :CONJ_C' +
        'ARTEIRA, :CONJ_EMPRESA, :CONJ_ADMISSAO, :CONJ_CARGO, :CONJ_ENDER' +
        'ECO, :CONJ_FONE, :CARTEIRA, :REFERENCIA1, :REFERENCIA2, :REFEREN' +
        'CIA3, :VALOR_CONTRATO, :IM, :CNAE)')
    SQLDelete.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    SQLUpdate.Strings = (
      'UPDATE CLIENTES'
      'SET'
      
        '  CODIGO = :CODIGO, PESSOAFISICA = :PESSOAFISICA, RAZAOSOCIAL = ' +
        ':RAZAOSOCIAL, NOME = :NOME, DATANASC = :DATANASC, NATURALIDADE =' +
        ' :NATURALIDADE, SEXO = :SEXO, ESTADOCIVIL = :ESTADOCIVIL, RG = :' +
        'RG, CPF = :CPF, CGC = :CGC, IE = :IE, PAI = :PAI, MAE = :MAE, LO' +
        'GRADOURO = :LOGRADOURO, NUMERO = :NUMERO, COMPLEMENTO = :COMPLEM' +
        'ENTO, BAIRRO = :BAIRRO, CIDADE = :CIDADE, ESTADO = :ESTADO, CEP ' +
        '= :CEP, MUNIBGE = :MUNIBGE, FONE = :FONE, FAX = :FAX, EMAIL = :E' +
        'MAIL, HOMEPAGE = :HOMEPAGE, CELULAR = :CELULAR, DATACADAST = :DA' +
        'TACADAST, OBSERVACOES = :OBSERVACOES, CONTATO = :CONTATO, DATAFU' +
        'ND = :DATAFUND, PROFISSAO = :PROFISSAO, EQUIPAMENTO = :EQUIPAMEN' +
        'TO, SALARIO = :SALARIO, ORGAOEXP = :ORGAOEXP, SOUNDBYTES = :SOUN' +
        'DBYTES, PROTESTO = :PROTESTO, SPC = :SPC, SERASA = :SERASA, IMOV' +
        'EL = :IMOVEL, PROTESTO_DATA = :PROTESTO_DATA, SPC_DATA = :SPC_DA' +
        'TA, SERASA_DATA = :SERASA_DATA, PROTESTO_USER = :PROTESTO_USER, ' +
        'SPC_USER = :SPC_USER, SERASA_USER = :SERASA_USER, IMOVEL_TIPO = ' +
        ':IMOVEL_TIPO, CODEMPREEND = :CODEMPREEND, PROCESSO_OK = :PROCESS' +
        'O_OK, FGTS = :FGTS, PIS = :PIS, VALOR_FGTS = :VALOR_FGTS, CONTRA' +
        'TO = :CONTRATO, KMS = :KMS, COMISSIONADO = :COMISSIONADO, NOMEUS' +
        'ER = :NOMEUSER, DESCONTO = :DESCONTO, FINANCEIRO = :FINANCEIRO, ' +
        'ESTORNO = :ESTORNO, CODEMPRESA = :CODEMPRESA, TROCAVENDEDOR = :T' +
        'ROCAVENDEDOR, INTERNET = :INTERNET, MUDAEMPRESA = :MUDAEMPRESA, ' +
        'COMISSAO = :COMISSAO, TIPO = :TIPO, CODFORNECEDOR = :CODFORNECED' +
        'OR, CODTRANSPORTADOR = :CODTRANSPORTADOR, CODASSOCIADO = :CODASS' +
        'OCIADO, NOME_FAMILIA = :NOME_FAMILIA, RECEBIMENTO = :RECEBIMENTO' +
        ', CUSTO = :CUSTO, SEQUENCIAS = :SEQUENCIAS, RECALCULO = :RECALCU' +
        'LO, COMPRAS = :COMPRAS, TRANSFERENCIA = :TRANSFERENCIA, RELATORI' +
        'OS = :RELATORIOS, LIMITECREDITO = :LIMITECREDITO, TIPO_BLOQUEIO ' +
        '= :TIPO_BLOQUEIO, TIPO_IMPEDIMENTO = :TIPO_IMPEDIMENTO, OCULTO =' +
        ' :OCULTO, VENDADIRETA = :VENDADIRETA, TECNICOLOGIN = :TECNICOLOG' +
        'IN, FECHAMENTO = :FECHAMENTO, LOG_USUARIO = :LOG_USUARIO, LOG_TI' +
        'PO = :LOG_TIPO, LOG_MAQUINA = :LOG_MAQUINA, LOG_DATAREMOTO = :LO' +
        'G_DATAREMOTO, SENHAWEB = :SENHAWEB, PERCCOMIS_PROD = :PERCCOMIS_' +
        'PROD, PERCCOMIS_PECA = :PERCCOMIS_PECA, PERCCOMIS_SERV = :PERCCO' +
        'MIS_SERV, PERCCOMIS_CALCULO = :PERCCOMIS_CALCULO, CODLINHA = :CO' +
        'DLINHA, CODCENTRO = :CODCENTRO, CODPLANO = :CODPLANO, CALC_BASEI' +
        'CMS = :CALC_BASEICMS, CAIXA = :CAIXA, OCULTOS = :OCULTOS, ANALIS' +
        'ES = :ANALISES, LOGS = :LOGS, ENTREGA1 = :ENTREGA1, ENTREGA2 = :' +
        'ENTREGA2, RESIDENCIA_TEMPO = :RESIDENCIA_TEMPO, ALUGUEL = :ALUGU' +
        'EL, ALUGUEL_VALOR = :ALUGUEL_VALOR, TRAB_SALARIO = :TRAB_SALARIO' +
        ', CONJ_SALARIO = :CONJ_SALARIO, TRAB_EMPRESA = :TRAB_EMPRESA, TR' +
        'AB_ADMISSAO = :TRAB_ADMISSAO, TRAB_ENDERECO = :TRAB_ENDERECO, TR' +
        'AB_CIDADE = :TRAB_CIDADE, TRAB_FONE = :TRAB_FONE, TRAB_CARGO = :' +
        'TRAB_CARGO, CONJ_NOME = :CONJ_NOME, CONJ_DATANASC = :CONJ_DATANA' +
        'SC, CONJ_RG = :CONJ_RG, CONJ_CPF = :CONJ_CPF, CONJ_CARTEIRA = :C' +
        'ONJ_CARTEIRA, CONJ_EMPRESA = :CONJ_EMPRESA, CONJ_ADMISSAO = :CON' +
        'J_ADMISSAO, CONJ_CARGO = :CONJ_CARGO, CONJ_ENDERECO = :CONJ_ENDE' +
        'RECO, CONJ_FONE = :CONJ_FONE, CARTEIRA = :CARTEIRA, REFERENCIA1 ' +
        '= :REFERENCIA1, REFERENCIA2 = :REFERENCIA2, REFERENCIA3 = :REFER' +
        'ENCIA3, VALOR_CONTRATO = :VALOR_CONTRATO, IM = :IM, CNAE = :CNAE'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    SQLLock.Strings = (
      'SELECT NULL FROM CLIENTES'
      'WHERE'
      'CODIGO = :Old_CODIGO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO, PESSOAFISICA, RAZAOSOCIAL, NOME, DATANASC, NATURA' +
        'LIDADE, SEXO, ESTADOCIVIL, RG, CPF, CGC, IE, PAI, MAE, LOGRADOUR' +
        'O, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, CEP, MUNIBGE, FO' +
        'NE, FAX, EMAIL, HOMEPAGE, CELULAR, DATACADAST, OBSERVACOES, CONT' +
        'ATO, DATAFUND, PROFISSAO, EQUIPAMENTO, SALARIO, ORGAOEXP, SOUNDB' +
        'YTES, PROTESTO, SPC, SERASA, IMOVEL, PROTESTO_DATA, SPC_DATA, SE' +
        'RASA_DATA, PROTESTO_USER, SPC_USER, SERASA_USER, IMOVEL_TIPO, CO' +
        'DEMPREEND, PROCESSO_OK, FGTS, PIS, VALOR_FGTS, CONTRATO, KMS, CO' +
        'MISSIONADO, NOMEUSER, DESCONTO, FINANCEIRO, ESTORNO, CODEMPRESA,' +
        ' TROCAVENDEDOR, INTERNET, MUDAEMPRESA, COMISSAO, TIPO, CODFORNEC' +
        'EDOR, CODTRANSPORTADOR, CODASSOCIADO, NOME_FAMILIA, RECEBIMENTO,' +
        ' CUSTO, SEQUENCIAS, RECALCULO, COMPRAS, TRANSFERENCIA, RELATORIO' +
        'S, LIMITECREDITO, TIPO_BLOQUEIO, TIPO_IMPEDIMENTO, OCULTO, VENDA' +
        'DIRETA, TECNICOLOGIN, FECHAMENTO, LOG_USUARIO, LOG_TIPO, LOG_MAQ' +
        'UINA, LOG_DATAREMOTO, SENHAWEB, PERCCOMIS_PROD, PERCCOMIS_PECA, ' +
        'PERCCOMIS_SERV, PERCCOMIS_CALCULO, CODLINHA, CODCENTRO, CODPLANO' +
        ', CALC_BASEICMS, CAIXA, OCULTOS, ANALISES, LOGS, ENTREGA1, ENTRE' +
        'GA2, RESIDENCIA_TEMPO, ALUGUEL, ALUGUEL_VALOR, TRAB_SALARIO, CON' +
        'J_SALARIO, TRAB_EMPRESA, TRAB_ADMISSAO, TRAB_ENDERECO, TRAB_CIDA' +
        'DE, TRAB_FONE, TRAB_CARGO, CONJ_NOME, CONJ_DATANASC, CONJ_RG, CO' +
        'NJ_CPF, CONJ_CARTEIRA, CONJ_EMPRESA, CONJ_ADMISSAO, CONJ_CARGO, ' +
        'CONJ_ENDERECO, CONJ_FONE, CARTEIRA, REFERENCIA1, REFERENCIA2, RE' +
        'FERENCIA3, VALOR_CONTRATO, IM, CNAE FROM CLIENTES'
      'WHERE'
      '  CODIGO = :CODIGO')
    SQL.Strings = (
      'SELECT * FROM CLIENTES WHERE CODIGO = :CODIGO')
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object qryCadCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadPESSOAFISICA: TStringField
      FieldName = 'PESSOAFISICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      FixedChar = True
      Size = 50
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object qryCadDATANASC: TDateTimeField
      DisplayLabel = 'Data Nasc.'
      FieldName = 'DATANASC'
    end
    object qryCadNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      FixedChar = True
      Size = 40
    end
    object qryCadSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
    end
    object qryCadESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      FixedChar = True
    end
    object qryCadRG: TStringField
      FieldName = 'RG'
      FixedChar = True
    end
    object qryCadCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object qryCadCGC: TStringField
      FieldName = 'CGC'
      FixedChar = True
    end
    object qryCadIE: TStringField
      FieldName = 'IE'
      FixedChar = True
    end
    object qryCadPAI: TStringField
      FieldName = 'PAI'
      FixedChar = True
      Size = 40
    end
    object qryCadMAE: TStringField
      FieldName = 'MAE'
      FixedChar = True
      Size = 40
    end
    object qryCadLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      FixedChar = True
      Size = 60
    end
    object qryCadNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qryCadCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      FixedChar = True
      Size = 40
    end
    object qryCadBAIRRO: TStringField
      FieldName = 'BAIRRO'
      FixedChar = True
      Size = 60
    end
    object qryCadCIDADE: TStringField
      FieldName = 'CIDADE'
      FixedChar = True
      Size = 60
    end
    object qryCadESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCadCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qryCadMUNIBGE: TStringField
      FieldName = 'MUNIBGE'
      FixedChar = True
      Size = 10
    end
    object qryCadFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FONE'
      FixedChar = True
    end
    object qryCadFAX: TStringField
      FieldName = 'FAX'
      FixedChar = True
    end
    object qryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object qryCadHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      FixedChar = True
      Size = 60
    end
    object qryCadCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
    end
    object qryCadDATACADAST: TDateTimeField
      FieldName = 'DATACADAST'
      Required = True
    end
    object qryCadOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object qryCadCONTATO: TStringField
      FieldName = 'CONTATO'
      FixedChar = True
      Size = 40
    end
    object qryCadDATAFUND: TDateTimeField
      FieldName = 'DATAFUND'
    end
    object qryCadPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      FixedChar = True
      Size = 30
    end
    object qryCadEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 1024
    end
    object qryCadSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object qryCadORGAOEXP: TStringField
      FieldName = 'ORGAOEXP'
      FixedChar = True
      Size = 6
    end
    object qryCadSOUNDBYTES: TIntegerField
      FieldName = 'SOUNDBYTES'
      Required = True
    end
    object qryCadPROTESTO: TStringField
      FieldName = 'PROTESTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadSPC: TStringField
      FieldName = 'SPC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadSERASA: TStringField
      FieldName = 'SERASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadIMOVEL: TStringField
      FieldName = 'IMOVEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadPROTESTO_DATA: TDateTimeField
      FieldName = 'PROTESTO_DATA'
    end
    object qryCadSPC_DATA: TDateTimeField
      FieldName = 'SPC_DATA'
    end
    object qryCadSERASA_DATA: TDateTimeField
      FieldName = 'SERASA_DATA'
    end
    object qryCadPROTESTO_USER: TStringField
      FieldName = 'PROTESTO_USER'
      FixedChar = True
    end
    object qryCadSPC_USER: TStringField
      FieldName = 'SPC_USER'
      FixedChar = True
    end
    object qryCadSERASA_USER: TStringField
      FieldName = 'SERASA_USER'
      FixedChar = True
    end
    object qryCadIMOVEL_TIPO: TStringField
      FieldName = 'IMOVEL_TIPO'
      FixedChar = True
    end
    object qryCadCODEMPREEND: TIntegerField
      FieldName = 'CODEMPREEND'
    end
    object qryCadPROCESSO_OK: TStringField
      FieldName = 'PROCESSO_OK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadFGTS: TStringField
      FieldName = 'FGTS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadPIS: TStringField
      FieldName = 'PIS'
      FixedChar = True
    end
    object qryCadVALOR_FGTS: TFloatField
      FieldName = 'VALOR_FGTS'
    end
    object qryCadCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadKMS: TIntegerField
      FieldName = 'KMS'
    end
    object qryCadCOMISSIONADO: TStringField
      FieldName = 'COMISSIONADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      Required = True
      FixedChar = True
      Size = 30
    end
    object qryCadDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qryCadFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadESTORNO: TStringField
      FieldName = 'ESTORNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Required = True
    end
    object qryCadTROCAVENDEDOR: TStringField
      FieldName = 'TROCAVENDEDOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadINTERNET: TStringField
      FieldName = 'INTERNET'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadMUDAEMPRESA: TStringField
      FieldName = 'MUDAEMPRESA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qryCadTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qryCadCODTRANSPORTADOR: TIntegerField
      FieldName = 'CODTRANSPORTADOR'
    end
    object qryCadCODASSOCIADO: TIntegerField
      FieldName = 'CODASSOCIADO'
    end
    object qryCadNOME_FAMILIA: TStringField
      FieldName = 'NOME_FAMILIA'
      FixedChar = True
      Size = 50
    end
    object qryCadRECEBIMENTO: TStringField
      FieldName = 'RECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCUSTO: TStringField
      FieldName = 'CUSTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadSEQUENCIAS: TStringField
      FieldName = 'SEQUENCIAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadRECALCULO: TStringField
      FieldName = 'RECALCULO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCOMPRAS: TStringField
      FieldName = 'COMPRAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadRELATORIOS: TStringField
      FieldName = 'RELATORIOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object qryCadTIPO_BLOQUEIO: TStringField
      FieldName = 'TIPO_BLOQUEIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadTIPO_IMPEDIMENTO: TStringField
      FieldName = 'TIPO_IMPEDIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadOCULTO: TStringField
      FieldName = 'OCULTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadVENDADIRETA: TStringField
      FieldName = 'VENDADIRETA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadTECNICOLOGIN: TStringField
      FieldName = 'TECNICOLOGIN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object qryCadLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object qryCadLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object qryCadLOG_DATAREMOTO: TDateTimeField
      FieldName = 'LOG_DATAREMOTO'
    end
    object qryCadSENHAWEB: TStringField
      FieldName = 'SENHAWEB'
      FixedChar = True
      Size = 10
    end
    object qryCadPERCCOMIS_PROD: TFloatField
      FieldName = 'PERCCOMIS_PROD'
    end
    object qryCadPERCCOMIS_PECA: TFloatField
      FieldName = 'PERCCOMIS_PECA'
    end
    object qryCadPERCCOMIS_SERV: TFloatField
      FieldName = 'PERCCOMIS_SERV'
    end
    object qryCadPERCCOMIS_CALCULO: TStringField
      FieldName = 'PERCCOMIS_CALCULO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCODLINHA: TIntegerField
      FieldName = 'CODLINHA'
    end
    object qryCadCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
    end
    object qryCadCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object qryCadCALC_BASEICMS: TStringField
      FieldName = 'CALC_BASEICMS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadCAIXA: TStringField
      FieldName = 'CAIXA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadOCULTOS: TStringField
      FieldName = 'OCULTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadANALISES: TStringField
      FieldName = 'ANALISES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadLOGS: TStringField
      FieldName = 'LOGS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadENTREGA1: TStringField
      FieldName = 'ENTREGA1'
      FixedChar = True
      Size = 60
    end
    object qryCadENTREGA2: TStringField
      FieldName = 'ENTREGA2'
      FixedChar = True
      Size = 60
    end
    object qryCadRESIDENCIA_TEMPO: TStringField
      FieldName = 'RESIDENCIA_TEMPO'
      FixedChar = True
    end
    object qryCadALUGUEL: TStringField
      FieldName = 'ALUGUEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCadALUGUEL_VALOR: TFloatField
      FieldName = 'ALUGUEL_VALOR'
    end
    object qryCadTRAB_SALARIO: TFloatField
      FieldName = 'TRAB_SALARIO'
    end
    object qryCadCONJ_SALARIO: TFloatField
      FieldName = 'CONJ_SALARIO'
    end
    object qryCadTRAB_EMPRESA: TStringField
      FieldName = 'TRAB_EMPRESA'
      FixedChar = True
      Size = 60
    end
    object qryCadTRAB_ADMISSAO: TDateField
      FieldName = 'TRAB_ADMISSAO'
    end
    object qryCadTRAB_ENDERECO: TStringField
      FieldName = 'TRAB_ENDERECO'
      FixedChar = True
      Size = 60
    end
    object qryCadTRAB_CIDADE: TStringField
      FieldName = 'TRAB_CIDADE'
      FixedChar = True
      Size = 40
    end
    object qryCadTRAB_FONE: TStringField
      FieldName = 'TRAB_FONE'
      FixedChar = True
    end
    object qryCadTRAB_CARGO: TStringField
      FieldName = 'TRAB_CARGO'
      FixedChar = True
    end
    object qryCadCONJ_NOME: TStringField
      FieldName = 'CONJ_NOME'
      FixedChar = True
      Size = 60
    end
    object qryCadCONJ_DATANASC: TDateField
      FieldName = 'CONJ_DATANASC'
    end
    object qryCadCONJ_RG: TStringField
      FieldName = 'CONJ_RG'
      FixedChar = True
      Size = 30
    end
    object qryCadCONJ_CPF: TStringField
      FieldName = 'CONJ_CPF'
      FixedChar = True
    end
    object qryCadCONJ_CARTEIRA: TStringField
      FieldName = 'CONJ_CARTEIRA'
      FixedChar = True
    end
    object qryCadCONJ_EMPRESA: TStringField
      FieldName = 'CONJ_EMPRESA'
      FixedChar = True
      Size = 60
    end
    object qryCadCONJ_ADMISSAO: TDateField
      FieldName = 'CONJ_ADMISSAO'
    end
    object qryCadCONJ_CARGO: TStringField
      FieldName = 'CONJ_CARGO'
      FixedChar = True
    end
    object qryCadCONJ_ENDERECO: TStringField
      FieldName = 'CONJ_ENDERECO'
      FixedChar = True
      Size = 60
    end
    object qryCadCONJ_FONE: TStringField
      FieldName = 'CONJ_FONE'
      FixedChar = True
    end
    object qryCadCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
    end
    object qryCadREFERENCIA1: TStringField
      FieldName = 'REFERENCIA1'
      FixedChar = True
      Size = 60
    end
    object qryCadREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      FixedChar = True
      Size = 60
    end
    object qryCadREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      FixedChar = True
      Size = 60
    end
    object qryCadVALOR_CONTRATO: TFloatField
      FieldName = 'VALOR_CONTRATO'
    end
    object qryCadIM: TStringField
      FieldName = 'IM'
      FixedChar = True
    end
    object qryCadCNAE: TStringField
      FieldName = 'CNAE'
      FixedChar = True
      Size = 10
    end
  end
end
