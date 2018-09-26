inherited FrmPaiCadastro: TFrmPaiCadastro
  Caption = 'FrmPaiCadastro'
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
    Height = 50
    Align = alTop
    TabOrder = 0
    OnExit = pnlTopExit
    object edtCodigo: TJvCalcEdit
      Left = 16
      Top = 15
      Width = 121
      Height = 21
      ImageKind = ikEllipsis
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object pnlNavegacao: TPanel
      Left = 400
      Top = 1
      Width = 199
      Height = 48
      Align = alRight
      TabOrder = 1
      object btnPrimeiro: TBitBtn
        Left = 1
        Top = 1
        Width = 48
        Height = 46
        Align = alLeft
        Caption = '|<'
        TabOrder = 0
      end
      object btnUltimo: TBitBtn
        Left = 145
        Top = 1
        Width = 48
        Height = 46
        Align = alLeft
        Caption = '>|'
        TabOrder = 1
      end
      object btnProximo: TBitBtn
        Left = 97
        Top = 1
        Width = 48
        Height = 46
        Align = alLeft
        Caption = '>'
        TabOrder = 2
      end
      object btnAnterior: TBitBtn
        Left = 49
        Top = 1
        Width = 48
        Height = 46
        Align = alLeft
        Caption = '<'
        TabOrder = 3
      end
    end
    object BitBtn1: TBitBtn
      Left = 264
      Top = 16
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 150
    Height = 350
    Align = alLeft
    TabOrder = 1
    object btnConsulta: TBitBtn
      Left = 1
      Top = 201
      Width = 148
      Height = 50
      Align = alTop
      Caption = 'C&onsultar'
      TabOrder = 0
    end
    object btnGravar: TBitBtn
      Left = 1
      Top = 151
      Width = 148
      Height = 50
      Align = alTop
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 1
      Top = 101
      Width = 148
      Height = 50
      Align = alTop
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 1
      Top = 51
      Width = 148
      Height = 50
      Align = alTop
      Caption = '&Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnIncluir: TBitBtn
      Left = 1
      Top = 1
      Width = 148
      Height = 50
      Align = alTop
      Caption = '&Incluir'
      TabOrder = 4
      OnClick = btnIncluirClick
    end
  end
  object DS: TDataSource
    OnStateChange = DSStateChange
    Left = 72
    Top = 328
  end
end
