{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: SynHighlighterURI.pas, released 2003-04-10.
The Initial Author of this file is Maël Hörz.
All Rights Reserved.

Contributors to the SynEdit project are listed in the Contributors.txt file.

Alternatively, the contents of this file may be used under the terms of the
GNU General Public License Version 2 or later (the "GPL"), in which case
the provisions of the GPL are applicable instead of those above.
If you wish to allow use of your version of this file only under the terms
of the GPL and not to allow others to use your version of this file
under the MPL, indicate your decision by deleting the provisions above and
replace them with the notice and other provisions required by the GPL.
If you do not delete the provisions above, a recipient may use your version
of this file under either the MPL or the GPL.

You may retrieve the latest version of SynEdit from the SynEdit home page,
located at http://SynEdit.SourceForge.net

-------------------------------------------------------------------------------}
{
@abstract(Provides a URI syntax highlighter for SynEdit)
@author(Maël Hörz)
@created(2003)
@lastmod(2003-05-07)
The SynHighlighterURI unit provides SynEdit with a URI syntax highlighter.

http://www.mh-net.de.vu
}

{$IFNDEF QSYNHIGHLIGHTERURI}
unit SynHighlighterURI;
{$ENDIF}

{$I SynEdit.inc}

interface

uses
  {$IFDEF SYN_CLX}
  QGraphics,
  QSynEditTypes,
  QSynEditHighlighter,
  {$ELSE}
  Graphics,
  SynEditTypes,
  SynEditHighlighter,
  {$ENDIF}
  SysUtils,
  Classes;

