LDDesignPad v1.4 for LDraw
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

Thank you too to the other Code- and LDraw-Gurus for suggestions 
and the great programs they wrote to make LDRAWing a lot easier:

- Travis Cobbs
- Steve Bliss
- Lars C. Hassing
- Tore Eriksson

( no particular order) and the others not mentioned ;)


3. Plugin Capability
--------------------

There is a Delphi Sample Source in the PluginDir.

You should be able to write your own plugin with this in a breeze.

If you need any help writing a plugin or need a new yet unsupported function
in the plugin header/call then don't hesitate to contact me.
Plugins have always to be in the \Plugins Dir.


4. Comments and Bugs
---------------------
Please send any commments, suggestions, bugreports to casz@gmx.de

LDDesignPad is (c) copyrighted by Carsten Schmitz / Waterproof Productions.
Get the newest version always at http://www.m8laune.de

Remarks:

- The palette file (colors.pal) isn't complete.
  Some colors are missing, some have to be renamed. Use normal texteditor
  or LDDP to edit this file. Feel free to do this and please send me any updates
  to this file so I will include it in the next release.

- If you have some good templates then send me your templates.bin file.
  I will be happy to include it in the next release!

- If you wrote a plugin for LDDP I will be happy to a put a link or the
  plugin itself on my website!


5. Version History
------------------
MM/DD/YYYY
+ = New feature  * = Bugfix   - = Removed feature

v1.5
+ Added initializiation display for plugins while startup (some plugins require time to init)


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


v1.1 08/03/2002

* Fixed shortcuts for Cut, Copy, Paste
+ Redid the search options / added 'search' menu
+ Added 'Find next' (F3) option
+ Undo now possible after plugins that affect the whole text


v1.0 07/27/2002

+ 'Select All' command
+ Print command
* Fixed small bug in color selection
* Fixed / Expanded Example Plugin-Code. Plugins should work now properly
* Fixed bmall bug in find-window

v0.9 03/05/2002

+ Added Change/Replace Color dialog (added palette file)
+ Undo now possible even after save
- Reverted to colored speedbuttons. Think they looked better ;-)
* MRU files list updated when closing main window
* Fixed Inlining bug where double spaces were parsed as 0.
* Fixed Inlining calculation bug.
* Fixed Inlining bug where all colors were replaced by master part color.
* Code templates are saved now (templates.bin)
* Fixed ML-CAD starting and loading long filenames with spaces

v0.4 02/27/2002

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


v0.3 02/25/2002

- First version