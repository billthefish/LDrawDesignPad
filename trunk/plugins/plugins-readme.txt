Hello!

A few hints for plugin-authors:

- LDDP saves his settings including the paths to LDDP, LDRAW and other external programs in
  the registry under the following path with subdirs.
  HKEY_CURRENT_USER\Software\Waterproof Productions\LDDesignPad\.
  Most of the keys are self-explaining.

- You have to note the fact that the user isn't forced to enter the LDraw Dir or one of the externals program
  dirs in LDDP. So if you use one of these keys in your plugin then check first if it isn't empty. 
  If it's empty then tell the user to configurate it inside LDDP first.

Note: The "InstallDir" key is updated every time LDDP is started.

If you have any further questions please don't hesitate to write email to casz@gmx.de

Play well

Carsten Schmitz