{These sources are copyright (C) 2003-2010 Orion Pobursky.

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
  Forms,
  DATBase in '..\DAT Tools\DATBase.pas',
  DATCheck in '..\DAT Tools\DATCheck.pas',
  DATColour in '..\DAT Tools\DATColour.pas',
  DATErrorFix in '..\DAT Tools\DATErrorFix.pas',
  DATFlexObject in '..\DAT Tools\DATFlexObject.pas',
  DATMath in '..\DAT Tools\DATMath.pas',
  DATModel in '..\DAT Tools\DATModel.pas',
  DATUtils in '..\DAT Tools\DATUtils.pas',
  AboutDlg in '..\Source\Forms\AboutDlg.pas' {LDDPAbout},
  BezWindow in '..\Source\Forms\BezWindow.pas' {FlexObjectDlg},
  SubpartForm in '..\Source\Forms\SubpartForm.pas' {LDDPSubFileDlg},
  MainFrm in '..\Source\Forms\MainFrm.pas' {LDDPMain},
  SortDlg in '..\Source\Forms\SortDlg.pas' {LDDPSortDlg},
  splash in '..\Source\Forms\splash.pas' {LDDPSplash},
  commonprocs in '..\Source\Units\commonprocs.pas',
  lddpoptions in '..\Source\Units\lddpoptions.pas',
  windowsspecific in '..\Source\Units\windowsspecific.pas',
  ReplaceDlg in '..\Source\Forms\ReplaceDlg.pas' {LDDPReplaceDlg},
  OptionsFrm in '..\Source\Forms\OptionsFrm.pas' {LDDPOptionsForm},
  ColorReplaceFrm in '..\Source\Forms\ColorReplaceFrm.pas' {LDDPColorReplaceForm},
  ScintillaLDDP in '..\Source\Units\ScintillaLDDP.pas',
  LDDPHelperTypes in '..\Source\Units\LDDPHelperTypes.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'LDraw Design Pad';
  Application.CreateForm(TLDDPMain, LDDPMain);
  Application.CreateForm(TLDDPReplaceDlg, LDDPReplaceDlg);
  Application.Run;
end.
 
