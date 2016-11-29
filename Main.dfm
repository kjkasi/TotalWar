object Form1: TForm1
  Left = 262
  Top = 112
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 792
    Top = 8
    Width = 65
    Height = 17
    DataField = 'Balance'
    DataSource = DataModule1.dsInfo
  end
  object Label1: TLabel
    Left = 744
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Balance:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 320
    Height = 120
    DataSource = DataModule1.dsUnits
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 536
    Top = 32
    Width = 320
    Height = 120
    DataSource = DataModule1.dsTavern
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 784
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Buy'
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 136
    Width = 185
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 32
      Top = 16
      Width = 23
      Height = 22
      Caption = 'N'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 8
      Top = 40
      Width = 23
      Height = 22
      Caption = 'W'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 32
      Top = 64
      Width = 23
      Height = 22
      Caption = 'S'
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 56
      Top = 40
      Width = 23
      Height = 22
      Caption = 'E'
      OnClick = SpeedButton4Click
    end
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 248
    Width = 320
    Height = 120
    DataSource = DataModule1.dsEnemies
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
