object Form1: TForm1
  Left = 223
  Top = 145
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
end