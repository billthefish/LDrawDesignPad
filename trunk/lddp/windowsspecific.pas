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
unit windowsspecific;

interface

uses windows, shellapi, messages, sysutils, classes,  Forms, version;

type
  TLDDPCallBack = procedure(strCBText : PChar );



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

function DoCommand(Command: String; Flg:byte; Wait:Boolean): Boolean;
function GetShortFileName(Const FileName : String) : String;
function WindowsDir:string;
function GetTempDir:string;
function PluginInfo(fname:string; nr: Byte):string;
procedure CallPlugin(libname:string; FullText,SelectedText:PChar;var s1,s2,s3,s4:longword);
procedure LDDPCallBack(strCBCompleteText,strCBSelText : PChar ); StdCall;
procedure OpenInBrowser(url:string);
function GetWindowsVersion:string;
function GetDOSVar (VarName: string): string;


implementation

uses main;

function GetWindowsVersion:string;
var ver:TVersion;
begin
  ver:=TVersion.Create(paramstr(0));
  Result:=IntToStr (ver.HauptVersion) + '.' +
              IntToStr (ver.NebenVersion);
  ver.free;
end;

function DoCommand(Command: String; Flg:byte; Wait:Boolean): Boolean;
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

function GetShortFileName(Const FileName : String) : String;
{---------------------------------------------------------------------
Description: Get a short 8.3 version of a long filename - needed for dos programs
Parameter: Standard
Return value: None
----------------------------------------------------------------------}
var
  aTmp: array[0..255] of char;
begin
  if GetShortPathName(PChar(FileName),aTmp,Sizeof(aTmp)-1)=0 then
     Result:= FileName
  else
     Result:=StrPas(aTmp);
end;



function WindowsDir:string;
var
  WDir: PChar;
begin
  GetMem(WDir, 144);
  GetWindowsDirectory(WDir, 144);
  Result:= StrPas(WDir);
end;


function GetTempDir:string;
{---------------------------------------------------------------------
Description: Find out windows temp path
Parameter: None
Return value: Windows Temp dir
----------------------------------------------------------------------}
  var
  tempDir: string;
  lng:     DWORD;
begin
  lng := GetTempPath(0, nil);
  if lng > 0 then
  begin
    SetLength(tempDir, lng - 1);
    GetTempPath(lng, PChar(tempDir));
  end;
  if copy(tempdir,length(tempdir),1)<>'\' then tempdir:=tempdir+'\';
  Result:=tempDir;
end;

function PluginInfo(fname:string; nr: Byte):string;
{---------------------------------------------------------------------
Description: Get Info from plugin DLL
Parameter: Fname: path and filename of dll, nr: no. of Info to get
Return value: None
----------------------------------------------------------------------}
var
 libHndl:THandle;
 Plugin_Info:procedure(CaseID:byte;buffer:pchar;maxlength:byte); stdcall;
 sBuff: PAnsiChar;

begin
  GetMem(sBuff, 255);         // allocate buffer
  Plugin_Info := nil;
  libHndl := LoadLibrary(PAnsiChar(fname));
  if libHndl <> 0 then
    @Plugin_Info := GetProcAddress(libHndl, 'Plugin_Info');

  if Assigned(Plugin_Info) then Plugin_info(nr, sBuff, 255);

  result := StrPas(sBuff);
  FreeLibrary(libHndl);
end;

procedure LDDPCallBack(strCBCompleteText,strCBSelText : PChar ); StdCall;
{---------------------------------------------------------------------
Description: Accepts the (changed) Text and SelText from the plugin DLLs
Parameter: strCBCompleteText,strCBSelText
Return value: none
----------------------------------------------------------------------}
begin
  frMain.strChangedCompleteText:=String(strCBCompleteText);
  frMain.strChangedSelText:=String(strCBSelText);
end;

procedure CallPlugin(libname:string; FullText,SelectedText:PChar;var s1,s2,s3,s4:longword);
{---------------------------------------------------------------------
Description: Start Plugin related to the tag of the menu entry
Parameter: Fname: path and filename of dll, nr: no. of Info to get
Return value: None
----------------------------------------------------------------------}
var
 libHndl:THandle;
 ProcessText:procedure(CompleteText,SelText:PChar; var SelStart, SelLength , cursorow , cursorcolumn:longWORD;myCallback:TLDDPCallBack);stdcall;

begin
  ProcessText:=nil;
  libHndl := LoadLibrary(pchar(libname));

  if libHndl <> 0 then
    @ProcessText := GetProcAddress(libHndl, 'ProcessText');

  if Assigned(ProcessText) then  ProcessText(FullText,selectedtext,s1,s2,s3,s4,@LDDPCallBack);

  FreeLibrary(libHndl);
end;

//procedure CallLibFunction(libname:string; FullText,SelectedText:PChar;var s1,s2,s3,s4:longword);

procedure OpenInBrowser(url:string);
begin
  ShellExecute( Application.Handle, 'open', PChar( url) , nil, nil, SW_NORMAL );
end;

function GetDOSVar (VarName: string): string;
{---------------------------------------------------------------------
Description: Find out DOS var settings (path etc.)
Parameter: name of DOS var
Return value: value of dos var
----------------------------------------------------------------------}

const
  StrSize = 250;

var
  PName,PBuff: PChar;
  DataSize: byte;

begin
  Getmem(PName,StrSize);
  Getmem(PBuff,StrSize);
  StrCopy(PName,pchar(VarName));
  Datasize := GetEnvironmentVariable(PName,PBuff,StrSize);
  Result := Copy(string(PBuff),1,Datasize);
  FreeMem(PName);
  FreeMem(PBuff);
end;

end.
