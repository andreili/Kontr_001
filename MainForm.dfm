object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 377
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 0
    Width = 763
    Height = 377
    Align = alClient
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 24
      Caption = #1044#1072#1085#1085#1099#1077
      object TabbedNotebook2: TTabbedNotebook
        Left = 0
        Top = 0
        Width = 755
        Height = 349
        Align = alClient
        PageIndex = 3
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clBtnText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        TabOrder = 0
        object TTabPage
          Left = 4
          Top = 24
          Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 747
            Height = 300
            Align = alClient
            DataSource = ds_dolzhn
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = DBGrid1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'name'
                Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                Visible = True
              end>
          end
          object DBNavigator1: TDBNavigator
            Left = 0
            Top = 300
            Width = 747
            Height = 21
            DataSource = ds_dolzhn
            Align = alBottom
            TabOrder = 1
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = #1055#1077#1088#1089#1086#1085#1072#1083
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 747
            Height = 300
            Align = alClient
            DataSource = ds_sotr
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnColExit = DBGrid2ColExit
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnTitleClick = DBGrid2TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'FIO'
                Title.Caption = #1060#1048#1054
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Adres'
                Title.Caption = #1040#1076#1088#1077#1089
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tel'
                Title.Caption = #1058#1077#1083#1077#1092#1086#1085
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'YoB'
                Title.Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dolzhn'
                Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                Width = 150
                Visible = True
              end>
          end
          object DBNavigator2: TDBNavigator
            Left = 0
            Top = 300
            Width = 747
            Height = 21
            DataSource = ds_sotr
            Align = alBottom
            TabOrder = 0
          end
          object cb_dolzhn: TDBLookupComboBox
            Left = 208
            Top = 224
            Width = 145
            Height = 21
            DataField = 'dolzhn'
            DataSource = ds_sotr
            KeyField = 'id'
            ListField = 'name'
            ListSource = ds_dolzhn
            TabOrder = 2
            Visible = False
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = #1047#1072#1082#1072#1079#1095#1080#1082#1080
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 747
            Height = 300
            Align = alClient
            DataSource = ds_zak
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = DBGrid3TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'firm_name'
                Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'adres'
                Title.Caption = #1040#1076#1088#1077#1089
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tel'
                Title.Caption = #1058#1077#1083#1077#1092#1086#1085
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rekv'
                Title.Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
                Width = 150
                Visible = True
              end>
          end
          object DBNavigator3: TDBNavigator
            Left = 0
            Top = 300
            Width = 747
            Height = 21
            DataSource = ds_zak
            Align = alBottom
            TabOrder = 0
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = #1055#1088#1086#1076#1072#1078#1080
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 747
            Height = 300
            Align = alClient
            DataSource = ds_prod
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnColExit = DBGrid2ColExit
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnTitleClick = DBGrid4TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'no'
                Title.Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'date'
                Title.Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sotr'
                Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'zakazch'
                Title.Caption = #1047#1072#1082#1072#1079#1095#1080#1082
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'kol'
                Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'stoim'
                Title.Caption = #1057#1090#1086#1080#1084'. '#1079#1072' '#1077#1076'.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'summa'
                Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
                Visible = True
              end>
          end
          object DBNavigator4: TDBNavigator
            Left = 0
            Top = 300
            Width = 747
            Height = 21
            DataSource = ds_prod
            Align = alBottom
            TabOrder = 0
          end
          object cb_zak: TDBLookupComboBox
            Left = 296
            Top = 232
            Width = 145
            Height = 21
            DataField = 'zakazch'
            DataSource = ds_prod
            KeyField = 'ID'
            ListField = 'firm_name'
            ListSource = ds_zak
            TabOrder = 2
            Visible = False
          end
          object cb_sotr: TDBLookupComboBox
            Left = 376
            Top = 168
            Width = 145
            Height = 21
            DataField = 'sotr'
            DataSource = ds_prod
            KeyField = 'ID'
            ListField = 'FIO'
            ListSource = ds_sotr
            TabOrder = 3
            Visible = False
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = #1047#1072#1087#1088#1086#1089#1099
      object Button1: TButton
        Left = 32
        Top = 16
        Width = 177
        Height = 25
        Caption = #1055#1086#1080#1089#1082' '#1080' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 32
        Top = 47
        Width = 177
        Height = 25
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' 2-'#1084' '#1087#1086#1083#1103#1084
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data ' +
      'Source=.\db.mdb;Mode=Share Deny None;Extended Properties="";Jet ' +
      'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
      'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 408
    Top = 152
  end
  object table_dolzhn: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dolzhn'
    Left = 56
    Top = 112
  end
  object ds_dolzhn: TDataSource
    DataSet = table_dolzhn
    Left = 56
    Top = 160
  end
  object ds_sotr: TDataSource
    DataSet = table_sotr
    Left = 120
    Top = 160
  end
  object ds_zak: TDataSource
    DataSet = table_zak
    Left = 184
    Top = 160
  end
  object ds_prod: TDataSource
    DataSet = table_prod
    Left = 240
    Top = 160
  end
  object table_sotr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Personal'
    Left = 120
    Top = 112
    object table_sotrID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object table_sotrFIO: TWideStringField
      FieldName = 'FIO'
      Size = 255
    end
    object table_sotrAdres: TWideStringField
      FieldName = 'Adres'
      Size = 255
    end
    object table_sotrTel: TWideStringField
      FieldName = 'Tel'
      Size = 255
    end
    object table_sotrYoB: TIntegerField
      FieldName = 'YoB'
    end
    object table_sotrdolzhn: TIntegerField
      FieldName = 'dolzhn'
      LookupDataSet = table_dolzhn
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'dolzhn'
      LookupCache = True
    end
  end
  object table_zak: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Zakazchik'
    Left = 184
    Top = 112
  end
  object table_prod: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = table_prodCalcFields
    TableName = 'prod'
    Left = 240
    Top = 112
    object table_prodno: TAutoIncField
      FieldName = 'no'
      ReadOnly = True
    end
    object table_proddate: TDateTimeField
      FieldName = 'date'
    end
    object table_prodsotr: TIntegerField
      FieldName = 'sotr'
      LookupDataSet = table_sotr
      LookupKeyFields = 'id'
      LookupResultField = 'FIO'
      KeyFields = 'sotr'
    end
    object table_prodzakazch: TIntegerField
      FieldName = 'zakazch'
    end
    object table_prodkol: TIntegerField
      FieldName = 'kol'
    end
    object table_prodstoim: TFloatField
      FieldName = 'stoim'
    end
    object table_prodsumma: TFloatField
      FieldKind = fkCalculated
      FieldName = 'summa'
      Calculated = True
    end
  end
end
