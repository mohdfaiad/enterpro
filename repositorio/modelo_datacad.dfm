inherited dataModeloCad: TdataModeloCad
  OldCreateOrder = True
  inherited UniConnection: TUniConnection
    Left = 48
  end
  object qrySel: TUniQuery [1]
    Connection = UniConnection
    Left = 152
    Top = 16
  end
  object qryCad: TUniQuery [2]
    Connection = UniConnection
    Left = 248
    Top = 16
  end
  object dsrSel: TUniDataSource [3]
    AutoEdit = False
    DataSet = qrySel
    Left = 152
    Top = 72
  end
  object dsrCad: TUniDataSource [4]
    DataSet = qryCad
    Left = 248
    Top = 72
  end
  inherited InterBaseUniProvider: TInterBaseUniProvider
    Left = 48
    Top = 72
  end
end
