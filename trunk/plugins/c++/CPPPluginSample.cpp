//LDDP CPP PluginSample translation by Roland Melkert
//Aug 5 2002
//V1.0

#include <windows.h>
#include <string.h>

typedef void WINAPI (TLDDPCallBack) (char *strCBCompleteText, char *strCBSelText);

extern "C" void WINAPI __declspec(dllexport) Plugin_Info(unsigned char CaseID, char *buffer, unsigned char maxlength)

// This is the first function called by LDDesignPad.
// It contains info about the author of the plugin
// like name, description etc.

{
  char result[100];
  int length;

  switch (CaseID)
  {
    case 0: default: strcpy(result, "LDDesignPad C++ PlugIn Sample"); //Name
                     break;

    case 1: strcpy(result, "Replace &spaces with underscores"); //Menu entry
            break;

    case 2: strcpy(result, "1.0"); //Version
            break;

    case 3: strcpy(result, "Description of the plugin"); //Description
            break;

    case 4: strcpy(result, "Your name"); //Author
            break;

    case 5: strcpy(result, "whatever you want.. just a comment ;)"); //Comment
            break;

    case 6: strcpy(result, "1"); //Plugin type

            // Plugintype can be one of the following values
            // 0 = Plugin can be called always
            // 1 = Plugin can only be called if no text is selected
            // 2 = Plugin can only be called if a portion of text is selected
            break;
  };

  //copy the string to the result buffer, but truncate it if it's to long.
  length=strlen(result)+1;
  if (length>maxlength)
  {
    length=maxlength;
    result[length-1]='\0';
  }

  strncpy(buffer, result, length);
};

extern "C" void WINAPI __declspec(dllexport) ProcessText(unsigned char *CompleteText, unsigned char *SelText, unsigned long &SelStart, unsigned long &SelLength, unsigned long &CursoRow, unsigned long &CursorColum, TLDDPCallBack myCallback)

//
// This function processes and Returns 'TheText'.
//
// SelLength: length of selection
// SelStart : start of selection IF the user selected
//           a portion of text. If the user didnt select any text then TheText
//           contains the complete text and SelLength is 0.
// Row , column: Actual cursor position.
//
// You can manipulate SelStart, Sellength, cursorrow, cursorcolumn
// by assigning new values to them.

{
  //reserve memory for local copies of strings, +1 because we need to store the termination char \0
  char *strCompleteText=(char*)malloc(strlen(CompleteText)+1);
  char *strSelText=(char*)malloc(strlen(SelText)+1);

  //Copy the strings

  strcpy(strCompleteText, CompleteText);
  strcpy(strSelText, SelText);

  // EXAMPLE FUNCTION Start ***********************************************
    //Start the core of this little plugins function

  strSelText[0]='\0';
  int max=strlen(strCompleteText);
  int i;

  //Replace the spaces with underscores in the complete text string
  for (i=0; i<max; i++)
  {
    if (strCompleteText[i]==' ')
      strCompleteText[i]='_';
  }

  //Change editors selection
  SelStart=0;
  SelLength=0;

  //Change editors cursor position
  CursoRow=5;
  CursorColum=5;

  // Note: If strSeltext is NOT empty then only the selected text in LDDP
  //       will be replaced after returning from the plugin.
  //
  // Selstart,
  // Sellength: If Selstart and Sellength are 0 then LDDP is ignoring
  //            it and using the cursorRow, CursorCOlumn Settings instead


  // EXAMPLE FUNCTION End ***********************************************

  // Leave the following line untouched!
  // This is the callback function to get the changed text back to LDDP

  myCallback(strCompleteText, strSelText);

  //release local copies
  free(strCompleteText);
  free(strSelText);
};

int main()

{
  return 0;
};