type
  TtkTokenKind = (tkIdentifier, tkNull, tkSpace, tkHttpLink, tkFtpLink,
    tkWebLink, tkMailLink, tkNewsLink, tkUnknown, tkNullChar);

  TProcTableProc = procedure of object;

  PIdentFuncTableFunc = ^TIdentFuncTableFunc;
  TIdentFuncTableFunc = function: TtkTokenKind of object;

  TURICheckVisitedEvent = procedure (Sender: TObject; const aURI: string;
    aURIKind: TtkTokenKind; var aVisited: boolean) of object;

  TSynURISyn = class(TSynCustomHighlighter)
  private
    fLineStr: string;
    fLine: PChar;
    fLineNumber: Integer;
    fProcTable: array[#0..#255] of TProcTableProc;
    Run: LongInt;
    fTokenPos: Integer;
    FTokenID: TtkTokenKind;
    fIdentFuncTable: array[0..145] of TIdentFuncTableFunc;
    fIdentifierAttri: TSynHighlighterAttributes;
    fSpaceAttri: TSynHighlighterAttributes;
    fURIAttri: TSynHighlighterAttributes;
    fVisitedURIAttri: TSynHighlighterAttributes;
    fOnVisitedURICheck: TURICheckVisitedEvent;
    procedure CRProc;
    procedure LFProc;
    procedure NullProc;
    procedure SpaceProc;
    procedure UnknownProc;
    function AltFunc: TtkTokenKind;
    procedure InitIdent;
    procedure MakeMethodTables;

    procedure CharacterProc;

    procedure HttpProc;
    procedure FtpProc;
    procedure WebProc;
    procedure MailtoProc;
    procedure NewsProc;

    function IsValidEmailAddress: Boolean;
    procedure SetURIAttri(const Value: TSynHighlighterAttributes);
    procedure SetVisitedURIAttri(const Value: TSynHighlighterAttributes);
  protected
    function GetIdentChars: TSynIdentChars; override;
    function GetSampleSource: string; override;
  public
    {$IFNDEF SYN_CPPB_1} class {$ENDIF}
    function GetLanguageName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetDefaultAttribute(Index: integer): TSynHighlighterAttributes;
      override;
    function GetEol: Boolean; override;
    function GetTokenID: TtkTokenKind;
    procedure SetLine(NewValue: String; LineNumber: Integer); override;
    function GetToken: String; override;
    function GetTokenAttribute: TSynHighlighterAttributes; override;
    function GetTokenKind: integer; override;
    function GetTokenPos: Integer; override;
    procedure Next; override;
  published
    property URIAttri: TSynHighlighterAttributes read fURIAttri write SetURIAttri;
    property VisitedURIAttri: TSynHighlighterAttributes read fVisitedURIAttri
      write SetVisitedURIAttri;
    property OnVisitedURICheck: TURICheckVisitedEvent read fOnVisitedURICheck
      write fOnVisitedURICheck;
  end;

{$IFDEF SYN_COMPILER_3_UP}
resourcestring
{$ELSE}
const
{$ENDIF}
  SYNS_FilterURI = 'All Files (*.*)|*.*';
  SYNS_LangURI = 'URI';
  SYNS_AttrURI = 'URI';
  SYNS_AttrVisitedURI = 'Visited URI';

const
  SYN_ATTR_URI = 6;
  SYN_ATTR_VISITEDURI = 7;

implementation

uses
{$IFDEF SYN_CLX}
  QSynEditStrConst;
{$ELSE}
  SynEditStrConst;
{$ENDIF}

procedure TSynURISyn.InitIdent;
var
  I: Integer;
  pF: PIdentFuncTableFunc;
begin
  pF := PIdentFuncTableFunc(@fIdentFuncTable);
  for I := Low(fIdentFuncTable) to High(fIdentFuncTable) do begin
    pF^ := AltFunc;
    Inc(pF);
  end;
end;

function TSynURISyn.AltFunc: TtkTokenKind;
begin
  Result := tkIdentifier;
end;

procedure TSynURISyn.MakeMethodTables;
var
  I: Char;
begin
  for I := #0 to #255 do
    case I of
      #13: fProcTable[I] := CRProc;
      #10: fProcTable[I] := LFProc;
      #0: fProcTable[I] := NullProc;
      #1..#9, #11, #12, #14..#32: fProcTable[I] := SpaceProc;
      '_', 'A'..'Z', 'a'..'z', '0'..'9': fProcTable[I] := CharacterProc;
    else
      fProcTable[I] := UnknownProc;
    end;
end;

constructor TSynURISyn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fSpaceAttri := TSynHighlighterAttributes.Create(SYNS_AttrSpace);
  fIdentifierAttri := TSynHighlighterAttributes.Create(SYNS_AttrIdentifier);

  fURIAttri := TSynHighlighterAttributes.Create(SYNS_AttrURI);
  fURIAttri.Foreground := clBlue;
  fURIAttri.Style := [fsUnderline];
  AddAttribute(fURIAttri);

  fVisitedURIAttri := TSynHighlighterAttributes.Create(SYNS_AttrVisitedURI);
  fVisitedURIAttri.Foreground := clPurple;
  fVisitedURIAttri.Style := [fsUnderline];
  AddAttribute(fVisitedURIAttri);

  SetAttributesOnChange(DefHighlightChange);
  InitIdent;
  MakeMethodTables;
  fDefaultFilter := SYNS_FilterURI;
end;

destructor TSynURISyn.Destroy; 
begin
  inherited;
  //the other highlighters are automatically freed because of AddAttribute()
  fSpaceAttri.Free;
  fIdentifierAttri.Free;
end;

procedure TSynURISyn.SetLine(NewValue: String; LineNumber: Integer);
begin
  fLineStr := NewValue;
  fLine := PChar(NewValue);
  Run := 0;
  fLineNumber := LineNumber;
  Next;
end;

procedure TSynURISyn.CRProc;
begin
  fTokenID := tkSpace;
  Case FLine[Run + 1] of
    #10: inc(Run, 2);
  else inc(Run);
  end;
end;

procedure TSynURISyn.LFProc;
begin
  fTokenID := tkSpace;
  inc(Run);
end;

procedure TSynURISyn.NullProc;
begin
  if Run < Length(fLineStr) then
  begin
    inc(Run);
    fTokenID := tkNullChar;
  end
  else
    fTokenID := tkNull
end;

procedure TSynURISyn.SpaceProc;
begin
  inc(Run);
  fTokenID := tkSpace;
  while FLine[Run] in [#1..#9, #11, #12, #14..#32] do inc(Run);
end;

procedure TSynURISyn.UnknownProc;
begin
{$IFDEF SYN_MBCSSUPPORT}
  if FLine[Run] in LeadBytes then
    Inc(Run,2)
  else
{$ENDIF}
  inc(Run);
  fTokenID := tkUnknown;
end;

procedure TSynURISyn.Next;
begin
  fTokenPos := Run;
  fProcTable[fLine[Run]];
end;

function TSynURISyn.GetDefaultAttribute(Index: integer): TSynHighlighterAttributes;
begin
  case Index of
    SYN_ATTR_IDENTIFIER: Result := fIdentifierAttri;
    SYN_ATTR_WHITESPACE: Result := fSpaceAttri;
    SYN_ATTR_URI: Result := fURIAttri;
    SYN_ATTR_VISITEDURI: Result := fVisitedURIAttri;
  else
    Result := nil;
  end;
end;

function TSynURISyn.GetEol: Boolean;
begin
  Result := fTokenID = tkNull;
end;

function TSynURISyn.GetToken: String;
const
  SpaceChar: Char = ' ';
var
  Len: LongInt;
begin
  Len := Run - fTokenPos;
  if fTokenID <> tkNullChar then
    SetString(Result, (FLine + fTokenPos), Len)
  else
    SetString(Result, PChar(@SpaceChar), Len);
end;

function TSynURISyn.GetTokenID: TtkTokenKind;
begin
  Result := fTokenId;
end;

function TSynURISyn.GetTokenAttribute: TSynHighlighterAttributes;
var
  iVisited: boolean;
begin
  case GetTokenID of
    tkIdentifier: Result := fIdentifierAttri;
    tkSpace: Result := fSpaceAttri;
    tkHttpLink, tkFtpLink, tkWebLink, tkMailLink, tkNewsLink:
    begin
      iVisited := False;
      //todo: try to avoid the call to GetToken
      if Assigned(OnVisitedURICheck) then
        OnVisitedURICheck( Self, GetToken, fTokenId, iVisited ); 
      if iVisited then
        Result := fVisitedURIAttri
      else
        Result := fURIAttri;
    end;
    tkUnknown: Result := fIdentifierAttri;
    else Result := nil;
  end;
end;

function TSynURISyn.GetTokenKind: integer;
begin
  Result := Ord(fTokenId);
end;

function TSynURISyn.GetTokenPos: Integer;
begin
  Result := fTokenPos;
end;

function TSynURISyn.GetIdentChars: TSynIdentChars;
begin
  Result := TSynValidStringChars + [#0];
end;

{$IFNDEF SYN_CPPB_1} class {$ENDIF}
function TSynURISyn.GetLanguageName: string;
begin
  Result := SYNS_LangURI;
end;

function TSynURISyn.GetSampleSource: string;
begin
  Result := 'Universal Resource Identifier highlighting'#13#10#13#10 +
            'http://www.somewhere.org'#13#10 +
            'ftp://superhost.org/downloads/gems.zip'#13#10 +
            'www.w3c.org'#13#10 +
            'mailto:big@lebowski.edu'#13#10 +
            'douglas@adams.lod'#13#10 +
            'news:comp.lang.pascal.borland';
end;

procedure TSynURISyn.CharacterProc;
begin
  if IsValidEmailAddress then
    fTokenID := tkMailLink
  else
  begin
    case fLine[Run] of
      'h', 'H': HttpProc;
      'f', 'F': FtpProc;
      'w', 'W': WebProc;
      'm', 'M': MailtoProc;
      'n', 'N': NewsProc;
      else
      begin
        inc(Run);
        fTokenID := tkUnknown
      end
    end
  end;
end;

procedure TSynURISyn.HttpProc;
var
  StartPos: Integer;
begin
  StartPos := Run;
  repeat
    Inc(Run);
  until not(fLine[Run] in ['a'..'z', 'A'..'Z', '0'..'9',
                           '@', '.', ':', '-', '_', '/',
                           '~', '%', '?', '&', '=', '+']);

  if (fLine[Run - 1] = '.') or (fLine[Run - 1] = ':') then Dec(Run);

  // startpos + 1 because copy starts with 1 and not 0
  if (Run - StartPos > 7) and (LowerCase(copy(fLine, StartPos + 1, 7)) = 'http://') then
    fTokenID := tkHttpLink
  else
    fTokenID := tkUnknown;
end;

procedure TSynURISyn.FtpProc;
var
  StartPos: Integer;
begin
  StartPos := Run;
  repeat
    Inc(Run);
  until not(fLine[Run] in ['a'..'z', 'A'..'Z', '0'..'9',
                           '@', '.', ':', '-', '_', '/', '~', '%']);
  if (fLine[Run - 1] = '.') or (fLine[Run - 1] = ':') then Dec(Run);

  // startpos + 1 because copy starts with 1 and not 0
  if (Run - StartPos > 6) and (LowerCase(copy(fLine, StartPos + 1, 6)) = 'ftp://') then
    fTokenID := tkFtpLink
  else
    fTokenID := tkUnknown;
end;

procedure TSynURISyn.WebProc;
var
  StartPos: Integer;
begin
  StartPos := Run;
  repeat
    Inc(Run);
  until not(fLine[Run] in ['a'..'z', 'A'..'Z', '0'..'9',
                           '@', '.', '-', '_', '/',
                           '~', '%', '?', '&', '=', '+']);
  if (fLine[Run - 1] = '.') or (fLine[Run - 1] = ':') then Dec(Run);

  // startpos + 1 because copy starts with 1 and not 0
  if (Run - StartPos > 4) and (LowerCase(copy(fLine, StartPos + 1, 4)) = 'www.') then
    fTokenID := tkWebLink
  else
    fTokenID := tkUnknown;
end;

procedure TSynURISyn.MailtoProc;
var
  StartPos: Integer;
begin
  StartPos := Run;
  repeat
    Inc(Run);
  until not(fLine[Run] in ['a'..'z', 'A'..'Z', '0'..'9', '@', '.', ':', '-', '_']);
  if fLine[Run - 1] = '.' then Dec(Run);

  // startpos + 1 because copy starts with 1 and not 0
  if (Run - StartPos > 7) and (LowerCase(copy(fLine, StartPos + 1, 7)) = 'mailto:') then
    fTokenID := tkMailLink
  else
    fTokenID := tkUnknown;
end;

procedure TSynURISyn.NewsProc;
var
  StartPos, DotPos: Integer;
begin
  StartPos := Run;
  DotPos := -1;
  repeat
    if fLine[Run] = '.' then
      DotPos := Run;
    Inc(Run);
  until not(fLine[Run] in ['a'..'z', 'A'..'Z', '0'..'9', '.', ':', '/', '-', '_']);

  if DotPos = Run - 1 then
  begin
    repeat
      Dec(DotPos);
    until (fLine[DotPos] = '.') or (DotPos = -1);
    Dec(Run);
  end;

  // startpos + 1 because copy starts with 1 and not 0
  if (Run - StartPos > 5) and (DotPos > StartPos + 5) and
    (LowerCase(copy(fLine, StartPos + 1, 5)) = 'news:') and
    (fLine[StartPos + 5] <> '/') and (fLine[StartPos + 6] <> '/') then
    fTokenID := tkNewsLink
  else if (Run - StartPos > 7) and (DotPos > StartPos + 7) and
    (LowerCase(copy(fLine, StartPos + 1, 7)) = 'news://') then
    fTokenID := tkNewsLink
  else
    fTokenID := tkUnknown;
end;

function TSynURISyn.IsValidEmailAddress: Boolean;
var
  StartPos, AtPos, DotPos: Integer;
begin
  StartPos := Run;
  AtPos := StartPos;
  DotPos := -1;
  repeat
    if fLine[Run] = '@' then
      AtPos := Run
    else if fLine[Run] = '.' then
       DotPos := Run;
    Inc(Run);
  until not(fLine[Run] in ['a'..'z', 'A'..'Z', '0'..'9', '@', '.', '-', '_']);

  if DotPos = Run - 1 then
  begin
    repeat
      Dec(DotPos);
    until (fLine[DotPos] = '.') or (DotPos = -1);
    Dec(Run);
  end;

  Result := (StartPos < AtPos) and (AtPos < Run - 1) and (DotPos > AtPos + 1);
  if not Result then Run := StartPos;
end;

procedure TSynURISyn.SetURIAttri(const Value: TSynHighlighterAttributes);
begin
  fURIAttri.Assign( Value );
end;

procedure TSynURISyn.SetVisitedURIAttri(
  const Value: TSynHighlighterAttributes);
begin
  fVisitedURIAttri.Assign( Value );
end;

initialization
{$IFNDEF SYN_CPPB_1}
  RegisterPlaceableHighlighter(TSynURISyn);
{$ENDIF}
end.
