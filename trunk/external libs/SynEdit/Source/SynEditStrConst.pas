{-------------------------------------------------------------------------------
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: SynEditStrConst.pas, released 2000-04-07.
The Original Code is based on mwLocalStr.pas by Michael Hieke, part of the
mwEdit component suite.
All Rights Reserved.

Contributors to the SynEdit and mwEdit projects are listed in the
Contributors.txt file.

Alternatively, the contents of this file may be used under the terms of the
GNU General Public License Version 2 or later (the "GPL"), in which case
the provisions of the GPL are applicable instead of those above.
If you wish to allow use of your version of this file only under the terms
of the GPL and not to allow others to use your version of this file
under the MPL, indicate your decision by deleting the provisions above and
replace them with the notice and other provisions required by the GPL.
If you do not delete the provisions above, a recipient may use your version
of this file under either the MPL or the GPL.

$Id: SynEditStrConst.pas,v 1.5 2003-11-11 14:17:41 c_schmitz Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net

Known Issues:
-------------------------------------------------------------------------------}

{$IFNDEF QSynEditStrConst}
unit SynEditStrConst;
{$ENDIF}

{$I SynEdit.inc}

interface

// NOTE: this is design-time stuff, so no need to have it in stringtables
const
  SYNS_ComponentsPage           =  'SynEdit';
  SYNS_HighlightersPage         =  'SynEdit Highlighters';

