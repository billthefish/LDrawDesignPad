LDDesignPad for LDraw
----------------------------

Contents

1. Installation
2. Introduction
3. Plug-In Capabilty
4. Comments and Bugs
5. Version History


1. Installation
----------------

Create a new dir and unzip the contents of the zip file into it.
Make sure you extract the \Plugins subdir too.


2. Introduction
----------------

LDDesignPad (LDDP) is a tool for editing and handling LDraw files
in a very comfortable way.

Features are:

 -Fully customizable editor with syntax highlighting
 -Open multiple files at the same time
 -Unlimited Undo/Redo
 -Use/define codesnippets
 -Editing features like Inlining of parts, commenting etc.
 -Seamless integration of L3P error check of parts at a button click
 -Integration of ML-Cad and LD-View or any external program
 -Plugin-Support!!!! Expand LDDesignPad with your own plugins in
 C++ or Delphi. Code samples / example plugins are included.

Special thanks to Roland Melkert (melkert@chello.nl) who translated 
the delphi-plugin example to C++ !!!!! 

3. Bendible Object Generator
----------------------------

Supported File Types:
73590B.DAT Hose Flexible 8.5L with Tabs (750.dat for endpoints)
73590A.DAT Hose Flexible 8.5L without Tabs (752.dat for endpoints)
Technic Ribbed Hoses (79.dat for endpoints)
Technic Flexible Axles (stud3a.dat for endpoints)
Technic Flex-System Hose (76.dat for endpoints)


Usage:
Place the endpoints where you want them. Ensure they are listed on adjacent lines
Select the two lines with the endpoints.
Select Generate Bendible Object from the Tools menu

4. Plugin Capability
--------------------

There is a Delphi/C++ Sample Source in the PluginDir.

You should be able to write your own plugin with this in a breeze.

If you need any help writing a plugin or need a new yet unsupported function
in the plugin header/call then don't hesitate to contact the LDDP team.
All Plugin dll's are required be in the \Plugins directory.

5. Comments and Bugs
---------------------

LDDesignPad is distributed under the GPL.

We invite you to contribute to this project.

Source code and the newest version can be found at 
 http://www.sourceforge.net/projects/lddp

There you will find forums for discussion and trackers for bugs and 
suggestions for features.

Note to all plugin authors:
  As of Version 1.5, LDDP no longer uses the Registry. It now uses the LDraw INI 
  file for it's configuration settings.  If you used settings other than the 
  InstallDir in the Registry, your plugins will have to be updated to work.

Remarks:

- The palette file (colors.pal) isn't complete.
  Some colors are missing, some have to be renamed. Use normal text editor
  or LDDP to edit this file. Feel free to do this and please send us any updates
  to this file so we can include it in the next release.

- If you wrote a plugin for LDDP we will be happy to a put a link or the
  plugin itself on the LDDP website!

6. Credits
----------

Thank you too to the other Code- and LDraw-Gurus for suggestions 
and the great programs they wrote to make LDRAWing a lot easier:

- Travis Cobbs
- Steve Bliss
- Lars C. Hassing
- Tore Eriksson

Special Thank to:

Lars C. Hassing

  Error Check feature derived from L3Check.cpp, L3Math.cpp
  Part of the L3 project for handling LDraw *.dat files
  Copyright (C) 1997-1999  Lars C. Hassing (lch@ccieurope.com)

Fredrik Glöckner

  Bendible Object Generator feature derived from 
   Emacs LDraw Major-Mode
  Copyright (C) 1999-2002  Fredrik Gl'#246'ckner (fredrigl@math.uio.no)

We especially thank you, the user, for downloading our program

   -The LDDP Development Team:
      Carsten Schmitz
      Stephen Schonberg
      Orion Pobursky


7. Version History
------------------

+ = New feature  * = Bugfix   - = Removed feature


v1.52 5 December 2003
+ Added ability to process current text through LSynth
+ Integrated the Bendible Object Generator
+ Added Auto Rounding feature
* Fixed problem with Error Check incorrectly fixing some Bad Vertex Sequences

