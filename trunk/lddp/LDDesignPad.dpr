program LDDesignPad;
(*
These sources are copyrighted (C) by Carsten Schmitz and the LDDP project contributors.

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
*)

{%File 'readme.txt'}

uses
  QForms,
  main in 'main.pas' {frMain},
  childwin in 'childwin.pas' {frEditorChild},
  about in 'about.pas' {frAboutBox},
  options in 'options.pas' {frOptions},
  splash in 'splash.pas' {frSplash},
  colordialog in 'colordialog.pas' {frColorDialog},
  dlgsearchreplacetext in 'dlgsearchreplacetext.pas' {frTextReplaceDialog},
  BMP2LDraw in 'BMP2LDraw.pas' {frBMP2LDrawMain},
  modeltreeview in 'modeltreeview.pas' {frModelTreeView},
  windowsspecific in 'windowsspecific.pas',
  linuxspecific in 'linuxspecific.pas',
  l3check in 'l3check.pas',
  DATBase in 'DATBase.pas',
  DATModel in 'DATModel.pas';

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
  Application.CreateForm(TfrTextSearchReplaceDialog, frTextSearchReplaceDialog);
  Application.CreateForm(TfrBMP2LDrawMain, frBMP2LDrawMain);
  Application.CreateForm(TfrModelTreeView, frModelTreeView);
  finally
    screen.cursor:=0;
  end;
  Application.Run;
end.
