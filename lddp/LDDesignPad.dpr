{These sources are copyright (C) 2003-2005 the LDDP project contributors.

This source is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This source is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

-------------------------------------------------------------------------------}
program LDDesignPad;

{%File 'readme.txt'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\dlgSubpart\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\splash\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\sorting\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\colordialog\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\ErrorFix\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\l3check\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\BMP2LDraw\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\dlgConfirmReplace\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\dlgSearchText\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\windowsspecific\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\BezWindow\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\main\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\LDDesignPad\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\modeltreeview\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\commonprocs\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\about\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\dlgReplaceText\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\DATBase\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\options\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\childwin\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\DATModel\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_LDDesignPad\default.txvpck'}

uses
  gnugettext,
  Forms,
  Graphics,
  JvValidateEdit,
  ActnList,
  Dialogs,
  IdHTTP,
  main in 'main.pas' {frMain},
  childwin in 'childwin.pas' {frEditorChild},
  about in 'about.pas' {frAboutBox},
  options in 'options.pas' {frOptions},
  splash in 'splash.pas' {frSplash},
  colordialog in 'colordialog.pas' {frColorDialog},
  BMP2LDraw in 'BMP2LDraw.pas' {frBMP2LDrawMain},
  modeltreeview in 'modeltreeview.pas' {frModelTreeView},
  windowsspecific in 'windowsspecific.pas',
  l3check in 'l3check.pas',
  DATBase in 'DATBase.pas',
  DATModel in 'DATModel.pas',
  dlgsearchtext in 'dlgsearchtext.pas' {TextSearchDialog},
  dlgreplacetext in 'dlgreplacetext.pas' {TextReplaceDialog},
  dlgConfirmReplace in 'dlgConfirmReplace.pas' {ConfirmReplaceDialog},
  BezWindow in 'BezWindow.pas' {frmDATCurve},
  dlgSubpart in 'dlgSubpart.pas' {frSubFile},
  sorting in 'sorting.pas' {fmSort},
  commonprocs in 'commonprocs.pas',
  ErrorFix in 'ErrorFix.pas';

{$R *.res}

begin
  TP_GlobalIgnoreClass(TFont);
  TP_GlobalIgnoreClass(TIdHTTP);
  TP_GlobalIgnoreClassProperty(TJvValidateEdit,'CheckChars');
  TP_GlobalIgnoreClassProperty(TContainedAction,'Category');
  TP_GlobalIgnoreClassProperty(TCustomAction,'SecondaryShortCuts');
  TP_GlobalIgnoreClassProperty(TOpenDialog,'DefaultExt');
  TP_GlobalIgnoreClassProperty(TSaveDialog,'DefaultExt');

  try
    screen.cursor:=-11;
    Application.Initialize;
    Application.Title := 'LDraw DesignPad';

    Application.CreateForm(TfrMain, frMain);
  Application.CreateForm(TfrAboutBox, frAboutBox);
  Application.CreateForm(TfrOptions, frOptions);
  Application.CreateForm(TfrColorDialog, frColorDialog);
  Application.CreateForm(TfrBMP2LDrawMain, frBMP2LDrawMain);
  Application.CreateForm(TfrModelTreeView, frModelTreeView);
  Application.CreateForm(TfrmDATCurve, frmDATCurve);
  Application.CreateForm(TfrSubFile, frSubFile);
  Application.CreateForm(TfmSort, fmSort);
  finally
    screen.cursor:=0;
  end;
  Application.Run;
end.
