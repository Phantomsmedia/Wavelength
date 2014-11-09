Phramework
===============
[![](http://img.shields.io/badge/Issues-1-red.svg)](https://github.com/Phantomsmedia/Phramework/issues)[![](http://img.shields.io/badge/Release-v2.0.0.9.8-blue.svg)](https://github.com/Phantomsmedia/Phramework/releases/tag/v2.0.0.9)![](http://img.shields.io/badge/Project%20Members-5-green.svg)[![](http://img.shields.io/badge/Commit%20History-Master%20Branch-yellowgreen.svg)](https://github.com/Phantomsmedia/Phramework/commits/master)
![Ph](http://i5.minus.com/ib2ovbqhL4YeYU.png)



===============
Ph2 and Ph3 are derivative of the [F2](http://ferstaberinde.com/f2/en//index.php?title=Main_Page) and [F3](http://ferstaberinde.com/f3/en//index.php?title=Main_Page) works. The content we have edited mainly consists of minor edits to gear, addition of many more factions from mods, and tweaks to the code, as well as a few minor additions. You can track F3's development at https://github.com/ferstaberinde/F3. 

Phramework 3 Tutorial

PH3 Versions:

The latest Stable and Development versions can usually be found here(http://phantactical.com/forum/index.php?topic=2036.0). However, the absolute latest version of the development version can be found on GitHub(https://github.com/Phantomsmedia/Phramework).

It is advised that you always use the Stable version of Ph3.

Installation:

Now that you have downloaded the ZIP achive, extract to the desktop and open the folder inside named "Phramework-master". Within the folder is the mission template for Ph3, which is identified as "Ph3.VR"

Simply place this folder in....

Documents/Arma 3 - Other Profiles/*playername*/missions

Changing Maps & Renaming Missions:

By default, the template is set on the Virtual Reality map. This is shown by the folder's extension. To change the map, simply change the extension. To change the mission's name, change "Ph3" to whatever you desire it to be.

*Keep in mind however, all missions you wish to submit to the community must be named in the following format:

PMT_(CO/TVT)(Player Count)_(Mission Name)

Example:

PMT_CO48_ISIS_Occupation

================================================================================================================================

In-Game Editor:

Once in-game, open up the editor and load up the Ph3.VR template.

When it opens, you will see three factions. One for BLUFOR, INDFOR, and OPFOR. Pick the sides you're going to use, and delete the ones you won't.

*Be sure to keep the modules and units next to the "Required Modules" marker. Under no circumstances do you delete these.

To choose your faction, open up your mission's folder, and go to the "f" folder, and then the "assignGear" folder. Delete the the assignGear of the base faction you're going to use.

BLUFOR = f_assignGear_nato
INDFOR = f_assignGear_aaf
OPFOR = f_assignGear_csat

Now, open up the "Custom Factions" folder. Inside are all the factions we have in the Phramework. Simply open the folder of the faction of your choice, and paste it back in the "assignGear" folder.

http://i.imgur.com/3YSfDhY.jpg

================================================================================================================================

Editing the Briefing:

To edit your mission's briefing, open your mission folder, open the f folder, and open the briefing folder. Once inside, open the .sqf of the player's faction with notepad.

*It is highly recommended that you download and use Notepad++(http://notepad-plus-plus.org/) for this. It makes editing way easier.

The following sections should be edited....

Credits: Who/what helped you during mission development.

Administration: Any important information you want the admins to know, like when the mission is supposed to end.

Execution:
- Commander's Intent: Summary of the Commander's Plan.
- Movement Plan: Orders for how units will travel.
- Fire Support Plan: Orders for fire support units (air, armor, mortars, etc.).
- Special Tasks: Orders for specific units.

Mission: Description of the overall mission.

Situation: Summary of the current situation as of the missions start.
- Enemy Forces: Present enemies.
- Friendly Forces: Present friendlies

To change the mission name and author, open the description file with notepad.

The following sections should be edited....

onLoadName: Mission name.

author: Mission author.

================================================================================================================================

Editing Gear Loadouts:

To change the gear loadouts of units, go to your mission folder, the f folder, and open the assignGear folder. Inside are the gear loadouts of different armies. In this case, we'll use f_assignGear_nato.

Weapons:

You can change what weapons a unit uses by simply changing the weapon and ammo classnames.

This rule applies to every item in the assignGear file.

http://i.imgur.com/LH68ukJ.jpg

Uniforms:

Ph3 randomly selects a uniform, vest, and helmet from the pool items you put under the "Basic clothing" and "Armored vests" lines.

Certain units have their own gear which you must specify in the lines below.

http://i.imgur.com/c6QGyik.jpg

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
	
