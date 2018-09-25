object SC: TSC
  OldCreateOrder = False
  Height = 271
  Width = 415
  object DSServer1: TDSServer
    Left = 96
    Top = 11
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Server = DSServer1
    Filters = <>
    Left = 96
    Top = 73
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 216
    Top = 11
  end
  object DSSC_SMCadContato: TDSServerClass
    OnGetClass = DSSC_SMCadContatoGetClass
    Server = DSServer1
    Left = 216
    Top = 73
  end
end
