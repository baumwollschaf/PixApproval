unit ServerContainerUnit1;

interface

uses System.SysUtils, System.Classes,
  Vcl.SvcMgr,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  IPPeerServer, IPPeerAPI, Datasnap.DSAuth;

type
  TServerContainer1 = class(TService)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSAuthenticationManager1: TDSAuthenticationManager;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManager1UserAuthorize(Sender: TObject;
      EventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DSAuthenticationManager1UserAuthenticate(Sender: TObject;
      const Protocol, Context, User, Password: string; var valid: Boolean;
      UserRoles: TStrings);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    { Private-Deklarationen }
  protected
    function DoStop: Boolean; override;
    function DoPause: Boolean; override;
    function DoContinue: Boolean; override;
    procedure DoInterrogate; override;
  public
    function GetServiceController: TServiceController; override;
  end;

var
  ServerContainer1: TServerContainer1;

implementation


{$R *.dfm}

uses
  Winapi.Windows,
  ServerMethodsUnit1;

procedure TServerContainer1.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit1.TServerMethods1;
end;

procedure TServerContainer1.DSAuthenticationManager1UserAuthenticate(
  Sender: TObject; const Protocol, Context, User, Password: string;
  var valid: Boolean; UserRoles: TStrings);
begin
  { TODO : Validieren Sie den Client-Benutzer und das Passwort.
    Wenn eine rollenbasierte Autorisierung erforderlich ist, fügen Sie dem Parameter UserRoles Rollennamen hinzu  }
  valid := True;
end;

procedure TServerContainer1.DSAuthenticationManager1UserAuthorize(
  Sender: TObject; EventObject: TDSAuthorizeEventObject;
  var valid: Boolean);
begin
  { TODO : Autorisieren Sie einen Benutzer zum Ausführen einer Methode.
    Verwenden Sie Werte von EventObject, wie z.B. UserName, UserRoles, AuthorizedRoles und DeniedRoles.
    Verwenden Sie DSAuthenticationManager1.Roles zum Definieren von 'Authorized'- und 'Denied'-Rollen
    für bestimmte Servermethoden. }
  valid := True;
end;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  ServerContainer1.Controller(CtrlCode);
end;

function TServerContainer1.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

function TServerContainer1.DoContinue: Boolean;
begin
  Result := inherited;
  DSServer1.Start;
end;

procedure TServerContainer1.DoInterrogate;
begin
  inherited;
end;

function TServerContainer1.DoPause: Boolean;
begin
  DSServer1.Stop;
  Result := inherited;
end;

function TServerContainer1.DoStop: Boolean;
begin
  DSServer1.Stop;
  Result := inherited;
end;

procedure TServerContainer1.ServiceStart(Sender: TService; var Started: Boolean);
begin
  DSServer1.Start;
end;
end.

