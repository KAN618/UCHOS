unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,Vcl.Themes,ComObj,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
    IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet, Vcl.Grids, Vcl.DBGrids,
  IBX.IBQuery, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls;

const
    inifilename = '\uchos.ini';

type
    TForm1 = class(TForm)
        DB: TIBDatabase;
        Tran1: TIBTransaction;
        Panel1: TPanel;
        Button2: TButton;
        Panel2: TPanel;
        DBGrid1: TDBGrid;
        DSet1: TIBDataSet;
        DS1: TDataSource;
        B_basa: TButton;
        Button1: TButton;
        Button3: TButton;
        B_add: TButton;
        B_del: TButton;
    DSet1D_ID: TIntegerField;
    DSet1D_DATA: TDateField;
    DSet1D_NUM: TIBStringField;
    DSet1D_PRIM: TIBStringField;
    DSet1D_K_DEP: TIBStringField;
    DSet1D_K_MOL: TIBStringField;
    DSet1D_K_FIO: TIBStringField;
    DSet1D_O_DEP: TIBStringField;
    DSet1D_O_MOL: TIBStringField;
    DSet1D_O_FIO: TIBStringField;
    DSet1D_DEL: TIntegerField;
    DSet1D_AUTOR: TIBStringField;
    Menu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Sky1: TMenuItem;
    Glossy1: TMenuItem;
    SmokeyQuartsKamri1: TMenuItem;
    Glow1: TMenuItem;
    GoldenGrafit1: TMenuItem;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Label6: TLabel;
    R121: TMenuItem;
    Q1: TIBQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    DSet1D_DATAVV: TDateTimeField;
    DSet1D_SCAN: TBlobField;
    Edit1: TEdit;
    DSet1D_PEREDANO: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
        procedure FormCreate(Sender: TObject);
        procedure FormDestroy(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure B_basaClick(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure Button3Click(Sender: TObject);
        procedure B_addClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure B_delClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Sky1Click(Sender: TObject);
    procedure Glossy1Click(Sender: TObject);
    procedure SmokeyQuartsKamri1Click(Sender: TObject);
    procedure Glow1Click(Sender: TObject);
    procedure GoldenGrafit1Click(Sender: TObject);
    procedure R121Click(Sender: TObject);
    procedure DSet1NewRecord(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    private
        { Private declarations }
    public
        exepath: string;
        iddoc,numdoc:string;
        INISL: TStringList;
        function pIni(param: string): string;
        procedure SetIni(param,val: string);
        procedure DbConnect;
        { Public declarations }
    end;

var
    Form1: TForm1;
    Word,Tbl: variant;
    function FileVersion(const FileName: TFileName): String;
    function SimpSQL(SQL:string;D:TIBDATABASE ;T:TIBTransaction):string;
implementation

uses U_ini, U_edit, U_find;
{$R *.dfm}

function FileVersion(const FileName: TFileName): String;
var
  VerInfoSize: Cardinal;
  VerValueSize: Cardinal;
  Dummy: Cardinal;
  PVerInfo: Pointer;
  PVerValue: PVSFixedFileInfo;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
  GetMem(PVerInfo, VerInfoSize);
  try
    if GetFileVersionInfo(PChar(FileName), 0, VerInfoSize, PVerInfo) then
      if VerQueryValue(PVerInfo, '\', Pointer(PVerValue), VerValueSize) then
        with PVerValue^ do
          Result := Format('v%d.%d.%d build %d', [
            HiWord(dwFileVersionMS), //Major
            LoWord(dwFileVersionMS), //Minor
            HiWord(dwFileVersionLS), //Release
            LoWord(dwFileVersionLS)]); //Build
  finally
    FreeMem(PVerInfo, VerInfoSize);
  end;
end;

 function SimpSQL(SQL:string;D:TIBDATABASE ;T:TIBTransaction):string;
var
    Q:TIBQuery;
    TrNil:boolean;
begin
  try
    if not D.Connected then exit;
    if T=nil then
     begin
        T:=TIBTransaction.Create(nil);
        TrNil:=true;
     end;
    Q:=TIBQuery.Create(nil);
    T.DefaultDatabase:=D;
    if not T.Active then T.Active:=true;
    Q.SQL.Text:=sql;
    Q.Transaction:=T;
    Q.Database:=D;
    try

      if pos('SELECT',AnsiUpperCase(Q.SQL.Text))>0 then begin  Q.open; result:=Q.Fields[0].asstring;end
      else begin Q.Prepare; Q.ExecSQL; result:='1'; end;
    except
     result:='0';
    end;
    Q.Close;
 finally
    if Q<>nil then FreeAndNil(Q);
    if TrNil then begin t.commit;FreeAndNil(T); end;
 end;

end;

procedure TForm1.SetIni(param,val: string);
begin
  INISL.Values[param]:= val;
end;

function TForm1.pini(param: string): string;
begin
    try
        result := trim(INISL.Values[param]);
    finally;
    end;
end;

procedure TForm1.R121Click(Sender: TObject);  /// передача в Р12
var i:integer;
begin
   try
        Word := CreateOleObject('Word.Application');
        Word.Visible := Visible;
        Word.Documents.Open(form1.pini('шаблон_2R12'));
        // 'E:\KAN\Delphi\test\Win32\Release\Act2.docx');

        Word.Selection.Find.MatchSoundsLike := False;
        Word.Selection.Find.MatchAllWordForms := False;
        Word.Selection.Find.MatchWholeWord := False;
        Word.Selection.Find.Format := False;
        Word.Selection.Find.Forward := True;

        Q1.Open;
        Q1.FetchAll;
        Q1.First;
        for  i := 1 to Q1.RecordCount do
        begin
          if i=1 then
          begin
            Word.Selection.Find.Text := '#DATA#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_DATA').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#NAME#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_NAME').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#FIO#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_K_FIO').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#MOL#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_K_MOL').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#SN#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_SN').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#IN#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_INV').AsString;
            Word.Selection.Find.Execute(Replace := 2);
            Word.Selection.Find.Text := '#DEP#';
            Word.Selection.Find.Replacement.Text :=Q1.FieldByName('O_K_DEP').AsString;
            Word.Selection.Find.Execute(Replace := 2);
          end else
          begin
            Tbl:=Word.ActiveDocument.Tables.Item(1).Rows.Add;
            Tbl.Cells.item(1).Range.InsertAfter(inttostr(i));
            Tbl.Cells.item(2).Range.InsertAfter(Q1.FieldByName('O_DATA').AsString);
            Tbl.Cells.item(3).Range.InsertAfter(Q1.FieldByName('O_NAME').AsString);
            Tbl.Cells.item(4).Range.InsertAfter(Q1.FieldByName('O_K_FIO').AsString);
            Tbl.Cells.item(5).Range.InsertAfter(Q1.FieldByName('O_K_MOL').AsString);
            Tbl.Cells.item(6).Range.InsertAfter(Q1.FieldByName('O_SN').AsString);
            Tbl.Cells.item(7).Range.InsertAfter(Q1.FieldByName('O_INV').AsString);
            Tbl.Cells.item(8).Range.InsertAfter(Q1.FieldByName('O_K_DEP').AsString);
          end;
          Q1.Next;
        end;

   finally
       Q1.Close;

   end;
end;

procedure TForm1.Sky1Click(Sender: TObject);
begin
    TStyleManager.TrySetStyle('Sky',False);
    SetIni('Тема','Sky');
end;

procedure TForm1.SmokeyQuartsKamri1Click(Sender: TObject);
begin
    TStyleManager.TrySetStyle('Smokey Quartz Kamri',False);
    SetIni('Тема','Smokey Quartz Kamri');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
    F: TF_ini;
begin
    try
        F := TF_ini.Create(self);
        F.showmodal;
    finally
        FreeAndNil(F);
    end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
    F: TF_edit;
begin
    try
        F := TF_edit.Create(self);
        F.showmodal;
    finally
        FreeAndNil(F);
    end;

end;

procedure TForm1.Button4Click(Sender: TObject);
//var
  //Bitmap : TBitmap

begin
 //Bitmap := TBitMap.Create;
 try
  // Bitmap.LoadFromClipBoardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
   //image1.Picture.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
   //Canvas.draw(0,0,Bitmap);
 finally
   //Bitmap.Free;
   //Clipboard.Clear;
 end;

end;

procedure TForm1.B_addClick(Sender: TObject);
var
    F: TF_edit;
begin
    try
        F := TF_edit.Create(self);
        DSet1.Insert;
        F.showmodal;
    finally
        FreeAndNil(F);
    end;

end;
procedure TForm1.DbConnect;
begin
  try
    if db.Connected then db.close;
      db.Params.Clear;
      db.DatabaseName:=pini('DBName');
      db.Params.Add('user_name='+pini('user_name'));
      db.Params.Add('password='+pini('password'));
      db.Params.Add('lc_ctype=WIN1251');
      db.open;       //   if d.Connected then begin B_Connect.Down:=true; B_Connect.Font.Color:=clGreen; end
 //                    else begin B_Connect.Down:=false;B_Connect.Font.Color:=clRed; end;
  except
       on E: Exception do showmessage(pini('DBName')+'    connect BAD :='+E.Message);
  end;
end;


procedure TForm1.B_basaClick(Sender: TObject);
begin
    try
            DbConnect;
            Tran1.StartTransaction;
            DSet1.Open;
        finally;
        end;


end;

procedure TForm1.B_delClick(Sender: TObject);
begin
 //if MessageDlg('Точно удаляем документ??',mtConfirmation, [mbYes, mbNo], 0) = mrYes then DSet1.Delete;
  if MessageBox(handle, PChar('Точно удаляем документ??'), PChar('Удаление!'), MB_YESNO+MB_ICONWARNING)= IDYES then
  begin
    DSet1.Delete;
    Tran1.CommitRetaining;
  end;

end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
    Form1.Button3Click(self);
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

 case Form1.DSet1.FieldByName('D_PEREDANO').AsInteger of
 1:  DBGrid1.Canvas.Brush.Color:= clGray;//clInactiveCaption;  // Передано в Р12
 2:  DBGrid1.Canvas.Brush.Color:= clLime;  // В процессе передачи
 3:  DBGrid1.Canvas.Brush.Color:= clLtGray;  //  Не требуется передача
 end;
 DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.DSet1NewRecord(DataSet: TDataSet);
begin
    iddoc:=SimpSQL('select  GEN_ID(GEN_U_DOC_ID ,1) from RDB$DATABASE',form1.DB, nil);
    numdoc:=SimpSQL('select  GEN_ID(new_doc_num ,1) from RDB$DATABASE',form1.DB, nil);
    if length(iddoc)>0 then  Form1.DSet1.FieldByName('D_ID').AsInteger:=strtoint(iddoc);
    if length(numdoc)>0 then Form1.DSet1.FieldByName('D_NUM').Asstring:='2021_'+numdoc;
    Form1.DSet1.FieldByName('D_DATA').AsDateTime:=now;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var
  FIO,where:string;
begin
   FIO:=TRim(Edit1.Text);
   if length(FIO)>=1 then where:='WHERE ((D_K_FIO LIKE '''+FIO+'%'')or(D_K_MOL LIKE '''+FIO+'%'')) and((D_DEL is NULL) or  (D_DEL<>1))'
      else where:='WHERE ((D_DEL is NULL) or  (D_DEL<>1))';
  try
    if tran1.Active then tran1.Rollback;
    DSet1.Close;
    DSet1.selectSQL[1]:=where;
    tran1.Active:=true;
    DSet1.Open;
    DSet1.First;
  finally

  end
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

    INISL := TStringList.Create;
    exepath := ExtractFilePath(ParamStr(0));
    try // try loasd ini
        INISL.LoadFromFile(exepath + inifilename);
        TStyleManager.TrySetStyle(pini('Тема'),false);
        if pini('ConnectOnStart') = '1' then
            try
                DbConnect;
                Tran1.StartTransaction;
                DSet1.Open;
            except
                showmessage('Ошибка подключения к базе');
            end;




    except
        showmessage('Ошибка INI');
    end; // try loasd ini
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
    try
        INISL.SaveToFile(exepath + inifilename);
    finally
        FreeAndNil(INISL);
    end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if form1.ActiveControl<>Edit1 Then
  begin
    Edit1.Text:= Edit1.Text+Key;
    Form1.ActiveControl:=Edit1;
    Edit1.SelStart:= Length(Edit1.Text);
  end;
 //Edit1.Text:= Edit1.Text+Key;
end;

procedure TForm1.Glossy1Click(Sender: TObject);
begin
   TStyleManager.TrySetStyle('Iceberg Classico',false);
   SetIni('Тема','Iceberg Classico');
end;

procedure TForm1.Glow1Click(Sender: TObject);
begin
    TStyleManager.TrySetStyle('Cyan Dusk',false);
    SetIni('Тема','Cyan Dusk');
end;

procedure TForm1.GoldenGrafit1Click(Sender: TObject);
begin
     TStyleManager.TrySetStyle('Golden Graphite',false);
    SetIni('Тема','Golden Graphite');
end;

procedure TForm1.N3Click(Sender: TObject);
var
    F: TF_find;
begin
    try
        F := TF_find.Create(self);
        F.showmodal;
    finally
        FreeAndNil(F);
    end;


end;

end.
