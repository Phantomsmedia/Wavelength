// F2 - Folk Assign Gear Script - UN Equipment
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		samg	- surface to air missile gunner
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

//SEE "Backpack Classnames.txt" FOR CLASSNAMES TO USE FOR RUCKS
_ruckSack = "ACE_CharliePack_FLORA";
_radioRuckSack = "ACE_PRC119";
_medicRuckSack = "ACE_CharliePack_ACU_Medic";


_rifle = "AK_74"; _riflemag = "30Rnd_545x39_AK";																						// Standard Riflemen (Spotter, HMG Assistant Gunner, MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, HAT Assistant Gunner, MTR Assistant Gunner, Rifleman)

_carbine = "AKS_74"; _carbinemag = "30Rnd_545x39_AK"; 																					// Standard Carabineer (Medic, HMG Gunner, Rifleman (AT), Rifleman (AA), MAT Gunner, HAT Gunner, MTR Gunner, Carabineer)

_smg = "AKS_74_U"; _smgmag = "30Rnd_545x39_AK";																									// Standard Submachine Gun/Personal Defence Weapon (Vehicle Crew, Aircraft Pilot, Submachinegunner)

_glrifle = "AK_74_GL"; _glriflemag = "30Rnd_545x39_AK"; _glmag = "1Rnd_HE_GP25";														// Rifle with GL and HE grenades (CO, DC, FTLs)
_glsmokewhite = "1Rnd_Smoke_GP25"; _glsmokegreen = "1Rnd_SmokeGreen_GP25"; _glsmokered = "1Rnd_SmokeRed_GP25";    							// Smoke for FTLs, Squad Leaders, etc 
_glflarewhite = "FlareWhite_GP25"; _glflarered = "FlareRed_GP25"; _glflareyellow = "FlareYellow_GP25"; _glflaregreen = "FlareGreen_GP25";	// Flares for FTLs, Squad Leaders, etc

_pistol = "Makarov"; _pistolmag = "8Rnd_9x18_Makarov";																								// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "HandGrenade_West"; _smokegrenade = "SmokeShell";_smokegrenadegreen = "SmokeShellGreen";																				// Grenades


// ====================================================================================


// UNIQUE, ROLE-SPECIFIC EQUIPMENT
	
_AR = "RPK_74"; _ARmag = "75Rnd_545x39_RPK";																							// Automatic Rifleman

_MMG = "PK"; _MMGmag = "100Rnd_762x54_PK";																							// Medium MG

_HMG = "M2HD_mini_TriPod_US_Bag_EP1";																										// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
_HMGmount = "Tripod_Bag";																													// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)

_RAT = "ACE_RPG22"; _RATmag = "ACE_RPG22";																											// Rifleman AT

_MAT = "RPG7V"; _MATmag1 = "PG7V"; _MATmag2 = "PG7VR";																			// Medium AT

_HAT = "MetisLauncher"; _HATmag1 = "AT13"; _HATmag2 = "AT13";																				// Heavy AT Gunner

_MTR = "M252_US_Bag_EP1";																													// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "Tripod_Bag";																													// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)

_RAA = "Igla"; _RAAmag = "Igla";																										// Rifleman AA (anti-air)

_SNrifle = "SVD"; _SNriflemag = "10Rnd_762x54_SVD";																					// Sniper

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

//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
////_unit addweapon "ItemGPS";					// add universal GPS for this faction (nb: misc items not cleared
//_unit addweapon "ItemMap";				// etc
//_unit addweapon "ItemCompass";
//_unit addweapon "ItemRadio";
//_unit addweapon "ItemWatch";
if (f_param_gps == 2) then {
	_unit addWeapon "ItemGPS";
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
_unit addWeapon _radioRuckSack;

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_COriflemag
{_unit addmagazine _glmag} foreach [1,2,3];
{_unit addmagazine _glsmokewhite} foreach [1,2,3];
_unit addweapon _glrifle;									//_COrifle		
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _smokegrenadegreen;} foreach [1];
_unit addWeapon "Binocular";
_unit addweapon "ace_earplugs";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _glriflemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glmag, 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glflarered, 3] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glsmokewhite,5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
	};
  
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
_unit addWeapon _radioRuckSack;
_unit addweapon "acre_prc148";

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_DCriflemag
{_unit addmagazine _glmag} foreach [1,2,3];
{_unit addmagazine _glsmokewhite} foreach [1,2,3];
_unit addweapon _glrifle;									//_DCrifle		
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _smokegrenadegreen;} foreach [1];
_unit addWeapon "Binocular";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _glriflemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glmag, 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glflarered, 3] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glsmokewhite,5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";
	};  


