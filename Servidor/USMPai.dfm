object SMPai: TSMPai
  OldCreateOrder = False
  Height = 209
  Width = 313
  object SQL_Cadastro: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SMConexao.CON_FB
    Left = 48
    Top = 48
  end
  object DSP_Cadastro: TDataSetProvider
    DataSet = SQL_Cadastro
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 48
    Top = 104
  end
  object SQL_Consulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SMConexao.CON_FB
    Left = 160
    Top = 48
  end
  object DSP_Consulta: TDataSetProvider
    DataSet = SQL_Consulta
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 104
  end
end
