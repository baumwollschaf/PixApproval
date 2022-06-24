unit pa.Utils.Settings;

interface

uses
  System.Classes,
  System.SysUtils,
  System.IniFiles,
  System.Win.Registry;

type
  TRegSettings = class
  strict private
    class var FAppDir: String;
    class var FAppExeName: String;
  public
    class property AppDir: String read FAppDir;
    class property AppExeName: String read FAppExeName;
    class constructor Create;
  end;

  TSettings = class
  strict private
    class var FUserName: String;
    class var FPassword: String;
    class var FServer: String;
    class var FDataBaseName: String;
  public
    class procedure LoadSave(ALoad: Boolean);
    class property UserName: String read FUserName write FUserName;
    class property Password: String read FPassword write FPassword;
    class property Server: String read FServer write FServer;
    class property DataBaseName: String read FDataBaseName write FDataBaseName;
  end;

implementation

{ TSettings }

class constructor TRegSettings.Create;
begin
  FAppExeName := ParamStr(0);
  FAppDir := ExcludeTrailingPathDelimiter(ExtractFilePath(FAppExeName));
  var
    Reg: TRegistryIniFile;
  Reg := TRegistryIniFile.Create('Software\PixApproval\Manager');
  with Reg do
  begin
    try
      WriteString('General', 'ManagerDir', FAppDir);
      WriteString('General', 'ManagerExeName', FAppExeName);
    finally
      Reg.Free;
    end;
  end;
end;

class procedure TSettings.LoadSave(ALoad: Boolean);
begin
  var
    Ini: TIniFile;
  Ini := TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini'));
  with Ini do
  begin
    try
      case ALoad of
        True:
          begin
            FUserName := ReadString('General', 'UserName', 'sa');
            FPassword := ReadString('General', 'Password', '1234');
            FServer := ReadString('General', 'Server', 'RM14\SQLEXPRESS');
            FDataBaseName := ReadString('General', 'DataBaseName', 'PixApproval');
          end;
        False:
          begin
            WriteString('General', 'UserName', FUserName);
            WriteString('General', 'Password', FPassword);
            WriteString('General', 'Server', FServer);
            WriteString('General', 'DataBaseName', FDataBaseName);
          end;
      end;

    finally
      Free;
    end;
  end;
end;

end.
