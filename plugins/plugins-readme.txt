Hello!

A few hints for plugin-authors:

- LDDP saves its settings including the paths to LDDP, LDRAW and other external programs in
  an INI file called LDDP.ini in the LDDP Dir.

- For window plugins LDDP saves a "InstallDir" key containing the actual dir of the lddp executable 
  (its updated everytime LDDP is started).
  You can find this key under HKEY_CURRENT_USER\Software\Waterproof Productions\LDDesignPad\.   

- You have to note the fact that the user isn't forced to enter the LDraw Dir or one of the externals program
  dirs in LDDP. So if you use one of these keys in your plugin then check first if it isn't empty. 
  If it's empty then tell the user to configurate it inside LDDP first.

- You can add a Menu Icon to your plugin.  Create a 16 by 16 pixel Bitmap and give it the same name as your
  plugin.  The mask color is Delphi clFuchsia, RGB 255,0,255, any pixel with this color will be
  considered transparent by LDDesignPad

If you have any further questions please don't hesitate to write email to casz@gmx.de

Play well

The LDDesignPad Team 