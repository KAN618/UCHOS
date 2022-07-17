object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = Edit1
  Caption = #1059#1095#1077#1090' '#1054#1057
  ClientHeight = 561
  ClientWidth = 846
  Color = clMoneyGreen
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = Menu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 846
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object Button2: TButton
      Left = 457
      Top = 6
      Width = 75
      Height = 25
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      TabOrder = 0
      Visible = False
      OnClick = Button2Click
    end
    object B_basa: TButton
      Left = 376
      Top = 6
      Width = 75
      Height = 25
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      TabOrder = 1
      Visible = False
      OnClick = B_basaClick
    end
    object Button1: TButton
      Left = 21
      Top = 6
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 44
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Button3: TButton
      Left = 132
      Top = 13
      Width = 105
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object B_add: TButton
      Left = 240
      Top = 13
      Width = 45
      Height = 25
      Caption = '+'
      TabOrder = 1
      OnClick = B_addClick
    end
    object B_del: TButton
      Left = 288
      Top = 13
      Width = 45
      Height = 25
      Caption = '-'
      TabOrder = 2
      OnClick = B_delClick
    end
    object Edit1: TEdit
      Left = 11
      Top = 16
      Width = 115
      Height = 19
      TabOrder = 3
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 44
    Width = 625
    Height = 476
    Align = alClient
    DataSource = DS1
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'D_ID'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'D_DATA'
        ReadOnly = False
        Title.Caption = #1044#1072#1090#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_NUM'
        ReadOnly = False
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_K_FIO'
        ReadOnly = False
        Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1060#1048#1054
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_K_MOL'
        ReadOnly = False
        Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1052#1054#1051
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_PRIM'
        ReadOnly = False
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 200
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'D_K_DEP'
        ReadOnly = False
        Title.Caption = #1044#1077#1087#1072#1088#1090#1072#1084#1077#1085#1090' '
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_O_FIO'
        ReadOnly = False
        Title.Caption = #1055#1077#1088#1077#1076#1072#1083' '#1060#1048#1054
        Width = 100
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'D_O_DEP'
        ReadOnly = False
        Title.Caption = #1044#1077#1087#1072#1088#1090#1072#1084#1077#1085#1090' '#1054#1090#1082#1091#1076#1072
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_O_MOL'
        ReadOnly = False
        Title.Caption = #1055#1077#1088#1077#1076#1072#1083' '#1052#1054#1051
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_DEL'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'D_AUTOR'
        ReadOnly = False
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_DATAVV'
        ReadOnly = False
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        Width = 70
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 625
    Top = 44
    Width = 221
    Height = 476
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 87
      Height = 13
      Caption = #1044#1077#1087'. '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
    end
    object Label2: TLabel
      Left = 6
      Top = 97
      Width = 70
      Height = 13
      Caption = #1055#1077#1088#1077#1076#1072#1083' '#1060#1048#1054
    end
    object Label3: TLabel
      Left = 6
      Top = 144
      Width = 70
      Height = 13
      Caption = #1055#1077#1088#1077#1076#1072#1083' '#1052#1054#1051
    end
    object Label4: TLabel
      Left = 6
      Top = 188
      Width = 116
      Height = 13
      Caption = #1044#1077#1087'. '#1086#1090#1082#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1083#1080
    end
    object Label6: TLabel
      Left = 9
      Top = 272
      Width = 61
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    end
    object DBText1: TDBText
      Left = 6
      Top = 441
      Width = 139
      Height = 17
      DataField = 'D_AUTOR'
      DataSource = DS1
    end
    object DBText2: TDBText
      Left = 98
      Top = 441
      Width = 112
      Height = 17
      DataField = 'D_DATAVV'
      DataSource = DS1
    end
    object DBMemo1: TDBMemo
      Left = 6
      Top = 20
      Width = 207
      Height = 56
      Color = clBtnHighlight
      DataField = 'D_K_DEP'
      DataSource = DS1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 110
      Width = 207
      Height = 19
      Color = clBtnHighlight
      DataField = 'D_O_FIO'
      DataSource = DS1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 6
      Top = 157
      Width = 207
      Height = 19
      Color = clBtnHighlight
      DataField = 'D_O_MOL'
      DataSource = DS1
      ReadOnly = True
      TabOrder = 2
    end
    object DBMemo2: TDBMemo
      Left = 6
      Top = 202
      Width = 207
      Height = 56
      Color = clBtnHighlight
      DataField = 'D_O_DEP'
      DataSource = DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBMemo3: TDBMemo
      Left = 6
      Top = 288
      Width = 207
      Height = 41
      Color = clBtnHighlight
      DataField = 'D_PRIM'
      DataSource = DS1
      ReadOnly = True
      TabOrder = 4
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 6
      Top = 335
      Width = 204
      Height = 105
      Caption = #1055#1077#1088#1077#1076#1072#1095#1072' '#1074' '#1056'12'
      DataField = 'D_PEREDANO'
      DataSource = DS1
      Items.Strings = (
        #1053#1077' '#1087#1077#1088#1077#1076#1072#1085#1086
        #1055#1077#1088#1077#1076#1072#1085#1086' '#1074' '#1056'12'
        #1042' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1087#1077#1088#1077#1076#1072#1095#1080
        #1053#1077' '#1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1087#1077#1088#1077#1076#1072#1095#1072)
      ReadOnly = True
      TabOrder = 5
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
  end
  object Menu: TMainMenu
    Left = 248
    Top = 8
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N4: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        OnClick = Button2Click
      end
      object N5: TMenuItem
        Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1089' '#1041#1044
        OnClick = B_basaClick
      end
      object N6: TMenuItem
        Caption = #1058#1077#1084#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
        object Sky1: TMenuItem
          Caption = 'Sky'
          OnClick = Sky1Click
        end
        object Glossy1: TMenuItem
          Caption = 'Iceberg Classico'
          OnClick = Glossy1Click
        end
        object SmokeyQuartsKamri1: TMenuItem
          Caption = 'Smokey Quartz Kamri'
          OnClick = SmokeyQuartsKamri1Click
        end
        object Glow1: TMenuItem
          Caption = 'Cyan Dusk'
          OnClick = Glow1Click
        end
        object GoldenGrafit1: TMenuItem
          Caption = 'Golden Graphite'
          OnClick = GoldenGrafit1Click
        end
      end
    end
    object N2: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089#1099
      object N3: TMenuItem
        Caption = #1055#1086#1080#1089#1082' '#1054#1057
        OnClick = N3Click
      end
      object R121: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082' '#1085#1072' '#1087#1077#1088#1077#1076#1072#1095#1091' '#1087#1086' R12'
        OnClick = R121Click
      end
      object N7: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082' '#1060#1048#1054' '#1080' '#1052#1054#1051
        OnClick = N7Click
      end
    end
  end
  object DB: TIBDatabase
    Connected = True
    DatabaseName = 'D:\KAN\Delphi\UCHOS\UCHOS'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = Tran1
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 56
    Top = 208
  end
  object Tran1: TIBTransaction
    DefaultDatabase = DB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 208
  end
  object DSet1: TIBDataSet
    Database = DB
    Transaction = Tran1
    OnNewRecord = DSet1NewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'UPDATE U_DOC set D_DEL=1 where D_ID=:D_ID'
      '')
    InsertSQL.Strings = (
      'insert into U_DOC ('
      'D_ID,'
      'D_DATA,'
      'D_NUM,'
      'D_PRIM,'
      'D_K_DEP,'
      'D_K_MOL,'
      'D_K_FIO,'
      'D_O_DEP,'
      'D_O_MOL,'
      'D_O_FIO,'
      'D_PEREDANO,'
      'D_DEL,'
      'D_SCAN) values (:D_ID,'
      ':D_DATA,'
      ':D_NUM,'
      ':D_PRIM,'
      ':D_K_DEP,'
      ':D_K_MOL,'
      ':D_K_FIO,'
      ':D_O_DEP,'
      ':D_O_MOL,'
      ':D_O_FIO,'
      ':D_PEREDANO,'
      ':D_DEL,'
      ':D_SCAN)')
    RefreshSQL.Strings = (
      'Select * from U_DOC '
      'Where D_ID=:D_ID')
    SelectSQL.Strings = (
      'Select *  from U_DOC  '
      'WHERE (D_DEL is NULL) or  (D_DEL<>1)'
      'order by D_DATA descending, D_ID descending')
    ModifySQL.Strings = (
      'update U_DOC set '
      'D_DATA=:new_D_DATA,'
      'D_NUM=:D_NUM,'
      'D_PRIM=:D_PRIM,'
      'D_K_DEP=:D_K_DEP,'
      'D_K_MOL=:D_K_MOL,'
      'D_K_FIO=:D_K_FIO,'
      'D_O_DEP=:D_O_DEP,'
      'D_O_MOL=:D_O_MOL,'
      'D_O_FIO=:D_O_FIO,'
      'D_DEL=:D_DEL,'
      'D_PEREDANO=:D_PEREDANO,'
      'D_SCAN=:D_SCAN'
      'Where D_ID=:OLD_D_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 160
    Top = 208
    object DSet1D_ID: TIntegerField
      FieldName = 'D_ID'
      Origin = 'U_DOC.D_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSet1D_DATA: TDateField
      FieldName = 'D_DATA'
      Origin = 'U_DOC.D_DATA'
    end
    object DSet1D_NUM: TIBStringField
      FieldName = 'D_NUM'
      Origin = 'U_DOC.D_NUM'
      Size = 50
    end
    object DSet1D_PRIM: TIBStringField
      FieldName = 'D_PRIM'
      Origin = 'U_DOC.D_PRIM'
      Size = 300
    end
    object DSet1D_K_DEP: TIBStringField
      FieldName = 'D_K_DEP'
      Origin = 'U_DOC.D_K_DEP'
      Size = 500
    end
    object DSet1D_K_MOL: TIBStringField
      FieldName = 'D_K_MOL'
      Origin = 'U_DOC.D_K_MOL'
      Size = 300
    end
    object DSet1D_K_FIO: TIBStringField
      FieldName = 'D_K_FIO'
      Origin = 'U_DOC.D_K_FIO'
      Size = 300
    end
    object DSet1D_O_DEP: TIBStringField
      FieldName = 'D_O_DEP'
      Origin = 'U_DOC.D_O_DEP'
      Size = 500
    end
    object DSet1D_O_MOL: TIBStringField
      FieldName = 'D_O_MOL'
      Origin = 'U_DOC.D_O_MOL'
      Size = 300
    end
    object DSet1D_O_FIO: TIBStringField
      FieldName = 'D_O_FIO'
      Origin = 'U_DOC.D_O_FIO'
      Size = 300
    end
    object DSet1D_DEL: TIntegerField
      FieldName = 'D_DEL'
      Origin = 'U_DOC.D_DEL'
    end
    object DSet1D_AUTOR: TIBStringField
      FieldName = 'D_AUTOR'
      Origin = 'U_DOC.D_AUTOR'
      Size = 100
    end
    object DSet1D_DATAVV: TDateTimeField
      FieldName = 'D_DATAVV'
      Origin = 'U_DOC.D_DATAVV'
    end
    object DSet1D_SCAN: TBlobField
      FieldName = 'D_SCAN'
      Origin = 'U_DOC.D_SCAN'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object DSet1D_PEREDANO: TIntegerField
      DisplayWidth = 1
      FieldName = 'D_PEREDANO'
      Origin = 'U_DOC.D_PEREDANO'
    end
  end
  object DS1: TDataSource
    DataSet = DSet1
    Left = 304
    Top = 112
  end
  object Q1: TIBQuery
    Database = DB
    Transaction = Tran1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select U_DOc.d_num, o.*, U_DOC.d_peredano from U_OPER o, U_DOC'
      
        'where o.o_doc_id=U_doc.d_id and ((U_doc.d_peredano=0)or(U_doc.d_' +
        'peredano is null)) and (o.o_del is null or (o.o_del=0) )'
      'order by o_data descending, o_ID')
    Left = 301
    Top = 200
  end
end
