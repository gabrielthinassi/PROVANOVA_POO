inherited FrmPaiConsulta: TFrmPaiConsulta
  Caption = 'FrmPaiConsulta'
  ClientHeight = 400
  ClientWidth = 600
  ExplicitWidth = 616
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 120
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 31
      Width = 38
      Height = 13
      Caption = 'Campos'
    end
    object Label2: TLabel
      Left = 151
      Top = 31
      Width = 36
      Height = 13
      Caption = 'Op'#231#245'es'
    end
    object Label3: TLabel
      Left = 287
      Top = 31
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object cbxCampos: TComboBox
      Left = 16
      Top = 50
      Width = 129
      Height = 21
      TabOrder = 0
      Text = 'cbxCampos'
    end
    object cbxOpcoes: TComboBox
      Left = 151
      Top = 50
      Width = 130
      Height = 21
      TabOrder = 1
      Text = 'ComboBox1'
    end
    object edtValor: TEdit
      Left = 287
      Top = 50
      Width = 178
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object btnConsultar: TBitBtn
      Left = 471
      Top = 20
      Width = 106
      Height = 38
      Caption = 'Consultar'
      TabOrder = 3
    end
    object btnConfirmar: TBitBtn
      Left = 471
      Top = 64
      Width = 106
      Height = 38
      Caption = 'Confirmar'
      TabOrder = 4
    end
  end
  object pnlBot: TPanel
    Left = 0
    Top = 120
    Width = 600
    Height = 280
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 598
      Height = 278
      Align = alClient
      DataSource = DS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DS: TDataSource
    Left = 544
    Top = 344
  end
end
