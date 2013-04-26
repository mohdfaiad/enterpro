unit funcoes;

interface

uses
  Forms, Dialogs, DBClient, Uni;

const
  TASKBAR_HEIGHT  = 30;

  { limpar cpf, cnpj }
  function LimpaNumStr(s: string): string;

  { transforma 12/31/2006 em 31/12/2006 }
  function InverteDiaMes(s: string): string;

  { arredonda n�mero para N casas decimais }
  function Arredonda(v: extended; n: integer): extended;

  { retirada de parenteses }
  function RemovePar(s: string): string;

  { leio o diret�rio de instala��o da aplica��o }
  function GetAppDir: string;

  { leio o diret�rio de armazenamento de cache }
  function GetCacheDir: string;

  { leio o diret�rio tempor�rio do windows }
  function GetTempDir: string;

  { nome completo -- incluindo path -- do arquivo ini da aplica��o }
  function GetINIFileName: string;

  { salva a posi��o e o estado do formul�rio }
  procedure SaveFormPos(usuario: string; form: TForm);

  { recupera a posi��o e o estado do formul�rio }
  procedure LoadFormPos(usuario: string; var form: TForm);

  { salvo as preferencias dos formul�rios de cadastro }
  procedure SavePreferences(usuario: string; Name: string; SelSet,
    SelSet2: integer);

  { recupero as preferencias dos formul�rios de cadastro }
  procedure LoadPreferences(usuario: string; Name: string; var SelSet,
    SelSet2: integer);

  { leio o nome do computador em uso }
  function GetMachine: string;

  { tratamento do caracter de coringa das buscas }
  function Coringa(s: string): string;

  { apago todos os aquivos e diret�rios dentro de um diret�rio }
  procedure RecursiveDeletion(dir: string);

  { calculo do digito no padr�o Ean13 }
  function Ean13(codi: string): string;

  { testa se o CNPJ � v�lido }
  function TestaCnpj(xCNPJ: String): boolean;

  { testa se o CPF � v�lido }
  function TestaCpf(numCPF: String): boolean;

  { testa a exist�ncia de um campo num ClientDataSet }
  function CampoExiste(cds: TUniQuery; c: string): boolean;

  { retorna a posi��o de um campo num ClientDataSet }
  function CampoID(cds: TUniQuery; c: string): integer;

  { executa uma tarefa e aguarda o final }
  function ExecAndWait(const FileName, Params: ShortString; const WinState: Word): boolean; export;

  // para texto a esquerda
  function AlinhaE(Texto : String; Tamanho : Integer; Preenc: Char = ' ') : String;

  //para texto centralizado
  function AlinhaC(Texto : String; Tamanho : integer; Preenc: Char = ' ') : String;

  // para texto a direita
  function AlinhaD(Texto : String; Tamanho : Integer; Preenc: Char = ' ') : String;

  // MASCARA PARA CNPJ E CPF E INSC
  function Formata_DOCTO(Texto: String): String;

  // Limpar simbolos padr�es de documentos . / -
  function DeletaCaract(texto, excluir : string ) : string;

  // extenso de valores
  function Extenso(XValor: Real): String;

  // Troca a virgula por pontos
  procedure TrocaVirg_Ponto(Var Texto:String);

  // Remove os acentos da String
  function RemoveAcentos(Str: string): string;

implementation

