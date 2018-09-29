inherited SMCadContato: TSMCadContato
  OldCreateOrder = True
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
    object SQL_CadastroCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQL_CadastroNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object SQL_CadastroDTNASCIMENTO_CONTATO: TDateField
      FieldName = 'DTNASCIMENTO_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
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
      'ECO.RUA_ENDERECO,'#13#10'    CONTATO_ENDERECO.NUMERO_ENDERECO,'#13#10'    CO' +
      'NTATO_ENDERECO.CONTATO_CODCONTATO'#13#10'from CONTATO_ENDERECO'#13#10'where ' +
      'CONTATO_ENDERECO.CONTATO_CODCONTATO = :CODIGO_CONTATO'
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
    object SQL_EnderecoCODIGO_ENDERECO: TIntegerField
      FieldName = 'CODIGO_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQL_EnderecoRUA_ENDERECO: TStringField
      FieldName = 'RUA_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object SQL_EnderecoNUMERO_ENDERECO: TStringField
      FieldName = 'NUMERO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SQL_EnderecoCONTATO_CODCONTATO: TIntegerField
      FieldName = 'CONTATO_CODCONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object SQL_Telefone: TSQLDataSet
    CommandText = 
      'select'#13#10'    CONTATO_TELEFONE.CODIGO_TELEFONE,'#13#10'    CONTATO_TELEF' +
      'ONE.NUMERO_TELEFONE,'#13#10'    CONTATO_TELEFONE.CONTATO_CODCONTATO'#13#10'f' +
      'rom CONTATO_TELEFONE'#13#10'where CONTATO_TELEFONE.CONTATO_CODCONTATO ' +
      '= :CODIGO_CONTATO'
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
    object SQL_TelefoneCODIGO_TELEFONE: TIntegerField
      FieldName = 'CODIGO_TELEFONE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQL_TelefoneNUMERO_TELEFONE: TStringField
      FieldName = 'NUMERO_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object SQL_TelefoneCONTATO_CODCONTATO: TIntegerField
      FieldName = 'CONTATO_CODCONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
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
