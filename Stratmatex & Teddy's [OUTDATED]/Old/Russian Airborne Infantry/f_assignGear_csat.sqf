// F3 - Folk ARPS Assign Gear Script - CSAT
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		pl			- platoon leader
//		psg 		- platoon sergeant / squad leader
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
//		hatg		- heavy AT gunner
//		hatag		- heavy AT assistant
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
//		div    		- divers
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
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_H";	// Primary Suppressor
_silencer2 = "muzzle_snds_M";	// Scuba Suppressor

_scope1 = "optic_Aco";			// Short Range
_scope2 = "optic_Hamr";			// Medium Range
_scope3 = "optic_LRPS";			// Long Range

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer2
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "rhs_weap_ak74m";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_green";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_ak74m";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "rhs_weap_ak74m";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_AK";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "rhs_weap_ak74m_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_green";
_glmag = "rhs_VOG25";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "rhs_VG40OP_white";
_glsmokegreen = "rhs_VG40OP_green";
_glsmokered = "rhs_VG40OP_red";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "3Rnd_UGL_FlareWhite_F";
_glflarered = "3Rnd_UGL_FlareRed_F";
_glflaregreen = "3Rnd_UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";

// Grenades
_grenade = "rhs_mag_rgd5";
_smokegrenade = "rhs_mag_rdg2_white";
_smokegrenadegreen = "rhs_mag_rdg2_white";

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
_bagsmall = "rhs_assault_umbts";			// carries 120, weighs 20
_bagmedium = "rhs_assault_umbts";			// carries 240, weighs 30
_baglarge =  "B_Carryall_oli"; 			// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "O_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "O_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner
_bagmtrg = "O_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";		// used by Mortar assistant gunner

// AGM Medical and Misc
_bandage = "AGM_Bandage";					// 5 Per Soldier, 10 Per TL, 20 Per Medic
_epipen = "AGM_Epipen";  					// 1 Per Soldier, 1 Per TL, 10 Per Medic
_morphine = "AGM_Morphine";					// 1 Per Soldier, 2 Per TL, 15 Per Medic
_bloodbag = "AGM_Bloodbag";					// 0 Per Soldier, 0 Per TL, 5 Per Medic
_earplugs = "AGM_EarBuds";					// For Every Soldier
_sparebarrel = "AGM_SpareBarrel";			// For LMG/MMG Only
_maptools = "AGM_MapTools";                 // For SLs and CMD
_defusalkit = "AGM_DefusalKit";             // For Engineers
_clacker = "AGM_Clacker";                   // For Engineers

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "rhs_weap_pkp";
_ARmag = "rhs_100Rnd_762x54mmR";
_ARmag_tr = "rhs_100Rnd_762x54mmR_green";

// Medium MG
_MMG = "rhs_weap_pkp";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Rifleman AT
_RAT = "rhs_weap_rpg7";
_RATmag = "rhs_rpg7_PG7VL_mag";

// Medium AT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VL_mag";

// Heavy AT
_HAT = "rhs_weap_rpg7";
_HATmag1 = "rhs_rpg7_PG7VL_mag";
_HATmag2 = "rhs_rpg7_PG7VL_mag";

// Surface Air
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Sniper
_SNrifle = "srifle_GM6_camo_F";
_SNrifleMag = "5Rnd_127x108_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "ClaymoreDirectionalMine_Remote_Mag";
_APmine2 = "ClaymoreDirectionalMine_Remote_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["rhs_uniform_vdv_emr"];
_baseHelmet = ["rhs_6b28_flora_ess","rhs_6b28_ess"];
_baseGlasses = ["G_Balaclava_oli","rhs_scarf","PU_shemagh_OD"];

// Armored vests
_lightRig = ["rhs_6b23_6sh92_radio"];
_mediumRig = ["rhs_6b23_6sh92_radio"]; 	// default for all infantry classes
_heavyRig = ["rhs_6b23_6sh92_radio"];

// Diver
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_df15"];
_pilotHelmet = ["rhs_zsh7a"];
_pilotRig = ["rhs_vydra_3m"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["rhs_uniform_vdv_emr"];
_crewHelmet = ["rhs_tsh4","rhs_tsh4_ess"];
_crewRig = ["rhs_6b13"];
_crewGlasses = ["rhs_scarf"];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

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
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
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
		#include "f_assignGear_nato_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: PLATOON LEADER
	case "pl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_PLrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _maptools;
		_attachments = [_attach1,_scope2];		
	};

// LOADOUT: PLATOON SERGEANT AND SQUAD LEADER
	case "psg":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_PSGCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _maptools;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		["m"] call _backpack;
		{_unit addItem _bandage} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
		{_unit addItem _morphine} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
		{_unit addItem _epipen} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItem _bloodbag} forEach [1,2,3,4,5];
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,5];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,4];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["ar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		_attachments = [_attach1];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
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
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MMG;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
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
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		["hatg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _HAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["hatag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["mtrg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "AGM_Vector";
		["mtrag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
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
		_attachments = [_attach1];
	};

// LOADOUT: SAM ASSISTANT GUNNER
	case "samag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "AGM_Vector";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["samag"] call _backpack;
		_attachments = [_attach1];
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_scope3];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_PLrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "AGM_Vector";
		_unit linkItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "AGM_Vector";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [];
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
		["eng"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _defusalkit;
		_unit addItem _clacker;
		_attachments = [_attach1,_scope1];
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
		["engm"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _defusalkit;
		_unit addItem _clacker;
		_attachments = [_attach1];
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["div"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1,_silencer2];
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["r"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["car"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1];
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [];
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
		_unit addmagazines [_smokegrenade,2];
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_attach1,_scope1];
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
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
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
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
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
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
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_nato.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
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
