object frmApplicationPAManMainForm: TfrmApplicationPAManMainForm
  Left = 0
  Top = 0
  Caption = 'PhotoCredit Manager'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
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
end
