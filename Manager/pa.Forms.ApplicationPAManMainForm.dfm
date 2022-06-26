object frmApplicationPAManMainForm: TfrmApplicationPAManMainForm
  Left = 0
  Top = 0
  Caption = 'PhotoCredit Manager'
  ClientHeight = 576
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 24
    Width = 808
    Height = 552
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = TabCredit
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 624
    ExplicitHeight = 417
    ClientRectBottom = 548
    ClientRectLeft = 4
    ClientRectRight = 804
    ClientRectTop = 26
    object TabCredit: TcxTabSheet
      Caption = 'Bildnachweise'
      ImageIndex = 0
      ExplicitWidth = 616
      ExplicitHeight = 387
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 800
        Height = 522
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 616
        ExplicitHeight = 387
        object viewCredit: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCredit
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object viewCreditGUID: TcxGridDBColumn
            DataBinding.FieldName = 'GUID'
            Options.Editing = False
          end
          object viewCreditMandantUserGUID: TcxGridDBColumn
            DataBinding.FieldName = 'MandantUserGUID'
            Visible = False
          end
          object viewCreditID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object viewCreditAnlageDatum: TcxGridDBColumn
            DataBinding.FieldName = 'AnlageDatum'
            Options.Editing = False
          end
          object viewCreditPic: TcxGridDBColumn
            DataBinding.FieldName = 'Pic'
            Options.Editing = False
          end
          object viewCreditPicHash: TcxGridDBColumn
            DataBinding.FieldName = 'PicHash'
            Visible = False
          end
          object viewCreditNotes: TcxGridDBColumn
            Caption = 'Notizen'
            DataBinding.FieldName = 'Notes'
            Options.Editing = False
          end
          object viewCreditLongitude: TcxGridDBColumn
            DataBinding.FieldName = 'Longitude'
            Visible = False
          end
          object viewCreditLatitude: TcxGridDBColumn
            DataBinding.FieldName = 'Latitude'
            Visible = False
          end
          object viewCreditDone: TcxGridDBColumn
            DataBinding.FieldName = 'Done'
            Visible = False
          end
          object viewCreditDeleted: TcxGridDBColumn
            DataBinding.FieldName = 'Deleted'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = viewCredit
        end
      end
    end
    object TabMandant: TcxTabSheet
      Caption = 'Mandant'
      ImageIndex = 1
      ExplicitWidth = 616
      ExplicitHeight = 387
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 800
        Height = 225
        Align = alTop
        TabOrder = 0
        object viewMandant: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = viewMandantNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsMandant
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          object viewMandantGUID: TcxGridDBColumn
            DataBinding.FieldName = 'GUID'
            Options.Editing = False
            Width = 168
          end
          object viewMandantName: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
            Width = 67
          end
          object viewMandantEMail: TcxGridDBColumn
            DataBinding.FieldName = 'EMail'
            Width = 63
          end
          object viewMandantTelefon: TcxGridDBColumn
            DataBinding.FieldName = 'Telefon'
            Width = 31
          end
          object viewMandantFax: TcxGridDBColumn
            DataBinding.FieldName = 'Fax'
            Width = 58
          end
          object viewMandantAnlageDatum: TcxGridDBColumn
            DataBinding.FieldName = 'AnlageDatum'
            Options.Editing = False
            Width = 92
          end
          object viewMandantSuspended: TcxGridDBColumn
            Caption = 'Ausgeschlossen'
            DataBinding.FieldName = 'Suspended'
            Width = 20
          end
          object viewMandantStrasse: TcxGridDBColumn
            DataBinding.FieldName = 'Strasse'
            Width = 29
          end
          object viewMandantPLZ: TcxGridDBColumn
            DataBinding.FieldName = 'PLZ'
            Width = 28
          end
          object viewMandantOrt: TcxGridDBColumn
            DataBinding.FieldName = 'Ort'
            Width = 30
          end
          object viewMandantBundesland: TcxGridDBColumn
            DataBinding.FieldName = 'Bundesland'
            Visible = False
          end
          object viewMandantLand: TcxGridDBColumn
            DataBinding.FieldName = 'Land'
            Width = 28
          end
          object viewMandantDeleted: TcxGridDBColumn
            DataBinding.FieldName = 'Deleted'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = viewMandant
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 225
        Width = 800
        Height = 8
        AlignSplitter = salTop
        Control = cxGrid2
        ExplicitTop = 177
        ExplicitWidth = 616
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 233
        Width = 800
        Height = 289
        Align = alClient
        TabOrder = 2
        ExplicitTop = 185
        ExplicitWidth = 616
        ExplicitHeight = 202
        object viewMandantUser: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = viewMandantUserNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsMandantUser
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          object viewMandantUserGUID: TcxGridDBColumn
            DataBinding.FieldName = 'GUID'
            Options.Editing = False
          end
          object viewMandantUserMandantGUID: TcxGridDBColumn
            DataBinding.FieldName = 'MandantGUID'
            Options.Editing = False
          end
          object viewMandantUserVorname: TcxGridDBColumn
            DataBinding.FieldName = 'Vorname'
          end
          object viewMandantUserNachname: TcxGridDBColumn
            DataBinding.FieldName = 'Nachname'
          end
          object viewMandantUserEMail: TcxGridDBColumn
            DataBinding.FieldName = 'EMail'
          end
          object viewMandantUserSuspended: TcxGridDBColumn
            Caption = 'Ausgeschlossen'
            DataBinding.FieldName = 'Suspended'
          end
          object viewMandantUserAnlageDatum: TcxGridDBColumn
            DataBinding.FieldName = 'AnlageDatum'
            Options.Editing = False
          end
          object viewMandantUserTelefon: TcxGridDBColumn
            DataBinding.FieldName = 'Telefon'
          end
          object viewMandantUserGeburtsdatum: TcxGridDBColumn
            DataBinding.FieldName = 'Geburtsdatum'
          end
          object viewMandantUserDeleted: TcxGridDBColumn
            DataBinding.FieldName = 'Deleted'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = viewMandantUser
        end
      end
    end
    object TabSystem: TcxTabSheet
      Caption = 'System'
      ImageIndex = 2
      ExplicitWidth = 616
      ExplicitHeight = 387
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 800
        Height = 522
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 616
        ExplicitHeight = 387
        object viewSystemUser: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = viewSystemUserNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsSystemUser
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          object viewSystemUserGUID: TcxGridDBColumn
            DataBinding.FieldName = 'GUID'
            Visible = False
          end
          object viewSystemUserUserName: TcxGridDBColumn
            DataBinding.FieldName = 'UserName'
          end
          object viewSystemUserPassword: TcxGridDBColumn
            DataBinding.FieldName = 'Password'
          end
          object viewSystemUserAnlageDatum: TcxGridDBColumn
            DataBinding.FieldName = 'AnlageDatum'
            Visible = False
          end
          object viewSystemUserEditMandant: TcxGridDBColumn
            DataBinding.FieldName = 'EditMandant'
          end
          object viewSystemUserEditUser: TcxGridDBColumn
            DataBinding.FieldName = 'EditUser'
          end
          object viewSystemUserEditSystemUser: TcxGridDBColumn
            DataBinding.FieldName = 'EditSystemUser'
          end
          object viewSystemUserDeleted: TcxGridDBColumn
            DataBinding.FieldName = 'Deleted'
            Visible = False
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = viewSystemUser
        end
      end
    end
  end
  object Connection: TFDConnection
    ConnectionName = 'PhotoCredit'
    Params.Strings = (
      'Database=PhotoCredit'
      'User_Name=sa'
      'Password=1234'
      'DriverID=MSSQL'
      'Server=RM14\SQLEXPRESS')
    LoginPrompt = False
    Left = 160
    Top = 152
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 304
    Top = 224
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      24
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Left = 392
    Top = 128
  end
  object tblCredit: TFDTable
    OnNewRecord = tblCreditNewRecord
    Filtered = True
    Filter = 'Deleted <> 1'
    IndexFieldNames = 'GUID'
    Connection = Connection
    TableName = 'PhotoCredit.dbo.Credit'
    Left = 32
    Top = 272
    object tblCreditGUID: TGuidField
      FieldName = 'GUID'
      Origin = 'GUID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object tblCreditMandantUserGUID: TGuidField
      FieldName = 'MandantUserGUID'
      Origin = 'MandantUserGUID'
      Required = True
      Size = 38
    end
    object tblCreditID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object tblCreditAnlageDatum: TSQLTimeStampField
      FieldName = 'AnlageDatum'
      Origin = 'AnlageDatum'
      Required = True
    end
    object tblCreditPic: TBlobField
      FieldName = 'Pic'
      Origin = 'Pic'
      Required = True
      Size = 2147483647
    end
    object tblCreditPicHash: TWideMemoField
      FieldName = 'PicHash'
      Origin = 'PicHash'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblCreditNotes: TWideMemoField
      FieldName = 'Notes'
      Origin = 'Notes'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblCreditLongitude: TFMTBCDField
      FieldName = 'Longitude'
      Origin = 'Longitude'
      Precision = 12
      Size = 9
    end
    object tblCreditLatitude: TFMTBCDField
      FieldName = 'Latitude'
      Origin = 'Latitude'
      Precision = 12
      Size = 9
    end
    object tblCreditDone: TBooleanField
      FieldName = 'Done'
      Origin = 'Done'
    end
    object tblCreditDeleted: TBooleanField
      FieldName = 'Deleted'
      Origin = 'Deleted'
      Required = True
    end
  end
  object tblMandant: TFDTable
    OnNewRecord = tblMandantNewRecord
    Filtered = True
    Filter = 'Deleted <> 1'
    IndexFieldNames = 'GUID'
    Connection = Connection
    TableName = 'PhotoCredit.dbo.Mandant'
    Left = 112
    Top = 272
    object tblMandantGUID: TGuidField
      FieldName = 'GUID'
      Origin = 'GUID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object tblMandantName: TWideMemoField
      FieldName = 'Name'
      Origin = 'Name'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantEMail: TWideMemoField
      FieldName = 'EMail'
      Origin = 'EMail'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantTelefon: TWideMemoField
      FieldName = 'Telefon'
      Origin = 'Telefon'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantFax: TWideMemoField
      FieldName = 'Fax'
      Origin = 'Fax'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantAnlageDatum: TSQLTimeStampField
      FieldName = 'AnlageDatum'
      Origin = 'AnlageDatum'
      Required = True
    end
    object tblMandantSuspended: TBooleanField
      FieldName = 'Suspended'
      Origin = 'Suspended'
      Required = True
    end
    object tblMandantStrasse: TWideMemoField
      FieldName = 'Strasse'
      Origin = 'Strasse'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantPLZ: TWideStringField
      FieldName = 'PLZ'
      Origin = 'PLZ'
      Size = 10
    end
    object tblMandantOrt: TWideMemoField
      FieldName = 'Ort'
      Origin = 'Ort'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantBundesland: TWideMemoField
      FieldName = 'Bundesland'
      Origin = 'Bundesland'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantLand: TWideMemoField
      FieldName = 'Land'
      Origin = 'Land'
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantDeleted: TBooleanField
      FieldName = 'Deleted'
      Origin = 'Deleted'
      Required = True
    end
  end
  object tblMandantUser: TFDTable
    OnNewRecord = tblMandantUserNewRecord
    Filtered = True
    Filter = 'Deleted <> 1'
    IndexFieldNames = 'MandantGUID'
    MasterSource = dsMandant
    MasterFields = 'GUID'
    Connection = Connection
    TableName = 'PhotoCredit.dbo.MandantUser'
    Left = 120
    Top = 368
    object tblMandantUserGUID: TGuidField
      FieldName = 'GUID'
      Origin = 'GUID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object tblMandantUserMandantGUID: TGuidField
      FieldName = 'MandantGUID'
      Origin = 'MandantGUID'
      Required = True
      Size = 38
    end
    object tblMandantUserVorname: TWideMemoField
      FieldName = 'Vorname'
      Origin = 'Vorname'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantUserNachname: TWideMemoField
      FieldName = 'Nachname'
      Origin = 'Nachname'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantUserEMail: TWideMemoField
      FieldName = 'EMail'
      Origin = 'EMail'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantUserSuspended: TBooleanField
      FieldName = 'Suspended'
      Origin = 'Suspended'
      Required = True
    end
    object tblMandantUserAnlageDatum: TSQLTimeStampField
      FieldName = 'AnlageDatum'
      Origin = 'AnlageDatum'
      Required = True
    end
    object tblMandantUserTelefon: TWideMemoField
      FieldName = 'Telefon'
      Origin = 'Telefon'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
    object tblMandantUserGeburtsdatum: TDateField
      FieldName = 'Geburtsdatum'
      Origin = 'Geburtsdatum'
    end
    object tblMandantUserDeleted: TBooleanField
      FieldName = 'Deleted'
      Origin = 'Deleted'
      Required = True
    end
  end
  object tblSystemUser: TFDTable
    OnNewRecord = tblSystemUserNewRecord
    Filtered = True
    Filter = 'Deleted <> 1'
    IndexFieldNames = 'GUID'
    Connection = Connection
    TableName = 'PhotoCredit.dbo.SystemUser'
    Left = 200
    Top = 272
    object tblSystemUserGUID: TGuidField
      FieldName = 'GUID'
      Origin = 'GUID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object tblSystemUserUserName: TWideStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
      Size = 50
    end
    object tblSystemUserPassword: TWideStringField
      FieldName = 'Password'
      Origin = 'Password'
      Required = True
      Size = 50
    end
    object tblSystemUserAnlageDatum: TSQLTimeStampField
      FieldName = 'AnlageDatum'
      Origin = 'AnlageDatum'
      Required = True
    end
    object tblSystemUserEditMandant: TBooleanField
      FieldName = 'EditMandant'
      Origin = 'EditMandant'
      Required = True
    end
    object tblSystemUserEditUser: TBooleanField
      FieldName = 'EditUser'
      Origin = 'EditUser'
      Required = True
    end
    object tblSystemUserEditSystemUser: TBooleanField
      FieldName = 'EditSystemUser'
      Origin = 'EditSystemUser'
      Required = True
    end
    object tblSystemUserDeleted: TBooleanField
      FieldName = 'Deleted'
      Origin = 'Deleted'
      Required = True
    end
  end
  object dsMandant: TDataSource
    DataSet = tblMandant
    Left = 120
    Top = 312
  end
  object dsCredit: TDataSource
    DataSet = tblCredit
    Left = 32
    Top = 360
  end
  object dsSystemUser: TDataSource
    DataSet = tblSystemUser
    Left = 288
    Top = 336
  end
  object dsMandantUser: TDataSource
    DataSet = tblMandantUser
    Left = 224
    Top = 376
  end
end
