program LDDesignPad;

{%File 'readme.txt'}

uses
  Forms,
  main in 'main.pas' {frMain},
  childwin in 'childwin.pas' {frEditorChild},
  about in 'about.pas' {frAboutBox},
  options in 'options.pas' {frOptions},
  splash in 'splash.pas' {frSplash},
  colordialog in 'ColorDialog.pas' {frColorDialog},
  dlgsearchtext in 'dlgSearchText.pas' {frTextSearchDialog},
  dlgreplacetext in 'dlgReplaceText.pas' {frTextReplaceDialog},
  dlgconfirmreplace in 'dlgConfirmReplace.pas' {frConfirmReplaceDialog},
  editoptions in 'editoptions.pas' {frEditOptions};

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
    Application.CreateForm(TfrEditOptions, frEditOptions);
  finally
    screen.cursor:=0;
  end;
  Application.Run;
end.
