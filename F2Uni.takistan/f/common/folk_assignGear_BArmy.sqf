// F2 - Folk Assign Gear Script - US Army Equipment
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================


// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		rad             - radio operator
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		arat	- surface to air missile gunner
//		samag	- surface to air missile assistant
//		mmgg	- medium mg gunner
//		mmgag	- medium mg assistant
//		hmgg	- heavy mg gunner (deployable)
//		hmgag	- heavy mg assistant (deployable)
//		matg	- medium AT gunner
//		matag	- medium AT assistant
//		hatg	- heavy AT gunner
//		hatg	- heavy AT assistant
//		mtrg	- mortar gunner (deployable)
//		mtrag	- mortar assistant (deployable)
//		sn		- sniper
//		sp		- spotter
//		c		- ground vehicle crew
//		p		- air vehicle pilots
//		eng		- engineers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
//		gren	- grenadier
//
//		v_car	- car/4x4
//		v_tr	- truck
//		v_ifv	- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_rifle = "ACE_FAL_Para"; _riflemag = "ACE_20Rnd_762x51_B_FAL";																						// Standard Riflemen (Spotter, HMG Assistant Gunner, MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, HAT Assistant Gunner, MTR Assistant Gunner, Rifleman)

_carbine = "ACE_FAL_Para"; _carbinemag = "ACE_20Rnd_762x51_B_FAL"; 																					// Standard Carabineer (Medic, HMG Gunner, Rifleman (AT), Rifleman (AA), MAT Gunner, HAT Gunner, MTR Gunner, Carabineer)

_smg = "ACE_MP5A4"; _smgmag = "30Rnd_9x19_MP5";																									// Standard Submachine Gun/Personal Defence Weapon (Vehicle Crew, Aircraft Pilot, Submachinegunner)

_glrifle = "ACE_FAL_Para"; _glriflemag = "ACE_20Rnd_762x51_B_FAL"; _glmag = "";														// Rifle with GL and HE grenades (CO, DC, FTLs)
_glsmokewhite = "1Rnd_Smoke_M203"; _glsmokegreen = "1Rnd_SmokeGreen_M203"; _glsmokered = "1Rnd_SmokeRed_M203";    							// Smoke for FTLs, Squad Leaders, etc 
_glflarewhite = "FlareWhite_M203"; _glflarered = "FlareRed_M203"; _glflareyellow = "FlareYellow_M203"; _glflaregreen = "FlareGreen_M203";	// Flares for FTLs, Squad Leaders, etc

_pistol = "M9"; _pistolmag = "15Rnd_9x19_M9";																								// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "HandGrenade_West"; _smokegrenade = "SmokeShell";_smokegrenadegreen = "SmokeShellGreen";																				// Grenades

_bagmedium = "US_Assault_Pack_EP1";		// 8+ slots																							// Backpack for assistant gunners (AAR, AMMG, AMAT, AHAT), so that they don't have to drop ammo themselves
_baglarge =  "US_Backpack_EP1"; 		// 12+ slots
		//  6 Slots: "CZ_Vestpouch_EP1"
		//  8 Slots: "US_Assault_Pack_EP1", "US_Patrol_Pack_EP1", "TK_Assault_Pack_EP1", "TK_RPG_Backpack_EP1"
		// 12 Slots: "US_Backpack_EP1", "TK_ALICE_Pack_EP1",
		// 13 Slots: "BAF_AssaultPack_RifleAmmo"
		// 14 Slots: "DE_Backpack_Specops_EP1", "CZ_Backpack_EP1"

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT
	
_AR = "I44_BrenMk1"; _ARmag = "I44_30rd_77x56R_Mix_Bren";																							// Automatic Rifleman

_MMG = "BAF_L7A2_GPMG"; _MMGmag = "100Rnd_762x51_M240";																							// Medium MG

_HMG = "M2HD_mini_TriPod_US_Bag_EP1";																										// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
_HMGmount = "Tripod_Bag";																													// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)

_RAT = "M79_EP1"; _RATmag = "1Rnd_HE_M203";																											// Rifleman AT

_MAT = "MAAWS"; _MATmag1 = "MAAWS_HEAT"; _MATmag2 = "MAAWS_HEDP";																			// Medium AT