uses
  IniFiles, SysUtils, Types, ShellApi, Messages, Windows;

  { limpar cpf, cnpj }
  function LimpaNumStr(s: string): string;
  var
    i: byte;
  begin
    Result := '';
    for i := 1 to length(s) do
      if s[i] in ['0'..'9'] then
        Result := Result + s[i];
  end;

  { transforma 31/12/2006 em 12/31/2006 }
  function InverteDiaMes(s: string): string;
  var
    d, m, a: string;
    wd, wm, wa: word;
    data: TDateTime;
  begin
    data := StrToDate(s);
    decodedate(data, wa, wm, wd);
    d := format('%.2d', [wd]);
    m := format('%.2d', [wm]);
    if wa < 100 then
      a := format('%.2d', [wa])
    else
      a := IntToStr(wa);
    result := m + '/' + d + '/' + a;
  end;

  { arredonda n�mero para N casas decimais }
  function Arredonda(v: extended; n: integer): extended;
  var
    s: string;
  begin
    try
      s := FloatToStrF(v, ffFixed, 18, n);
      try
        Result := StrToFloat(s);
      except
        on exception do
         begin
           ShowMessage(PChar(Format('Falha ao converter %s em n�mero', [s])));
           Result := v;
         end;
      end;
    except
      on exception do
       begin
         ShowMessage(PChar(Format('Falha ao arredondar %f em %d casas', [v, n])));
         Result := v;
       end;
    end;
  end;

  { retirada de parenteses }
  function RemovePar(s: string): string;
  var
    i, j: word;
    o: string;
  begin
    j := 0;
    for i := 1 to length(s) do
     begin
       if s[i] = '(' then
         inc(j);
       if (j = 0) then
         o := o + s[i];
       if s[i] = ')' then
         dec(j);
     end;
    Result := o;
  end;

  { leio o diret�rio de instala��o da aplica��o }
  function GetAppDir: string;
  var
    diretorio: string;
  begin
    diretorio := ExtractFilePath(ParamStr(0));
    if diretorio > '' then
     if diretorio[length(diretorio)] = '\' then
       Result := copy(diretorio, 1, length(diretorio) - 1)
     else
       Result := diretorio
    else Result := '';
  end;

  { leio o diret�rio de armazenamento de cache }
  function GetCacheDir: string;
  var
    diretorio: string;
  begin
    Result := '';

    { diret�rio do sistema }
    diretorio := GetTempDir;

    { barra no final }
    if diretorio[length(diretorio)] <> '\' then
      diretorio := diretorio + '\';

    { subdiretorio cache }
    diretorio := diretorio + 'cache';

    { o diret�rio existe? }
    if not DirectoryExists(diretorio) then
     begin
       if CreateDir(diretorio) then
         Result := diretorio;
     end else Result := diretorio;
  end;

  { leio o diret�rio tempor�rio do windows }
  function GetTempDir: string;
  var
    Buffer: array[0..MAX_PATH] of char;
    diretorio: string;
  begin
    GetTempPath(SizeOf(Buffer) - 1, Buffer);
    diretorio := StrPas(Buffer);
    if diretorio > '' then
     if diretorio[length(diretorio)] = '\' then
       Result := copy(diretorio, 1, length(diretorio) - 1)
     else
       Result := diretorio
    else Result := '';
  end;

  { nome completo -- incluindo path -- do arquivo ini da aplica��o }
  function GetINIFileName: string;
  var
    arquivo: string;
  begin
    arquivo := ExtractFileName(ParamStr(0));
    arquivo := ChangeFileExt(arquivo, '.ini');
    Result  := GetAppDir + '\' + arquivo;
  end;

  { centraliza o formul�rio na tela }
  procedure CentralizaForm(Form: TForm);
  var
    R: TRect;
  begin
    if not SystemParametersInfo(SPI_GETWORKAREA, 0, @R, 0) then
      R := Rect(0, 0, Screen.Width, Screen.Height);
    with Form do
     begin
       Form.Left := (R.Right - R.Left - Width) div 2;
       Form.Top := (R.Bottom - R.Top - Height - TASKBAR_HEIGHT) div 2;
     end;
  end;

  { salva a posi��o e o estado do formul�rio }
  procedure SaveFormPos(usuario: string; form: TForm);
  var
    MeuIni: TIniFile;
    secao: string;
  begin
    MeuIni := TIniFile.Create(GetINIFileName);
    secao  := lowercase(usuario + '.' + form.Name + '.pos');
    if form.WindowState = wsMaximized then
     begin
       MeuIni.WriteInteger(secao, 'state', 1);
     end else
    if form.WindowState = wsNormal then
     begin
       MeuIni.WriteInteger(secao, 'state',            0);
       MeuIni.WriteInteger(secao, 'top',       form.Top);
       MeuIni.WriteInteger(secao, 'left',     form.Left);
       MeuIni.WriteInteger(secao, 'height', form.Height);
       MeuIni.WriteInteger(secao, 'width',   form.Width);
     end;
    MeuIni.Free;
  end;

  { recupera a posi��o e o estado do formul�rio }
  procedure LoadFormPos(usuario: string; var form: TForm);
  var
    MeuIni: TIniFile;
    secao: string;
    fWindowState,
    fTop,
    fLeft,
    fHeight,
    fWidth: integer;
  begin
    MeuIni := TIniFile.Create(GetINIFileName);
    secao  := lowercase(usuario + '.' + form.Name + '.pos');
    if MeuIni.SectionExists(secao) then
     begin
       fWindowState := MeuIni.ReadInteger(secao, 'state',  -1);
       fTop         := MeuIni.ReadInteger(secao, 'top',    -1);
       fLeft        := MeuIni.ReadInteger(secao, 'left',   -1);
       fHeight      := MeuIni.ReadInteger(secao, 'height', -1);
       fWidth       := MeuIni.ReadInteger(secao, 'width',  -1);
       if fWindowState = 0 then
        begin
          Form.WindowState := wsNormal;
          Form.Top         := fTop;
          Form.Left        := fLeft;
          Form.Height      := fHeight;
          Form.Width       := fWidth;
          CentralizaForm(Form);
        end else Form.Perform(WM_SIZE, SIZE_MAXIMIZED, 0);
     end else CentralizaForm(Form);
    MeuIni.Free;
  end;

  { salvo as preferencias dos formul�rios de cadastro }
  procedure SavePreferences(usuario: string; Name: string; SelSet,
    SelSet2: integer);
  var
    MeuIni: TIniFile;
    secao: string;
  begin
    MeuIni := TIniFile.Create(GetINIFileName);
    try
      secao  := lowercase(usuario + '.' + Name + '.prefs');
      MeuIni.WriteInteger (secao, 'selset',     SelSet);
      MeuIni.WriteInteger (secao, 'selset2',    SelSet2);
    except
      try
        MeuIni.Free;
      except
      end
    end
  end;

  { recupero as preferencias dos formul�rios de cadastro }
  procedure LoadPreferences(usuario: string; Name: string; var SelSet,
    SelSet2: integer);
  var
    MeuIni: TIniFile;
    secao: string;
  begin
    MeuIni := TIniFile.Create(GetINIFileName);
    try
      secao      := lowercase(usuario + '.' + Name + '.prefs');
      SelSet     := MeuIni.ReadInteger(secao, 'selset',  -1);
      SelSet2    := MeuIni.ReadInteger(secao, 'selset2', -1);
    except
      try
        MeuIni.Free;
      except
      end
    end
  end;

  { leio o nome do computador em uso }
  function GetMachine: string;
  var
    Name : PChar;
    Size : DWord;
  begin
    Size := MAX_COMPUTERNAME_LENGTH + 1;
    GetMem(Name, Size);
    try
      GetComputerName(Name, Size);
      Result := Trim(StrPas(Name));
    finally
      FreeMem(Name, Size);
    end;
  end;

  { tratamento do caracter de coringa das buscas }
  function Coringa(s: string): string;
  begin
    while Pos('*', s) > 0 do
      s[Pos('*', s)] := '%';
    if s[length(s)] <> '%' then s := s + '%';
    result := s;
  end;

  { apago todos os aquivos e diret�rios dentro de um diret�rio }
  procedure RecursiveDeletion(dir: string);
  var
    SR: TSearchRec;
    Found: integer;
  begin
    Found := FindFirst(Dir + '*', faAnyFile, SR);
    try
      while Found = 0 do
       begin
         if (SR.Name <> '.') and (SR.Name <> '..') then
           case (SR.Attr and faDirectory) > 0 of
             true: RecursiveDeletion (Dir + '' + SR.Name);
             false:
              begin
                SetFileAttributes(PChar(Dir + '' + SR.Name), FILE_ATTRIBUTE_NORMAL);
                DeleteFile(PChar(Dir + '' + SR.Name));
              end {false};
           end {case};
         Found := FindNext(SR);
       end {while};
      RemoveDirectory(PChar(Dir));
    finally
      SysUtils.FindClose(SR);
    end {try};
  end;

  { calculo do digito no padr�o Ean13 }
  function Ean13(codi: string): string;
  var
    soma: word;
    i: byte;
  begin
    soma := 0;
    for i := 1 to 12 do
     if not odd(i) then soma := soma + (ord(codi[i]) - 48) * 3 else
       soma := soma + (ord(codi[i]) - 48);
    soma := 10 - (soma mod 10);
    if soma = 10 then soma := 0;
    codi[13] := chr(soma + 48);
    Result := codi;
  end;

  { testa se o CNPJ � v�lido }
  function TestaCnpj(xCNPJ: String): boolean;
  var
    d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
    Check : String;
  begin
    d1 := 0;
    d4 := 0;
    xx := 1;
    for nCount := 1 to Length( xCNPJ )-2 do
     begin
       if Pos( Copy( xCNPJ, nCount, 1 ), '/-.' ) = 0 then
        begin
          if xx < 5 then
           begin
             fator := 6 - xx;
           end else
           begin
             fator := 14 - xx;
           end;
          d1 := d1 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
          if xx < 6 then
           begin
             fator := 7 - xx;
           end else
           begin
             fator := 15 - xx;
           end;
          d4 := d4 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
          xx := xx+1;
        end;
     end;
    resto := (d1 mod 11);
    if resto < 2 then
     begin
       digito1 := 0;
     end else
     begin
       digito1 := 11 - resto;
     end;
    d4 := d4 + 2 * digito1;
    resto := (d4 mod 11);
    if resto < 2 then
     begin
       digito2 := 0;
     end else
     begin
       digito2 := 11 - resto;
     end;
    Check := IntToStr(Digito1) + IntToStr(Digito2);
    if Check <> copy(xCNPJ,succ(length(xCNPJ)-2),2) then
     begin
       Result := False;
     end else
     begin
       Result := True;
     end;
  end;

  { testa se o CPF � v�lido }
  function TestaCPF(numCPF: String): boolean;
  var
    cpf: string;
    x,
    total,
    dg1,
    dg2: integer;
    ret: boolean;
  begin
    ret:=True;
    for x:=1 to Length(numCPF) do
      if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
        ret:=False;
    if ret then
     begin
       ret:=True;
       cpf:='';
       for x:=1 to Length(numCPF) do
         if numCPF[x] in ['0'..'9'] then
           cpf:=cpf + numCPF[x];
       if Length(cpf) <> 11 then
         ret:=False;
       if ret then
         begin
           //1� d�gito
           total:=0;
           for x:=1 to 9 do
             total:=total + (StrToInt(cpf[x]) * x);
           dg1 := total mod 11;
           if dg1 = 10 then
             dg1:=0;
           //2� d�gito
           total := 0;
           for x:=1 to 8 do
             total:=total + (StrToInt(cpf[x + 1]) * (x));
           total:=total + (dg1 * 9);
           dg2:=total mod 11;
           if dg2 = 10 then
             dg2:=0;
           //Valida��o final
           ret:=False;
           if dg1 = StrToInt(cpf[10]) then
             if dg2 = StrToInt(cpf[11]) then
               ret:=True;
         end else
         begin
           //Se n�o informado deixa passar
           if cpf = '' then
             ret:=True;
         end;
     end;
    TestaCPF:=ret;
  end;

  { testa a exist�ncia de um campo num ClientDataSet }
  function CampoExiste(cds: TUniQuery; c: string): boolean;
  var
    i: word;
  begin
    result := false;
    for i := 0 to cds.FieldCount - 1 do
     if cds.Fields[i].FieldName = c then
      begin
        result := true;
        break;
      end;
  end;

  { retorna a posi��o de um campo num ClientDataSet }
  function CampoID(cds: TUniQuery; c: string): integer;
  var
    i: word;
  begin
    result := -1;
    for i := 0 to cds.FieldCount - 1 do
     if cds.Fields[i].FieldName = c then
      begin
        result := i;
        break;
      end;
  end;

  { executa uma tarefa e aguarda o final }
  function ExecAndWait(const FileName, Params: ShortString; const WinState: Word): boolean; export;
  var
    StartInfo: TStartupInfo;
    ProcInfo: TProcessInformation;
    CmdLine: ShortString;
  begin
    { Coloca o nome do arquivo entre aspas, devido a possibilidade de existir espa�os nos nomes longos do Windows 9x }
    CmdLine := '"' + Filename + '" ' + Params;
    FillChar(StartInfo, SizeOf(StartInfo), #0);
    with StartInfo do
     begin
       cb := SizeOf(StartInfo);
       dwFlags := STARTF_USESHOWWINDOW;
       wShowWindow := WinState;
     end;
    Result := CreateProcess(nil, PChar( String( CmdLine ) ), nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, PChar(ExtractFilePath(Filename)),StartInfo,ProcInfo);
    { Aguarda o encerramento do programa executado }
    if Result then
     begin
       WaitForSingleObject(ProcInfo.hProcess, INFINITE);
       { Libera os Handles utilizados }
       CloseHandle(ProcInfo.hProcess);
       CloseHandle(ProcInfo.hThread);
     end;
  end;

  // para texto a esquerda
  function AlinhaE(Texto : String; Tamanho : Integer; Preenc: Char = ' ') : String;
  begin
    Texto := Trim(Texto);
    while length(Texto) < Tamanho do
      Texto := Texto + Preenc;
    Result := copy(Texto,1,Tamanho);
  end;

  //para texto centralizado
  function AlinhaC(Texto : String; Tamanho : integer; Preenc: Char = ' ') : String;
  var
    metade: integer;
  begin
    Texto := Trim(Texto);
    metade := ((Tamanho-Length(Texto)) div 2);
    while Length(Texto)+metade < Tamanho do
      Texto := Preenc + Texto;
    Result := copy(Texto,1,Tamanho);
  end;

  // para texto a direita
  function AlinhaD(Texto : String; Tamanho : Integer; Preenc: Char = ' ') : String;
  begin
    Texto := Trim(Texto);
    while length(Texto) < Tamanho do
      Texto := Preenc + Texto;
    Result := copy(Texto,1,Tamanho);
  end;

  Function Formata_DOCTO(Texto: String): String;
  Begin

    // Limpar simbolos padr�es de documentos
    Texto:=DeletaCaract(Texto,'-');
    Texto:=DeletaCaract(Texto,'/');
    Texto:=DeletaCaract(Texto,'.');

    // 14 digitos significa CNPJ
    If length(Texto) = 14 then
     begin
       result :=
         copy(Texto, 1, 2) + '.' +
         copy(Texto, 3, 3) + '.' +
         copy(Texto, 6, 3) + '/' +
         copy(Texto, 9, 4) + '-' +
         copy(Texto, 13, 2);
     end;

    // 11 digitos significa CPF
    If length(Texto) = 11 then
     begin
       result :=
         copy(Texto, 1,  3) + '.' +
         copy(Texto, 4,  3) + '.' +
         copy(Texto, 7,  3) + '-' +
         copy(Texto, 10, 2);
     end;

    // 12 digitos significa INSC COM 12 DIGITOS
    If length(Texto) = 12 then
     begin
       result :=
         copy(Texto, 1,  3) + '.' +
         copy(Texto, 4,  3) + '.' +
         copy(Texto, 7,  3) + '.' +
         copy(Texto, 10, 3);
     end;

    // 13 digitos significa INSC COM 13 DIGITOS
    If length(Texto) = 13 then
     begin
       result :=
         copy(Texto, 1,  3) + '.' +
         copy(Texto, 4,  3) + '.' +
         copy(Texto, 7,  3) + '.' +
         copy(Texto, 10, 4);
     end;

    // 07 digitos significa INSC DE PRODUTOR RURAL
    If length(Texto) = 7 then
     begin
       result :=
         copy(Texto, 1,  3) + '/' +
         copy(Texto, 4,  4);
     end;

   End;

  { excluir caractere especifico }
  function DeletaCaract(texto, excluir : string ) : string;
  begin
    while Pos(excluir, texto) > 0 do
      Delete(texto, Pos(excluir, texto), 1);
    result := texto;
  end;

function Extenso(XValor: Real): String;
var
  Centavo,Real,Mil,Milhoes,E,T,XTx,XVal1,XVal2,Msg:String;
  Cent1,XConta:Integer;
const
  UN: array[1..19] of string = ('um ', 'dois ', 'tres ', 'quatro ', 'cinco ', 'seis ', 'sete ', 'oito ', 'nove ','dez ','onze ', 'doze ', 'treze ', 'quatorze ', 'quinze ', 'dezesseis ', 'dezessete ', 'dezoito ', 'dezenove ');
  DZ: array[2..9] of string = ('vinte ', 'trinta ', 'quarenta ', 'cinquenta ', 'sessenta ', 'setenta ', 'oitenta ', 'noventa ');
  CT: array[1..9] of String = ('cento ', 'duzentos ', 'trezentos ', 'quatrocentos ', 'quinhentos ', 'seiscentos ', 'setecentos ', 'oitocentos ', 'novecentos ');
begin
  Msg:='';
  Result:='';
  Str(XValor:2:2,T);
  XConta:=Length(T)-1;
  XValor:=StrToFloat(IntToStr(Trunc(XValor))+','+Copy(T,XConta,2));
  XTx:=FormatFloat('000000000.00',XValor);
  if (StrToFloat(XTx)>999999999.99) or (XTx='') then
   begin
     Msg:=Msg+'VALOR SUPERIOR A R$ 999.999.999,99 MILH�ES,';
     Msg:=Msg+'OU BASE PARA DESCRI��O � NULO.';
     Msg:=Msg+'EXTENSO IMPOSS�VEL DE SER GERADO.';
     Msg:=Msg+'FAVOR PROCEDER A CORRE��O.';
     ShowMessage(Msg);
     Exit;
   end;
  // Escrevendo Milhoes (casa da centena)
   XVal1:=Copy(XTx,1,1);
   if (XVal1='1') and (Copy(XTx,1,3)='100') then Result:=Result+'cem '
   else if StrToFloat(XVal1)>0 then Result:=Result+CT[StrToInt(Copy(XTx,1,1))];
   E:='e ';
   if Copy(XTx,1,1)='0' then E:='';

  // Escrevendo Milhoes (casa da dezena), se for dezena redonda
   XVal1:=Copy(XTx,2,1);
   if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,2,1))];

  // Escrevendo Milhoes (casa da dezena) se for casa dos dez
   XVal2:=Copy(XTx,2,2);
   if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,2,2))];
   E:='e ';
   if Copy(XTx,1,2)='00' then E:='';

  // Escrevendo Milhoes (casa da dezena) se for casa da dezena+unidades
   XVal2:=Copy(XTx,2,1);
   XVal1:=Copy(XTx,3,1);
   if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,3,1))];
   MILHOES:='milh�es ';
   if Copy(XTx,1,3)='001' then MILHOES:='milh�o ';
   if Copy(XTx,1,3)='000' then MILHOES:='';

  // Escrevendo milh�es
   if (StrToFloat(Copy(XTx,4,6))>0) and (Copy(XTx,1,3)<>'000') then Result:=Result+MILHOES+', '
   else Result:=Result+MILHOES;

  // Escrevendo Mil (casa da centena)
   XVal1:=Copy(XTx,4,1);
   if (XVal1='1') and (Copy(XTx,4,3)='100') then Result:=Result+'cem '
   else if StrToFloat(XVal1)>0 then Result:=Result+CT[StrToInt(Copy(XTx,4,1))];
   E:='e ';
   if Copy(XTx,4,1)='0' then E:='';

  // Escrevendo Mil (casa da dezena), se for dezena redonda
   XVal1:=Copy(XTx,5,1);
   if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,5,1))];

  // Escrevendo Mil (casa da dezena) se for casa dos dez
   XVal2:=Copy(XTx,5,2);
   if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,5,2))];
   E:='e ';
   if Copy(XTx,4,2)='00' then E:='';

  // Escrevendo Mil (casa da dezena) se for casa da dezena+unidades
   XVal2:=Copy(XTx,5,1);
   XVal1:=Copy(XTx,6,1);
   if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,6,1))];
   MIL:='mil ';
   if Copy(XTx,4,3)='000' then MIL:='';

  // Escrevendo Reais
   if (StrToFloat(Copy(XTx,7,3))>0) and (Copy(XTx,4,3)<>'000') then Result:=Result+MIL+', '
   else Result:=Result+MIL;

  // Escrevendo Reais (casa da centena)
   XVal1:=Copy(XTx,7,1);
   if (XVal1='1') and (Copy(XTx,7,3)='100') then Result:=Result+'cem '
   else if StrToFloat(XVal1)>0 then Result:=Result+CT[StrToInt(Copy(XTx,7,1))];
   E:='e ';
   if Copy(XTx,7,1)='0' then E:='';

  // Escrevendo Reais (casa da dezena), se for dezena redonda
   XVal1:=Copy(XTx,8,1);
   if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,8,1))];

  // Escrevendo Reais (casa da dezena) se for casa dos dez
   XVal2:=Copy(XTx,8,2);
   if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,8,2))];
   E:='e ';
   if (Copy(XTx,8,1)='0') or (Copy(XTx,8,2)='00') then E:='';

  // Escrevendo Reais (casa da dezena) se for casa da dezena+unidades
   XVal2:=Copy(XTx,8,1);
   XVal1:=Copy(XTx,9,1);
   if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,9,1))];
   Real:='reais ';
   if Copy(XTx,4,6)='000000' then Real:='de reais ';
   if (Copy(XTx,7,3)='000') and (Int(StrToFloat(XTx))=0) then Real:='';
   if Copy(XTx,7,3)='001' then Real:='real ';
   if Copy(XTx,4,3)='001' then Real:='reais ';

  // Escrevendo Reais
   Result:=Result+Real;
   E:='e ';
   if int(StrToFloat(XTx))=0 then E:='';
   Cent1:=0;
   if Copy(XTx,11,2)='00' then Cent1:=1;

  // Escrevendo Centavos (casa dezena) se for dezena redonda
   XVal1:=Copy(XTx,11,1);
   if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,11,1))];

  // Escrevendo Centavos (casa dezena) se for casa dos dez
   XVal2:=Copy(XTx,11,2);
   if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,11,2))];

  // Escrevendo Centavos (casa da dezena) se for casa da dezena+unidades
   XVal2:=Copy(XTx,11,1);
   XVal1:=Copy(XTx,12,1);
   if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,12,1))];
   Centavo:='centavos ';
   if Cent1=1 then Centavo:='';
   if Copy(XTx,11,2)='01' then Centavo:='centavo ';
   Result:=Result+Centavo;
end;

procedure TrocaVirg_Ponto(Var Texto:String);
const
  ComAcento = ',';
  SemAcento : String = '.';
var
  intX : Integer;
begin
  for intX := 1 to Length(Texto) do
    if Pos(Texto[intX],ComAcento) <> 0 Then
      Texto[intX] := SemAcento[Pos(Texto[intX],ComAcento)];
end;

function RemoveAcentos(Str: string): string;
const
  ComAcento = '���������������������������ܺ�';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU  ';
var
  x : Integer;
begin
  for x := 1 to Length(Str) do
    if Pos(Str[x],ComAcento) <> 0 then
       Str[x] := SemAcento[Pos(Str[x],ComAcento)];
  Result := Str;
end;

end.
