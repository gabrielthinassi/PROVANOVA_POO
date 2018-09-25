object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 48
    object mmCadastro: TMenuItem
      Caption = 'Cadastro'
      object mmContato: TMenuItem
        Caption = 'Contato'
        OnClick = mmContatoClick
      end
      object mmSair: TMenuItem
        Caption = 'Sair'
      end
    end
  end
end
