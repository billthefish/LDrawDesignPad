unit Version;

interface

uses Windows, SysUtils;

TYPE TVersionException = class (Exception);
     TVersion = class
         private
             FData : PChar;
             FLCZC : string;

             FExeFile : string;

             FLegalCopyright : string;
             FLegalTrademarks : string;
             FCompanyName : string;
             FFileDescription : string;
             FComments : string;

             FFileVersionMS : DWORD;
             FFileVersionLS : DWORD;

             function GetVersionKey(const s : string) : string;

             function GetHauptVersion : integer;
             function GetNebenVersion : integer;
             function GetAusgabe : integer;
             function GetCompilierung : integer;
             function GetFileVersionStr : string;

         public
             constructor Create (const exefile : string);
             destructor Destroy; override;

             property CompanyName : string read FCompanyName;
             property FileDescription : string read FFileDescription;
             property LegalCopyright : string read FLegalCopyright;
             property LegalTrademarks : string read FLegalTrademarks;
             property Comments : string read FComments;

             property HauptVersion : integer read GetHauptVersion;
             property NebenVersion : integer read GetNebenVersion;
             property Ausgabe : integer read GetAusgabe;
             property Compilierung : integer read GetCompilierung;

             property FileVersionStr : string read GetFileVersionStr;
     end; //TVersion...

implementation
{$IFDEF RCS}
VAR RCSId : string;
{$ENDIF}

type TDRec = record
         l: word;
         h: word;
     end;

const cFixedFileInfo = '\';
      cTranslation = '\VarFileInfo\Translation';

      cStringFileInfo = '\StringFileInfo\';

      cCompanyName = 'CompanyName';
      cFileDescription = 'FileDescription';
      cLegalCopyright = 'LegalCopyright';
      cLegalTrademarks = 'LegalTrademarks';
      cComments = 'Comments';

function GetPChar (x : string) : PChar;
begin
    result := StrAlloc (Length (x) +1);
    StrPCopy (result, x);
end;

constructor TVersion.Create(const exefile : string);
VAR     x1 : PChar;
         L : DWORD;
    Handle : DWORD;
        rc : BOOL;
        VI : PVSFixedFileInfo;
        VI1 : pointer;
        lc : PChar;
     puLen : uint;

{

type
  PVSFixedFileInfo = ^TVSFixedFileInfo;
  TVSFixedFileInfo = packed record
    ... siehe in Windows.pas unter TVSFixedFileInfo ..
  end;

}
begin
    inherited Create;

    FExeFile := exefile;

    x1 := GetPChar (Fexefile);

    L := GetFileVersionInfoSize(x1, Handle);
    FData := StrAlloc (L);
    rc := GetFileVersionInfo(x1, Handle, L, FData);
    if not rc then
        raise TVersionException.Create ('Fehler bei GetFileVersionInfo');

    lc := GetPChar (cFixedFileInfo);
    rc := VerQueryValue(Fdata, lc, POINTER(vi), pulen);
    if not rc then
       raise TVersionException.Create
          ('Fehler beim holen der Basis Versionsinfo!');
    StrDispose (lc);

    FFileVersionMS := vi^.dwFileVersionMS;
    FFileVersionLS := vi^.dwFileVersionLS;

    //Translation Table holen.
    lc := GetPChar (cTranslation);
    rc := VerQueryValue(Fdata, lc, vi1, pulen);
    if not rc then
        raise TVersionException.Create
             ('Fehler beim holen der Translation Table');
    StrDispose (lc);

    //Hier wird nur der 1. Eintrag aus der Translation Table
    //benutzt, da es scheinbar nicht moeglich ist mit Delphi 3.0
    //mehr als einen Eintrag zu machen.
    //Landes Code und Zeichensatz Code zusammensetzen
    FLCZC  := IntToHex (TDRec (PChar(vi1^)).l,4) +
             IntToHex (TDRec (PChar(vi1^)).h,4);

    FLegalCopyright := GetVersionKey(cLegalCopyright);
    FCompanyName := GetVersionKey (cCompanyName);
    FFileDescription := GetVersionKey (cFileDescription);
    FLegalTrademarks := GetVersionKey (cLegalTrademarks);
    FComments := GetVersionKey (cComments);
end; //Create...

function TVersion.GetVersionKey(const s : string) : string;
VAR vi : pointer;
    pulen : uint;
    //////////////lc : pChar;
    rc : BOOL;

begin
    //lc := GetPChar (cStringFileInfo + FLCZC + '\' + s);
    rc := VerQueryValue
           (Fdata, PChar (cStringFileInfo + FLCZC + '\' + s), vi, pulen);
    if not rc then
        raise TVersionException.Create
            ('Fehler beim holen des Keys="' + s + '" !');
    result := StrPas (PChar (vi));
    ////StrDispose (lc);
end;

destructor TVersion.Destroy;
begin
    StrDispose (FData);
    inherited Destroy;
end; //Destroy...

function TVersion.GetHauptVersion : integer;
begin
    result := Hiword(FFileVersionMS);
end; //GetHauptVersion...
function TVersion.GetNebenVersion : integer;
begin
    result := Loword(FFileVersionMS);
end; //GetNebenVersion...

function TVersion.GetAusgabe : integer;
begin
    result := Hiword (FFileVersionLS);
end; //GetAusgabe...
function TVersion.GetCompilierung : integer;
begin
    result := LoWord (FFileVersionLS);
end; //GetCompilierung...

function TVersion.GetFileVersionStr : string;
begin
    result := IntToStr (HauptVersion) + '.' +
              IntToStr (NebenVersion) + '.' +
              IntToStr (Ausgabe) + '.' +
              IntToStr (Compilierung);
end; //GetFileVersionStr...

initialization
{$IFDEF RCS}
    RCSId := '$Id: version.pas,v 1.1.1.1 2003-05-23 21:48:35 c_schmitz Exp $';
{$ENDIF}
end.
