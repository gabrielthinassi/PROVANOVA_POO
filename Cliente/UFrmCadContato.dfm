inherited FrmCadContato: TFrmCadContato
  Caption = 'Cadastro de Contato'
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 168
    Top = 64
    Width = 84
    Height = 13
    Caption = 'NOME_CONTATO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 168
    Top = 104
    Width = 134
    Height = 13
    Caption = 'DTNASCIMENTO_CONTATO'
    FocusControl = DBEdit2
  end
  inherited pnlTop: TPanel
    inherited edtCodigo: TJvCalcEdit
      OnExit = edtCodigoExit
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 168
    Top = 80
    Width = 325
    Height = 21
    DataField = 'NOME_CONTATO'
    DataSource = DS
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [5]
    Left = 168
    Top = 120
    Width = 134
    Height = 21
    DataField = 'DTNASCIMENTO_CONTATO'
    DataSource = DS
    MaxLength = 8
    TabOrder = 3
  end
  object PageControl1: TPageControl [6]
    Left = 152
    Top = 147
    Width = 448
    Height = 253
    HelpType = htKeyword
    ActivePage = tbEndereco
    TabOrder = 4
    object tbEndereco: TTabSheet
      Caption = 'Endereco'
      object gridEndereco: TDBGrid
        Left = 0
        Top = 0
        Width = 440
        Height = 225
        Align = alClient
        DataSource = DSEndereco
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tbTelefone: TTabSheet
      Caption = 'Telefone'
      ImageIndex = 1
      object gridTelefone: TDBGrid
        Left = 0
        Top = 0
        Width = 440
        Height = 225
        Align = alClient
        DataSource = DSTelefone
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DMCadContato.CDS_Cadastro
    Left = 8
    Top = 304
  end
  object DSEndereco: TDataSource
    DataSet = DMCadContato.CDS_Endereco
    OnStateChange = DSStateChange
    Left = 56
    Top = 304
  end
  object DSTelefone: TDataSource
    DataSet = DMCadContato.CDS_Telefone
    OnStateChange = DSStateChange
    Left = 56
    Top = 352
  end
end
