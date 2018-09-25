inherited SMCadContato: TSMCadContato
  OldCreateOrder = True
  OnCreate = DSServerModuleCreate
  Width = 646
  inherited SQL_Cadastro: TSQLDataSet
    CommandText = 
      'select'#13#10'    CONTATO.CODIGO_CONTATO,'#13#10'    CONTATO.NOME_CONTATO,'#13#10 +
      '    CONTATO.DTNASCIMENTO_CONTATO'#13#10'from CONTATO'#13#10'where CONTATO.CO' +
      'DIGO_CONTATO =  :CODIGO_CONTATO'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONTATO'
        ParamType = ptInput
      end>
  end
  inherited SQL_Consulta: TSQLDataSet
    Left = 352
    Top = 47
  end
  inherited DSP_Consulta: TDataSetProvider
    Left = 352
    Top = 103
  end
  object SQL_Endereco: TSQLDataSet
    CommandText = 
      'select'#13#10'    CONTATO_ENDERECO.CODIGO_ENDERECO,'#13#10'    CONTATO_ENDER' +
      'ECO.RUA_ENDERECO,'#13#10'    CONTATO_ENDERECO.NUMERO_ENDERECO'#13#10'from CO' +
      'NTATO_ENDERECO'#13#10'where CONTATO_ENDERECO.CONTATO_CODCONTATO = :COD' +
      'IGO_CONTATO'
    DataSource = DSEndereco
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONTATO'
        ParamType = ptInput
      end>
    SQLConnection = SMConexao.CON_FB
    Left = 256
    Top = 48
  end
  object SQL_Telefone: TSQLDataSet
    CommandText = 
      'select'#13#10'    CONTATO_TELEFONE.CODIGO_TELEFONE,'#13#10'    CONTATO_TELEF' +
      'ONE.NUMERO_TELEFONE'#13#10'from CONTATO_TELEFONE'#13#10'where CONTATO_TELEFO' +
      'NE.CONTATO_CODCONTATO = :CODIGO_CONTATO'
    DataSource = DSTelefone
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONTATO'
        ParamType = ptInput
      end>
    SQLConnection = SMConexao.CON_FB
    Left = 256
    Top = 104
  end
  object DSEndereco: TDataSource
    DataSet = SQL_Cadastro
    Left = 152
    Top = 48
  end
  object DSTelefone: TDataSource
    DataSet = SQL_Cadastro
    Left = 152
    Top = 104
  end
end