_HAT = "Javelin"; _HATmag1 = "Javelin"; _HATmag2 = "Javelin";																				// Heavy AT Gunner

_MTR = "M252_US_Bag_EP1";																													// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "Tripod_Bag";																													// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)

_RAA = "Stinger"; _RAAmag = "Stinger";																										// Rifleman AA (anti-air)

_SNrifle = "BAF_LRR_scoped"; _SNriflemag = "5Rnd_86x70_L115A1";																					// Sniper

_mine = "Mine"; _satchel = "pipebomb";																										// Engineer

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;							// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// PREPARE UNIT FOR GEAR ADDITION
// The following code removes all existing weapons and backpacks

//removeBackpack _unit;
removeallweapons _unit;
//_unit addweapon "NVGoggles"; 					// add universal NVG for this faction

removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
////_unit addweapon "ItemGPS";					// add universal GPS for this faction (nb: misc items not cleared
//_unit addweapon "ItemMap";				// etc
_unit addweapon "ItemCompass";
_unit addweapon "ItemWatch";

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================
// LOADOUT: RADIO OPERATOR
	case "rad":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7];	//_COriflemag
		_unit addweapon _carbine;									//_COrifle		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _carbinemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ACRE_PRC343";
	};

// LOADOUT: COMMANDER
	case "co":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7];	//_COriflemag
_unit addweapon _carbine;									//_COrifle		
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _smokegrenadegreen;} foreach [1];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];;
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _carbinemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addWeapon "Binocular";
_unit addweapon "acre_prc148";
_unit addweapon "acre_prc343";
_unit addweapon "ace_earplugs";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ACE_Map_Tools";
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";
	};
  
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7];	//_DCriflemag
_unit addweapon _carbine;									//_DCrifle		
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _smokegrenadegreen;} foreach [1];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _carbinemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addWeapon "Binocular";
_unit addweapon "acre_prc148";
_unit addweapon "acre_prc343";
_unit addweapon "ace_earplugs";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ACE_Map_Tools";
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";
	};  


// LOADOUT: MEDIC
	case "m":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
{_unit addmagazine _smokegrenade;} foreach [1];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];	
_unit addweapon _carbine;
{_unit addmagazine _smokegrenade;} foreach [1,2,3];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , "ACE_Morphine", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
[_unit , "ACE_Medkit", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _carbinemag, 3] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
removebackpack _unit;
_unit addweapon "acre_prc148";
_unit addweapon "acre_prc343";
_unit addweapon "ace_earplugs";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch";
_unit addBackpack "CZ_Backpack_EP1";
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];	//_FTLriflemag
_unit addweapon _rifle;									//_FTLrifle		
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _smokegrenadegreen;} foreach [1];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addWeapon "Binocular";
_unit addweapon "acre_prc148";
_unit addweapon "acre_prc343";
_unit addweapon "ace_earplugs";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "ACE_Map_Tools";
_unit addBackpack "CZ_Backpack_EP1";
	};			


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
{_unit addmagazine _ARmag} foreach [1,2,3,4,5,6,7];
_unit addweapon _AR;
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _ARmag, 15] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";		
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
_unit addweapon _rifle;		
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _riflemag, 4] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _ARmag, 15] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addWeapon "Binocular";
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";	
		
	};				
	
// LOADOUT: RIFLEMAN (AT)	
	case "rat":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7];
_unit addweapon _carbine;
{_unit addmagazine _RATmag} foreach [1,2,3,4,5,6];
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","M79_EP1"];
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";	


	};		
	
// LOADOUT: SURFACE TO AIR MISSILE GUNNER
	case "sam":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
{_unit addmagazine _raamag} foreach [1];
_unit addweapon _rifle;
_unit addweapon _RAA;
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "acre_prc148";
_unit addweapon "ACE_Map_Tools";
_unit addBackpack "CZ_Backpack_EP1";	

		
	};

// LOADOUT: ASSISTANT SURFACE TO AIR MISSILE GUNNER
	case "samag":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
_unit addweapon _rifle;
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit addweapon "ACE_CharliePack"; 
[_unit , "Stinger", 1,2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch";
_unit addweapon "ace_earplugs";	
_unit addWeapon "Binocular";	

	};


// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
{_unit addmagazine _MMGmag} foreach [1,2,3,4,5];
_unit addweapon _MMG;	
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2,3,4,5];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "acre_prc148";
_unit addweapon "ACE_Map_Tools";
_unit addBackpack "CZ_Backpack_EP1";	

		
	};			

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
_unit addweapon _rifle;
_unit addWeapon "Binocular";	
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _MMGmag, 4] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";
_unit addWeapon "Binocular";	
			
	};
	
	

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3];
_unit addweapon _carbine;
{_unit addmagazine _MATmag1} foreach [1,2];
{_unit addmagazine _MATmag2} foreach [1];
_unit addweapon _MAT;	
_unit addweapon "ACE_CharliePack"; 
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "acre_prc148";
_unit addweapon "ACE_Map_Tools";
_unit addBackpack "CZ_Backpack_EP1";				
			
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
_unit addweapon _rifle;
{_unit addmagazine _smokegrenade;} foreach [1,2,3];
{_unit addmagazine _grenade} foreach [1,2];		
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
[_unit , "MAAWS_HEAT", 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addWeapon "Binocular";
_unit addBackpack "CZ_Backpack_EP1";				
					
			
			
	};	
	
// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
_unit addweapon _carbine;
{_unit addmagazine _smokegrenade;} foreach [1];	
{_unit addmagazine _HATmag1} foreach [1];
_unit addweapon _HAT;
_unit addweapon "acre_prc148";
_unit addweapon "ItemGPS";	
_unit addweapon "ACE_CharliePack"; 
[_unit , "30Rnd_556x45_Stanag", 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;			
	};	
	
// LOADOUT: HEAVY AT ASSISTANT GUNNER	
	case "hatag":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
_unit addweapon _rifle;
_unit addWeapon "Binocular";	
{_unit addmagazine _smokegrenade;} foreach [1,2,3];
{_unit addmagazine _grenade} foreach [1,2];
_unit addweapon "ACE_CharliePack"; 
[_unit , "30Rnd_556x45_Stanag", 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "Javelin", 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
						
					
	};		
	
		
	
// LOADOUT: SNIPER
	case "sn":
	{
{_unit addmagazine _SNriflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _SNrifle;
_unit addweapon "Binocular";
{_unit addmagazine _smokegrenade;} foreach [1,2,3,4];
{_unit addmagazine "ACE_Morphine";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _SNriflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "acre_prc148";
_unit addBackpack "CZ_Backpack_EP1";	


	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _rifle;
_unit addWeapon "Binocular_Vector";	
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1];
{_unit addmagazine _grenade} foreach [1,2];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "acre_prc148";
_unit addBackpack "CZ_Backpack_EP1";	

	};			
	
// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade;} foreach [1];
removeAllItems _unit;
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addweapon "ACE_GlassesGasMask_US";
_unit addmagazine "ACE_Bandage";
_unit addweapon "ace_earplugs";	
_unit addweapon "acre_prc148";
	};			

// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade} foreach [1,2];					
	};		
	
		
// LOADOUT: RIFLEMAN
	case "r":
	{
{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _rifle;
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1]; 
{_unit addmagazine "ACE_Epinephrine";} foreach [1];
{_unit addmagazine "ACE_Bandage";} foreach [1];
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _grenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
removebackpack _unit;
_unit addweapon "ace_earplugs";
_unit addweapon "acre_prc343";
_unit addweapon "ItemCompass";
_unit addweapon "ItemMap"; 
_unit addweapon "ItemWatch"; 
_unit addBackpack "CZ_Backpack_EP1";	
	};

// LOADOUT: CARABINEER
	case "car":
	{
{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _carbine;
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
_unit addweapon "ACE_CharliePack"; 
[_unit , "ACE_Morhpine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
	
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};

// LOADOUT: GRENADIER
	case "gren":
	{
{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _glrifle;
{_unit addmagazine _glmag} foreach [1,2,3,4,5,6];
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine "ACE_Morphine";} foreach [1]; 
_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack"];
[_unit , _riflemag, 6] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , _smokegrenade, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glmag, 3] call ACE_Sys_Ruck_fnc_AddMagToRuck;

	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
	};	
	
// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
	};
	
// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
	};
	
// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		_unit addweapon _rifle;
		
		_unit selectweapon primaryweapon _unit;
				
		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

_unit setVariable ["ace_sys_wounds_no_medical_gear", true];

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;