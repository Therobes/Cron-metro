object Cronometro: TCronometro
  Left = 0
  Top = 0
  Caption = 'Cronometro'
  ClientHeight = 444
  ClientWidth = 630
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 144
    Width = 614
    Height = 77
    Alignment = taCenter
    AutoSize = False
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Iniciar: TButton
    Left = 104
    Top = 48
    Width = 97
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = IniciarClick
  end
  object Memo1: TMemo
    Left = 224
    Top = 320
    Width = 185
    Height = 89
    Alignment = taCenter
    BorderStyle = bsNone
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 1
  end
  object NovaVolta: TButton
    Left = 288
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Nova volta'
    TabOrder = 2
    OnClick = NovaVoltaClick
  end
  object LimparVoltas: TButton
    Left = 383
    Top = 48
    Width = 90
    Height = 25
    Caption = 'Limpar voltas'
    TabOrder = 3
    OnClick = LimparVoltasClick
  end
  object Reiniciar: TButton
    Left = 207
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Reiniciar'
    TabOrder = 4
    OnClick = ReiniciarClick
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 16
    Top = 40
  end
end