v1.51 14 November 2003
* Drag and Drop from files onto LDDP is working now again
* Fixed window menu showing active windows
+ Updated compile instructions
* Fixed Search and Replace Functions
* Fixed Word to word jumping (still needs some more fixing)
* Fixed color replace dialog not showing color names when hovering with mouse over palette
* Numerous small fixes


v1.50 08 October 2003
+ Ability to insert BFC Statements 
+ Overhauled Error Check. Many new features available
+ Auto error fix now fixes 'Row N All Zeros' errors
+ Added some editor customization options.
+ Line is now selected if you click next to it in the left margin
* Changed code to more Windows friendly style (Drag and Drop works now)
* Fixed a problen with Error Check not finding all Bad Vertex Sequences

v1.5b 31 July 2003
+ Entire program overhauled and rewritten.
+ Integrated L3P check into the program.  Now called Error Check
+ Integrated BMP2DAT into the program.
+ Ability to reverse the winding of a polygon
+ A model tree veiwer
+ Auto error fix now fixes 'Row N All Zeros' errors
+ Moved all configuration settings to the LDraw.ini.  This file should be located in your
  Windows directory. If not LDDP will create it there.
+ Ability to change default decimal places when Inlining
+ Ability to define icons for plugins
 
v1.5a 05/22/2003  

+ Published LDDP under open source license. Feel free to contribute to this project
  and help to keep it alive.

v1.4 01/16/2003
* Fixed some L3P problems with long filenames or -paths
* Fixed list of recently used files
* Fixed a problem with wrong Z-Order of replace window
+ Added Autofix popup menu to L3P errormessages. You can automatically fix a single
  or all "Identical Lines" or "Bad Vertex sequence" errors with that option.
+ Autohiglighting for Pascal and C++ files added on load
+ Added ability to change highlighting color of the color tag
+ New polling option in poll button menu: Poll to selected line only
+ Added Shift-Del combination for cutting text

v1.3 10/26/2002
+ Looking for parts.lst instead of LDraw.exe for location check of LDraw parts
* Drag and Drop fixed
+ Changed Temp Filename location
+ Changed Polling time options
* Fixed small bug in Inliner Code
+ Added Ctrl/Shift-Insert shortcuts for copy and paste
+ Updated palette file


v1.2 09/29/2002

- Removed warning message for plugins if no text was selected
+ Setup installer
+ "Send To" entry
+ Saves LDDP.exe path to registry (check plugins-Readme.txt in Sample folder)


v1.19b 08/08/2002

* Fixed problems with long filenames for external programs
+ Added syntax highlighting support for other languages
* Revised plugin code (again)


v1.1 2002/08/03

* Fixed shortcuts for Cut, Copy, Paste
+ Redid the search options / added 'search' menu
+ Added 'Find next' (F3) option
+ Undo now possible after plugins that affect the whole text


v1.0 2002/07/27

+ 'Select All' command
+ Print command
* Fixed small bug in color selection
* Fixed / Expanded Example Plugin-Code. Plugins should work now properly
* Fixed bmall bug in find-window

v0.9 2002/03/05

+ Added Change/Replace Color dialog (added palette file)
+ Undo now possible even after save
- Reverted to colored speedbuttons. Think they looked better ;-)
* MRU files list updated when closing main window
* Fixed Inlining bug where double spaces were parsed as 0.
* Fixed Inlining calculation bug.
* Fixed Inlining bug where all colors were replaced by master part color.
* Code templates are saved now (templates.bin)
* Fixed ML-CAD starting and loading long filenames with spaces

v0.4 2002/02/27

+ Added self-defined program feature
+ Added syntax-highlighting for optional lines
+ Added options to set Username / Email / Signature
+ Small changes
+ Changed speedbuttons
* Fixed Inlining issues:
  - Uses correct color for inlined parts
  - Inlining menu entry correctly activated
  - Fixed inlining of subparts inside subparts
    Thanks to Tore Eriksson who helped me a lot with this issue!
* Fixed that OS can change the internal decimalpoint setting
* Plugins can now be properly disabled
* Fixed homepage menu entry


v0.3 2002/02/25

- First version
