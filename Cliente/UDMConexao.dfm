object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 133
  Width = 222
  object CON_DS: TSQLConnection
    ConnectionName = 'CON_DS'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'DriverUnit=Data.DBXDataSnap'
      'HostName=127.0.0.1'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Left = 43
    Top = 31
    UniqueId = '{838CBC84-40D0-4927-8712-DAA24CC53E11}'
  end
end
