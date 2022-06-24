program paMan;

uses
  Vcl.Forms,
  pa.Forms.ApplicationPAManMainForm in 'pa.Forms.ApplicationPAManMainForm.pas' {frmApplicationPAManMainForm},
  pa.Utils.Settings in '..\Shared\pa.Utils.Settings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmApplicationPAManMainForm, frmApplicationPAManMainForm);
  Application.Run;
end.
