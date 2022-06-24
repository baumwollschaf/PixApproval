unit pa.Forms.ApplicationPAManMainForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  pa.Utils.Settings,
  Vcl.Dialogs,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.ODBCBase,
  Data.DB,
  FireDAC.Comp.Client, cxClasses, dxBar, System.Actions, Vcl.ActnList;

type
  TfrmApplicationPAManMainForm = class(TForm)
    Connection: TFDConnection;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
  private
    procedure Connect;
  public
    { Public-Deklarationen }
  end;

var
  frmApplicationPAManMainForm: TfrmApplicationPAManMainForm;

implementation

{$R *.dfm}

procedure TfrmApplicationPAManMainForm.Connect;
begin
  Connection.Connected := False;
  with Connection.Params do
  begin
    Clear;
    Add('DriverID=MSSQL');
    Add('User_Name=' + TSettings.UserName);
    Add('Password=' + TSettings.Password);
    Add('Server=' + TSettings.Server);
    Add('Database=' + TSettings.DataBaseName);
  end;
  Connection.Connected := True;
end;

procedure TfrmApplicationPAManMainForm.FormCreate(Sender: TObject);
begin
  TSettings.LoadSave(True);
  Connect;
end;

end.
