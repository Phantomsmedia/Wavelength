==================================================
Wavelength
==================================================

WL is a derivative of the [F3](http://ferstaberinde.com/f3/en//index.php?title=Main_Page) work. The content we have edited mainly consists of minor edits to gear, addition of many more factions from mods, and tweaks to the code, as well as a few minor additions. You can track F3's development at https://github.com/ferstaberinde/F3. 

If you use a trigger and sync it to waypoints or units in your mission, please tag the group leader of the units or the units the waypoints are assigned to with this init line: 
```sqf
this setVariable ["hc_blacklist", true];
```

That should go in his init.

If you wish to have a translator that can speak more than one language you can place this in the units init line to allow him to speak any languages of your choice: 
```sqf
this setVariable ["f_languages", ["english","russian","arabic"]];
```

Note that in WL, BLUFOR speaks English, OPFOR speaks Russian and INDFOR speaks Arabic. Putting other languages in the quotations will make it gibberish to all factions bar those that also have that same language in their unit. 

==================================================

F3 Readme.md, along with edits for this specific framework version.

MISSION README
==============

Mission: [ Insert name of mission ]
Version: [ Insert version here, format: N-N-N ]
Developer(s): [ Insert your name(s) here. ]
Description: [ Insert short mission description here ]



README CONTENTS
===============

01. REQUIRED ADDONS
02. NOTES
03. CHANGE HISTORY

01. REQUIRED ADDONS
===================

To play this mission the following addons are required:

[ Insert name of addon ] - [URL for downloadable copy of the addon ]
[ Insert name of addon ] - [URL for downloadable copy of the addon ]
[ Insert name of addon ] - [URL for downloadable copy of the addon ]


02. NOTES
=========

[ Insert your notes here. ]



03. CHANGE HISTORY
==================

Version | Date

[ Insert version, format: N-N-N ] | [ Insert date, format: MM DD CCYY ]
[ Insert change #1 here. ]
[ Insert change #2 here. ]
