object SMConexao: TSMConexao
  OldCreateOrder = False
  Height = 352
  Width = 539
  object CON_FB: TSQLConnection
    ConnectionName = 'DataSnapPOO'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver240.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver240.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=127.0.0.1/3054:C:\TRABALHO\PROVANOVA\DATASNAPOO\Dados\D' +
        'ADOSDS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 53
    Top = 36
  end
  object SQL_ProximoCodigo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CON_FB
    Left = 88
    Top = 120
  end
  object DSP_ProximoCodigo: TDataSetProvider
    DataSet = SQL_ProximoCodigo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 184
  end
  object CDS_ProximoCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_ProximoCodigo'
    Left = 88
    Top = 256
  end
  object SQL_ExecuteReader: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CON_FB
    Left = 232
    Top = 120
  end
  object DSP_ExecuteReader: TDataSetProvider
    DataSet = SQL_ExecuteReader
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 184
  end
  object CDS_ExecuteReader: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_ProximoCodigo'
    Left = 232
    Top = 256
  end
end
