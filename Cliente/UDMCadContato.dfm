inherited DMCadContato: TDMCadContato
  OldCreateOrder = True
  inherited DSPC_Cadastro: TDSProviderConnection
    ServerClassName = 'TSMCadContato'
  end
  inherited CDS_Cadastro: TClientDataSet
    ProviderName = 'DSP_Cadastro'
    object CDS_CadastroCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      Required = True
    end
    object CDS_CadastroNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Required = True
      Size = 40
    end
    object CDS_CadastroDTNASCIMENTO_CONTATO: TDateField
      FieldName = 'DTNASCIMENTO_CONTATO'
      EditMask = '!99/99/00;0;_'
    end
    object CDS_CadastroSQL_Telefone: TDataSetField
      FieldName = 'SQL_Telefone'
    end
    object CDS_CadastroSQL_Endereco: TDataSetField
      FieldName = 'SQL_Endereco'
    end
  end
  object CDS_Endereco: TClientDataSet
    Aggregates = <>
    DataSetField = CDS_CadastroSQL_Endereco
    Params = <>
    AfterDelete = CDS_CadastroAfterDelete
    Left = 152
    Top = 112
    object CDS_EnderecoCODIGO_ENDERECO: TIntegerField
      FieldName = 'CODIGO_ENDERECO'
      Required = True
    end
    object CDS_EnderecoRUA_ENDERECO: TStringField
      FieldName = 'RUA_ENDERECO'
      Required = True
      Size = 30
    end
    object CDS_EnderecoNUMERO_ENDERECO: TStringField
      FieldName = 'NUMERO_ENDERECO'
      Size = 5
    end
  end
  object CDS_Telefone: TClientDataSet
    Aggregates = <>
    DataSetField = CDS_CadastroSQL_Telefone
    Params = <>
    AfterDelete = CDS_CadastroAfterDelete
    Left = 232
    Top = 112
    object CDS_TelefoneCODIGO_TELEFONE: TIntegerField
      FieldName = 'CODIGO_TELEFONE'
      Required = True
    end
    object CDS_TelefoneNUMERO_TELEFONE: TStringField
      FieldName = 'NUMERO_TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 11
    end
  end
end
