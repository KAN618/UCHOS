unit U_find;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, ComObj,Vcl.Buttons, Vcl.ExtCtrls, IBX.IBDatabase, IBX.IBSQL,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TF_find = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Button1: TButton;
    DBGrid1: TDBGrid;
    tran: TIBTransaction;
    DS1: TDataSource;
    Q1: TIBQuery;
    DSet1: TIBDataSet;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_find: TF_find;

implementation

{$R *.dfm}

uses Unit1, U_edit;

procedure TF_find.BitBtn1Click(Sender: TObject);
var i,j:integer;
begin
 try
 if tran.Active then tran.Rollback;
 DSet1.Close;
 DSet1.ParamByName('FIO').AsString:=TRim(Edit1.Text);
 DSet1.ParamByName('SN').AsString:=Trim(Edit2.Text);
 tran.Active:=true;
 DSet1.Open;
 DSet1.First;
 {DS1.Enabled:=False;
 DSet1.FetchAll;
 DSet1.First;
 j:= DSet1.RecordCount;
 for i:=1 to j do
 begin
   if length(trim(DSet1.FieldByName('O_SN').AsString))>0 then
   begin
     Q1.Close;
     Q1.SQL[1]:='where ((o_o_FIO LIKE :FIO) or (o_o_MOL LIKE :FIO)) and ((o_del is NULL) or ( o_del<>1)) and O_SN=:SN';
     Q1.ParamByName('SN').AsString:=DSet1.FieldByName('O_SN').AsString;
     Q1.ParamByName('FIO').AsString:=Edit1.Text+'%';
     Q1.Open;
     if Q1.RecordCount>=1 then begin DSet1.Delete; continue;end;
   end else // если Серийника нет то смотрим инвентарник
   if length(trim(DSet1.FieldByName('O_INV').AsString))>0 then
   begin
     Q1.Close;
     Q1.SQL[1]:='where ((o_o_FIO LIKE :FIO) or (o_o_MOL LIKE :FIO)) and ((o_del is NULL) or ( o_del<>1)) and O_INV=:INV';
     Q1.ParamByName('INV').AsString:=DSet1.FieldByName('O_INV').AsString;
     Q1.ParamByName('FIO').AsString:=Edit1.Text+'%';
     Q1.Open;
     if Q1.RecordCount>=1 then begin DSet1.Delete; continue;end;
   end else
   if length(trim(DSet1.FieldByName('O_NAME').AsString))>0 then
   begin
     Q1.Close;
     Q1.SQL[1]:='where ((o_o_FIO LIKE :FIO) or (o_o_MOL LIKE :FIO)) and ((o_del is NULL) or ( o_del<>1)) and O_NAME=:ONAME';
     Q1.ParamByName('ONAME').AsString:=DSet1.FieldByName('O_NAME').AsString;
     Q1.ParamByName('FIO').AsString:=Edit1.Text+'%';
     Q1.Open;
     if Q1.RecordCount>=1 then  begin DSet1.Delete; continue;end;
   end;
   DSet1.Next;
 end;
  }
 finally
  //DS1.Enabled:=True;

 end;

end;

procedure TF_find.Button1Click(Sender: TObject);
begin
close;
end;

procedure TF_find.Button2Click(Sender: TObject);
var F: TF_edit;
  sl:TSTringList;
begin
    try
        F := TF_edit.Create(self);
        SL:= TSTringList.Create;
        Form1.DSet1.Insert;
        SL.Values['TYPE']:='Insert';
        SL.Values['D_O_FIO']:=DSet1.fieldByName('O_K_FIO').asString;
        SL.Values['D_O_MOL']:=DSet1.fieldByName('O_K_MOL').asString;
        SL.Values['D_O_DEP']:=DSet1.fieldByName('O_K_DEP').asString;
        SL.Values['O_NAME']:=DSet1.fieldByName('O_NAME').asString;
        SL.Values['O_SN']:=DSet1.fieldByName('O_SN').asString;
        SL.Values['O_INV']:=DSet1.fieldByName('O_INV').asString;
        F.showmodalPar(SL);
    finally
        FreeAndNil(F);
        FreeAndNil(SL);
    end;
end;

procedure TF_find.Button3Click(Sender: TObject);
var i:integer;
begin
try
        DS1.Enabled:=False;
        Word := CreateOleObject('Word.Application');
        Word.Visible := Visible;
        Word.Documents.Open(form1.pini('шаблон_нал'));
        // 'E:\KAN\Delphi\test\Win32\Release\Act2.docx');

        Word.Selection.Find.MatchSoundsLike := False;
        Word.Selection.Find.MatchAllWordForms := False;
        Word.Selection.Find.MatchWholeWord := False;
        Word.Selection.Find.Format := False;
        Word.Selection.Find.Forward := True;

        DSet1.First;
        for  i := 1 to DSet1.RecordCount do
        begin
          if i=1 then
          begin
            Word.Selection.Find.Text := '#DATA#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_DATA').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#NAME#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_NAME').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#FIO#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_K_FIO').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#MOL#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_K_MOL').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#SN#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_SN').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#IN#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_INV').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#DEP#';
            Word.Selection.Find.Replacement.Text :=DSet1.FieldByName('O_K_DEP').AsString;
            Word.Selection.Find.Execute(Replace := 2);
          end else
          begin
            Tbl:=Word.ActiveDocument.Tables.Item(1).Rows.Add;
            Tbl.Cells.item(1).Range.InsertAfter(inttostr(i));
            Tbl.Cells.item(2).Range.InsertAfter(DSet1.FieldByName('O_DATA').AsString);
            Tbl.Cells.item(3).Range.InsertAfter(DSet1.FieldByName('O_NAME').AsString);
            Tbl.Cells.item(4).Range.InsertAfter(DSet1.FieldByName('O_K_FIO').AsString);
            Tbl.Cells.item(5).Range.InsertAfter(DSet1.FieldByName('O_K_MOL').AsString);
            Tbl.Cells.item(6).Range.InsertAfter(DSet1.FieldByName('O_SN').AsString);
            Tbl.Cells.item(7).Range.InsertAfter(DSet1.FieldByName('O_INV').AsString);
            Tbl.Cells.item(8).Range.InsertAfter(DSet1.FieldByName('O_K_DEP').AsString);
          end;
          DSet1.Next;
        end;

   finally
        DS1.Enabled:=True;
        DSet1.first;

   end;
end;

procedure TF_find.Button4Click(Sender: TObject);
begin
try
  form1.DSet1.Close;  form1.Tran1.Rollback;

  form1.DSet1.SelectSQL[1]:='WHERE D_ID='+DSet1.FieldByName('O_DOC_ID').AsString;
  form1.Tran1.Active:=True;
  form1.DSet1.open;

  form1.Button3Click(Sender);

  form1.DSet1.Close;   form1.Tran1.Rollback;
  form1.DSet1.SelectSQL[1]:='WHERE (D_DEL is NULL) or  (D_DEL<>1)';
  form1.Tran1.Active:=True;
  form1.DSet1.open;
finally

end;
end;

procedure TF_find.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then  BitBtn1Click(Sender);
end;

procedure TF_find.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then  BitBtn1Click(Sender);
end;

end.
