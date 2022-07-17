object F_FIO: TF_FIO
  Left = 0
  Top = 0
  Caption = #1060#1048#1054
  ClientHeight = 299
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 258
    Width = 745
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 296
      Top = 6
      Width = 224
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 745
    Height = 258
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'F_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'U_NAME'
        Title.Caption = #1060#1048#1054
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'U_MOL'
        Title.Caption = #1052#1054#1051
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'U_DEP'
        Title.Caption = #1044#1077#1087#1072#1088#1090#1072#1084#1077#1085#1090' '
        Width = 300
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = T
    Left = 176
    Top = 152
  end
  object T: TIBTable
    Database = Form1.DB
    Transaction = T_FIO
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'F_ID'
        DataType = ftInteger
      end
      item
        Name = 'U_NAME'
        DataType = ftWideString
        Size = 300
      end
      item
        Name = 'U_DEP'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'U_MOL'
        DataType = ftWideString
        Size = 300
      end>
    StoreDefs = True
    TableName = 'U_FIO'
    UniDirectional = False
    Left = 264
    Top = 64
  end
  object T_FIO: TIBTransaction
    Active = True
    DefaultDatabase = Form1.DB
    Left = 200
    Top = 64
  end
end
