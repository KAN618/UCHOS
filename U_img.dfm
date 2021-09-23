object F_img: TF_img
  Left = 0
  Top = 0
  ClientHeight = 840
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 799
    Width = 642
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 587
    ExplicitWidth = 534
    object Button1: TButton
      Left = 8
      Top = 9
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 82
      Top = 9
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 178
      Top = 9
      Width = 106
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 285
      Top = 9
      Width = 116
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 401
      Top = 9
      Width = 123
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1073#1091#1092#1077#1088#1072
      TabOrder = 4
      OnClick = Button5Click
    end
  end
  object DBImage1: TDBImage
    Left = 0
    Top = 0
    Width = 642
    Height = 799
    Align = alClient
    DataField = 'D_SCAN'
    DataSource = Form1.DS1
    Proportional = True
    TabOrder = 1
    ExplicitWidth = 534
    ExplicitHeight = 587
  end
  object OPDialog: TOpenPictureDialog
    DefaultExt = '*.bmp'
    Filter = 
      #1042#1089#1077' (*.*)|*.*|Portable Network Graphics (*.png)|*.png|JPEG Image' +
      ' File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.b' +
      'mp)|*.bmp|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.w' +
      'mf|TIFF Images (*.tif)|*.tif|TIFF Images (*.tiff)|*.tiff'
    Left = 238
    Top = 39
  end
  object SPDialog: TSavePictureDialog
    DefaultExt = 'jpeg'
    Filter = 
      'Bitmaps (*.bmp)|*.bmp|Portable Network Graphics (*.png)|*.png|JP' +
      'EG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitm' +
      'aps (*.bmp)|*.bmp|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.' +
      'wmf)|*.wmf|TIFF Images (*.tif)|*.tif|TIFF Images (*.tiff)|*.tiff'
    Left = 292
    Top = 40
  end
end
