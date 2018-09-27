inherited FrmConsultaContato: TFrmConsultaContato
  Caption = 'Consulta de Contato'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited cbxCampos: TComboBox
      ItemIndex = 1
      Text = 'Nome'
      Items.Strings = (
        'Codigo'
        'Nome'
        'Dt. Nascimento')
    end
    inherited cbxOpcoes: TComboBox
      ItemIndex = 3
      Text = 'Que Cont'#233'm'
      Items.Strings = (
        'Iniciado com'
        'Terminado com'
        'Igual a'
        'Que Cont'#233'm')
    end
    inherited btnConsultar: TBitBtn
      OnClick = btnConsultarClick
    end
    inherited btnConfirmar: TBitBtn
      OnClick = btnConfirmarClick
    end
  end
  inherited pnlBot: TPanel
    ExplicitLeft = 0
    ExplicitTop = 120
    ExplicitWidth = 600
    ExplicitHeight = 280
  end
  inherited DS: TDataSource
    DataSet = DMCadContato.CDS_Consulta
  end
end
