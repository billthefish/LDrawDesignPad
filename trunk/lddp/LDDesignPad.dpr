program LDDesignPad;

{%File 'readme.txt'}

uses
  Forms,
  main in 'main.pas' {frMain},
  childwin in 'childwin.pas' {frEditorChild},
  about in 'about.pas' {frAboutBox},
  options in 'options.pas' {frOptions},
  splash in 'splash.pas' {frSplash},
  colordialog in 'colordialog.pas' {frColorDialog},
  dlgsearchtext in 'dlgsearchtext.pas' {frTextSearchDialog},
  dlgreplacetext in 'dlgreplacetext.pas' {frTextReplaceDialog},
  dlgconfirmreplace in 'dlgconfirmreplace.pas' {frConfirmReplaceDialog},
  editoptions in 'editoptions.pas' {frEditOptions};

{$R *.res}

begin
  try
    screen.cursor:=-11;
    Application.Initialize;
    Application.Title := 'LDraw DesignPad';
    Application.CreateForm(TfrMain, frMain);
    Application.CreateForm(TfrAboutBox, frAboutBox);
    Application.CreateForm(TfrOptions, frOptions);
    Application.CreateForm(TfrColorDialog, frColorDialog);
    Application.CreateForm(TfrEditOptions, frEditOptions);
  finally
    screen.cursor:=0;
  end;
  Application.Run;
end.
