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
          object TLabel
            Left = 48
            Top = 72
            Width = 3
            Height = 13
          end
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
                FieldName = 'id'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'name'
                Width = 300
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 755
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Button1: TButton
          Left = 4
          Top = 6
          Width = 177
          Height = 25
          Caption = #1055#1086#1080#1089#1082' '#1080' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 4
          Top = 37
          Width = 177
          Height = 25
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' 2-'#1084' '#1087#1086#1083#1103#1084
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 68
        Width = 549
        Height = 109
        Caption = #1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080#1077' '#1079#1072#1087#1088#1086#1089#1099
        TabOrder = 1
        object Label1: TLabel
          Left = 11
          Top = 24
          Width = 86
          Height = 13
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072':'
        end
        object Label2: TLabel
          Left = 11
          Top = 51
          Width = 82
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085'. '#1092#1080#1088#1084#1099':'
        end
        object Label3: TLabel
          Left = 11
          Top = 78
          Width = 82
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085'. '#1092#1080#1088#1084#1099':'
        end
        object CB_SotrByDogNO: TDBComboBox
          Left = 103
          Top = 21
          Width = 145
          Height = 21
          DataField = 'no'
          DataSource = ds_prod
          ReadOnly = True
          TabOrder = 0
        end
        object Btn_SotrByDogNO: TButton
          Left = 254
          Top = 21
          Width = 284
          Height = 21
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077', '#1079#1072#1082#1083#1102#1095#1080#1074#1096#1077#1084' '#1076#1086#1075#1086#1074#1086#1088
          TabOrder = 1
          OnClick = Btn_SotrByDogNOClick
        end
        object Btn_SotrByFirmName: TButton
          Left = 254
          Top = 48
          Width = 284
          Height = 21
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1093', '#1079#1072#1082#1083#1102#1095#1080#1074#1096#1080#1093' '#1076#1086#1075#1086#1074#1086#1088#1072
          TabOrder = 2
          OnClick = Btn_SotrByFirmNameClick
        end
        object CB_SotrByFirmName: TDBComboBox
          Left = 103
          Top = 48
          Width = 145
          Height = 21
          DataField = 'firm_name'
          DataSource = ds_zak
          ReadOnly = True
          TabOrder = 3
        end
        object CB_ProdByFirmName: TDBComboBox
          Left = 103
          Top = 75
          Width = 145
          Height = 21
          DataField = 'firm_name'
          DataSource = ds_zak
          ReadOnly = True
          TabOrder = 4
        end
        object Btn_ProdByFirmName: TButton
          Left = 254
          Top = 75
          Width = 284
          Height = 21
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1091#1087#1083#1077#1085#1085#1086#1081' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080
          TabOrder = 5
          OnClick = Btn_ProdByFirmNameClick
        end
      end
      object Btn_ListByDog: TButton
        Left = 4
        Top = 210
        Width = 353
        Height = 21
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1089' '#1091#1082#1072#1079#1072#1085#1080#1077#1084' '#1079#1072#1082#1083#1102#1095#1077#1085#1085#1099#1093' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
        TabOrder = 2
        OnClick = Btn_ListByDogClick
      end
      object Btn_ListByDate: TButton
        Left = 4
        Top = 237
        Width = 353
        Height = 21
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074', '#1091' '#1082#1086#1090#1086#1088#1099#1093' '#1085#1077' '#1091#1082#1072#1079#1072#1085' '#1075#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
        TabOrder = 3
        OnClick = Btn_ListByDateClick
      end
      object Btn_CountSotr: TButton
        Left = 4
        Top = 183
        Width = 353
        Height = 21
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074', '#1079#1072#1082#1083#1102#1095#1080#1074#1096#1080#1093' '#1076#1086#1075#1086#1074#1086#1088#1099' '#1074' '#1101#1090#1086#1084' '#1075#1086#1076#1091
        TabOrder = 4
        OnClick = Btn_CountSotrClick
      end
      object Btn_ListFirm: TButton
        Left = 4
        Top = 264
        Width = 353
        Height = 21
        Caption = #1057#1087#1080#1089#1086#1082' '#1092#1080#1088#1084', '#1079#1072#1082#1083#1102#1095#1072#1074#1096#1080#1093' '#1076#1086#1075#1086#1074#1086#1088#1099' '#1074' '#1086#1082#1090#1103#1073#1088#1077' 2011 '#1086#1076#1072
        TabOrder = 5
        OnClick = Btn_ListFirmClick
      end
      object Btn_CalcBySotr: TButton
        Left = 4
        Top = 291
        Width = 353
        Height = 21
        Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1094#1080#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1079#1072#1082#1072#1079#1086#1074' '#1079#1072' 2011 '#1075#1086#1076' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084
        TabOrder = 6
        OnClick = Btn_CalcBySotrClick
      end
      object GroupBox2: TGroupBox
        Left = 363
        Top = 183
        Width = 185
        Height = 135
        Caption = #1054#1090#1095#1077#1090#1099
        TabOrder = 7
        object Btn_reports: TButton
          Left = 6
          Top = 18
          Width = 171
          Height = 21
          Caption = #1057#1087#1080#1089#1086#1082' '#1079#1072#1082#1072#1079#1095#1080#1082#1086#1074
          TabOrder = 0
          OnClick = Btn_reportsClick
        end
        object Button3: TButton
          Left = 6
          Top = 72
          Width = 171
          Height = 21
          Caption = 'Button3'
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 6
          Top = 45
          Width = 171
          Height = 21
          Caption = #1055#1088#1086#1076#1072#1078#1080
          TabOrder = 2
          OnClick = Button4Click
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1079#1072#1087#1088#1086#1089#1086#1074
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 349
        Align = alClient
        DataSource = DS_q
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
    Left = 440
    Top = 64
  end
  object table_dolzhn: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dolzhn'
    Left = 504
    Top = 40
  end
  object ds_dolzhn: TDataSource
    DataSet = table_dolzhn
    Left = 504
    Top = 88
  end
  object ds_sotr: TDataSource
    DataSet = table_sotr
    Left = 568
    Top = 88
  end
  object ds_zak: TDataSource
    DataSet = table_zak
    Left = 632
    Top = 88
  end
  object ds_prod: TDataSource
    DataSet = table_prod
    Left = 688
    Top = 88
  end
  object table_sotr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Personal'
    Left = 568
    Top = 40
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
    object table_sotrYoB: TDateTimeField
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
    Left = 632
    Top = 40
  end
  object table_prod: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = table_prodCalcFields
    TableName = 'prod'
    Left = 688
    Top = 40
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
  object DS_q: TDataSource
    DataSet = q_q
    Left = 608
    Top = 152
  end
  object q_q: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 568
    Top = 152
  end
  object rvds_2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = q_report
    Left = 680
    Top = 280
  end
  object RvProject1: TRvProject
    ProjectFile = './reports.rav'
    Left = 480
    Top = 296
  end
  object q_report: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 632
    Top = 280
  end
  object rvds_1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = table_zak
    Left = 680
    Top = 232
  end
  object rvds_3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = q_report2
    Left = 680
    Top = 328
  end
  object q_report2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Personal.FIO AS '#1060#1048#1054', Personal.Adres AS '#1040#1076#1088#1077#1089','
      'Personal.Tel AS '#1058#1077#1083#1077#1092#1086#1085', dolzhn.name AS '#1044#1086#1083#1078#1085#1086#1089#1090#1100','
      'Sum([prod].[kol]*[prod].[stoim]) AS `'#1057#1091#1084#1084#1072' '#1087#1088#1086#1076#1072#1078'`'
      'FROM (dolzhn INNER JOIN Personal ON dolzhn.id = Personal.dolzhn)'
      'INNER JOIN prod ON Personal.ID = prod.sotr'
      'WHERE (Year([date])=2011)'
      
        'GROUP BY Personal.FIO, Personal.Adres, Personal.Tel, dolzhn.name' +
        ';')
    Left = 632
    Top = 328
  end
end
