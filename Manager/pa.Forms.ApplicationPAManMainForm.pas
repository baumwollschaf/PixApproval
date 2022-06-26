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
  FireDAC.Comp.Client,
  cxClasses,
  dxBar,
  System.Actions,
  Vcl.ActnList,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  cxDBData,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  dxBarBuiltInMenu,
  cxPC,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  cxSplitter;

type
  TfrmApplicationPAManMainForm = class(TForm)
    Connection: TFDConnection;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    dxBarButton1: TdxBarButton;
    cxPageControl1: TcxPageControl;
    TabCredit: TcxTabSheet;
    TabMandant: TcxTabSheet;
    TabSystem: TcxTabSheet;
    tblCredit: TFDTable;
    tblMandant: TFDTable;
    tblMandantUser: TFDTable;
    tblSystemUser: TFDTable;
    dsMandant: TDataSource;
    viewCredit: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsCredit: TDataSource;
    dsSystemUser: TDataSource;
    dsMandantUser: TDataSource;
    cxGrid2: TcxGrid;
    viewMandant: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxGrid3: TcxGrid;
    viewMandantUser: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    viewSystemUser: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    viewCreditGUID: TcxGridDBColumn;
    viewCreditMandantUserGUID: TcxGridDBColumn;
    viewCreditID: TcxGridDBColumn;
    viewCreditAnlageDatum: TcxGridDBColumn;
    viewCreditPic: TcxGridDBColumn;
    viewCreditPicHash: TcxGridDBColumn;
    viewCreditNotes: TcxGridDBColumn;
    viewCreditLongitude: TcxGridDBColumn;
    viewCreditLatitude: TcxGridDBColumn;
    viewCreditDone: TcxGridDBColumn;
    viewCreditDeleted: TcxGridDBColumn;
    tblCreditGUID: TGuidField;
    tblCreditMandantUserGUID: TGuidField;
    tblCreditID: TLargeintField;
    tblCreditAnlageDatum: TSQLTimeStampField;
    tblCreditPic: TBlobField;
    tblCreditPicHash: TWideMemoField;
    tblCreditNotes: TWideMemoField;
    tblCreditLongitude: TFMTBCDField;
    tblCreditLatitude: TFMTBCDField;
    tblCreditDone: TBooleanField;
    tblCreditDeleted: TBooleanField;
    tblMandantGUID: TGuidField;
    tblMandantName: TWideMemoField;
    tblMandantEMail: TWideMemoField;
    tblMandantTelefon: TWideMemoField;
    tblMandantFax: TWideMemoField;
    tblMandantAnlageDatum: TSQLTimeStampField;
    tblMandantSuspended: TBooleanField;
    tblMandantStrasse: TWideMemoField;
    tblMandantPLZ: TWideStringField;
    tblMandantOrt: TWideMemoField;
    tblMandantBundesland: TWideMemoField;
    tblMandantLand: TWideMemoField;
    tblMandantDeleted: TBooleanField;
    tblMandantUserGUID: TGuidField;
    tblMandantUserMandantGUID: TGuidField;
    tblMandantUserVorname: TWideMemoField;
    tblMandantUserNachname: TWideMemoField;
    tblMandantUserEMail: TWideMemoField;
    tblMandantUserSuspended: TBooleanField;
    tblMandantUserAnlageDatum: TSQLTimeStampField;
    tblMandantUserTelefon: TWideMemoField;
    tblMandantUserGeburtsdatum: TDateField;
    tblMandantUserDeleted: TBooleanField;
    tblSystemUserGUID: TGuidField;
    tblSystemUserUserName: TWideStringField;
    tblSystemUserPassword: TWideStringField;
    tblSystemUserAnlageDatum: TSQLTimeStampField;
    tblSystemUserEditMandant: TBooleanField;
    tblSystemUserEditUser: TBooleanField;
    tblSystemUserEditSystemUser: TBooleanField;
    tblSystemUserDeleted: TBooleanField;
    viewMandantGUID: TcxGridDBColumn;
    viewMandantName: TcxGridDBColumn;
    viewMandantEMail: TcxGridDBColumn;
    viewMandantTelefon: TcxGridDBColumn;
    viewMandantFax: TcxGridDBColumn;
    viewMandantAnlageDatum: TcxGridDBColumn;
    viewMandantSuspended: TcxGridDBColumn;
    viewMandantStrasse: TcxGridDBColumn;
    viewMandantPLZ: TcxGridDBColumn;
    viewMandantOrt: TcxGridDBColumn;
    viewMandantBundesland: TcxGridDBColumn;
    viewMandantLand: TcxGridDBColumn;
    viewMandantDeleted: TcxGridDBColumn;
    viewMandantUserGUID: TcxGridDBColumn;
    viewMandantUserMandantGUID: TcxGridDBColumn;
    viewMandantUserVorname: TcxGridDBColumn;
    viewMandantUserNachname: TcxGridDBColumn;
    viewMandantUserEMail: TcxGridDBColumn;
    viewMandantUserSuspended: TcxGridDBColumn;
    viewMandantUserAnlageDatum: TcxGridDBColumn;
    viewMandantUserTelefon: TcxGridDBColumn;
    viewMandantUserGeburtsdatum: TcxGridDBColumn;
    viewMandantUserDeleted: TcxGridDBColumn;
    viewSystemUserGUID: TcxGridDBColumn;
    viewSystemUserUserName: TcxGridDBColumn;
    viewSystemUserPassword: TcxGridDBColumn;
    viewSystemUserAnlageDatum: TcxGridDBColumn;
    viewSystemUserEditMandant: TcxGridDBColumn;
    viewSystemUserEditUser: TcxGridDBColumn;
    viewSystemUserEditSystemUser: TcxGridDBColumn;
    viewSystemUserDeleted: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tblMandantUserNewRecord(DataSet: TDataSet);
    procedure tblSystemUserNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure tblCreditNewRecord(DataSet: TDataSet);
    procedure tblMandantNewRecord(DataSet: TDataSet);
    procedure viewMandantNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure viewMandantUserNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure viewSystemUserNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private type
    TDelOpt = (doCredit, doMandant, doMandantUser, doSystemUser);
  private
    procedure DeleteRecord(ADelOpt: TDelOpt);
    procedure Connect;
    procedure OpenTables;
    procedure Disconnect;
  public
    { Public-Deklarationen }
  end;

