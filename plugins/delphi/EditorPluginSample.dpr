library EditorPluginSample;

// This library/dll is a sample about how to write
// editor plug-ins for LDDesignPad
// If you want to write an import or export plugin use the "ImportExportPluginSample"
// NEVER change the headers of the Plugin_ID or ProcessText function

uses SysUtils;


type
  TLDDPCallBack = procedure(strCBCompleteText,strCBSelText : PChar); stdCall;

procedure Plugin_Info(CaseID:byte;buffer:pchar;maxlength:byte); stdcall;


// This is the first function called by LDDesignPad.
// It contains info about the author if the plugin
// like name, description etc.
// Max Length of each string is 255.

var
  PlugInName:string;
  PlugInMenuEntry:string;
  PlugInVersion:string;
  PlugInDescription:string;
  PlugInAuthor:string;
  PlugInCommentaries:string;
  PluginCall:string;
  Plugintype:string;
  strResult:string;
begin
  PlugInName:='LDDesignPad PlugIn Sample';
  PlugInMenuEntry:='Replace &spaces with underscores';
  PlugInVersion:='1.0';
  PlugInDescription:='Description of the plugin';
  PlugInAuthor:='Your name';
  PlugInCommentaries:='whatever you want.. just a comment ;)';
  PlugInCall:='1';
  // PluginCall can be one of the following values
  // 0 = Plugin can be called always
  // 1 = Plugin can only be called if no text is selected
  // 2 = Plugin can only be called if a portion of text is selected

  Plugintype:='%%editor';

  // Plugintype Kind of plugin - never change this
  // if you want to write an import or export plugin use the "ImportExportPluginSample"

  case CaseID of
      0:strResult:=PlugInName;
      1:strResult:=PlugInMenuEntry;
      2:strResult:=PlugInVersion;
      3:strResult:=PlugInDescription;
      4:strResult:=PlugInAuthor;
      5:strResult:=PlugInCommentaries;
      6:strResult:=PluginCall;
      7:strResult:=Plugintype;
      else strResult:=PlugInName;
  end;
  if Length(strResult) > maxLength then  // don't overflow the buffer we are about to write to
  SetLength(strResult, maxLength);
  StrPCopy(buffer,strResult);
end;

procedure ProcessText(CompleteText,SelText:PChar;var SelStart, SelLength , cursorrow , cursorcolumn:longWORD; myCallback:TLDDPCallBack);stdcall;
//
// This function processes and Returns 'TheText'.
//
// SelLength: length of selection
// SelStart : start of selection IF the user selected
//           a portion of text. If the user didn't select any text then CompleteText
//           contains the complete text and SelLength is 0.
// Row , column: Actual cursor position.
//
// You can manipulate SelStart, Sellength, cursorrow, cursorcolumn
// by assigning new values to them.

var
  i:integer;
  strCompleteText:string;
  strSelText:string;

begin

  // First copy CompleteText/SelText to local variables to be able to modify it
  // without overwriting any reserved memory. Leave these lines untouched.

  strCompleteText:=CompleteText;
  strSeltext:=SelText;

  // Manipulate strCompleteText or strSeltext
  // Do any manipulation you like to do with the text after this line


  // EXAMPLE FUNCTION Start ***********************************************

  // This is a very simple example function.
  // It replaces spaces with underscores.

  strSeltext:='';
  i:=1;
  while i<Length(strCompleteText)+1 do
   begin
      if strCompleteText[i]=' ' then
      strCompleteText[i]:='_';
      inc(i);
   end;

  SelStart:=0;
  Sellength:=0;

  CursorRow:=5;
  CursorColumn:=5;

   // Note: If strSeltext is NOT empty then only the selected text in LDDP
   // will be replaced after returning from the plugin.
   // Selstart, Sellength: If Selstart and Sellength are 0 then LDDP is ignoring
   //                      it and using the cursorRow, CursorCOlumn Settings instead


  // EXAMPLE FUNCTION End ***********************************************


  // Leave the following line untouched!
  // This is the callback function to get the changed text back to LDDP

  TLDDPCallBack(myCallBack)(PChar(strCompleteText),PChar(strSelText));

end;

exports
 Plugin_Info,
 ProcessText;

begin
end.


