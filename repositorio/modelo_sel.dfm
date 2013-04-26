inherited formModeloSel: TformModeloSel
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'formModeloSel'
  ClientHeight = 524
  ClientWidth = 670
  Position = poScreenCenter
  ExplicitWidth = 686
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  object dxBevel1: TdxBevel [0]
    Left = 0
    Top = 179
    Width = 670
    Height = 5
    Align = alTop
    Shape = dxbsLineBottom
    Style = dxbsRaised
    ExplicitLeft = 8
    ExplicitTop = 96
    ExplicitWidth = 353
  end
  object dxRibbonSel: TdxRibbon [1]
    Left = 0
    Top = 0
    Width = 670
    Height = 124
    BarManager = dxBarManSel
    ColorSchemeName = 'DevExpressStyle'
    Style = rs2010
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbonSelTabCadastro: TdxRibbonTab
      Active = True
      Caption = 'Cadastro'
      Groups = <
        item
          Caption = 'Opera'#231#245'es'
          ToolbarName = 'dxBarManSelBarOperacoes'
        end
        item
          ToolbarName = 'dxBarManSelBarSair'
        end>
      Index = 0
    end
    object dxRibbonSelTabExportar: TdxRibbonTab
      Caption = 'Exportar'
      Groups = <
        item
          ToolbarName = 'dxBarManSelBarSelecionar'
        end
        item
          ToolbarName = 'dxBarManSelBarExportar'
        end
        item
          ToolbarName = 'dxBarManSelBarSair'
        end>
      Index = 1
    end
    object dxRibbonSelTabAvancado: TdxRibbonTab
      Caption = 'Avan'#231'ado'
      Groups = <
        item
          ToolbarName = 'dxBarManSelBarAvancado'
        end
        item
          ToolbarName = 'dxBarManSelBarSair'
        end>
      Index = 2
    end
  end
  object StatusBar: TdxRibbonStatusBar [2]
    Left = 0
    Top = 501
    Width = 670
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Width = 80
      end>
    Ribbon = dxRibbonSel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pnlSel: TPanel [3]
    Left = 0
    Top = 124
    Width = 670
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lbSel1: TLabel
      Left = 66
      Top = 8
      Width = 83
      Height = 13
      Caption = 'Selecionar por'
    end
    object lbSel2: TLabel
      Left = 226
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Contendo'
    end
    object cmbSel: TcxComboBox
      Left = 65
      Top = 22
      Properties.OnChange = cmbSelPropertiesChange
      TabOrder = 0
      Width = 145
    end
    object edtSel: TcxMaskEdit
      Left = 225
      Top = 22
      TabOrder = 1
      OnKeyDown = edtSelKeyDown
      Width = 281
    end
    object imgSelFiltro: TcxImage
      Left = 2
      Top = 2
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EBD00000EBD0147FB90AD00
        00089F494441546843ED99676CD55518C62D0E2C46051170058D46D42098F8C1
        A831CE0F24C6113F18F8E0071513129905044A8B6C2820924290B0F7DE7B94D5
        3634CCB2F7DE658FD296F6168ECFEFD87373B8BDD77B3BAC9A709337FFDEFFFD
        8FE779DEE77DCFE803C69807FECFF1BF068FF0F709FCDBF6BB9F81FB19A86017
        B4165AB16245DC92254BFE58B06041AEC2FC072377F1E2C5E3162D5A543D34E3
        96C0C2850B9BAE5CB9D29C3B77CEDCB871C3DCBC79D3C6AD5BB74C5E5E9E2928
        2830858585A6A8A8C81417179B3B77EE98BB77EFEAD6BF3E7CE77C2010B0D710
        5C4FDCBE7DDB06CFC8CFCFB7C13389DCDCDC60B8777204831FE04A4B4B33E3C7
        8F6F3174E8D06A3E094B60CE9C39EF8961D1CE9D3BCD8103076C1C3A74C81C3D
        7AD49C3A75CA12BB74E992B97EFDBA7D31C000EC48400090FC066907E2DAB56B
        E6CA952BE6E2C58B262727C73EE7CC9933E6F4E9D3E6E4C993E6F8F1E3F61D47
        8E1C31870F1FB6EF3C78F06010C3FEFDFBCDBE7DFB0CB8E49040AF5EBDBEEED1
        A3C743A5084C9A34296ED8B061CD4422E093E0A1C78E1DB32F04006000878AA8
        0D703E1081542881AB57AF9ACB972F97228028274E9CB0CFF6098403BF63C70E
        235CC503070E4C6CD9B2659D4E9D3A3D5C8A0027FAF4E9F388E2FB7024500AE5
        5012555119C0CE4A10C036107319205B102073DC77FEFC7973F6ECD988EAFF1D
        F8FEFDFBF714F8068A271212124A5B0802BD7BF7AE2676F122F1834F82079362
        14C302284A16F0B46F23FE8E44E0C2850B41FBF8EA3BEBF00E4700CB1025CA07
        FAF6EDDB43C0DF50D46AD3A6CD3DEA979A4AC85F96846EFA311C095E8E9550D6
        CF822B644885CB80F37FA8F7437D1F0A5E62FEEAC0B76EDDBA14F8B073214742
        379722815F018125E8127E16FC42264358C81530F6C1824E7DE77BBF687DF06A
        97146C37817F1DE523818F3899FB3B12D40356021C6AE37D6AC02F6408F81D88
        EB21EE0AD7B70E1DCF81DFBE7DBB514B077CB203DFAA55AB7BBA4ED87120DC74
        20929D500D20D80295C982EB4690A1133902D48BB30FEABBB68975423DEF814F
        8A157CD4E974CF9E3D6D4DF4EBD7EF1E3B0100407418062397050AD927C0EFCE
        3EBEFAA1E0B3B3B39DF25D05FE356C134D79277AD4D9A84F026FBA71021BE06B
        0A9A418C2C10742297016AC5D907F5B9870CFAB601BCA62E45B28D035F3356F0
        5133E0587A249AFB2428462C42165C4BC55210801804E8FDA8CFB5642E027806
        29942F13F8980970A123A141E51E12288BD7C90285CCD111801CC5CB35CEF7AE
        609DF27A6E97F2822F13018F440D9F047E06246D150B510F10A04B611FD4C73A
        5CE7C06FDBB6CDDA46E03B958CB065563EE61A08ED50259980C44FB43C6A025F
        53ACA88F95B014054C8D609D50F0F3E7CF2FD4737EA928F8326720A4266AA4A4
        A4044960117C4F162080FF511F72BEF221E09F2C4BC1866BF751BB50B89B7C3B
        F924F03A596080C33E58C781DFBA75AB99376F1ECA772851BEC2E0CB9D013F13
        5DBA74A93160C080169A3BD90EE3A6DC90711D67EFDEBD80BFA3C1B152C15798
        000F484D4DAD3678F0E06758863A024C2350DF2D8EF6ECD963B468CA97F28DC2
        0D522AFC38C50B8A7795C1CF34967CAC01B1A11A438D480E287711877BE0AC59
        B36AC548E0C5F6EDDB07D7B55A53C40B74133D3351D1374CF4D6EFCDD5105E8E
        44A4DC35E03F50DDA8A68A33960C3CDFB973673B2D16F8863A26015A453F44AD
        75B56C7874C28409B963C68C29D4F1A6BE1FD17891A69AFA5D1969265B865FD4
        474B53B4DFCB4A40CBD10FF4CC3E523765E3C68D19E3C68D2B528D9875EBD619
        7D375BB66CB1C7B56BD7523B46BF176EDEBC79BDEC95206B3EE6E3A9920C50C4
        2535F0BCEAE32DC04BD1C102776AE6CC99262B2BCB828E14FCCE75B2E909D545
        EB5DBB76059795554A60F8F0E1AF4AFDEE280F786CB769D3A698836C404223FF
        67955AC458888747EA422E031A95BFD340D77FC3860D593366CCB0CAC712EBD7
        AFB7F6D27D66FAF4E9104E93A5E22BA58DF2905809C83E295A040D93A70300CA
        CCCC8C1A6CB8019CC9DFF2E5CB6D5D5013DA33FAA84A092C5DBAB440FE1D2A9F
        AF55DB35A81A2D004C86985FF161DEC539B2979191915AA504A4F86D08285BC7
        19B5D7AC596343FBB266D9B26576EBD09DE328C2363B6CA0B90FB35EEED59A84
        9DBAED9546408515B50604A61002DADFCC43C555AB5601C260116A44C4ACBA9C
        072416636AEE3E4CD7B99E6B20ACDDC4EB554A203D3DDD6660F4E8D1C50E04A0
        5943F361F153D265CCEAD5ABEDCE9FFBB0BE00BC4F40835D41951290B296800A
        300F0B1010713B1A80C522648419ADFB303527234C551C09888BC0D92A252075
        F3452055404E6A50B396A198D50E4B6DD53BF06407F073E7CEB5D7BBE03E6572
        79A511D08014B50666CF9E9DAF555B67014E9F3C79B2B50B4147A145867ED8DD
        003C60DDB5EE28FF9BB163C726541A01BDA4262A3190B1946465E64FA729525D
        93A77EFE897E1BAEF40700462644CC4C9D3AD5ECDEBD3BC8010B6117062DAEF1
        83FB468D1A952F2BD62B3701BD2C4ECA55573CAE784AF18CE62A8799AF4C9B36
        CD02F2837323468CC8D4C2A7B1969AEDD5FFB3D58DECFCC605AAB27A033C2D94
        FBFDDFDDDFDC27FB0C047CB909C832D5B5D55D5B9BAECF2AEA2B5ED2BEFD1B6D
        DBB6FD48F1A5E25B455345B392E3375AC87CA0F56FA3418306BD292B0D10A00B
        13274EB4162220C977028BB9F3FE51536CD4DF20F51FAD100177B37FD444EDC1
        EEDDBB3F919C9C5C4F513F2929A97E6262E2731D3A74A8AB60DB24BE5DBB7676
        A3561B00B5B4F44C16891C813153A64C0966CCFFDB6511425C3772E4C88D52BF
        8EFFDE4A998DFA0F94D271E12294B4B2F8B0E6335F697CC8A22654940685B192
        0BBE735EAA1748A0DF94BDA0F2959E81705989744EFFEF8A1B3264C8A38A9A02
        D64036F959CAAF948D72A47040802D68ADB777EBFF1423BB75EBF65ED7AE5D9F
        56461FEFD8B1E323FF6806A2115176E2157565A91755470D54238D5543EFE8DC
        87FADE44BBE15F68DDFCB9BE37517CAA785FD7BEAD6343C52B8A1714B5157669
        FA279BC27FA23D79D4490000000049454E44AE426082}
      Properties.GraphicClassName = 'TdxPNGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.ShowFocusRect = False
      Style.BorderStyle = ebsNone
      Style.TransparentBorder = True
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      TabOrder = 2
      Transparent = True
      Height = 50
      Width = 50
    end
  end
  object gridSel: TcxGrid [4]
    Left = 0
    Top = 184
    Width = 670
    Height = 317
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = cxcbsNone
    TabOrder = 7
    Visible = False
    object gridSelDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnSelectionChanged = gridSelDBTableView1SelectionChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.MultiSelect = True
      Styles.Background = formPrincipal.FundoGrade
      Styles.Selection = formPrincipal.ColunaMarcada
      Styles.GroupByBox = formPrincipal.GrupoCaixa
      Styles.Header = formPrincipal.HeaderNegrito
    end
    object gridSelLevel1: TcxGridLevel
      GridView = gridSelDBTableView1
    end
  end
  inherited ActionAtalho: TActionList
    Left = 504
    Top = 224
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 1
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Tag = 1
      Caption = 'Editar'
      ImageIndex = 362
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      Tag = 2
      Caption = 'Excluir'
      ImageIndex = 113
      OnExecute = actExcluirExecute
    end
    object actImprimir: TAction
      Tag = 2
      Caption = 'Imprimir'
      ImageIndex = 735
      OnExecute = actImprimirExecute
    end
    object actExcel: TAction
      Tag = 2
      Caption = 'Excel'
      ImageIndex = 351
      OnExecute = actExcelExecute
    end
    object actCopiar: TAction
      Tag = 2
      Caption = 'Copiar'
      ImageIndex = 215
      OnExecute = actCopiarExecute
    end
    object actMarcar: TAction
      Caption = 'Marcar'
      ImageIndex = 844
      OnExecute = actMarcarExecute
    end
    object actDesmarcar: TAction
      Tag = 2
      Caption = 'Desmarcar'
      ImageIndex = 846
      OnExecute = actDesmarcarExecute
    end
    object actInverter: TAction
      Tag = 2
      Caption = 'Inverter'
      ImageIndex = 845
    end
    object actTransferir: TAction
      Tag = 2
      Caption = 'Transferir'
      ImageIndex = 752
      OnExecute = actTransferirExecute
    end
    object actFechar: TAction
      Caption = 'Fechar'
      ImageIndex = 263
      OnExecute = actFecharExecute
    end
    object actGrafico: TAction
      Tag = 3
      Caption = 'Gr'#225'fico'
      ImageIndex = 266
      OnExecute = actGraficoExecute
    end
    object actAuditoria: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Auditoria'
      ImageIndex = 103
      OnExecute = actAuditoriaExecute
    end
    object actLixeira: TAction
      Caption = 'Lixeira'
      ImageIndex = 115
      OnExecute = actLixeiraExecute
    end
    object actAgrupar: TAction
      Caption = 'Agrupar'
      ImageIndex = 978
      OnExecute = actAgruparExecute
    end
    object actEmail: TAction
      Caption = 'E-mail'
      ImageIndex = 591
      OnExecute = actEmailExecute
    end
  end
  object dxBarManSel: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = formPrincipal.cxImageNormal
    ImageOptions.LargeImages = formPrincipal.cxImageBigNormal
    ImageOptions.UseLargeImagesForLargeIcons = True
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 504
    Top = 280
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManSelBarOperacoes: TdxBar
      Caption = 'Operacoes'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 704
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManSelBarSelecionar: TdxBar
      Caption = 'Selecionar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 704
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManSelBarExportar: TdxBar
      Caption = 'Exportar'
      CaptionButtons = <>
      DockedLeft = 196
      DockedTop = 0
      FloatLeft = 704
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManSelBarSair: TdxBar
      Caption = 'Sair'
      CaptionButtons = <>
      DockedLeft = 159
      DockedTop = 0
      FloatLeft = 704
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManSelBarAvancado: TdxBar
      Caption = 'Op'#231#245'es'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 704
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actNovo
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actEditar
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actExcluir
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actMarcar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actDesmarcar
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actInverter
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actImprimir
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actExcel
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actCopiar
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actTransferir
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actFechar
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actAgrupar
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actAuditoria
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actLixeira
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actGrafico
      Category = 0
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = actEmail
      Category = 0
    end
  end
  object tmrRelogioSel: TTimer
    OnTimer = tmrRelogioSelTimer
    Left = 504
    Top = 336
  end
end
