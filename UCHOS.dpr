program UCHOS;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  U_ini in 'U_ini.pas' {F_ini},
  U_edit in 'U_edit.pas' {F_edit},
  U_find in 'U_find.pas' {F_find},
  Vcl.Themes,
  Vcl.Styles,
  U_img in 'U_img.pas' {F_img},
  U_FIO in 'U_FIO.pas' {F_FIO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Ó÷åò ÎÑ';
  TStyleManager.TrySetStyle('Golden Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TF_FIO, F_FIO);
  Application.Run;

end.