{$IFDEF SYN_COMPILER_3_UP}
resourcestring
{$ELSE}
const
{$ENDIF}

  SYNS_Untitled                 =  'Untitled';

  // names for highlighter attributes
  SYNS_AttrAreaAIdentifier      =  'Area A Identifier';
  SYNS_AttrAsm                  =  'Asm';
  SYNS_AttrAsmComment           =  'Asm Comment';
  SYNS_AttrAsmKey               =  'Asm Key';
  SYNS_AttrAssembler            =  'Assembler';
  SYNS_AttrAttributeName        =  'Attribute Name';
  SYNS_AttrAttributeValue       =  'Attribute Value';
  SYNS_AttrBlock                =  'Block';
  SYNS_AttrBoolean              =  'Boolean value';
  SYNS_AttrBrackets             =  'Brackets';
  SYNS_AttrCDATASection         =  'CDATA Section';
  SYNS_AttrCharacter            =  'Character';
  SYNS_AttrClass                =  'Class';
  SYNS_AttrColor                =  'Color Value';
  SYNS_AttrComment              =  'Comment';
  SYNS_AttrCondition            =  'Condition';
  SYNS_AttrDataType             =  'Data Type';
  SYNS_AttrDebugLines           =  'Debugging Lines';
  SYNS_AttrDefaultPackage       =  'Default Packages';
  SYNS_AttrDir                  =  'Direction';
  SYNS_AttrDirective            =  'Directive';
  SYNS_AttrDOCTYPESection       =  'DOCTYPE Section';
  SYNS_AttrDocumentation        =  'Documentation';
  SYNS_AttrElementName          =  'Element Name';
  SYNS_AttrEmbedSQL             =  'Embedded SQL';
  SYNS_AttrEmbedText            =  'Embedded Text';
  SYNS_AttrEntityReference      =  'Entity Reference';
  SYNS_AttrEscapeAmpersand      =  'Escape Ampersand';
  SYNS_AttrEvent                =  'Event';
  SYNS_AttrException            =  'Exception';
  SYNS_AttrFloat                =  'Float';
  SYNS_AttrForm                 =  'Form';
  SYNS_AttrFunction             =  'Function';
  SYNS_AttrHexadecimal          =  'Hexadecimal';
  SYNS_AttrIcon                 =  'Icon Reference';
  SYNS_AttrIdentifier           =  'Identifier';
  SYNS_AttrIllegalChar          =  'Illegal Char';
  SYNS_AttrInclude              =  'Include';
  SYNS_AttrIndicator            =  'Indicator Area';
  SYNS_AttrIndirect             =  'Indirect';
  SYNS_AttrInvalidSymbol        =  'Invalid Symbol';
  SYNS_AttrInternalFunction     =  'Internal Function';
  SYNS_AttrKey                  =  'Key';
  SYNS_AttrLabel                =  'Label';
  SYNS_AttrMacro                =  'Macro';
  SYNS_AttrMarker               =  'Marker';
  SYNS_AttrMessage              =  'Message';
  SYNS_AttrMiscellaneous        =  'Miscellaneous';
  SYNS_AttrNamespaceAttrName    =  'Namespace Attribute Name';
  SYNS_AttrNamespaceAttrValue   =  'Namespace Attribute Value';
  SYNS_AttrNonReservedKeyword   =  'Non-reserved Keyword';
  SYNS_AttrNull                 =  'Null';
  SYNS_AttrNumber               =  'Number';
  SYNS_AttrOctal                =  'Octal';
  SYNS_AttrOperator             =  'Operator';
  SYNS_AttrPLSQL                =  'PL/SQL Reserved Word';
  SYNS_AttrPragma               =  'Pragma';
  SYNS_AttrPreprocessor         =  'Preprocessor';
  SYNS_AttrProcessingInstr      =  'Processing Instruction';
  SYNS_AttrQualifier            =  'Qualifier';
  SYNS_AttrRegister             =  'Register';
  SYNS_AttrReservedWord         =  'Reserved Word';
  SYNS_AttrRpl                  =  'Rpl';
  SYNS_AttrRplKey               =  'Rpl Key';
  SYNS_AttrRplComment           =  'Rpl Comment';
  SYNS_AttrSASM                 =  'SASM';
  SYNS_AttrSASMComment          =  'SASM Comment';
  SYNS_AttrSASMKey              =  'SASM Key';
  SYNS_AttrSecondReservedWord   =  'Second Reserved Word';
  SYNS_AttrSection              =  'Section';
  SYNS_AttrSequence             =  'Sequence Number Area';
  SYNS_AttrSpace                =  'Space';
  SYNS_AttrSpecialVariable      =  'Special Variable';
  SYNS_AttrSQLKey               =  'SQL Keyword';
  SYNS_AttrSQLPlus              =  'SQL*Plus Command';
  SYNS_AttrString               =  'String';
  SYNS_AttrSingleString         =  'Single Quoted String';
  SYNS_AttrSymbol               =  'Symbol';
  SYNS_AttrSyntaxError          =  'Syntax Error';
  SYNS_AttrSystem               =  'System Functions and Variables';
  SYNS_AttrSystemValue          =  'System Value';
  SYNS_AttrTagArea              =  'Tag Area';
  SYNS_AttrTableName            =  'Table Name';
  SYNS_AttrTerminator           =  'Terminator';
  SYNS_AttrText                 =  'Text';
  SYNS_AttrUnknownWord          =  'Unknown Word';
  SYNS_AttrUser                 =  'User Functions and Variables';
  SYNS_AttrUserFunction         =  'User Functions';
  SYNS_AttrValue                =  'Value';
  SYNS_AttrVariable             =  'Variable';
  SYNS_AttrWhitespace           =  'Whitespace';
  SYNS_AttrMathMode             =  'Math Mode';
  SYNS_AttrTextMathMode         =  'Text in Math Mode';
  SYNS_AttrSquareBracket        =  'Square Bracket';
  SYNS_AttrRoundBracket         =  'Round Bracket';
  SYNS_AttrTeXCommand           =  'TeX Command';

  // names of exporter output formats
  SYNS_ExporterFormatHTML       =  'HTML';
  SYNS_ExporterFormatRTF        =  'RTF';

  // TCustomSynEdit scroll hint window caption
