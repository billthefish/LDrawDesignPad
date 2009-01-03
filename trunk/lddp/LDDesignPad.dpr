{These sources are copyright (C) 2003-2008 the LDDP project contributors.

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



uses
  gnugettext,
  Forms,
  main in 'main.pas' {frMain},
  about in 'about.pas' {frAboutBox},
  options in 'options.pas' {frOptions},
  splash in 'splash.pas' {frSplash},
  colordialog in 'colordialog.pas' {frColorDialog},
  BMP2LDraw in 'BMP2LDraw.pas' {frBMP2LDrawMain},
  windowsspecific in 'windowsspecific.pas',
  BezWindow in 'BezWindow.pas' {frmDATCurve},
  dlgSubpart in 'dlgSubpart.pas' {frSubFile},
  sorting in 'sorting.pas' {fmSort},
  commonprocs in 'commonprocs.pas',
  errorbar in 'errorbar.pas' {frErrorWindow},
  DATUtils in '..\DAT Tools\DATUtils.pas',
  DATBase in '..\DAT Tools\DATBase.pas',
  DATCheck in '..\DAT Tools\DATCheck.pas',
  DATErrorFix in '..\DAT Tools\DATErrorFix.pas',
  DATMath in '..\DAT Tools\DATMath.pas',
  DATModel in '..\DAT Tools\DATModel.pas';

{$R *.res}

begin
  try
    screen.cursor:=-11;
    Application.Initialize;
    Application.Title := 'LDraw Design Pad';

    Application.CreateForm(TfrMain, frMain);
  Application.CreateForm(TfrAboutBox, frAboutBox);
  Application.CreateForm(TfrOptions, frOptions);
  Application.CreateForm(TfrColorDialog, frColorDialog);
  Application.CreateForm(TfrBMP2LDrawMain, frBMP2LDrawMain);
  Application.CreateForm(TfrmDATCurve, frmDATCurve);
  Application.CreateForm(TfrSubFile, frSubFile);
  Application.CreateForm(TfmSort, fmSort);
  Application.CreateForm(TfrErrorWindow, frErrorWindow);
  finally
    screen.cursor:=0;
  end;
  Application.Run;
end.
