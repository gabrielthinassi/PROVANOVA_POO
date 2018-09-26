inherited FrmGridsTESTE: TFrmGridsTESTE
  Caption = 'FrmGridsTESTE'
  ClientHeight = 662
  ClientWidth = 988
  ExplicitWidth = 1004
  ExplicitHeight = 701
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    Width = 988
    TabOrder = 6
    inherited pnlNavegacao: TPanel
      Left = 788
    end
  end
  inherited Panel1: TPanel
    Height = 612
    TabOrder = 7
  end
  object DBGrid1: TDBGrid [2]
    Left = 120
    Top = 24
    Width = 649
    Height = 209
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid [3]
    Left = 120
    Top = 239
    Width = 649
    Height = 154
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid [4]
    Left = 120
    Top = 408
    Width = 649
    Height = 152
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator [5]
    Left = 144
    Top = 574
    Width = 600
    Height = 67
    DataSource = DataSource1
    TabOrder = 3
  end
  object Edit1: TEdit [6]
    Left = 782
    Top = 585
    Width = 65
    Height = 48
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton [7]
    Left = 853
    Top = 585
    Width = 108
    Height = 48
    Caption = 'Carregar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = DMCadContato.CDS_Cadastro
    Left = 808
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = DMCadContato.CDS_Endereco
    Left = 816
    Top = 280
  end
  object DataSource3: TDataSource
    DataSet = DMCadContato.CDS_Telefone
    Left = 824
    Top = 464
  end
end
