object dataModelo: TdataModelo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 288
  Width = 483
  object UniConnection: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\testes\fbdata\INFOCELL.FDB'
    SpecificOptions.Strings = (
      'InterBase.ClientLibrary=fbclient.dll')
    Options.DisconnectedMode = True
    Options.LocalFailover = True
    Pooling = True
    Username = 'REMOTO'
    Password = 'r3m0t0'
    Server = 'localhost'
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object InterBaseUniProvider: TInterBaseUniProvider
    Left = 40
    Top = 64
  end
end
