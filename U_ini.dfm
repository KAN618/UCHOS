object F_ini: TF_ini
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 387
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 346
    Width = 398
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object VLE1: TValueListEditor
    Left = 0
    Top = 0
    Width = 398
    Height = 346
    Align = alClient
    DisplayOptions = [doColumnTitles, doAutoColResize]
    FixedCols = 1
    KeyOptions = [keyEdit]
    ParentColor = True
    TabOrder = 1
    TitleCaptions.Strings = (
      #1055#1072#1088#1072#1084#1077#1090#1088
      #1047#1085#1072#1095#1077#1085#1080#1077)
    ColWidths = (
      196
      196)
  end
end
