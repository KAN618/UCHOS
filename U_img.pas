unit U_img;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,Data.DB, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,Vcl.Clipbrd,
  Vcl.ExtDlgs, Vcl.Imaging.jpeg;

type
  TF_img = class(TForm)
    Panel1: TPanel;
    DBImage1: TDBImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    OPDialog: TOpenPictureDialog;
    SPDialog: TSavePictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_img: TF_img;

implementation
uses Unit1,U_edit;


{$R *.dfm}

procedure TF_img.Button1Click(Sender: TObject);    /// сохранить
begin
if form1.DSet1.State in [dsInsert, dsEdit] then form1.DSet1.Post;
close;
end;

procedure TF_img.Button2Click(Sender: TObject);       //отмена
begin
close;
end;

procedure TF_img.Button3Click(Sender: TObject);
var
  jp: TJPEGImage;
begin
if sPDialog.Execute then
  try
   jp := TJPEGImage.Create;
   jp.CompressionQuality:=strtoint(Form1.pini('CompressionQuality'));
   jp.Assign(DBImage1.Picture.Bitmap);
   jp.Compress;
   //jp.SaveToFile(SPDialog.FileName);
   DBImage1.Picture.Graphic:=jp;
   DBImage1.Picture.SaveToFile(SPDialog.FileName);
  finally
    FreeAndNil(jp);
  end;
end;

procedure TF_img.Button4Click(Sender: TObject);
begin
if OPDialog.Execute then
  begin
  if form1.DSet1.State in [dsBrowse] then form1.DSet1.Edit;
  DBImage1.Picture.LoadFromFile(OPDialog.FileName);
  end;
end;

procedure TF_img.Button5Click(Sender: TObject);
 var
  jp: TJPEGImage;
begin
  try
    if  Clipboard.HasFormat(CF_BITMAP)  then
    begin
      if form1.DSet1.State in [dsBrowse] then form1.DSet1.Edit;
      DBImage1.Picture.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);

      jp := TJPEGImage.Create;
      jp.CompressionQuality:=strtoint(Form1.pini('CompressionQuality'));
      jp.Assign(DBImage1.Picture.Bitmap);
      //jp.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
      jp.Compress;

      DBImage1.Picture.Graphic:=jp;
      //jp.SaveToClipboardFormat(cf_BitMap, ClipBoard.SetAsHandle(cf_Bitmap,0), 0);
      form1.DSet1.Post;

      //DBImage1.Picture.Assign(jp.Canvas);
     // DBImage1.Picture.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
    end;

  finally
    Clipboard.Clear;
    if jp<>nil then FreeAndNil(jp);
  end;
end;

procedure TF_img.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then  close;
end;

end.
