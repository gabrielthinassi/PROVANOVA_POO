inherited DMCadContato: TDMCadContato
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  inherited DSPC_Cadastro: TDSProviderConnection
    ServerClassName = 'TSMCadContato'
  end
  inherited CDS_Cadastro: TClientDataSet
    Active = True
    ProviderName = 'DSP_Cadastro'
    object CDS_CadastroCODIGO_CONTATO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_CONTATO'
      ProviderFlags = [pfInKey]
    end
    object CDS_CadastroNOME_CONTATO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_CONTATO'
      Required = True
      Size = 40
    end
    object CDS_CadastroDTNASCIMENTO_CONTATO: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'DTNASCIMENTO_CONTATO'
      EditMask = '!99/99/9999;1;_'
    end
    object CDS_CadastroSQL_Telefone: TDataSetField
      FieldName = 'SQL_Telefone'
      Visible = False
    end
    object CDS_CadastroSQL_Endereco: TDataSetField
      FieldName = 'SQL_Endereco'
      Visible = False
    end
  end
  object CDS_Endereco: TClientDataSet [2]
    Active = True
    Aggregates = <>
    DataSetField = CDS_CadastroSQL_Endereco
    Params = <>
    BeforePost = CDS_EnderecoBeforePost
    BeforeDelete = CDS_EnderecoBeforeDelete
    AfterDelete = CDS_CadastroAfterDelete
    OnNewRecord = CDS_EnderecoNewRecord
    Left = 152
    Top = 112
    object CDS_EnderecoCODIGO_ENDERECO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_ENDERECO'
    end
    object CDS_EnderecoRUA_ENDERECO: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'RUA_ENDERECO'
      Required = True
      Size = 30
    end
    object CDS_EnderecoNUMERO_ENDERECO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO_ENDERECO'
      Size = 5
    end
    object CDS_EnderecoCONTATO_CODCONTATO: TIntegerField
      FieldName = 'CONTATO_CODCONTATO'
      Required = True
    end
  end
  object CDS_Telefone: TClientDataSet [3]
    Active = True
    Aggregates = <>
    DataSetField = CDS_CadastroSQL_Telefone
    Params = <>
    BeforePost = CDS_TelefoneBeforePost
    BeforeDelete = CDS_TelefoneBeforeDelete
    AfterDelete = CDS_CadastroAfterDelete
    OnNewRecord = CDS_TelefoneNewRecord
    Left = 232
    Top = 112
    object CDS_TelefoneCODIGO_TELEFONE: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_TELEFONE'
    end
    object CDS_TelefoneNUMERO_TELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'NUMERO_TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 11
    end
    object CDS_TelefoneCONTATO_CODCONTATO: TIntegerField
      FieldName = 'CONTATO_CODCONTATO'
      Required = True
    end
  end
  inherited CDS_Consulta: TClientDataSet
    ProviderName = 'DSP_Consulta'
    Top = 192
  end
end
