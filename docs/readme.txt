LDraw Design Pad for LDraw
----------------------------

Contents

1. Installation
2. Introduction
3. Plug-In Capabilty
4. Comments and Bugs
5. Version History


1. Installation
----------------

Unzip the contents into the directory that you want to install LDDP.


2. Introduction
----------------

LDraw Design Pad (LDDP) is a tool for editing and handling LDraw files
in a very comfortable way.

Features are:

 -Fully customizable editor with syntax highlighting
 -Open multiple files at the same time
 -Unlimited Undo/Redo
 -Use/define codesnippets
 -Editing features like Inlining of parts, commenting etc.
 -Seamless integration of L3P error check of parts at a button click
 -Integration of MLCad and LDView or any external program
 -Plugin-Support!!!! Expand LDraw Design Pad with your own plugins in
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
Hose 12L

Usage:
Place the endpoints where you want them. Ensure they are listed on adjacent lines
Select the two lines with the endpoints.
Select Generate Bendible Object from the Tools menu (Ctrl-B)

4. Plugin Capability
--------------------

There is a Delphi/C++ Sample Source in the PluginDir.

You should be able to write your own plugin with this in a breeze.

If you need any help writing a plugin or need a new yet unsupported function
in the plugin header/call then don't hesitate to contact the LDDP team.
All Plugin dll's are required be in the \Plugins directory.

5. Comments and Bugs
---------------------

LDraw Design Pad is distributed under the GPL.

I invite you to contribute to this project.

Source code and the newest version can be found at 
 http://www.sourceforge.net/projects/lddp

There you will find forums for discussion and trackers for bugs and 
suggestions for features.

Note to all plugin authors:
  As of Version 1.5, LDDP no longer uses the Registry. It now uses the LDraw INI 
  file for it's configuration settings.

6. Credits
----------

Thank you too to the other Code- and LDraw-Gurus for suggestions 
and the great programs they wrote to make LDRAWing a lot easier:

Special thanks to:

Carsten Schmitz
 Former project contributer and LDDP creator.

Lars C. Hassing
  Error Check feature derived from L3Check.cpp, L3Math.cpp
  Part of the L3 project for handling LDraw *.dat files
  Copyright (C) 1997-1999  Lars C. Hassing (lch@ccieurope.com)

Fredrik Gl�ckner
  Bendible Object Generator feature derived from 
  Emacs LDraw Major-Mode 
  Copyright (C) 1999-2002  Fredrik Gl�ckner (fredrigl@math.uio.no)

Philippe "Philo" Hurbain
  Plane normal and collinear line check derived from code by:
  Philippe "Philo" Hurbain - 2007 - www.philohome.com
  Philo also provided a few icons

Willy Tschager
  Primary Beta Tester

Anders Isaksson (testing)
Kevin Clague (inspiration)
Stephan Schonberg (former project contributor)

I especially thank you, the user, for downloading this program

   -Orion Pobursky

7. Version History
------------------

+ = New feature  * = Bugfix   - = Removed feature

v2.1.0
+ Another major update with too many changes to list.  I am attempting to get the
  code ready for a cross platform compile with Lazarus and Freepascal.
- Removed L3Lab and BMP2DAT support.  BMP2DAT will reappear as an official plugin
  at a later date.

v2.0.4
* Fixed several bugs with the color replace dialog

v2.0.3
+ Updated error check to use the new standard for collinear lines
* Fixed LDConfig parsing bug

v2.0.2
* Fixed inlining broken in last version
* Fixed a few more bugs in the bendible part generator

v2.0.1
* Fixed a few bug in the bendible part generator
* Fixed a bug that caused LDDP in some cases to consider a line invalid if tab 
  characters were used to separate terms.

v2.0
+ Completely retooled and restructured LDDP.  Too many changes to list here.

v1.5.7
+ Added ability to sort text on various criteria
* Fixed various problems with rounding
+ Updated metamenu.ini
- Removed Unit Det from error check (it was experimental and didn't work as intended)
* Fixed an error with inlining if the cursor was at the beginning of a line

v1.5.6 13 November 2004
+ Added color replace toolbar
+ Added ability to define multiple user defined extarnal programs
+ Added subfile selection feature
* Fixed mirror to handle mutiple lines

v1.5.5 29 August 2004
+ Added mirror selected line.
+ Update inline feature to inline multiple line selection
+ Added poll on request
+ Added line numbers to the triangle combine dialog
+ Added a few toolbar icons and keyboard shortcuts
* Fixed MRU list to include files that are "Save As"

v1.54 26 February 2004
+ Added customizable META command menu.  Open the metamenu.ini file for details
+ Added Combine 2 triangles into quad feature
+ Added Randomize Colors of Selection feature
+ Added replace color regardless of original color to color replace dialog

v1.53 24 January 2004
+ Updated the colors.pal file (Thanks to Willy Tschager)
+ Added ability to auto fix 'Y column all zeros' errors
+ Added ability to copy the error check output to the clipboard
+ Added Hose 12L to Bendible Object Generator
* Fixed accuracy of identical line check

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
