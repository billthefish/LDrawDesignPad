program LDDesignPad;

{%File 'readme.txt'}

uses
  Forms,
  Main in 'MAIN.PAS' {frMain},
  Childwin in 'childwin.pas' {frEditorChild},
  About in 'about.pas' {frAboutBox},
  options in 'options.pas' {frOptions},
  splash in 'splash.pas' {frSplash},
  ColorDialog in 'ColorDialog.pas' {frColorDialog},
  dlgSearchText in 'dlgSearchText.pas' {frTextSearchDialog},
  dlgReplaceText in 'dlgReplaceText.pas' {frTextReplaceDialog},
  dlgConfirmReplace in 'dlgConfirmReplace.pas' {frConfirmReplaceDialog};

{$R *.RES}

begin
  try
    screen.cursor:=-11;
    Application.Initialize;
    Application.Title := 'LDraw DesignPad';
    Application.CreateForm(TfrMain, frMain);
    Application.CreateForm(TfrAboutBox, frAboutBox);
    Application.CreateForm(TfrOptions, frOptions);
    Application.CreateForm(TfrColorDialog, frColorDialog);
  finally
    screen.cursor:=0;
  end;
  Application.Run;
end.