//  SYNS_ScrollInfoFmt            =  'Top Line: %d';
  SYNS_ScrollInfoFmt            =  '%d - %d';                                   //DDH 10/16/01
  SYNS_ScrollInfoFmtTop         =  'Top Line: %d';
  // TSynEditPrintPreview page number
  SYNS_PreviewScrollInfoFmt     =  'Page: %d';

  // strings for property editors etc
  SYNS_EDuplicateShortcut       =  'Shortcut already exists';
  SYNS_ShortcutNone             =  '<none>';
  SYNS_DuplicateShortcutMsg     =  'The keystroke "%s" is already assigned ' +
                                   'to another editor command. (%s)';
  SYNS_DuplicateShortcutMsg2    =  'The keystroke "%s" is already assigned ' +
                                   'to another editor command.'#13#10'The ' +
                                   'shortcut for this item has not been changed.';

  // Filters used for open/save dialog
  SYNS_FilterPascal             =  'Pascal Files (*.pas,*.dpr,*.dpk,*.inc)|*.pas;*.dpr;*.dpk;*.inc';
  SYNS_FilterHP48               =  'HP48 Files (*.s,*.sou,*.a,*.hp)|*.s;*.sou;*.a;*.hp';
  SYNS_FilterCAClipper          =  'CA-Clipper Files (*.prg,*.ch,*.inc)|*.prg;*.ch;*.inc';
  SYNS_FilterCORBAIDL           =  'CORBA IDL Files (*.idl)|*.idl';
  SYNS_FilterCPM                =  'CPM Reports (*.rdf,*.rif,*.rmf,*.rxf)|*.rdf;*.rif;*.rmf;*.rxf';
  SYNS_FilterCPP                =  'C++ Files (*.c,*.cpp,*.h,*.hpp)|*.c;*.cpp;*.h;*.hpp';
  SYNS_FilterCS                 =  'C# Files (*.cs)|*.cs';
  SYNS_FilterJava               =  'Java Files (*.java)|*.java';
  SYNS_FilterPerl               =  'Perl Files (*.pl,*.pm,*.cgi)|*.pl;*.pm;*.cgi';
  SYNS_FilterAWK                =  'AWK Scripts (*.awk)|*.awk';
  SYNS_FilterHTML               =  'HTML Documents (*.htm,*.html)|*.htm;*.html';
  SYNS_FilterVBScript           =  'VBScript Files (*.vbs)|*.vbs';
  SYNS_FilterGalaxy             =  'Galaxy Files (*.gtv,*.galrep,*.txt)|*.gtv;*.galrep;*.txt';
  SYNS_FilterPython             =  'Python Files (*.py)|*.py';
  SYNS_FilterSQL                =  'SQL Files (*.sql)|*.sql';
  SYNS_FilterTclTk              =  'Tcl/Tk Files (*.tcl)|*.tcl';
  SYNS_FilterRTF                =  'Rich Text Format Documents (*.rtf)|*.rtf';
  SYNS_FilterBatch              =  'MS-DOS Batch Files (*.bat;*.cmd)|*.bat;*.cmd';
  SYNS_FilterDFM                =  'Borland Form Files (*.dfm;*.xfm)|*.dfm;*.xfm';
  SYNS_FilterX86Assembly        =  'x86 Assembly Files (*.asm)|*.asm';
  SYNS_FilterGembase            =  'GEMBASE Files (*.dml,*.gem)|*.dml;*.gem';
  SYNS_FilterINI                =  'INI Files (*.ini)|*.ini';
  SYNS_FilterSML                =  'Standard ML Files (*.sml)|*.sml';
  SYNS_FilterVisualBASIC        =  'Visual Basic Files (*.bas)|*.bas';
  SYNS_FilterADSP21xx           =  'DSP Files (*.dsp,*.inc)|*.dsp;*.inc';
  SYNS_FilterPHP                =  'PHP Files (*.php,*.php3,*.phtml,*.inc)|*.php;*.php3;*.phtml;*.inc';
  SYNS_FilterCache              =  'Cache Files (*.mac,*.inc,*.int)|*.mac;*.inc;*.int';
  SYNS_FilterCSS                =  'Cascading Stylesheets (*.css)|*.css';
  SYNS_FilterJScript            =  'Javascript Files (*.js)|*.js';
  SYNS_FilterKIX                =  'KiXtart Scripts (*.kix)|*.kix';
  SYNS_FilterBaan               =  'Baan 4GL Files (*.cln)|*.cln';
  SYNS_FilterFoxpro             =  'Foxpro Files (*.prg)|*.prg';
  SYNS_FilterFortran            =  'Fortran Files (*.for)|*.for';
  SYNS_FilterAsm68HC11          =  '68HC11 Assembler Files (*.hc11,*.asm,*.asc)|*.hc11;*.asm;*.asc';
  SYNS_FilterProgress           =  'Progress Files (*.w,*.p,*.i)|*.w;*.p;*.i';
  SYNS_FilterInno               =  'Inno Setup Scripts (*.iss)|*.iss';
  SYNS_FilterModelica           =  'Modelica Files (*.mo)|*.mo';
  SYNS_FilterModula3            =  'Modula-3 Files (*.m3)|*.m3';
  SYNS_FilterSDD                =  'Semanta DD Files (*.sdd)|*.sdd';
  SYNS_FilterXML                =  'XML Files (*.xml,*.xsd,*.xsl,*.xslt,*.dtd)|*.xml;*.xsd;*.xsl;*.xslt;*.dtd';
  SYNS_FilterGWS                =  'GW-TEL Scripts (*.gws)|*.gws';
  SYNS_FilterSynGenMsgfiles     =  'Msg Files (*.msg)|*.msg';
  SYNS_FilterST                 =  'Structured Text Files (*.st)|*.st';
  SYNS_FilterCOBOL              =  'COBOL Files (*.cbl, *.cob)|*.cbl;*.cob';
  SYNS_FilterTeX                =  'TeX Files (*.tex)|*.tex';
  SYNS_FilterRuby               =  'Ruby Files (*.rb,*.rbw)|*.rb;*.rbw';
  SYNS_FilterUNIXShellScript    =  'UNIX Shell Scripts (*.sh)|*.sh';

  // Language names. Maybe somebody wants them translated / more detailed...
  SYNS_LangHP48                 =  'HP48';
  SYNS_LangCAClipper            =  'CA-Clipper';
  SYNS_LangCPM                  =  'COAS Product Manager Report';
  SYNS_LangCPP                  =  'C++';
  SYNS_LangCS                   =  'C#';
  SYNS_LangJava                 =  'Java';
  SYNS_LangPerl                 =  'Perl';
  SYNS_LangBatch                =  'MS-DOS Batch';
  SYNS_LangDfm                  =  'Borland Forms';
  SYNS_LangAWK                  =  'AWK';
  SYNS_LangCORBAIDL             =  'CORBA IDL';
  SYNS_LangHTML                 =  'HTML';
  SYNS_LangVBSScript            =  'MS VBScript';
  SYNS_LangGalaxy               =  'Galaxy';
  SYNS_LangGeneral              =  'General';
  SYNS_LangPascal               =  'Object Pascal';
  SYNS_LangX86Asm               =  'x86 Assembly';
  SYNS_LangPython               =  'Python';
  SYNS_LangTclTk                =  'Tcl/Tk';
  SYNS_LangSQL                  =  'SQL';
  SYNS_LangGembase              =  'Gembase';
  SYNS_LangINI                  =  'INI File';
  SYNS_LangSML                  =  'Standard ML';
  SYNS_LangVisualBASIC          =  'Visual Basic';
  SYNS_LangADSP21xx             =  'ADSP21xx';
  SYNS_LangPHP                  =  'PHP';
  SYNS_LangSybaseSQL            =  'Sybase SQL';
  SYNS_LangGeneralMulti         =  'General Multi-Highlighter';
  SYNS_LangCache                =  'Cache Object Script';
  SYNS_LangCSS                  =  'Cascading Style Sheet';
  SYNS_LangJScript              =  'JavaScript';
  SYNS_LangKIX                  =  'KiXtart';
  SYNS_LangBaan                 =  'Baan 4GL';
  SYNS_LangFoxpro               =  'Foxpro';
  SYNS_LangFortran              =  'Fortran';
  SYNS_Lang68HC11               =  '68HC11 Assembler';
  SYNS_LangProgress             =  'Progress';
  SYNS_LangInno                 =  'Inno Setup Script';
  SYNS_LangModelica             =  'Modelica';
  SYNS_LangModula3              =  'Modula 3';
  SYNS_LangSDD                  =  'Semanta Data Dictionary';
  SYNS_LangXML                  =  'XML';
  SYNS_LangGWS                  =  'GW-TEL';
  SYNS_LangSynGenMsgfiles       =  'SynGen Msg';
  SYNS_LangUnreal               =  'Unreal';
  SYNS_LangST                   =  'Structured Text';
  SYNS_LangCOBOL                =  'COBOL';
  SYNS_LangTeX                  =  'TeX';
  SYNS_LangRuby                 =  'Ruby';
  SYNS_LangNameUNIXShellScript  =  'UNIX Shell Script';

implementation

end.

