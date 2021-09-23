unit U_edit;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, ComObj, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
    Vcl.Mask, Vcl.DBCtrls, Data.DB, IBX.IBCustomDataSet, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.Buttons, Vcl.ComCtrls;

type
    TF_edit = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        Button1: TButton;
        Button2: TButton;
        Button3: TButton;
        DBEdit1: TDBEdit;
        Label1: TLabel;
        Label2: TLabel;
        Label3: TLabel;
        Bevel1: TBevel;
        Label4: TLabel;
        Bevel2: TBevel;
        Label5: TLabel;
        Label6: TLabel;
        DBEdit4: TDBEdit;
        Label7: TLabel;
        Label8: TLabel;
        DBEdit6: TDBEdit;
        Label9: TLabel;
        Label13: TLabel;
        DBComboBox1: TDBComboBox;
        DBComboBox2: TDBComboBox;
        Label14: TLabel;
        DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    ODSet1: TIBDataSet;
    ODS2: TDataSource;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    ODSet1O_ID: TIntegerField;
    ODSet1O_DATA: TDateField;
    ODSet1O_K_DEP: TIBStringField;
    ODSet1O_O_DEP: TIBStringField;
    ODSet1O_K_FIO: TIBStringField;
    ODSet1O_O_FIO: TIBStringField;
    ODSet1O_K_MOL: TIBStringField;
    ODSet1O_O_MOL: TIBStringField;
    ODSet1O_NAME: TIBStringField;
    ODSet1O_SN: TIBStringField;
    ODSet1O_INV: TIBStringField;
    ODSet1O_PRIM: TIBStringField;
    ODSet1O_AUTOR: TIBStringField;
    ODSet1O_DATAVV: TDateTimeField;
    ODSet1O_DOC_ID: TIntegerField;
    ODSet1O_DEL: TIntegerField;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    SpeedButton1: TSpeedButton;
    PMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DTPicker1: TDateTimePicker;
    DBComboBox3: TDBComboBox;
    DBText2: TDBText;
    Label10: TLabel;
    DBImage1: TDBImage;
    N3: TMenuItem;
    N4: TMenuItem;
    DBRadioGroup1: TDBRadioGroup;
        procedure Button3Click(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ODSet1NewRecord(DataSet: TDataSet);
    procedure ODSet1UpdateRecord(DataSet: TDataSet; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure DBComboBox3Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DTPicker1Change(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    private
        { Private declarations }
    public
     //iddoc,numdoc:string;
     procedure ShowModalPar(Param: TStringList);
        { Public declarations }
    end;

var
    F_edit: TF_edit;
    Word,Tbl: variant;

implementation

{$R *.dfm}

uses Unit1,U_img;

procedure TF_edit.ShowModalPar(Param: TStringList);
begin
    if Param.Values['TYPE']='Insert' then
    try
        Form1.DSet1.fieldByName('D_O_FIO').asString:=Param.Values['D_O_FIO'];
        Form1.DSet1.fieldByName('D_O_MOL').asString:=Param.Values['D_O_MOL'];
        Form1.DSet1.fieldByName('D_O_DEP').asString:=Param.Values['D_O_DEP'];
        ODSet1.Open;
        ODSet1.insert;
        ODSet1.FieldByName('O_DOC_ID').AsString:=  Form1.DSet1.fieldByName('D_ID').asString;
        ODSet1.fieldByName('O_NAME').asString:=Param.Values['O_NAME'];
        ODSet1.fieldByName('O_SN').asString:=Param.Values['O_SN'];
        ODSet1.fieldByName('O_INV').asString:=Param.Values['O_INV'];
       //ODSet1.Post;
    finally
      ShowModal;
    end;
end;

procedure TF_edit.Button1Click(Sender: TObject);
var i:integer;
begin
    ODS2.DataSet:=nil;
    if ODSet1.State in [dsInsert, dsEdit] then  ODSet1.Post;
    if form1.DSet1.State in [dsInsert, dsEdit] then form1.DSet1.Post;

      ODSet1.FetchAll;
      ODSet1.First;
        for i := 1 to ODSet1.RecordCount do
        begin
          ODSet1.Edit;
          ODSet1.FieldByName('O_DATA').AsString:=Form1.DSet1.FieldByName('D_DATA').AsString;
          ODSet1.FieldByName('O_DOC_ID').AsString:=Form1.DSet1.FieldByName('D_ID').AsString;
          ODSet1.FieldByName('O_K_DEP').AsString:=Form1.DSet1.FieldByName('D_K_DEP').AsString;
          ODSet1.FieldByName('O_O_DEP').AsString:=Form1.DSet1.FieldByName('D_O_DEP').AsString;
          ODSet1.FieldByName('O_K_FIO').AsString:=Form1.DSet1.FieldByName('D_K_FIO').AsString;
          ODSet1.FieldByName('O_O_FIO').AsString:=Form1.DSet1.FieldByName('D_O_FIO').AsString;
          ODSet1.FieldByName('O_K_MOL').AsString:=Form1.DSet1.FieldByName('D_K_MOL').AsString;
          ODSet1.FieldByName('O_O_MOL').AsString:=Form1.DSet1.FieldByName('D_O_MOL').AsString;
          ODSet1.Post;
          ODSet1.Next;
        end;


    form1.Tran1.Commit;
    form1.Tran1.Active:=true;
    form1.DSet1.open;
    close;
end;

procedure TF_edit.Button2Click(Sender: TObject);
begin
    form1.Tran1.Rollback;
    form1.Tran1.Active:=true;
    form1.DSet1.open;
    close;
end;

procedure TF_edit.Button3Click(Sender: TObject);
 var i:integer;
begin
    try
        Word := CreateOleObject('Word.Application');
        Word.Visible := Visible;
        Word.Documents.Open(form1.pini('шаблон_АКТА'));
        // 'E:\KAN\Delphi\test\Win32\Release\Act2.docx');

        Word.Selection.Find.MatchSoundsLike := False;
        Word.Selection.Find.MatchAllWordForms := False;
        Word.Selection.Find.MatchWholeWord := False;
        Word.Selection.Find.Format := False;
        Word.Selection.Find.Forward := True;
        // Word.Selection.Find.ClearFormatting;
        // Word.Selection.Find.Replacement.Text:=ReplaceText;

        Word.Selection.Find.Text := '#ID#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_NUM').AsString;
        Word.Selection.Find.Execute(Replace := 2);

        Word.Selection.Find.Text := '#O_DEP#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_O_DEP').AsString;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#K_DEP#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_K_DEP').AsString;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#DATA#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_DATA').AsDateTime;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#O_MOL#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_O_MOL').AsString;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#K_MOL#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_K_MOL').AsString;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#PRIM#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_PRIM').AsString;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#O_FIO#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_O_FIO').AsString;
        Word.Selection.Find.Execute(Replace := 2);
        Word.Selection.Find.Text := '#K_FIO#';
        Word.Selection.Find.Replacement.Text :=
          form1.DSet1.FieldByName('D_K_FIO').AsString;
        Word.Selection.Find.Execute(Replace := 2);


        ODSet1.FetchAll;
        ODSet1.First;
        for  i := 1 to ODSet1.RecordCount do
        begin
          if i=1 then
          begin
            Word.Selection.Find.Text := '#NAME'+inttostr(i)+'#';
            Word.Selection.Find.Replacement.Text :=
            ODSet1.FieldByName('O_NAME').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#SN'+inttostr(i)+'#';
            Word.Selection.Find.Replacement.Text :=
            ODSet1.FieldByName('O_SN').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#IN'+inttostr(i)+'#';
            Word.Selection.Find.Replacement.Text :=
            ODSet1.FieldByName('O_INV').AsString;
            Word.Selection.Find.Execute(Replace := 2);
          end else
          begin
            Tbl:=Word.ActiveDocument.Tables.Item(2).Rows.Add;
            Tbl.Cells.item(1).Range.InsertAfter(inttostr(i));
            Tbl.Cells.item(2).Range.InsertAfter(ODSet1.FieldByName('O_NAME').AsString);
            Tbl.Cells.item(3).Range.InsertAfter('шт');
            Tbl.Cells.item(4).Range.InsertAfter('1');
            Tbl.Cells.item(5).Range.InsertAfter(ODSet1.FieldByName('O_SN').AsString);
            Tbl.Cells.item(6).Range.InsertAfter(ODSet1.FieldByName('O_INV').AsString);
          end;
          ODSet1.Next;
        end;


    finally

    end;
end;

procedure TF_edit.DTPicker1Change(Sender: TObject);
begin
if not ( Form1.DSet1.State  in [dsInsert, dsEdit]) then   Form1.DSet1.Edit;
Form1.DSet1.FieldByName('D_DATA').AsString:=DatetimetoStr(DTPicker1.Date);

end;

procedure TF_edit.DBComboBox3Change(Sender: TObject);
begin
DBMemo2.Refresh;
end;

procedure TF_edit.DBImage1Click(Sender: TObject);
var
  F:TF_img;
begin
    try
        F := TF_img.Create(self);
        F.showmodal;
    finally
        FreeAndNil(F);
    end;

end;

procedure TF_edit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Button2Click(self);
end;

procedure TF_edit.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then  close;

end;

procedure TF_edit.FormShow(Sender: TObject);
begin

  try
    ODSet1.Open;
   // Form1.DSet1.edit;
  finally

  end;
end;

procedure TF_edit.N1Click(Sender: TObject);
begin
if not (Form1.DSet1.State  in [dsInsert, dsEdit]) then   Form1.DSet1.Edit;
Form1.DSet1.FieldByName('D_O_DEP').Asstring:='МРФ Волга | Макрорегиональный филиал «Волга» | Блок информационных технологий | Отдел поддержки внутренних пользователей';
end;

procedure TF_edit.N3Click(Sender: TObject);
begin
if not (Form1.DSet1.State  in [dsInsert, dsEdit]) then   Form1.DSet1.Edit;
 Form1.DSet1.FieldByName('D_O_DEP').Asstring:='МРФ Волга | Макрорегиональный филиал «Волга» | Блок информационных технологий | Отдел поддержки внутренних пользователей';
 Form1.DSet1.FieldByName('D_O_MOL').Asstring:='Ханов Александр Николаевич';
 Form1.DSet1.FieldByName('D_O_FIO').Asstring:='Ханов Александр Николаевич';
end;

procedure TF_edit.N4Click(Sender: TObject);
begin
if not (Form1.DSet1.State  in [dsInsert, dsEdit]) then   Form1.DSet1.Edit;

 Form1.DSet1.FieldByName('D_O_DEP').Asstring:='МРФ Волга | Макрорегиональный филиал «Волга» | Блок информационных технологий | Отдел поддержки внутренних пользователей';
 Form1.DSet1.FieldByName('D_O_MOL').Asstring:='Ханов Александр Николаевич';
 Form1.DSet1.FieldByName('D_O_FIO').Asstring:='Сидоров Андрей Сергеевич';
end;

procedure TF_edit.ODSet1NewRecord(DataSet: TDataSet);
begin
  ODSet1.FieldByName('O_DATA').AsString:=Form1.DSet1.FieldByName('D_DATA').AsString;
  ODSet1.FieldByName('O_DOC_ID').AsString:=Form1.DSet1.FieldByName('D_ID').AsString;
  ODSet1.FieldByName('O_K_DEP').AsString:=Form1.DSet1.FieldByName('D_K_DEP').AsString;
  ODSet1.FieldByName('O_O_DEP').AsString:=Form1.DSet1.FieldByName('D_O_DEP').AsString;
  ODSet1.FieldByName('O_K_FIO').AsString:=Form1.DSet1.FieldByName('D_K_FIO').AsString;
  ODSet1.FieldByName('O_O_FIO').AsString:=Form1.DSet1.FieldByName('D_O_FIO').AsString;
  ODSet1.FieldByName('O_K_MOL').AsString:=Form1.DSet1.FieldByName('D_K_MOL').AsString;
  ODSet1.FieldByName('O_O_MOL').AsString:=Form1.DSet1.FieldByName('D_O_MOL').AsString;
end;

procedure TF_edit.ODSet1UpdateRecord(DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  ODSet1.FieldByName('O_DATA').AsString:=Form1.DSet1.FieldByName('D_DATA').AsString;
  ODSet1.FieldByName('O_DOC_ID').AsString:=Form1.DSet1.FieldByName('D_ID').AsString;
  ODSet1.FieldByName('O_K_DEP').AsString:=Form1.DSet1.FieldByName('D_K_DEP').AsString;
  ODSet1.FieldByName('O_O_DEP').AsString:=Form1.DSet1.FieldByName('D_O_DEP').AsString;
  ODSet1.FieldByName('O_K_FIO').AsString:=Form1.DSet1.FieldByName('D_K_FIO').AsString;
  ODSet1.FieldByName('O_O_FIO').AsString:=Form1.DSet1.FieldByName('D_O_FIO').AsString;
  ODSet1.FieldByName('O_K_MOL').AsString:=Form1.DSet1.FieldByName('D_K_MOL').AsString;
  ODSet1.FieldByName('O_O_MOL').AsString:=Form1.DSet1.FieldByName('D_O_MOL').AsString;
end;

procedure TF_edit.SpeedButton1Click(Sender: TObject);
begin
PMenu.Popup(Form1.Left+DBMemo2.Left,Form1.Top+DBMemo2.Top);
end;

end.
