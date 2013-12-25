object FormSearch: TFormSearch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 3
  Caption = #1055#1086#1080#1089#1082' '#1080' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 427
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 483
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 46
      Height = 25
      Align = alLeft
      Caption = #1058#1072#1073#1083#1080#1094#1072':'
      ExplicitHeight = 13
    end
    object cb_table: TComboBox
      Left = 46
      Top = 0
      Width = 99
      Height = 21
      Align = alLeft
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = #1044#1086#1083#1078#1085#1086#1089#1090#1080
      OnChange = cb_tableChange
      Items.Strings = (
        #1044#1086#1083#1078#1085#1086#1089#1090#1080
        #1055#1077#1088#1089#1086#1085#1072#1083
        #1047#1072#1082#1072#1079#1095#1080#1082#1080
        #1055#1088#1086#1076#1072#1078#1080)
    end
    object Panel2: TPanel
      Left = 145
      Top = 0
      Width = 16
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Button1: TButton
      Left = 182
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Locate'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 263
      Top = 0
      Width = 75
      Height = 25
      Caption = 'LoocUp'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 344
      Top = 1
      Width = 75
      Height = 25
      Caption = #1060#1080#1083#1100#1090#1088
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 650
    Height = 362
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 25
    Width = 650
    Height = 40
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
    TabOrder = 2
    object Label3: TLabel
      Left = 2
      Top = 15
      Width = 35
      Height = 23
      Align = alLeft
      Caption = '  '#1055#1086#1083#1077':'
      ExplicitHeight = 13
    end
    object Label4: TLabel
      Left = 182
      Top = 15
      Width = 39
      Height = 23
      Align = alLeft
      Caption = '  '#1058#1077#1082#1089#1090':'
      ExplicitHeight = 13
    end
    object cb_field: TComboBox
      Left = 37
      Top = 15
      Width = 145
      Height = 21
      Align = alLeft
      Style = csDropDownList
      TabOrder = 0
      OnChange = cb_fieldChange
      ExplicitLeft = 130
      ExplicitTop = 29
    end
    object Edit1: TEdit
      Left = 227
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object ADOTable1: TADOTable
    IndexName = 'id'
    Left = 232
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 232
    Top = 176
  end
end
