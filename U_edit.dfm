object F_edit: TF_edit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 539
  ClientWidth = 621
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 498
    Align = alClient
    BevelOuter = bvLowered
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    ExplicitHeight = 459
    object Bevel1: TBevel
      Left = 16
      Top = 59
      Width = 289
      Height = 162
    end
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 36
      Height = 13
      Caption = #1040#1050#1058' '#8470
    end
    object Label2: TLabel
      Left = 23
      Top = 59
      Width = 171
      Height = 13
      Caption = #1044#1077#1087#1072#1088#1090#1072#1084#1077#1085#1090' ('#1084#1077#1089#1090#1086#1085#1072#1093#1086#1078#1076#1077#1085#1080#1077')'
    end
    object Label3: TLabel
      Left = 319
      Top = 40
      Width = 95
      Height = 13
      Caption = #1054#1058#1050#1059#1044#1040' '#1087#1077#1088#1077#1076#1072#1077#1084
    end
    object Label4: TLabel
      Left = 16
      Top = 40
      Width = 82
      Height = 13
      Caption = #1050#1054#1052#1059' '#1087#1077#1088#1077#1076#1072#1077#1084
    end
    object Bevel2: TBevel
      Left = 319
      Top = 59
      Width = 290
      Height = 162
    end
    object Label5: TLabel
      Left = 329
      Top = 59
      Width = 171
      Height = 13
      Caption = #1044#1077#1087#1072#1088#1090#1072#1084#1077#1085#1090' ('#1084#1077#1089#1090#1086#1085#1072#1093#1086#1078#1076#1077#1085#1080#1077')'
    end
    object Label6: TLabel
      Left = 23
      Top = 132
      Width = 23
      Height = 13
      Caption = #1052#1054#1051
    end
    object Label7: TLabel
      Left = 329
      Top = 132
      Width = 23
      Height = 13
      Caption = #1052#1054#1051
    end
    object Label8: TLabel
      Left = 23
      Top = 181
      Width = 146
      Height = 13
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' ('#1082#1090#1086' '#1087#1086#1083#1091#1095#1080#1083')'
    end
    object Label9: TLabel
      Left = 329
      Top = 181
      Width = 147
      Height = 13
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' ('#1082#1090#1086' '#1087#1077#1088#1077#1076#1072#1083')'
    end
    object Label13: TLabel
      Left = 16
      Top = 407
      Width = 99
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1082' '#1040#1050#1058#1091
    end
    object Label14: TLabel
      Left = 152
      Top = 7
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object DBText1: TDBText
      Left = 504
      Top = 8
      Width = 105
      Height = 17
      DataField = 'D_AUTOR'
      DataSource = Form1.DS1
    end
    object SpeedButton1: TSpeedButton
      Left = 581
      Top = 74
      Width = 25
      Height = 25
      Caption = '...'
      Spacing = 0
      OnClick = SpeedButton1Click
    end
    object DBText2: TDBText
      Left = 504
      Top = 25
      Width = 65
      Height = 17
      DataField = 'D_DATAVV'
      DataSource = Form1.DS1
    end
    object Label10: TLabel
      Left = 540
      Top = 407
      Width = 25
      Height = 13
      Caption = #1057#1082#1072#1085
    end
    object DTPicker1: TDateTimePicker
      Left = 249
      Top = 5
      Width = 18
      Height = 19
      Date = 44286.000000000000000000
      Time = 0.706769814816652800
      TabOrder = 10
      OnChange = DTPicker1Change
    end
    object DBEdit1: TDBEdit
      Left = 58
      Top = 5
      Width = 79
      Height = 19
      TabStop = False
      AutoSelect = False
      Color = clMoneyGreen
      DataField = 'D_NUM'
      DataSource = Form1.DS1
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 23
      Top = 146
      Width = 273
      Height = 19
      DataField = 'D_K_MOL'
      DataSource = Form1.DS1
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 23
      Top = 194
      Width = 273
      Height = 19
      DataField = 'D_K_FIO'
      DataSource = Form1.DS1
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 329
      Top = 145
      Width = 272
      Height = 21
      DataField = 'D_O_MOL'
      DataSource = Form1.DS1
      Items.Strings = (
        #1061#1072#1085#1086#1074' '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1053#1080#1082#1086#1083#1072#1077#1074#1080#1095
        #1047#1076#1086#1088#1086#1074' '#1057#1090#1072#1085#1080#1089#1083#1072#1074' '#1070#1088#1100#1077#1074#1080#1095
        #1044#1077#1090#1103#1085#1094#1077#1074' '#1042#1072#1076#1080#1084' '#1040#1085#1072#1090#1086#1083#1100#1077#1074#1080#1095)
      TabOrder = 3
    end
    object DBComboBox2: TDBComboBox
      Left = 328
      Top = 193
      Width = 272
      Height = 21
      DataField = 'D_O_FIO'
      DataSource = Form1.DS1
      Items.Strings = (
        #1061#1072#1085#1086#1074' '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1053#1080#1082#1086#1083#1072#1077#1074#1080#1095
        #1057#1080#1076#1086#1088#1086#1074' '#1040#1085#1076#1088#1077#1081' '#1057#1077#1088#1075#1077#1077#1074#1080#1095
        '')
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 181
      Top = 5
      Width = 66
      Height = 19
      DataField = 'D_DATA'
      DataSource = Form1.DS1
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 240
      Width = 553
      Height = 161
      DataSource = ODS2
      FixedColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'O_NAME'
          PickList.Strings = (
            #1053#1086#1091#1090#1073#1091#1082' Dell Latitude 3400'
            #1053#1086#1091#1090#1073#1091#1082' Dell Latitude 5300'
            #1053#1086#1091#1090#1073#1091#1082' TravelMate P238-M-501P'
            #1053#1086#1091#1090#1073#1091#1082' Lenovo L420'
            
              #1050#1086#1084#1087#1100#1102#1090#1077#1088' '#1084#1086#1085#1086#1073#1083#1086#1082' PowerCool P2160BK-460-i3-DRR4/8-M2SSD250-150W' +
              ' P2160BK 21.5" INTEL Core i3 9100F 4 '#1103#1076#1088#1072' 250'#1043#1073#1072#1081#1090' 8'#1043#1073#1072#1081#1090' 1920x1' +
              '080'#1087#1080#1082#1089' DDR4')
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1054#1057
          Width = 234
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'O_SN'
          Title.Alignment = taCenter
          Title.Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'O_INV'
          Title.Alignment = taCenter
          Title.Caption = #1048#1085#1074'. '#8470
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'O_PRIM'
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 100
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 575
      Top = 240
      Width = 25
      Height = 108
      DataSource = ODS2
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
      Ctl3D = True
      Kind = dbnVertical
      ParentCtl3D = False
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 23
      Top = 74
      Width = 273
      Height = 52
      DataField = 'D_K_DEP'
      DataSource = Form1.DS1
      TabOrder = 8
    end
    object DBMemo2: TDBMemo
      Left = 329
      Top = 74
      Width = 252
      Height = 52
      DataField = 'D_O_DEP'
      DataSource = Form1.DS1
      TabOrder = 9
    end
    object DBComboBox3: TDBComboBox
      Left = 16
      Top = 426
      Width = 506
      Height = 21
      DataField = 'D_PRIM'
      DataSource = Form1.DS1
      Items.Strings = (
        #1051#1080#1079#1080#1085#1075
        #1051#1080#1079#1080#1085#1075'. '#1052#1054#1051' '#1091#1090#1086#1095#1085#1080#1090#1100)
      TabOrder = 11
    end
    object DBImage1: TDBImage
      Left = 537
      Top = 426
      Width = 32
      Height = 21
      DataField = 'D_SCAN'
      DataSource = Form1.DS1
      Proportional = True
      TabOrder = 12
      OnClick = DBImage1Click
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 9
      Top = 453
      Width = 600
      Height = 39
      Caption = #1055#1077#1088#1077#1076#1072#1095#1072' '#1074' '#1056'12'
      Columns = 4
      DataField = 'D_PEREDANO'
      DataSource = Form1.DS1
      Items.Strings = (
        #1053#1077' '#1087#1077#1088#1077#1076#1072#1085#1086
        #1055#1077#1088#1077#1076#1072#1085#1086' '#1074' '#1056'12'
        #1042' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1087#1077#1088#1077#1076#1072#1095#1080
        #1053#1077' '#1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1087#1077#1088#1077#1076#1072#1095#1072)
      TabOrder = 13
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 498
    Width = 621
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 459
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 8
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 399
      Top = 6
      Width = 89
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1040#1050#1058
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object ODSet1: TIBDataSet
    Database = Form1.DB
    Transaction = Form1.Tran1
    ForcedRefresh = True
    OnNewRecord = ODSet1NewRecord
    OnUpdateRecord = ODSet1UpdateRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'Delete from U_OPER where O_ID=:O_ID')
    InsertSQL.Strings = (
      'insert into U_OPER '
      '('
      'O_DATA,'
      'O_K_DEP,'
      'O_O_DEP,'
      'O_K_FIO,'
      'O_O_FIO,'
      'O_K_MOL,'
      'O_O_MOL,'
      'O_NAME,'
      'O_SN,'
      'O_INV,'
      'O_PRIM,'
      'O_DOC_ID'
      ')'
      'values('
      ':O_DATA,'
      ':O_K_DEP,'
      ':O_O_DEP,'
      ':O_K_FIO,'
      ':O_O_FIO,'
      ':O_K_MOL,'
      ':O_O_MOL,'
      ':O_NAME,'
      ':O_SN,'
      ':O_INV,'
      ':O_PRIM,'
      ':O_DOC_ID'
      ')')
    RefreshSQL.Strings = (
      'Select * from U_OPER where o_id=:o_id ')
    SelectSQL.Strings = (
      'Select * '
      'from U_OPER '
      'where O_DOC_ID=:D_id '
      'order by o_id')
    ModifySQL.Strings = (
      'update U_OPER set'
      'O_DATA=:O_DATA,'
      'O_K_DEP=:O_K_DEP,'
      'O_O_DEP=:O_O_DEP,'
      'O_K_FIO=:O_K_FIO,'
      'O_O_FIO=:O_O_FIO,'
      'O_K_MOL=:O_K_MOL,'
      'O_O_MOL=:O_O_MOL,'
      'O_NAME=:O_NAME,'
      'O_SN=:O_SN,'
      'O_INV=:O_INV,'
      'O_PRIM=:O_PRIM,'
      'O_DOC_ID=:O_DOC_ID'
      'where O_ID=:O_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'O_ID'
    GeneratorField.Generator = 'GEN_U_OPER_ID'
    DataSource = Form1.DS1
    Left = 228
    Top = 309
    object ODSet1O_ID: TIntegerField
      FieldName = 'O_ID'
      Origin = 'U_OPER.O_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ODSet1O_DATA: TDateField
      FieldName = 'O_DATA'
      Origin = 'U_OPER.O_DATA'
    end
    object ODSet1O_K_DEP: TIBStringField
      FieldName = 'O_K_DEP'
      Origin = 'U_OPER.O_K_DEP'
      Size = 300
    end
    object ODSet1O_O_DEP: TIBStringField
      FieldName = 'O_O_DEP'
      Origin = 'U_OPER.O_O_DEP'
      Size = 300
    end
    object ODSet1O_K_FIO: TIBStringField
      FieldName = 'O_K_FIO'
      Origin = 'U_OPER.O_K_FIO'
      Size = 100
    end
    object ODSet1O_O_FIO: TIBStringField
      FieldName = 'O_O_FIO'
      Origin = 'U_OPER.O_O_FIO'
      Size = 100
    end
    object ODSet1O_K_MOL: TIBStringField
      FieldName = 'O_K_MOL'
      Origin = 'U_OPER.O_K_MOL'
      Size = 100
    end
    object ODSet1O_O_MOL: TIBStringField
      FieldName = 'O_O_MOL'
      Origin = 'U_OPER.O_O_MOL'
      Size = 100
    end
    object ODSet1O_NAME: TIBStringField
      FieldName = 'O_NAME'
      Origin = 'U_OPER.O_NAME'
      Size = 300
    end
    object ODSet1O_SN: TIBStringField
      FieldName = 'O_SN'
      Origin = 'U_OPER.O_SN'
      Size = 100
    end
    object ODSet1O_INV: TIBStringField
      FieldName = 'O_INV'
      Origin = 'U_OPER.O_INV'
      Size = 50
    end
    object ODSet1O_PRIM: TIBStringField
      FieldName = 'O_PRIM'
      Origin = 'U_OPER.O_PRIM'
      Size = 300
    end
    object ODSet1O_AUTOR: TIBStringField
      FieldName = 'O_AUTOR'
      Origin = 'U_OPER.O_AUTOR'
      Size = 100
    end
    object ODSet1O_DATAVV: TDateTimeField
      FieldName = 'O_DATAVV'
      Origin = 'U_OPER.O_DATAVV'
    end
    object ODSet1O_DOC_ID: TIntegerField
      FieldName = 'O_DOC_ID'
      Origin = 'U_OPER.O_DOC_ID'
    end
    object ODSet1O_DEL: TIntegerField
      FieldName = 'O_DEL'
      Origin = 'U_OPER.O_DEL'
    end
  end
  object ODS2: TDataSource
    DataSet = ODSet1
    Left = 276
    Top = 309
  end
  object PMenu: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    MenuAnimation = [maLeftToRight, maTopToBottom]
    Left = 410
    Top = 9
    object N1: TMenuItem
      Caption = 
        #1052#1056#1060' '#1042#1086#1083#1075#1072' | '#1052#1072#1082#1088#1086#1088#1077#1075#1080#1086#1085#1072#1083#1100#1085#1099#1081' '#1092#1080#1083#1080#1072#1083' '#171#1042#1086#1083#1075#1072#187' | '#1041#1083#1086#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085 +
        #1099#1093' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1081' | '#1054#1090#1076#1077#1083' '#1087#1086#1076#1076#1077#1088#1078#1082#1080' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1093' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '...'
    end
    object N3: TMenuItem
      Caption = #1061#1072#1085#1086#1074
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1057#1080#1076#1086#1088#1086#1074
      OnClick = N4Click
    end
  end
end
