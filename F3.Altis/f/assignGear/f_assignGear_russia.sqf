f_param_backpacks = 1;
// F3 - Folk Assign Gear Script - Russia
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
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
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		p		- air vehicle pilots
//		eng		- engineers
//		div    		- divers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
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

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "optic_sud_cobra";		// ACO
_scope2 = "optic_sud_krechet_m";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_SUD_AK74M";
_riflemag = "30Rnd_mas_545x39_mag";
_riflemag_tr = "30Rnd_mas_545x39_T_mag";
_rifle_attach = [_scope1];

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_SUD_AK105";
_carbinemag = "30rnd_545x39_AK107";
_carbinemag_tr = "30rnd_545x39_AK107";
_carbine_attach = false;

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "arifle_SUD_AK105";
_smgmag = "30rnd_545x39_AK107";
_smgmag_tr = "30rnd_545x39_AK107";
_smg_attach = false;

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";
_diverWep_attach = false;

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_SUD_AK107_GL";
_glriflemag = "30rnd_545x39_AK107";
_glriflemag_tr = "30rnd_545x39_AK107";
_glmag = "1Rnd_HE_Grenade_shell";
_glrifle_attach = [_scope2];

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "3Rnd_UGL_FlareWhite_F";
_glflarered = "3Rnd_UGL_FlareRed_F";
_glflareyellow = "3Rnd_UGL_FlareYellow_F";
_glflaregreen = "3Rnd_UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_mas_mak_F";
_pistolmag = "8Rnd_mas_9x18_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_INDEP";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_khk";				// carries 120, weighs 20
_bagmedium = "B_FieldPack_oli";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";			// used by divers
_bagTFARlongRANGE = "tf_mr3000"; // used by ground infantry leaders
_bagTFARairBORNE = "tf_mr6000l"; // used by pilots and other airborne troops


// ====================================================================================
// MEDICAL
_bandage = "AGM_Bandage";					// 5 Per Soldier, 10 Per TL, 20 Per Medic
_epipen = "AGM_Epipen";  					// 1 Per Soldier, 1 Per TL, 10 Per Medic
_morphine = "AGM_Morphine";					// 1 Per Soldier, 2 Per TL, 15 Per Medic
_bloodbag = "AGM_Bloodbag";					// 0 Per Soldier, 0 Per TL, 5 Per Medic
_earplugs = "AGM_EarBuds";					// For Every Soldier
_sparebarrle = "AGM_SpareBarrel";			// For LMG/MMG Only

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_SUD_RPK107";
_ARmag = "75rnd_545x39_RPK107";
_ARmag_tr = "75rnd_545x39_RPK107";
_AR_attach = [_scope2];

// Medium MG
_MMG = "LMG_SUD_PECHENEG_M";
_MMGmag = "100rnd_762x54_PK";
_MMGmag_tr = "100rnd_762x54_PK";
_MMG_attach = [_scope2];

// Rifleman AT
_RAT = "launch_RPG7V_F";
_RATmag = "PG7V_F";

// Mortar
_MTR = "B_Mk6Mortar_Wpn";
_MTRmount = "B_Mk6Mortar_Support";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "launch_I_Titan_F";
_SAMmag = "Titan_AA";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Base
_baseUniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt"];
_baseHelmet = ["H_HelmetIA_net","H_HelmetIA_camo","H_HelmetIA"];

_lightRig = ["V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_oli"];

