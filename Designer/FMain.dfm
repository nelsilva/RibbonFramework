object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Ribbon Designer'
  ClientHeight = 565
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterLog: TSplitter
    Left = 0
    Top = 442
    Width = 955
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 955
    Height = 24
    AutoSize = True
    ButtonWidth = 65
    Caption = 'ToolBar'
    EdgeBorders = [ebBottom]
    Images = Images
    List = True
    ShowCaptions = True
    TabOrder = 0
    object ButtonOpen: TToolButton
      Left = 0
      Top = 0
      Action = ActionOpen
      AutoSize = True
    end
    object ButtonSave: TToolButton
      Left = 57
      Top = 0
      Action = ActionSave
      AutoSize = True
    end
    object ToolButton1: TToolButton
      Left = 112
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ButtonBuild: TToolButton
      Left = 120
      Top = 0
      Action = ActionBuild
      AutoSize = True
    end
    object ButtonPreview: TToolButton
      Left = 173
      Top = 0
      Action = ActionPreview
      AutoSize = True
    end
  end
  object MemoMessages: TMemo
    Left = 0
    Top = 445
    Width = 955
    Height = 101
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object PageControl: TPageControl
    Left = 0
    Top = 24
    Width = 955
    Height = 418
    ActivePage = TabSheetCommands
    Align = alClient
    TabOrder = 2
    OnChange = PageControlChange
    object TabSheetCommands: TTabSheet
      Caption = 'Commands'
    end
    object TabSheetViews: TTabSheet
      Caption = 'Views'
      ImageIndex = 1
    end
    object TabSheetXmlSource: TTabSheet
      Caption = 'XML Source'
      ImageIndex = 2
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 546
    Width = 955
    Height = 19
    Panels = <
      item
        Width = 60
      end
      item
        Width = 50
      end>
  end
  object ActionList: TActionList
    Images = Images
    Left = 12
    Top = 480
    object ActionPreview: TAction
      Category = 'Project'
      Caption = 'Preview'
      Hint = 'Build & Preview the ribbon (F9)'
      ImageIndex = 3
      ShortCut = 120
      OnExecute = ActionPreviewExecute
    end
    object ActionOpen: TAction
      Category = 'File'
      Caption = 'Open'
      Hint = 'Open an existing Ribbon document (Ctrl+O)'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = ActionOpenExecute
    end
    object ActionNew: TAction
      Category = 'File'
      Caption = 'New'
      Hint = 'Create a new Ribbon document (Ctrl+N)'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = ActionNewExecute
    end
    object ActionGenerateCommandIDs: TAction
      Category = 'Project'
      Caption = 'Auto generate IDs for all commands'
      Hint = 'Generates and sets IDs for all commands in this markup.'
      OnExecute = ActionGenerateCommandIDsExecute
    end
    object ActionSaveAs: TAction
      Category = 'File'
      Caption = 'Save As'
      Hint = 'Saves the Ribbon document under a new name (Shift+Ctrl+S)'
      ShortCut = 24659
      OnExecute = ActionSaveAsExecute
    end
    object ActionSave: TAction
      Category = 'File'
      Caption = 'Save'
      Hint = 'Saves the Ribbon document (Ctrl+S)'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = ActionSaveExecute
    end
    object ActionSettings: TAction
      Category = 'File'
      Caption = 'Settings'
      ImageIndex = 4
      OnExecute = ActionSettingsExecute
    end
    object ActionExit: TAction
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exits the Ribbon Designer'
      OnExecute = ActionExitExecute
    end
    object ActionNewBlank: TAction
      Category = 'File'
      Caption = 'Empty Ribbon Document'
      Hint = 'Create a new blank Ribbon Document'
      ShortCut = 16462
    end
    object ActionBuild: TAction
      Category = 'Project'
      Caption = 'Build'
      Hint = 'Build the ribbon (Ctrl+F9)'
      ImageIndex = 5
      ShortCut = 16504
      OnExecute = ActionBuildExecute
    end
    object ActionTutorial: TAction
      Category = 'Help'
      Caption = 'Tutorial'
      ImageIndex = 7
      OnExecute = ActionTutorialExecute
    end
    object ActionWebSite: TAction
      Category = 'Help'
      Caption = 'Ribbon Framework for Delphi website'
      ImageIndex = 7
      OnExecute = ActionWebSiteExecute
    end
    object ActionMSDN: TAction
      Category = 'Help'
      Caption = 'MSDN Ribbon Documentation'
      ImageIndex = 6
      OnExecute = ActionMSDNExecute
    end
    object ActionSetResourceName: TAction
      Category = 'Project'
      Caption = 'Set ribbon resource name'
      Hint = 
        'Set a resource name for the markup. This is necessary if multipl' +
        'e markups are used in one application. The default is APPLICATIO' +
        'N.'
      OnExecute = ActionSetResourceNameExecute
    end
    object ActionGenerateResourceIDs: TAction
      Category = 'Project'
      Caption = 'Auto generate IDs for all resources'
      Hint = 
        'Generates and sets IDs for all resources in this markup. (For ap' +
        'plications that use multiple different ribbons, it may be necess' +
        'ary to set IDs explicitly, so that there are no conflicting reso' +
        'urce IDs)'
      ShortCut = 16455
      OnExecute = ActionGenerateResourceIDsExecute
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnException = ApplicationEventsException
    OnHint = ApplicationEventsHint
    Left = 88
    Top = 480
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'Ribbon XML Files|*.xml'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save Ribbon File'
    Left = 172
    Top = 480
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'xml'
    Filter = 'Ribbon XML Files|*.xml'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Open Ribbon File'
    Left = 248
    Top = 480
  end
  object Images: TImageList
    Left = 308
    Top = 480
    Bitmap = {
      494C010108000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097928F0097928F0097928F009792
      8F0097928F0097928F0097928F0097928F0097928F0097928F0097928F009792
      8F0097928F0097928F0097928F0097928F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7DB
      B400D2AF6400B87E3A00B77C3800B67A3600B5783400B4773300B3753200B272
      31009D4B2400AE71730000000000000000000000000000000000000000000000
      000000000000E4A68D00D46C4500CE592C00CE592C00D46C4500E4A68D000000
      00000000000000000000000000000000000097928F00FEFDFE00FDFCFD00FBFB
      FB00FAFAF900F8F9F800F7F7F700F5F6F600F5F4F400F3F3F300F2F2F200F1F1
      F100F0F0F000F0F0F000F0F0F00097928F000000000000000000000000000000
      00000000000000000000BDA6A60082505000A68484000000000000000000E8E6
      E60000000000000000000000000000000000000000000000000000000000EFED
      E900DDC67C00C5964E00B67A3600B5783400B4773400B3753200B2723100B170
      3000B06E2F00903630000000000000000000000000000000000000000000E5A8
      9100CA481600C9461400CC502000CC502000CA481600CE592C00DB846100C946
      1400E9B4A10000000000000000000000000097928F00FEFEFE00FDFDFD00E4D9
      E200E2DAE100D6D1D400E8DFCC00F7F7F700F5F5F500F4F4F400F2F2F300F1F1
      F100F1F1F100F0F0F000F0F0F00097928F00000000000000000000000000D4C4
      C400C9B6B600EFEEEE009D7C7C00D0A4A40086525200DBD3D300B8A1A1008853
      5300B295950000000000000000000000000098474900E2D5D500000000000000
      0000EAE2C900D9BD6D00BC864000B4773400B3753300B2733100B1703000B06E
      2F00AE6B2D008D301B0000000000000000000000000000000000D87D5A00C946
      1400CC4F1E00CC502000CC502000CC501F00C8410E00E2A48700F4F8E600DD91
      7100BE200000E4A68D00000000000000000097928F00FFFEFF00FEFEFE00DADA
      D800E7DDCC00B0843100D6C5A600F7F7F800F6F6F500F5F4F400F3F3F400F2F2
      F200F1F1F100F1F0F100F0F0F00097928F000000000000000000DACCCC00A67C
      7C009260600091676700B07C7C00E5C5C500B38888008B575700C18E8E00E0B4
      B40093626200000000000000000000000000AE6C35008E312600CCAAAB000000
      000000000000E4D5A800D7BB6A00BB833D00B2733100B1703000B06E2F00AE6B
      2D00AD682C00933A1E00000000000000000000000000E5A89100C8410E00CC4F
      1E00CC502000CC502000CC502000C9461400D2663D00ECCFB600E5C5A200ECCF
      B600D0592E00BE200000EBBEAD000000000097928F00FFFFFF00FEFEFE00C8B7
      9A00B7832200B9840A00C0954700F6F4F200F6F7F600AB989A00AB979A00AA97
      9A00AA979900AA969900F0F0F00097928F000000000000000000BB9C9C00DCC2
      C200DBBDBD00D2A7A700E7C2C200DFC0C000DBBBBB00C9A0A000E0BABA00D6B0
      B000A27D7D00000000000000000000000000B9803C00B577370086221800CCAA
      AB000000000000000000E2D19E00D6B86700C08D4600B06E2F00AE6C2D00AD69
      2C00AB662A0092391D00000000000000000000000000C4380200CC502000CC50
      2000CC502000CC502000CC4F1E00C73D0A00DC8B6A00ECD7BD00E1B69300ECD7
      BD00DC8B6A00C4360200CC4F1E000000000097928F00FFFFFF00FFFFFE00C39E
      5B00BF903800C8B08800B7830700DBC29500F8F7F800F6F7F600F5F5F500F3F3
      F400F2F2F300F2F1F100F0F0F10097928F000000000000000000E3DBDB00AA7F
      7F00E8D1D100E3C9C900E2C8C800E3C7C700E2C9C900E3C8C800DEBFBF00CDA5
      A50087575700A5848400C7B4B40000000000BB833E00B77C3800B37334008D30
      2600DAC6C7000000000000000000E6D9B600D8BC6900CBA25600B5783700AB66
      2A00AF6E3000C2967F000000000000000000EFCEBF00C9461400C9461400CC50
      2000CC502000CC502000CC4F1E00C9461400E3A98D00ECCFB600E4BC9A00E8CD
      AD00E5B39800CC4F1E00C4360200EAB9A60097928F00FFFFFF00FFFFFF00F8F4
      EA00F9F7F200FDFCFC00CDA74E00C4962000F0EAD700F7F7F700F6F5F500F4F4
      F400F3F3F300F2F2F200F1F1F10097928F0000000000C6ABAB00A9777700A474
      7400E9D1D100E4CCCC00E7D0D000DEC1C100DFBEBE00DFC2C200E1C6C600DEBD
      BD00C7999900EDBDBD008B60600000000000D5B66900B67A3600B6783500B170
      31009B4D4A00000000000000000000000000ECE6D700DDC88900D6B96600D6B7
      6500DCC58700000000000000000000000000F0E4D000E19E8100C83F0D00CC50
      1F00CC502000CC502000CA481600D0592E00E8BFA400E5C5A200E5C5A200E4BC
      9A00ECCFB600D46C4500C12D0000DC8B6A0097928F00FFFFFF00FFFFFF00FEFF
      FE00FEFEFE00FDFDFD00F0E5D000CCA92100D7BC5C00F7F7F800F6F7F600F5F5
      F500F4F3F400F3F2F200F1F1F20097928F0000000000B3898900EDD3D300E6D1
      D100E3CACA00ECD7D700C59F9F00D9BBBB00EAD0D000E2B7B700DFC2C200E1C5
      C500DEBDBD00E1BFBF009164640000000000DFCB8A00CDA65A00B5773400B475
      33009A472300CCAAAB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5C5A200ECD7BD00D2663D00C841
      0E00CC502000CC502000C73D0A00D6744D00ECCFB600E4BC9A00E4BC9A00E4BC
      9A00ECD7BD00E0997A00C4360200D2663D0097928F00FFFFFF00FFFFFF00FFFF
      FF00FEFFFE00FEFEFE00FCFCFD00E8DA9D00D5BB3700E4D58F00F8F7F700F6F6
      F600F4F5F500F3F4F300F2F3F20097928F0000000000B0848400EDDEDE00F0E2
      E200E5CCCC00F1E0E000AB8080000000000000000000E0BFBF00E1C4C400E1C7
      C700CDA8A800976B6B00D2C5C50000000000EDEAE100DBC37700CBA35700B373
      3200B1713000A25A580000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4BC9A00ECD7BD00DD917100C83F
      0D00CC502000CC502000C73D0A00DC8B6A00ECD7BD00E4BC9A00E4BC9A00E8BF
      A400E5C5A200EBBEAD00CC501F00CE592C0097928F00FFFFFF00FFFFFF00FFFF
      FF00FEFFFE00FEFEFE00FDFDFD00FCFCFB00E2D17C00DECA6900F8F8F800F7F6
      F700F5F5F500F4F4F400F3F3F30097928F0000000000DFD1D100BF9D9D00D2B4
      B400E6CDCD00F3E5E500A57A7A00AE8A8A00C3A5A500C79F9F00E5CCCC00E1C7
      C700CAA5A5008D5C5C00DBD1D1000000000000000000ECE7D800DAC17400CAA0
      5400B06F2F00A55E500000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBBEAD00E8CDAD00E8BFA400CD4E
      2000CC4F1E00CC4F1E00C9461400E3A98D00ECCFB600E4BC9A00E5C5A200E4BC
      9A00E4BC9A00ECCFB600DD8D6C00D97A570097928F00CDCCCA00CDCCCA00CDCC
      CA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCCCA00CDCC
      CA00CDCCCA00CDCCCA00CDCCCA0097928F000000000000000000CFAEAE00DCBF
      BF00EAD6D600ECD9D900F1E2E200DABBBB00E6C8C800EBD7D700E4CACA00E2C6
      C600E7CACA00C1979700C1ACAC00000000000000000000000000ECE7D700DABF
      7100D3B16100B984730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1DECC00E1B69300ECD7BD00D674
      4D00C73D0A00C9461400D0592E00E7C2A700E5C5A200E8BFA400E4BC9A00E4BC
      9A00E5C5A200E4C19E00E5C5A200F4E0D40097928F00E0D9D300E0D9D300E0D9
      D300E0D9D300E0D9D300E0D9D300E0D9D300E0D9D300E0D9D30091796800E0D9
      D30091796800E0D9D3009179680097928F000000000000000000D3AAAA00FDFB
      FB00F7F1F100E9D3D300E6CECE00EFDEDE00ECD9D900E4CACA00E3C6C600C19D
      9D00BE989800A87B7B00E5E0E00000000000000000000000000000000000EFED
      E800EAE3CE00EFEDE80000000000E9E3E300A76365009847490098474900BD8E
      8F00E9E3E30000000000000000000000000000000000E1B69300ECD7BD00E19E
      8100C73D0A00C73D0A00D7755100ECD7BD00E4BC9A00E4BC9A00E8BFA400E4BC
      9A00E4BC9A00E4BC9A00E4BC9A000000000097928F0097928F0097928F009792
      8F0097928F0097928F0097928F0097928F0097928F0097928F0097928F009792
      8F0097928F0097928F0097928F0097928F000000000000000000E0C1C100D0AA
      AA00D0A7A700D0ACAC00F2E6E600E8D0D000E6CECE00E9D4D400DCC1C100BFA0
      A000E0D4D400DFD0D00000000000000000000000000000000000000000000000
      0000000000000000000000000000CFAD7F00A75E2600A55B24009C491F008928
      1700821C1F00CCAAAB00000000000000000000000000F1DECC00E4C19E00EBBE
      AD00CE592C00C12D0000E19E8100ECD7BD00E4BC9A00E4BC9A00E8BFA400E4BC
      9A00E8BFA400E1B48F00F5E7DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0EF
      EF0000000000D7AFAF00FBF6F600CAA5A500C6A0A000CCA8A800E0C7C700C6A6
      A600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDE9DF00C99F5300A55B2400A3572300A1542100A051
      1F0097421B007F151200C49C9D00000000000000000000000000ECCFB600ECCF
      B600DC8B6A00D25C3400ECCFB600E4C19E00E4BC9A00E5C5A200E4BC9A00E4BC
      9A00E1B48F00EED8C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1C5C500CCA4A400DDC5C50000000000D4BBBB00C3A3A300E9E5
      E500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBE5D600CEA85A00A3572300A1542100A0511F009E4E
      1E009C4B1C009844190080181200C49C9D00000000000000000000000000F0DC
      CB00E5C5A200ECCFB600E5C5A200E4BC9A00E8BFA400E4BC9A00E4BC9A00E4BC
      9A00F0E4D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3B26000A7602900A0511F009E4E1E009C4B
      1C009A471A0098441800933A16007C1011000000000000000000000000000000
      000000000000F1DECC00EBBEAD00E5C5A200E8BFA400E8CDAD00F1DECC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000027313C0000000000000000000000000000000000000000000000
      00009E8D80006349350063493500634935006349350063493500634935006349
      35006349350063493500000000000000000075848F0066808F0060798700576E
      7B004E626F0044566100394852002E3A4300252E35001B22290014191E000E12
      16000E13180000000000000000000000000000000000EFCECF00C3646500AA55
      5600A45253009F4F50009A4D4D00944A4A008F4747008944440083414100783B
      3C00783B3C00723939006E3637000000000000000000B7A29300634935006349
      350063493500634935006349350063493500634935006349350063493500544A
      4600334C67003877BD002D486600000000000000000000000000000000000000
      00009B8A7D00FCFAF800D9C0AE00D5BCAB00CFB7A600C8B1A000C1AB9B00BBA6
      9600B7A293006349350000000000000000007787920089A1AB006AB2D400008F
      CD00008FCD00008FCD00048CC7000888BE000F82B400157CA9001B779F001F72
      9600224B5C00BEC3C500000000000000000000000000CF6B6C00F38E8F00E680
      8100AA44240047322100C3B4AB00C6BBB300CAC1BC00CEC8C400564D48009E3E
      33009C3D360098393100723939000000000000000000B7A29300FFFFFF00B7A2
      9300B7A29300B7A29300B7A29300B7A29300B7A29300B7A293008C868500344D
      6800357FD0004198E40057B3ED004F6776000000000000000000000000000000
      00009B8A7D00FEFEFE00FBF8F700F6F1ED00F1E8E100EBDED600E5D5C900E1CD
      BE00BCA596006349350000000000000000007A8A95007EBED3008AA4AE007EDC
      FF005FCFFF0055CBFF004CC4FA0041BCF50037B3F0002EAAEB0024A0E500138C
      D400236780005E696D00000000000000000000000000D16F7000FF999A00EC86
      8700E6808100715B4B00473C34008D786800EDE0D800F1E7E0008F7F7300A341
      3500A2423C009C3D3500783B3C000000000000000000B7A29300FFFFFF00FFFF
      FF00FCFAF900F7F1EE00D7D7D400979792006C6A67006664620051575B004373
      930047A0E70061C6FD00738EA100000000000000000000000000000000000000
      00009E8D8000FFFFFF00FEFDFD00FAF7F500F5EFEA00F0E6DF00EBDDD300E5D4
      C700C1AA9B006349350000000000000000007D8E980079D2EC008BA4AD0089C2
      CE0071D8FF0065D3FF005CCEFF0051C9FE0049C1FA003FB9F50034B0EE0029A8
      E9001085CD00224B5B00DADEE0000000000000000000D4757600FF9FA000F590
      9100EC868700715B4B0000000000473C3400E9D9CE00ECDDD40085746700AE4B
      4300AA494400A3423C007D3E3E000000000000000000B7A29300FFFFFF00FFFF
      FF00FEFEFE00DFDFDE00938F8B00B4A89D00D7C3B000C8AE98007F766D005559
      57005D90A8007098B20000000000000000000000000000000000000000000000
      0000A2918400FFFFFF00FFFFFF00FDFDFB00F9F5F300F4EDE800EFE4DC00E9DB
      D000C8B1A10063493500000000000000000080919C0081D7EF007DC5E0008CA6
      B00080DDFE0068D3FF0067D4FF0062D1FF0058CDFF004EC7FC0046BEF7003BB6
      F20031ACEC00256981007A95A1000000000000000000D77B7C00FFA9AA00FB9F
      A000F5939400715B4B00715B4B00715B4B00715B4B00766252007D6A5B00BA56
      5400B24F4C00AA494400834141000000000000000000B7A29300FFFFFF00FFFF
      FF00FFFFFF00B3B2AE00BFB9B200FBEFE700FAE6D900F7DAC700F4CDB5007F77
      6D009D9D9C000000000000000000000000000000000000000000000000000000
      0000A7958800FFFFFF00FFFFFF00FFFFFF00FCFBFA00F9F4F100F3ECE600EDE3
      DA00CFB7A60063493500000000000000000083959F0089DCF1008CE2FF008DA8
      B1008CBAC70074D8FF0067D4FF0067D4FF0067D4FF005FD0FF0054CDFF004BC5
      FC0041BBF7002EA2DB0051677400E1E5E70000000000DB838400FFB3B400FFAD
      AE00FCA3A400F48E8F00EC868700E6808100DF797A00D7717200D16B6C00C15D
      5C00BA565400B2504C00894444000000000000000000BAA59600FFFFFF00FFFF
      FF00FFFFFF009A978F00EDE9E400FDF7F300FCEFE800F9E5D900F7D9C800C8AD
      99006D6D6A000000000000000000000000000000000000000000000000000000
      0000AB9A8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFAF800F7F3EF00F2EA
      E400D5BCAB00634935000000000000000000869AA30092E1F20098E8FD0080C4
      DE008EA7B00081DEFD0084E0FF0084E0FF0084E0FF0084E0FF0081DFFF007BDD
      FF0074D8FF006BD6FF0056A9D1008F9BA40000000000DF8A8B00FFBBBC00FFB6
      B700C9636000C45E5600BE584B00B8523F00B34D3400AD472800A7411C00A13B
      1100C15D5C00BA5654008F4747000000000000000000BEA99A00FFFFFF00FFFF
      FF00FFFFFF00A19E9600EBE9E500FFFCFB00FDF7F300FBF0E800FAE5D900D8C3
      B30072726E000000000000000000000000000000000000000000000000000000
      0000B09E9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FBF9F700F6F1
      ED00D9C0AE00634935000000000000000000889CA5009AE6F3009FEBFB0098E8
      FE008BACB9008BACB9008AAAB70088A6B30086A3AF00839FAA00819AA6007F95
      A1007C919D007A8E9900798B95007788930000000000E2919200FFBDBE00CC66
      6700FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5DE00EADBD200E5D1C600E1CA
      BD00A13B1100C25D5C00944A4A000000000000000000C3AE9E00FFFFFF00FFFF
      FF00FFFFFF00C3C4BF00C2BFB900FFFFFF00FFFCFB00FDF7F300FCEEE600AA9E
      9300AFABA7000000000000000000000000000000000070C7E10081D8EE0086E6
      FA0039BEE50099D8DF0091E1F60081D0E900FFFFFF00FFFFFF00FEFEFD00C4AD
      9D00C3AB9C00644A360000000000000000008BA0A800A0EAF600A6EEF9009FEB
      FB0098E8FE007ADAFF0067D4FF0067D4FF0067D4FF0067D4FF0067D4FF0067D4
      FF007788930000000000000000000000000000000000E5979800FFBDBE00D36D
      6E00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5DE00EADBD200E5D1
      C600A7411C00CC6767009A4D4D000000000000000000C8B2A300FFFFFF00FFFF
      FF00FFFFFF00F6F8F800B8B8B200C4C2BC00ECEBE700EBE8E200B2AEA400756C
      6300000000000000000000000000000000000000000098E2F30031B7DF007DE9
      FD005DC6E60093F0FF002FB6DF00A0E8F900FFFFFF00FFFFFF00A9988A00644A
      3600644A3600644A360000000000000000008EA2AB00A7EEF600ABF0F700A6EE
      F9009FEBFB0098E8FD0071D4FB00899EA7008699A30082949F007E909A007A8C
      97007788930000000000000000000000000000000000E99E9F00FFBDBE00DC76
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5DE00EADB
      D200AD472800D77172009F4F50000000000000000000CCB6A700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6FAFB00C1C5C100A19F9700918D840095918800634D
      3C00000000000000000000000000000000000000000094EAFA0093F1FF00BFF8
      FF00AFE8F400C7FBFF0093F1FF009FF0FF00FFFFFF00FFFFFF00AE9C8E00D4C5
      BA00644A36000000000000000000000000008FA4AC00A0D2DA00ABF0F700ABF0
      F700A6EEF9009FEBFB008DA1AA00000000000000000000000000000000000000
      0000000000008E6A530091684F0093674C0000000000EDA6A700FFBDBE00E680
      8100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5
      DE00B34D3400DF797A00A45253000000000000000000D1BBAB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7A29300644A3600644A3600644A
      3600000000000000000000000000000000000000000022ABD90053BFE100AFE8
      F400F0FFFD00B4EBF60053BFE10036BBE500FFFFFF00FFFFFF00B2A09200644A
      360000000000000000000000000000000000000000008FA4AC008FA4AC008FA4
      AC008FA4AC008FA4AC0000000000000000000000000000000000000000000000
      000000000000000000008D6B540090694F0000000000F0ACAD00FFBDBE00EF89
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EE
      EA00B8523F0067333300AA5556000000000000000000D5BFAF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9A49500D4C5BA00644A36000000
      0000000000000000000000000000000000000000000094EAFA0096F3FF00C7FB
      FF00ADE5F300C3FBFF0096F3FF008BD7E200B6A49600B6A49600B5A395000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000095746000000000000000
      000000000000A69182000000000094745F0000000000F3B2B300FFBDBE00F892
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8
      F600BE584B00B0585900B05859000000000000000000D8C2B200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0AB9C00644A3600000000000000
      0000000000000000000000000000000000000000000096E1F30032B8E0008CF1
      FF0058C2E30090F1FF002FB6DF008DDDF0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6918100A189
      7800AA95870000000000000000000000000000000000F5B6B700F5B6B700F3B2
      B300F1ADAE00EEA7A800EAA1A200E79A9B00E4939400E08E8F00DD878800DA80
      8100D67A7B00D3747500D16F70000000000000000000D8C2B200D8C2B200D8C2
      B200D8C2B200D8C2B200D4BEAE00CFB9A900C9B3A40000000000000000000000
      0000000000000000000000000000000000000000000066C3E00081D8EE0094EA
      FA0026AFDB008CE8FA008EDEF10081CCE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFE003F81F0000FC6FE003E007
      0000E0073003C0030000C007180380010000C0070C0380010000C00106030000
      00008001070700000000800103FF00000000818103FF00000000800183FF0000
      0000C001C3FF00000000C001E20780010000C003FE038001FFFFE80FFC01C003
      FFFFF88FFC00E007FFFFFFFFFE00F81FFFFFFFFFFFFFFFFBF003000780018001
      F003000380018000F003000380018001F003000180018003F003000180018007
      F003000080018007F003000080018007F003000080018007800300078001800F
      800300078001800F800701F88001800F800F83FC8001801F801FFFBA8001803F
      80FFFFC78001807F80FFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object MainMenu: TMainMenu
    Images = Images
    Left = 448
    Top = 480
    object MenuFile: TMenuItem
      Caption = 'File'
      object MenuNew: TMenuItem
        Action = ActionNew
      end
      object MenuOpen: TMenuItem
        Action = ActionOpen
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuSave: TMenuItem
        Action = ActionSave
      end
      object SaveAsMenu: TMenuItem
        Action = ActionSaveAs
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object SettingsMenu: TMenuItem
        Action = ActionSettings
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MenuExit: TMenuItem
        Action = ActionExit
      end
    end
    object MenuProject: TMenuItem
      Caption = 'Project'
      object BuildMenu: TMenuItem
        Action = ActionBuild
      end
      object MenuPreview: TMenuItem
        Action = ActionPreview
      end
      object AutogenerateIDsforallresources1: TMenuItem
        Action = ActionGenerateResourceIDs
      end
      object AutogenerateIDsforallcommands1: TMenuItem
        Action = ActionGenerateCommandIDs
      end
      object Setresourcename1: TMenuItem
        Action = ActionSetResourceName
      end
    end
    object MenuHelp: TMenuItem
      Caption = 'Help'
      object MenuTutorial: TMenuItem
        Action = ActionTutorial
      end
      object MenuWebsite: TMenuItem
        Action = ActionWebSite
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MenuMSDN: TMenuItem
        Action = ActionMSDN
      end
    end
  end
  object TimerRestoreLog: TTimer
    Enabled = False
    Interval = 300
    OnTimer = TimerRestoreLogTimer
    Left = 368
    Top = 480
  end
end
