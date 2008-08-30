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
unit windowsspecific;

interface

uses Windows, ShellAPI, Messages, Sysutils, Classes, Forms, Registry;

type
  TLDDPCallBack = procedure(strCBText: PChar);



const

  {$EXTERNALSYM SW_HIDE}
  SW_HIDE = 0;
  {$EXTERNALSYM SW_SHOWNORMAL}
  SW_SHOWNORMAL = 1;
  {$EXTERNALSYM SW_NORMAL}
  SW_NORMAL = 1;
  {$EXTERNALSYM SW_SHOWMINIMIZED}
  SW_SHOWMINIMIZED = 2;
  {$EXTERNALSYM SW_SHOWMAXIMIZED}
  SW_SHOWMAXIMIZED = 3;
  {$EXTERNALSYM SW_MAXIMIZE}
  SW_MAXIMIZE = 3;
  {$EXTERNALSYM SW_SHOWNOACTIVATE}
  SW_SHOWNOACTIVATE = 4;
  {$EXTERNALSYM SW_SHOW}
  SW_SHOW = 5;
  {$EXTERNALSYM SW_MINIMIZE}
  SW_MINIMIZE = 6;
  {$EXTERNALSYM SW_SHOWMINNOACTIVE}
  SW_SHOWMINNOACTIVE = 7;
  {$EXTERNALSYM SW_SHOWNA}
  SW_SHOWNA = 8;
  {$EXTERNALSYM SW_RESTORE}
  SW_RESTORE = 9;
  {$EXTERNALSYM SW_SHOWDEFAULT}
  SW_SHOWDEFAULT = 10;
  {$EXTERNALSYM SW_MAX}
  SW_MAX = 10;

function DoCommand(Command: string; Flg: byte; Wait: Boolean): Boolean;
function GetShortFileName(Const FileName : string): string;
function WindowsDir:string;
function GetShellFolderPath(folder: string): string;
function IniFilePath: string;
function WinTempDir: string;
function PluginInfo(libname: string; nr: Byte):string;
procedure CallPlugin(libname, FullText, SelectedText: string; var s1, s2, s3, s4: LongWord);
procedure LDDPCallBack(strCBCompleteText, strCBSelText: PChar); stdcall;
procedure OpenInBrowser(url: string);
function GetAppVersion(const FileName: TFileName): string;
function GetDOSVar(VarName: string): string;
function ReadUIConfigValue(const ConfigValue: string): string;

implementation

uses
  main, IniFiles;

function GetAppVersion(const FileName: TFileName): string;
var
  size, len: LongWord;
  handle: THandle;
  buffer: PChar;
  pinfo: ^VS_FIXEDFILEINFO;
  Major, Minor, Release, Build: Word;

