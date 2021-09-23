object F_find: TF_find
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1085#1072' '#1085#1072#1083#1080#1095#1080#1077' '#1042#1058
  ClientHeight = 299
  ClientWidth = 642
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 642
    Height = 52
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 10
      Width = 23
      Height = 13
      Caption = #1060#1048#1054
    end
    object Label2: TLabel
      Left = 89
      Top = 10
      Width = 13
      Height = 13
      Caption = 'SN'
    end
    object Edit1: TEdit
      Left = 13
      Top = 25
      Width = 70
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 165
      Top = 23
      Width = 65
      Height = 25
      Align = alCustom
      Caption = #1055#1086#1080#1089#1082
      Style = bsNew
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object Edit2: TEdit
      Left = 89
      Top = 25
      Width = 70
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 642
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 8
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 199
      Top = 9
      Width = 113
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1089#1087#1080#1089#1086#1082
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 408
      Top = 9
      Width = 84
      Height = 25
      Caption = #1055#1077#1088#1077#1076#1072#1090#1100' '#1042#1058
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 313
      Top = 9
      Width = 94
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1040#1050#1058#1072
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 52
    Width = 642
    Height = 206
    Align = alClient
    Ctl3D = False
    DataSource = DS1
    FixedColor = clSkyBlue
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'O_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'O_DATA'
        Title.Caption = #1044#1072#1090#1072
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1042#1058
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_SN'
        Title.Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_INV'
        Title.Caption = #1048#1085#1074' '#8470
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_K_FIO'
        Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1060#1048#1054
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_K_MOL'
        Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1052#1054#1051
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_O_FIO'
        Title.Caption = #1055#1077#1088#1077#1076#1072#1083' '#1060#1048#1054
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_O_MOL'
        Title.Caption = #1055#1077#1088#1077#1076#1072#1083' '#1052#1054#1051
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_PRIM'
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_K_DEP'
        Title.Caption = #1044#1077#1087'. '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_O_DEP'
        Title.Caption = #1044#1077#1087'. '#1055#1077#1088#1077#1076#1072#1074#1096#1080#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_AUTOR'
        Title.Caption = #1040#1074#1090#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_DATAVV'
        Title.Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_DOC_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'O_DEL'
        Visible = False
      end>
  end
  object tran: TIBTransaction
    Active = True
    DefaultDatabase = Form1.DB
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    Left = 26
    Top = 86
  end
  object Q1: TIBQuery
    Database = Form1.DB
    Transaction = tran
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from U_OPER '
      
        'where ((o_o_FIO LIKE :FIO) or (o_o_MOL LIKE :FIO)) and ((o_del i' +
        's NULL) or ( o_del<>1))'
      'order by o_data, o_ID  ')
    Left = 94
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
        ParamType = ptUnknown
      end>
  end
  object DS1: TDataSource
    DataSet = DSet1
    Left = 278
    Top = 56
  end
  object DSet1: TIBDataSet
    Database = Form1.DB
    Transaction = tran
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Test '
      'where 0=1')
    SelectSQL.Strings = (
      'select * from GET_FIO_OS(:FIO,:SN)')
    ParamCheck = True
    UniDirectional = False
    Left = 77
    Top = 87
  end
end
