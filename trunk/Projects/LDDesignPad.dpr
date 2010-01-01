program LDDesignPad;

uses
  Forms,
  DATBase in '..\DAT Tools\DATBase.pas',
  DATCheck in '..\DAT Tools\DATCheck.pas',
  DATColour in '..\DAT Tools\DATColour.pas',
  DATErrorFix in '..\DAT Tools\DATErrorFix.pas',
  DATFlexObject in '..\DAT Tools\DATFlexObject.pas',
  DATMath in '..\DAT Tools\DATMath.pas',
  DATModel in '..\DAT Tools\DATModel.pas',
  DATUtils in '..\DAT Tools\DATUtils.pas',
  about in '..\Source\Forms\about.pas' {LDDPAbout},
  BezWindow in '..\Source\Forms\BezWindow.pas' {FlexObjectDlg},
  BMP2LDraw in '..\Source\Forms\BMP2LDraw.pas' {LDDPBMP2LDrawDlg},
  dlgSubpart in '..\Source\Forms\dlgSubpart.pas' {LDDPSubFileDlg},
  errorbar in '..\Source\Forms\errorbar.pas' {frErrorWindow},
  main in '..\Source\Forms\main.pas' {LDDPMain},
  sorting in '..\Source\Forms\sorting.pas' {LDDPSortDlg},
  splash in '..\Source\Forms\splash.pas' {LDDPSplash},
  commonprocs in '..\Source\Units\commonprocs.pas',
  lddpoptions in '..\Source\Units\lddpoptions.pas',
  windowsspecific in '..\Source\Units\windowsspecific.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'LDraw Design Pad';
  Application.CreateForm(TLDDPMain, LDDPMain);
  Application.CreateForm(TfrErrorWindow, frErrorWindow);
  Application.Run;
end.
 