// LOADOUT: MEDIC
	case "m":
	{
_unit addWeapon _medicRuckSack;

{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8,9];	
_unit addweapon _carbine;
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _smokegrenade;} foreach [1,2,3];
[_unit , _carbinemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
[_unit , "ACE_Medkit", 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
_unit addweapon "ace_earplugs";
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
_unit addWeapon _ruckSack;

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_FTLriflemag
{_unit addmagazine _glmag} foreach [1,2,3,4];
{_unit addmagazine _glsmokewhite} foreach [1,2,3,4];
_unit addweapon _glrifle;									//_FTLrifle		
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _smokegrenadegreen;} foreach [1];
_unit addweapon "Binocular";
_unit addweapon "acre_prc148";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _glriflemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glmag, 10] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glflarered, 3] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glsmokewhite,5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";
	};			


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _ARmag} foreach [1,2,3,4];
_unit addweapon _AR;
{_unit addmagazine _grenade} foreach [1,2,3,4];
{_unit addmagazine _smokegrenade;} foreach [1,2];
[_unit , _ARmag, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";
_unit addWeapon "ACE_KeyCuffs";
		
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
_unit addweapon _rifle;		
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
_unit addWeapon "Binocular";
[_unit , _ARmag, 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _riflemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";
_unit addWeapon "ACE_KeyCuffs";
		
	};				
	
// LOADOUT: RIFLEMAN (AT)	
	case "rat":
	{
[_unit, _ruckSack] call ACE_fnc_AddWeaponOnBack;
_unit addweapon _RAT;

{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8,9,10];
_unit addweapon _carbine;
{_unit addmagazine _RATmag} foreach [1];
{_unit addmagazine _smokegrenade} foreach [1];		
[_unit , _carbinemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";
_unit addWeapon "ACE_KeyCuffs";
	};		
	
// LOADOUT: SURFACE TO AIR MISSILE GUNNER 
	case "samg":
	{
[_unit, _ruckSack] call ACE_fnc_AddWeaponOnBack;
_unit addweapon _RAA;

{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];
_unit addweapon _carbine;
{_unit addmagazine _RAAmag} foreach [1];				
_unit addweapon "acre_prc148";
_unit addweapon "ItemGPS";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _carbinemag, 7] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";


	};			
	
// LOADOUT: ASSISTANT SURFACE TO AIR MISSILE GUNNER
	case "samag":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
_unit addweapon _rifle;
_unit addWeapon "Binocular";
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
[_unit , _riflemag, 7] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _RAAmag, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";			
	};
// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
_unit addWeapon _ruckSack;

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _MMGmag} foreach [1,2,3,4,5];
_unit addweapon _MMG;	
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2,3,4,5];
_unit addweapon "acre_prc148";
_unit addWeapon "ACE_KeyCuffs";
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
_unit addweapon "ace_earplugs";
		
	};			

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8,9];
_unit addweapon _rifle;
_unit addWeapon "Binocular";
_unit addWeapon "ACE_KeyCuffs";	
{_unit addmagazine _grenade} foreach [1];
{_unit addmagazine _smokegrenade;} foreach [1,2];
[_unit , _MMGmag, 4] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _riflemag, 7] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
_unit addweapon "ace_earplugs";				
	};
	
	

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
[_unit, _ruckSack] call ACE_fnc_AddWeaponOnBack;
_unit addweapon _MAT;

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _carbinemag} foreach [1,2,3];
_unit addweapon _carbine;
{_unit addmagazine _MATmag1} foreach [1,2];
{_unit addmagazine _MATmag2} foreach [1];
_unit addweapon "acre_prc148";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _carbinemag, 7] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
_unit addweapon "ace_earplugs";				
			
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
_unit addweapon _rifle;
_unit addWeapon "Binocular";
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _smokegrenade;} foreach [1,2,3];
{_unit addmagazine _grenade} foreach [1,2];		
[_unit , _riflemag, 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
[_unit , _MATmag1, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
_unit addweapon "ace_earplugs";				
					
			
			
	};	
	
// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
[_unit, _ruckSack] call ACE_fnc_AddWeaponOnBack;
_unit addweapon _HAT;

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
_unit addweapon _carbine;
{_unit addmagazine _smokegrenade;} foreach [1];	
{_unit addmagazine _HATmag1} foreach [1];
_unit addweapon "acre_prc148";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _carbinemag, 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;			
	};	
	
