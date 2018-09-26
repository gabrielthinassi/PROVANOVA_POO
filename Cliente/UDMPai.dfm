object DMPai: TDMPai
  OldCreateOrder = False
  Height = 324
  Width = 499
  object DSPC_Cadastro: TDSProviderConnection
    Connected = True
    SQLConnection = DMConexao.CON_DS
    Left = 72
    Top = 48
  end
  object CDS_Cadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSPC_Cadastro
    AfterDelete = CDS_CadastroAfterDelete
    Left = 72
    Top = 112
  end
end
