Phramework
===============
[![](http://img.shields.io/badge/Issues-4-red.svg)](https://github.com/Phantomsmedia/Phramework/issues)[![](http://img.shields.io/badge/Release-v2.0.0.5-blue.svg)](https://github.com/Phantomsmedia/Phramework/releases/tag/v2.0.0.5) 

![Ph](http://i5.minus.com/ib2ovbqhL4YeYU.png)



===============
Ph2 and Ph3 are derivative of the [F2](http://ferstaberinde.com/f2/en//index.php?title=Main_Page) and [F3](http://ferstaberinde.com/f3/en//index.php?title=Main_Page) works. The content we have edited mainly consists of minor edits to gear, addition of many more factions from mods, and tweaks to the code, as well as a few minor additions. You can track F3's development at https://github.com/ferstaberinde/F3. 

**PH3 Versions:**
The latest Stable and Development versions can be found via the [release tab](https://github.com/Phantomsmedia/Phramework/releases) and the [direct download](https://github.com/Phantomsmedia/Phramework/archive/master.zip). 

It is advised that you always use the Development version of Ph3, as this is the absolute latest iteration. The Stable version is simply the most recent version that is bug-free. The problem with this, however, is that it may not be using mods that have been added since it's release.

**Installation:**

Now that you have downloaded the ZIP achive, extract to the desktop and open the folder inside named "Phramework-master". Within the folder is the mission template for Ph3; this is identified as Ph3.VR. Simply place this folder in....

_Documents/Arma 3 - Other Profiles/*playername*/missions_

**Changing Maps & Renaming Missions:**

By default, the template is set on the Virtual Reality map. This is shown by the folder's extension. To change the map, simply change the extension. To change the mission's name, change "Ph3" to whatever you desire it to be.

_Keep in mind however, all missions you wish to submit to the community must be named in the following format:_

PMT_(CO/TVT)(Player Count)_(Mission Name)

_Example:_

PMT_CO48_ISIS_Occupation


***


**In-Game Editor:**

Once in-game, open up the editor and load up the Ph3.VR template.

When it opens, you will see units from several different armies. Enable markers to better identify which armies are which. Once you choose an army or armies you want the players to be, delete the rest.

_Be sure to keep the modules and units next to the "Required Modules" marker. Under no circumstances do you delete these._

![](http://i.imgur.com/gDxhH48.jpg)

![](http://i.imgur.com/XhK5l7X.jpg)


***


**Editing the Briefing:**

To edit your mission's briefing, open your mission folder, open the f folder, and open the briefing folder. Once inside, open the file of the player's army with notepad.

_It is highly recommended that you download and use [Notepad++](http://notepad-plus-plus.org/) for this. It makes editing way easier._

The following sections should be edited....

**Credits:** Who/what helped you during mission development.

**Administration:** Any important information you want the admins to know, like when the mission is supposed to end.

**Execution:**

**- Commander's Intent:** Summary of the Commander's Plan.

**- Movement Plan:** Orders for how units will travel.

**- Fire Support Plan:** Orders for fire support units (air, armor, mortars, etc.).

**- Special Tasks:** Orders for specific units.


**Mission:** Description of the overall mission.


**Situation:** Summary of the current situation as of the missions start.

**- Enemy Forces:** Present enemies.

**- Friendly Forces:** Present friendlies

To change the mission name and author, open the description file with notepad.

The following sections should be edited....

**onLoadName:** Mission name.

**author:** Mission author.

***

**Editing Gear Loadouts:**

To change the gear loadouts of units, go to your mission folder, the f folder, and open the assignGear folder. Inside are the gear loadouts of different armies. In this case, we'll use f_assignGear_nato.

**Weapons:**

You can change what weapons a unit uses according to their class, which is shown above the actual weapon value. The "Standard Rifleman" section, for example, dispenses the weapon of your choice to MMG Assistant Gunners, Assistant Automatic Rifleman, MAT Assistant Gunners, MTR Assistant Gunners, and Riflemen.

From here on, it's self-apparent.

![](http://i.imgur.com/lmfwQOp.jpg)

**Uniforms:**

Within the same document, you can change the unit's uniforms.

Ph3 randomly selects a uniform, vest, and helmet based on what you put under the "Basic clothing" and "Armored vests" lines.

![](http://i.imgur.com/3xZCCc9.jpg)


***


**Miscellaneous:**

The following topics are miscellaneous features that Ph includes.

**Force AI To Use Flashlights:**

If you want the AI in your mission to use flashlights instead of NVGs, you must delete the /*  */ and the four // below the "// Remove NVGs" line in the init.SQF file. The section is located at the bottom.

![](http://i.imgur.com/D1J8u50.jpg)

===============
Credits


Developed by
   
	Jani J.       (www.phantactical.com Community Leader)
	KakePro       (www.phantactical.com Member)
	Duck          (www.phantactical.com Member)
	Teddy         (www.phantactical.com Member)
	Gruntin       (www.phantactical.com Member)
	Hunter        (Gave us a running start | Member circa 2012/13)	
	Batboyx2      (www.phantactical.com Addon Development Team Head)
	
	Great thanks to Ferstaberinde and the team, you can find most of the code within Phramework at https://github.com/ferstaberinde/F3 ! (www.ferstaberinde.com Creator of F2/F3 frameworks)



Tools of The Trade

	Gear Editing? Six Config Browser (http://browser.six-projects.net/cfg_weapons/classlist?version=67)
	Notepad++ (http://notepad-plus-plus.org/)
	TextCrawler (http://www.digitalvolcano.co.uk/textcrawler.html)
	Github (https://github.com/batboyx2/PhanTactical-Mission-Framework)
	Kegety's ArmA Tools Pack (http://www.kegetys.fi/category/gaming/armamods/)

How to Add a Faction

	mission.sqm
	folk_setGroupIDs.sqf
	fn_folk_assignGear.sqf
	folk_setLocalGroupMarkers.sqf
	briefing.sqf
	create folk_assignGear_(faction)
	create f_briefing_(faction)
	How to find faction: // hint format["%1", faction player];
	
Beta Testers/Mission Developers
	
	Duck
	Duskflame
	Zesteh
	Jakeen
	KakePro
	Shells
	Hunter
	CKing2013
	Dodson
	Sam Brooks (Sexypanda)
	Hawk
	Teddy
	DownWithGravity
	Jani J. (Phantom)
	Batboyx2
	Camden
	IronDuke
	JollyJoker
	AngryEchoSix
	Zesteh's Fiancee
	Windows
	Psikys
	Miles (Tehfocus)
	Othuv Nolen
	Gruntin
	Anyone I managed to forget
	