var
  frmApplicationPAManMainForm: TfrmApplicationPAManMainForm;

implementation

uses
  pa.Utils;

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

procedure TfrmApplicationPAManMainForm.DeleteRecord(ADelOpt: TDelOpt);
begin
  var
    ds1, ds2: TDataSet;
  ds1 := nil;
  ds2 := nil;
  case ADelOpt of
    doCredit:
      begin
        ds1 := tblCredit;
      end;
    doMandant:
      begin
        ds1 := tblMandant;
        ds2 := tblMandantUser;
      end;
    doMandantUser:
      begin
        ds1 := tblMandantUser;
      end;
    doSystemUser:
      begin
        ds1 := tblSystemUser;
      end;
  end;
  if ds2 <> nil then
  begin
    ds2.First;
    while not ds2.Eof do
    begin
      ds2.Edit;
      ds2.FieldByName('Deleted').Value := 1;
      ds2.Post;
      ds2.Next;
    end;
  end;
  if ds1 <> nil then
  begin
    ds1.Edit;
    ds1.FieldByName('Deleted').Value := 1;
    ds1.Post;
  end;
end;

procedure TfrmApplicationPAManMainForm.Disconnect;
begin
  Connection.Connected := False;
end;

procedure TfrmApplicationPAManMainForm.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
  Randomize;
  TSettings.LoadSave(True);
  Connect;
  OpenTables;
end;

procedure TfrmApplicationPAManMainForm.FormDestroy(Sender: TObject);
begin
  Disconnect;
end;

procedure TfrmApplicationPAManMainForm.OpenTables;
begin
  tblCredit.Open;
  tblMandantUser.Open;
  tblMandant.Open;
  tblSystemUser.Open;
end;

procedure TfrmApplicationPAManMainForm.tblCreditNewRecord(DataSet: TDataSet);
begin
  tblCreditGUID.Value := TGUID.NewGuid.ToString;
  tblCreditAnlageDatum.AsDateTime := Now;
  tblCreditDeleted.Value := False;
end;

procedure TfrmApplicationPAManMainForm.tblMandantNewRecord(DataSet: TDataSet);
begin
  tblMandantGUID.Value := TGUID.NewGuid.ToString;

  tblMandantAnlageDatum.AsDateTime := Now;
  tblMandantDeleted.Value := False;
  tblMandantSuspended.Value := False;
end;

procedure TfrmApplicationPAManMainForm.tblMandantUserNewRecord(DataSet: TDataSet);
begin
  tblMandantUserGUID.Value := TGUID.NewGuid.ToString;
  tblMandantUserAnlageDatum.AsDateTime := Now;
  tblMandantUserDeleted.Value := False;
  tblMandantUserSuspended.Value := False;
  if tblMandantGUID.AsVariant <> null then
  begin
    tblMandantUserMandantGUID.Value := tblMandantGUID.Value;
  end;
end;

procedure TfrmApplicationPAManMainForm.tblSystemUserNewRecord(DataSet: TDataSet);
begin
  tblSystemUserGUID.Value := TGUID.NewGuid.ToString;
  tblSystemUserAnlageDatum.AsDateTime := Now;
  tblSystemUserEditUser.Value := True;
  tblSystemUserEditMandant.Value := True;
  tblSystemUserEditSystemUser.Value := True;
  tblSystemUserPassword.Value := CreatePassword;
  tblSystemUserDeleted.Value := False;
end;

procedure TfrmApplicationPAManMainForm.viewMandantNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  if AButtonIndex = NBDI_DELETE then
  begin
    DeleteRecord(doMandant);
    ADone := True;
  end;
end;

procedure TfrmApplicationPAManMainForm.viewMandantUserNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = NBDI_DELETE then
  begin
    DeleteRecord(doMandantUser);
    ADone := True;
  end;
end;

procedure TfrmApplicationPAManMainForm.viewSystemUserNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  if AButtonIndex = NBDI_DELETE then
  begin
    DeleteRecord(doSystemUser);
    ADone := True;
  end;
end;

end.
