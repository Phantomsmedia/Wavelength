// F3 - Folk ARPS Assign Gear Script - Russian Army (Flora)
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		sl 			- squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		samg		- SAM gunner
//		samag		- SAM assistant gunner
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "";						// IR Laser
_attach2 = "";						// Flashlight

_bipod1 = "";						// Light Machine Gun
_bipod2 = "";						// Medium Machine Gun
_bipod3 = "";						// Sniper Rifle

_silencer1 = "rhs_acc_dtk4short";	// Primary Suppressor
_muzzle = "rhs_acc_dtk";			// Russian Muzzle

_scope1 = "rhs_acc_ekp1";			// Short Range
_scope2 = "rhs_acc_1p78";			// Medium Range
_scope3 = "rhs_acc_pso1m2";			// Long Range
_scope4 = "rhs_acc_pgo7v"			// Launcher Scope

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "rhs_weap_ak74m";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_7N10_AK";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_ak74m";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_7N10_AK";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "rhs_weap_ak74m_folded";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_7N10_AK";

// Rifle with GL and HE grenades (CO, SL, FTLs)
_glrifle = "rhs_weap_ak74m_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_7N10_AK";
_glmag = "rhs_VOG25";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "rhs_GRD40_White";
_glsmokegreen = "rhs_GRD40_Green";
_glsmokered = "rhs_GRD40_Red";

// Flares for FTLs, Squad Leaders, etc
_glflare = "rhs_VG40OP_white";

// Pistols (CO, SL, Automatic Rifleman, Medium MG Gunner)
_pistol = "rhs_weap_makarov_pmm";
_pistolmag = "rhs_mag_9x18_12_57N181S";

// Grenades
_grenade = "rhs_mag_rgd5";
_smokegrenade = "rhs_mag_rdg2_white";
_smokegrenadegreen = "rhs_mag_rdg2_black";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_OPFOR";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "rhs_sidor";					// small backpack
_bagmedium = "rhs_assault_umbts";			// medium backpack
_baglarge =  "CUP_B_CivPack_WDL"; 			// heavy backpack
_baguav = "O_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "RHS_NSV_Gun_Bag";				// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";			// used by Heavy MG assistant gunner
_bagmtrg = "O_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";		// used by Mortar assistant gunner

// AGM Items
_bandage = "AGM_Bandage";					// for everyone
_epipen = "AGM_Epipen";  					// for everyone
_morphine = "AGM_Morphine";					// for everyone
_bloodbag = "AGM_Bloodbag";					// for medics
_earplugs = "AGM_EarBuds";					// for everyone
_sparebarrel = "AGM_SpareBarrel";			// for ARs and MMG
_maptools = "AGM_MapTools";                 // for SLs and CMD
_defusalkit = "AGM_DefusalKit";             // for engineers
_clacker = "AGM_Clacker";                   // for engineers

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "CUP_arifle_RPK74";
_ARmag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_ARmag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

// Medium MG
_MMG = "rhs_weap_pkp";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Rifleman AT
_RAT = "rhs_weap_rpg26";
_RATmag = "rhs_rpg26_mag";

// Medium AT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VL_mag";

// Surface Air
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Sniper
_SNrifle = "rhs_weap_svdp";
_SNrifleMag = "rhs_10Rnd_762x54mmR_7N1";

// Engineer items
_ATmine = "rhs_mine_tm62m_mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine = "rhs_mine_pmn2_mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_pilot = ["pp","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

_baseUniform = ["rhs_uniform_flora_patchless"];
_baseHelmet = ["rhs_6b27m","rhs_6b27m_ess"];
_baseGlasses = [];

// Armored vests
_lightRig = ["rhs_6b23"];
_mediumRig = ["rhs_6b23_6sh92"]; 	// default for all infantry classes
_heavyRig = ["rhs_6b13_Flora_6sh92"];

// Pilot
_pilotUniform = ["rhs_uniform_flora_patchless"];
_pilotHelmet = ["rhs_zsh7a_mike"];
_pilotRig = ["rhs_6b23"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["rhs_uniform_flora_patchless"];
_crewHelmet = ["rhs_tsh4","rhs_tsh4_ess"];
_crewRig = ["rhs_6b23_crew"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["rhs_uniform_flora_patchless"];
_ghillieHelmet = ["rhs_fieldcap"];
_ghillieRig = ["rhs_6b23_sniper"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following interprets what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================
		
	// The following code removes any pre-added NVGs

	if(_nvg in (assignedItems _unit)) then
	{
		_unit unassignItem _nvg;
		_unit removeItem _nvg;
	};
	// uncomment to remove nvgoogles
	
	_unit linkItem _nvg;			// Add night vision goggles
	
	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip a radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit linkItem "ItemGPS"; 		// Add and equip a GPS

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_csat_b.sqf";
	};
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
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Binocular";
		_unit linkItem "ItemGPS";
		_unit addItem _maptools;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
		_attachments = [_muzzle,_attach1,_scope2];
	};

// LOADOUT: SQUAD LEADER
	case "sl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_SLrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Binocular";
		_unit linkItem "ItemGPS";
		_unit addItem _maptools;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
		_attachments = [_muzzle,_attach1,_scope2];
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["m"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Binocular";
		_unit linkItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
		_attachments = [_attach1,_scope1];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,4];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["aar"] call _backpack;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MMG;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		["mmg"] call _backpack;
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["mmgag"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hmgg"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hmgag"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		_unit addItem _scope4;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["matag"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["mtrg"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "Rangefinder";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["mtrag"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: SAM GUNNER
	case "samg":
	{
		["samg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,1];
		_unit addweapon _SAM;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: SAM ASSISTANT GUNNER
	case "samag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["samag"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle,_attach1,_scope2];
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Binocular";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["cc"] call _backpack;
		_attachments = [_muzzle];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _defusalkit;
		_unit addItem _clacker;
		["eng"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _defusalkit;
		_unit addItem _clacker;
		["engm"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: UAV Operator
	case "uav":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit linkItem _uavterminal;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["uav"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle,_attach1];
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_muzzle];
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
		_attachments = [_muzzle,_attach1];
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 1];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 8];
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
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
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
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 10];
		_unit addMagazineCargoGlobal [_glriflemag, 10];
		_unit addMagazineCargoGlobal [_carbinemag, 12];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
	};

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	// Authentic Gameplay Modification
	if (f_var_medical == 2) exitWith
		{
			[_unit] execVM "f\medical\AGM_converter.sqf";
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