//Note: The actually to be used armor V_PlateCarrierIA2_dgtl is bugged as of 1.10, thus light and medium rig share the same armor for now
_mediumRig = ["V_PlateCarrierIA1_dgtl"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrierIAGL_dgtl"];

// Diver
_diverUniform =  ["U_I_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIA"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_I_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_I"];
_pilotRig = ["V_TacVest_oli"];
// Crewman
_crewUniform = ["U_I_CombatUniform"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_oli"];
// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

//#include "f_assignGear_clothes.sqf";

// ====================================================================================

// PREPARE UNIT FOR GEAR ADDITION
// The following code removes all existing weapons and backpacks

removeBackpack _unit;
removeallweapons _unit;

// We add a single first aid kit (FAK)

_unit addItem _firstaid;

// The following code removes any pre-added NVGs

if(_nvg in (assignedItems _unit)) then
{
_unit unassignItem _nvg;
_unit removeItem _nvg;
};

_unit addItem _nvg;
_unit assignItem _nvg;					// add universal NVG for this faction

//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
//unit addItem "ItemGPS"; 					// add gps to this faction
//_unit assignItem "ItemGPS";
//_unit addweapon "ItemMap";
//_unit addweapon "ItemCompass";
//_unit addweapon "ItemRadio";
//_unit addweapon "ItemWatch";

// ====================================================================================

// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		// BACKPACK: MEDIC
		case "m":
		{
			// BACKPACK: LIGHT
			if (f_param_backpacks <= 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				//(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
				//(unitBackpack _unit) addItemCargoGlobal [_firstaid, 4];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				//(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 6];
				//(unitBackpack _unit) addItemCargoGlobal [_firstaid, 12];
			};
		};

		// BACKPACK: GRENADIER (CO/DC/SL/FTL/G)
		case "g":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_glriflemag,2];
				_unit addmagazines [_glmag,1];
				_unit addmagazines [_glsmokewhite,1];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 6];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: AR
		case "ar":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_ARmag_Tr,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: AAR
		case "aar":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_riflemag,2];
				_unit addmagazines [_ARmag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: RIFLEMAN AT (RAT)
		case "rat":
		{
			// NO BACKPACK (STILL ADD SMALL FOR ROCKETS)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];

			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
			};
		};

		// BACKPACK: RIFLEMAN (R)
		case "r":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_riflemag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: CARABINEER (CAR)
		case "car":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_carbinemag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: MMG GUNNER (MMG)
		case "mmg":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_MMGmag,1];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
					(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
		case "mmgag":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_MMGmag,1];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: MAT GUNNER (MATG)
		case "matg":
		{
			// NO BACKPACK (STILL ADD SMALL FOR ROCKETS)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: MAT ASSISTANT (MATAG)
		case "matag":
		{
			// NO BACKPACK (STILL ADD SMALL FOR ROCKETS)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
			_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 3];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: ENGINEER (DEMO)
		case "eng":
		{
			// NO BACKPACK (STILL ADD SMALL FOR TOOLKIT)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addItemCargoGlobal [_satchel,4];
			};
		};

		// BACKPACK: ENGINEER (MINES)
		case "engm":
		{
			// NO BACKPACK (STILL ADD SMALL FOR TOOLKIT)
			if (f_param_backpacks == 0) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _baglarge;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,2];
			};
		};

		// BACKPACK: SUBMACHINEGUNNER (SMG)
		case "smg":
		{
			// NO BACKPACK
			if (f_param_backpacks == 0) then {
				_unit addmagazines [_smgmag,2];
				_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
				_unit addmagazines [_smokegrenade,2];
			};
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagsmall;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
			};
		};

		// BACKPACK: DIVER (DIV)
		case "div":
		{
			// BACKPACK: LIGHT
			if (f_param_backpacks == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (f_param_backpacks == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};
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
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addBackpack _bagTFARlongRANGE;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addBackpack _bagTFARlongRANGE;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		//{_unit addItem _firstaid} forEach [1,2,3,4];
		["m"] call _backpack;
		{_unit addItem _bandage} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
		{_unit addItem _morphine} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
		{_unit addItem _epipen} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItem _bloodbag} forEach [1,2,3,4,5];
		_unit addItem _earplugs;		
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
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addBackpack _bagTFARlongRANGE;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		{_unit addItem _morphine} foreach [1,2];
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,4];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["ar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;	
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
		["aar"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
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
		_unit addBackpack _bagTFARlongRANGE;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;	
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		_unit addBackpack _bagTFARlongRANGE;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		_unit addmagazines [_MATMag1,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_riflemag,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addBackpack _MTR;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		_unit addBackpack _MTRmount;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: VEHICLE CREW
	case "c":
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
	};


// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon _bagTFARairBORNE;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
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
		["r"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
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
		["car"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};
// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["div"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
	};
// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
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
		["g"] call _backpack;
		{_unit addItem _bandage} foreach [1,2,3,4,5];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;		
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
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];			
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
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];			
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
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// Handle weapon attachments here.

#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;