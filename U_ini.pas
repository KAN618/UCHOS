unit U_ini;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ValEdit,
    Vcl.ExtCtrls;

type
    TF_ini = class(TForm)
        Panel1: TPanel;
        VLE1: TValueListEditor;
        Button1: TButton;
        Button2: TButton;
        procedure Button1Click(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure Button2Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    F_ini: TF_ini;

implementation

uses unit1;
{$R *.dfm}

procedure TF_ini.Button1Click(Sender: TObject);
begin
    VLE1.Strings.SaveToFile(form1.exepath + inifilename);
    form1.INISL.loadfromFile(form1.exepath + inifilename);
end;

procedure TF_ini.Button2Click(Sender: TObject);
begin
    close;
end;

procedure TF_ini.FormCreate(Sender: TObject);
begin
    VLE1.Strings := form1.INISL;
end;

end.