begin
  Result := '';
  size := GetFileVersionInfoSize(Pointer(FileName), handle);

  if size > 0 then begin
    GetMem(buffer, size);
  if GetFileVersionInfo(Pointer(FileName), 0, size, buffer) then
    if VerQueryValue(buffer, '\', pointer(pinfo), len) then
    begin
      Major   := HiWord(pinfo.dwFileVersionMS);
      Minor   := LoWord(pinfo.dwFileVersionMS);
      Release := HiWord(pinfo.dwFileVersionLS);
      Build   := LoWord(pinfo.dwFileVersionLS);
      Result := Format('%d.%d.%d.%d', [Major, Minor, Release, Build]);
    end;

    FreeMem(buffer);
  end;
end;

function DoCommand(Command: string; Flg: byte; Wait: Boolean): Boolean;
{---------------------------------------------------------------------
Description: Executes an external program
Parameter: command: Command to execute; flg: see below;
           wait: wait for completion of called program until program continues
Return value: none

--

Flag-Value		Meaning
----------------------------------------
SW_HIDE			Hides the window and activates another window.
SW_MAXIMIZE		Maximizes the specified window.
SW_MINIMIZE		Minimizes the specified window and activates the next top-level window in the Z order.
SW_RESTORE		Activates and displays the window. If the window is minimized or
                        maximized, Windows restores it to its original size and position.
                        An application should specify this flag when restoring a minimized window.
SW_SHOW			Activates the window and displays it in its current size and position.
SW_SHOWDEFAULT		Sets the show state based on the SW_ flag specified in the STARTUPINFO
                        structure passed to the CreateProcess function by the program that started the application. An application should call ShowWindow with this flag to set the initial show state of its main window.
SW_SHOWMAXIMIZED	Activates the window and displays it as a maximized window.
SW_SHOWMINIMIZED	Activates the window and displays it as a minimized window.
SW_SHOWMINNOACTIVE	Displays the window as a minimized window. The active window remains active.
SW_SHOWNA		Displays the window in its current state. The active window remains active.
SW_SHOWNOACTIVATE	Displays a window in its most recent size and position. The active window remains active.
SW_SHOWNORMAL		Activates and displays a window. If the window is minimized or maximized, Windows restores it to its original size and position. An application should specify this flag when displaying the window for the first time.

----------------------------------------------------------------------}
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;

begin
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  with StartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    dwFlags:= STARTF_USESHOWWINDOW;
    wShowWindow := Flg;
  end;

  Result := CreateProcess(nil, PChar(Command), nil, nil, False,
                          NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo);
  if Result then
    with ProcessInfo do
    begin
      if wait then
        WaitForSingleObject(hProcess, INFINITE);
      CloseHandle(hThread);
      CloseHandle(hProcess);
    end;
end;

function GetShortFileName(const FileName: string): string;
{---------------------------------------------------------------------
Description: Get a short 8.3 version of a long filename - needed for dos programs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  aTmp: array[0..255] of char;
begin
  if GetShortPathName(PChar(FileName), aTmp, Sizeof(aTmp) - 1) = 0 then
     Result := FileName
  else
     Result := StrPas(aTmp);
end;

function WindowsDir: string;
var
  WDir: PChar;
begin
  GetMem(WDir, 144);
  GetWindowsDirectory(WDir, 144);
  Result:= StrPas(WDir);
end;

function GetShellFolderPath(folder: string): string;
var
   Reg: TRegistry;
   tempstr: String;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKey_Current_User;
    if Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion'
      + '\Explorer\Shell Folders', FALSE) then
      tempstr := Reg.ReadString(folder);
  finally
    Reg.Free;
  end;
  Result := tempstr;
end;

function IniFilePath: string;
begin
  Result := GetShellFolderPath('AppData') + '\LDDP';
end;

function WinTempDir: string;
// Find out windows temp path
var
  tempDir: string;
  lng: DWORD;

begin
  lng := GetTempPath(0, nil);
  if lng > 0 then
  begin
    SetLength(tempDir, lng - 1);
    GetTempPath(lng, PChar(tempDir));
  end;
  if copy(tempdir,length(tempdir),1) <> '\' then
    tempdir := tempdir+'\';
  Result:=tempDir;
end;

function PluginInfo(libname: string; nr: Byte):string;
// Get Info from plugin DLL
var
 libHndl: THandle;
 Plugin_Info: procedure(CaseID: Byte; buffer: PChar; maxlength: Byte); stdcall;
 sBuff: PAnsiChar;

begin
  GetMem(sBuff, 255);         // allocate buffer
  Plugin_Info := nil;

  libname := ExtractFilePath(Application.ExeName) + 'Plugins\' + libname;
  if FileExists(libname) then
  begin
    libHndl := LoadLibrary(PChar(libname));

    if libHndl <> 0 then
      @Plugin_Info := GetProcAddress(libHndl, 'Plugin_Info');

    if Assigned(Plugin_Info) then
      Plugin_info(nr, sBuff, 255);

    result := StrPas(sBuff);
    FreeLibrary(libHndl);
  end
  else
    Result := '';
end;

procedure LDDPCallBack(strCBCompleteText, strCBSelText: PChar); stdcall;
// Accepts the (changed) Text and SelText from the plugin DLLs
begin
  frMain.strChangedCompleteText := string(strCBCompleteText);
  frMain.strChangedSelText := string(strCBSelText);
end;

procedure CallPlugin(libname:string; FullText, SelectedText: string; var s1, s2, s3, s4: LongWord);
// Start Plugin related to the tag of the menu entry
var
 libHndl: THandle;
 ProcessText: procedure(CompleteText, SelText: PChar; var SelStart, SelLength, cursorrow , cursorcolumn:LongWord; myCallback: TLDDPCallBack); stdcall;

begin
  ProcessText := nil;
  libname := ExtractFilePath(Application.ExeName) + 'Plugins\' + libname;
  if FileExists(libname) then
  begin
    libHndl := LoadLibrary(PChar(libname));

    if libHndl <> 0 then
      @ProcessText := GetProcAddress(libHndl, 'ProcessText');

    if Assigned(ProcessText) then
      ProcessText(PChar(FullText), PChar(SelectedText), s1, s2, s3, s4, @LDDPCallBack);

    FreeLibrary(libHndl);
  end;
end;

procedure OpenInBrowser(url: string);
begin
  ShellExecute(Application.Handle, 'open', PChar(url), nil, nil, SW_NORMAL );
end;

function GetDOSVar(VarName: string): string;
// Find out DOS var settings (path etc.)
var
  PName, PBuff: PChar;
  DataSize: byte;

begin
  GetMem(PName, 250);
  GetMem(PBuff, 250);
  StrCopy(PName, PChar(VarName));
  Datasize := GetEnvironmentVariable(PName, PBuff, 250);
  Result := Copy(string(PBuff), 1, DataSize);
  FreeMem(PName);
  FreeMem(PBuff);
end;

function ReadUIConfigValue(const ConfigValue: string): string;
var
  UIConfigIni: TIniFile;

begin
  UIConfigIni := TInifile.Create(IniFilePath + '\uiconfig.ini');
  Result := UIConfigIni.ReadString('UI Config Values', ConfigValue, '');
  UIConfigIni.Free;
end;

end.
