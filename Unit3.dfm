object Form3: TForm3
  Left = 452
  Top = 233
  Width = 391
  Height = 269
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 31
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 26
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1044#1072#1090#1072
    ParentBiDiMode = False
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 208
    Width = 360
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 361
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 56
    Width = 289
    Height = 21
    DataField = 'kolvo'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 8
    Width = 289
    Height = 21
    DataField = 'idtovar'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 32
    Width = 289
    Height = 21
    DataField = 'datprih'
    DataSource = DataSource1
    TabOrder = 4
  end
  object MySQLDatabase1: TMySQLDatabase
    Connected = True
    DatabaseName = 'bh35910_kis'
    UserName = 'bh35910_student1711'
    UserPassword = 'pgu2023pgu2023'
    Host = '91.219.194.4'
    ConnectOptions = []
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=bh35910_kis'
      'UID=bh35910_student1711'
      'PWD=pgu2023pgu2023'
      'Host=91.219.194.4')
    DatasetOptions = []
    Left = 56
    Top = 272
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'glagolev_prihod'
    Left = 184
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 328
    Top = 272
  end
end