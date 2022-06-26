program pcSrv;

uses
  Vcl.SvcMgr,
  ServerMethodsUnit1 in 'ServerMethodsUnit1.pas' {ServerMethods1: TDataModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer1: TService},
  pa.Utils in '..\Shared\pa.Utils.pas',
  pa.Utils.Settings in '..\Shared\pa.Utils.Settings.pas';

{$R *.RES}

begin
  // Für Windows 2003 Server muss StartServiceCtrlDispatcher vor
  // CoRegisterClassObject aufgerufen werden, das indirekt von
  // Application.Initialize aufgerufen werden kann. TServiceApplication.DelayInitialize
  // ermöglicht, dass Application.Initialize von TService.Main (nach
  // StartServiceCtrlDispatcher) aufgerufen werden kann.
  //
  // Eine verzögerte Initialisierung des Application-Objekts kann sich auf
  // Ereignisse auswirken, die dann vor der Initialisierung ausgelöst werden,
  // wie z.B. TService.OnCreate. Dies wird nur empfohlen, wenn ServiceApplication
  // ein Klassenobjekt bei OLE registriert und für die Verwendung mit
  // Windows 2003 Server vorgesehen ist.
  //
  // Application.DelayInitialize := True;
  //
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