// LOADOUT: HEAVY AT ASSISTANT GUNNER	
	case "hatag":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
_unit addweapon _rifle;
_unit addWeapon "Binocular";
_unit addWeapon "ACE_KeyCuffs";	
{_unit addmagazine _smokegrenade;} foreach [1,2,3];
{_unit addmagazine _grenade} foreach [1,2];
[_unit , _riflemag, 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _HATmag1, 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
						
					
	};		
	
		
	
// LOADOUT: SNIPER
	case "sn":
	{
_unit addWeapon _ruckSack;

if (f_param_gps == 1) then {
	_unit addWeapon "ItemGPS";
};

{_unit addmagazine _SNriflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _SNrifle;
_unit addweapon "Binocular";
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _smokegrenade;} foreach [1,2,3,4];
[_unit , _SNriflemag, 7] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _rifle;
_unit addWeapon "Binocular_Vector";	
{_unit addmagazine _smokegrenade;} foreach [1,2];
{_unit addmagazine _grenade} foreach [1,2];
_unit addweapon "acre_prc148";
_unit addWeapon "ACE_KeyCuffs";
[_unit , _SNriflemag, 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _riflemag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
	};			
	
// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade;} foreach [1];
	};			
	
// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade} foreach [1,2];					
	};		
	
// LOADOUT: ENGINEER
	case "eng":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _carbine;
{_unit addmagazine _smokegrenade} foreach [1,2];
{_unit addmagazine _grenade} foreach [1,2];
_unit addweapon "acre_prc148";
_unit addWeapon "ACE_KeyCuffs";		
[_unit , _carbinemag, 5] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;	
[_unit , "PipeBomb", 2] call ACE_Sys_Ruck_fnc_AddMagToRuck;

	};	
		
		
// LOADOUT: RIFLEMAN
	case "r":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _rifle;
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
[_unit , _riflemag, 18] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
	};

// LOADOUT: CARABINEER
	case "car":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _carbine;
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
[_unit , _carbinemag, 18] call ACE_Sys_Ruck_fnc_AddMagToRuck;
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
	};

// LOADOUT: GRENADIER
	case "gren":
	{
_unit addWeapon _ruckSack;

{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7,8];
_unit addweapon _glrifle;
_unit addWeapon "ACE_KeyCuffs";
{_unit addmagazine _glmag} foreach [1,2,3,4,5,6];
{_unit addmagazine _glsmokewhite} foreach [1,2];
{_unit addmagazine _grenade} foreach [1,2];
{_unit addmagazine _smokegrenade;} foreach [1,2];
[_unit , _glriflemag, 7] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Morphine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck; 
[_unit , "ACE_Epinephrine", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , "ACE_Bandage", 1] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glmag, 12] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glflarered, 3] call ACE_Sys_Ruck_fnc_AddMagToRuck;
[_unit , _glsmokewhite,3] call ACE_Sys_Ruck_fnc_AddMagToRuck;
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
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
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
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
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
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
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

// ENSURE UNIT HAS WEAPON SAFETIED AND LOWERED ON SPAWN
_unit addWeapon "ACE_Safe";
_unit selectWeapon "ACE_Safe";
_unit action ["WEAPONONBACK",_unit];

//DISENGAGES THE SYSTEM WHICH KEEPS TEN OF EACH MED FROM BEING ADDED

[_unit]execVM "reinstatePacking.sqf";