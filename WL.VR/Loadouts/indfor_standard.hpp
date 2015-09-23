//Author:
//Description: INFOR (AAF) Standard

class ind_f {


	//Rifle
    #define IND_RIFLE "arifle_Mk20_F"
    #define IND_RIFLE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Yellow:2"

	//GL Rifle
    #define IND_GLRIFLE "arifle_Mk20_GL_MRCO_pointer_F"
    #define IND_GLRIFLE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Yellow:2"
    #define IND_GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:4","1Rnd_SmokeGreen_Grenade_shell:2","1Rnd_SmokeRed_Grenade_shell:3"
    #define IND_GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:8"
    #define IND_GLRIFLE_MAG_FLARE "UGL_FlareRed_F:2","UGL_FlareWhite_F:2"

	//Carbine
    #define IND_CARBINE "arifle_Mk20C_F"
    #define IND_CARBINE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Yellow:2"

	//Diver
	#define SDAR "arifle_SDAR_F"
	#define SDAR_MAG "20Rnd_556x45_UW_mag:6"

	// AR
    #define IND_AR "LMG_Mk200_F"
    #define IND_AR_MAG "200Rnd_65x39_cased_Box:2"
    #define IND_AR_MAG2 "200Rnd_65x39_cased_Box_Tracer:2"

	// AT
    #define IND_AT "launch_NLAW_F"
    #define IND_AT_MAG "NLAW_F"

	// MMG
    #define IND_MMG "MMG_01_tan_F"
    #define IND_MMG_MAG "150Rnd_93x64_Mag:5"

	// MAT
    #define IND_MAT "launch_RPG32_F"
    #define IND_MAT_MAG "RPG32_F:2","RPG32_HE_F:1"

	// SAM
    #define IND_SAM "launch_I_Titan_F"
    #define IND_SAM_MAG "Titan_AA:2"

    // Sniper Rifle
    #define IND_SNIPER "srifle_EBR_F"
    #define IND_SNIPER_MAG "20Rnd_762x51_Mag:8"

	// Spotter Rifle
    #define IND_SPOTTER "srifle_DMR_06_olive_F"
    #define IND_SPOTTER_MAG "20Rnd_762x51_Mag:8"

	// SMG
    #define IND_SMG "hgun_PDW2000_F"
    #define IND_SMG_MAG "30Rnd_9x21_Mag:6"

	// Pistol
    #define IND_PISTOL "hgun_ACPC2_F"
    #define IND_PISTOL_MAG "9Rnd_45ACP_Mag:4"

	// Grenades, Smoke and Frag
    #define IND_GRENADE "HandGrenade:2"
    #define IND_SMOKE_WHITE "SmokeShell:2"
    #define IND_SMOKE_GREEN "SmokeShellGreen"
    #define IND_SMOKE_RED "SmokeShellRed"


// ====================================================================================

    class Car {
        TransportMagazines[] = {IND_RIFLE_MAG,IND_RIFLE_MAG,IND_CARBINE_MAG,IND_AR_MAG,IND_AR_MAG,IND_GLRIFLE_MAG_HE,IND_AT_MAG};
        TransportItems[] = {"MEDICAL_VEHICLE"};
    };

    class Tank {
        TransportMagazines[] = {IND_RIFLE_MAG,IND_RIFLE_MAG,IND_CARBINE_MAG,IND_AR_MAG,IND_AR_MAG,IND_GLRIFLE_MAG_HE,IND_AT_MAG};
        TransportItems[] = {"MEDICAL_VEHICLE"};
    };

    class Helicopter {
        TransportMagazines[] = {};
    };

    class Plane {
        TransportMagazines[] = {};
    };

    class Ship_F {
        TransportMagazines[] = {};
    };

// ====================================================================================
// Leadership INF and Groupies

    class I_Soldier_F {// rifleman
        uniform[] = {"U_I_CombatUniform"};  /// randomized
        vest[] = {"V_PlateCarrierIA1_dgtl","V_Chestrig_oli","V_PlateCarrierIA1_dgtl"}; /// randomized
        headgear[] = {"H_HelmetIA"}; /// randomized
        backpack[] = {"B_AssaultPack_dgtl"}; /// randomized
        backpackItems[] = {"MEDICAL_STANDARD","ACE_IR_Strobe_item"};
        weapons[] = {IND_RIFLE}; /// randomized
        launchers[] = {}; /// randomized
        handguns[] = {}; /// randomized
        magazines[] = {IND_RIFLE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        items[] = {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {"optic_ACO_grn"};
    };

    class I_officer_F: I_Soldier_F {// CO and DC
        weapons[] = {IND_GLRIFLE};
        magazines[] = {IND_GLRIFLE_MAG,IND_GLRIFLE_MAG_HE,IND_GLRIFLE_MAG_SMOKE,IND_GLRIFLE_MAG_FLARE,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
        linkedItems[] += {"ItemGPS","Binocular"};
        attachments[] = {"optic_ACO_grn"};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        items[] = {"ACE_MapTools","ACRE_PRC148"};
    };

    class I_Soldier_SL_F: I_Officer_F {// SL
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ACRE_PRC343","NVGoggles_INDEP","ItemGPS","Binocular"};
        items[] = {"ACE_MapTools","ACRE_PRC148", "ACRE_PRC343"};
        backpackItems[] = {"MEDICAL_LEADER","ACE_IR_Strobe_item"};
    };

    class I_soldier_UAV_F: I_Soldier_F {
        backpack[] = {"I_UAV_01_backpack_F"}; /// randomized
        linkedItems[] += {"I_uavterminal"};
    };

	class I_medic_F: I_Soldier_F {// Medic
        weapons[] = {IND_CARBINE};
        magazines[] = {IND_CARBINE_MAG,IND_SMOKE_WHITE,IND_SMOKE_WHITE,IND_SMOKE_WHITE};
        backpack[] = {"B_AssaultPack_rgr"};
        backpackItems[] = {"MEDICAL_MEDIC"};
    };

// ====================================================================================
// Grunt Infantry

    class I_Soldier_TL_F: I_Soldier_F {// FTL
        weapons[] = {IND_GLRIFLE};
        headgear[] = {"H_HelmetIA"}; /// randomized
        magazines[] = {IND_GLRIFLE_MAG,IND_GLRIFLE_MAG_HE,IND_GLRIFLE_MAG_SMOKE,IND_GLRIFLE_MAG_FLARE,IND_GRENADE,IND_SMOKE_WHITE};
        linkedItems[] += {"ItemGPS","Binocular"};
        backpackItems[] += {"ACE_key_indp"};
        attachments[] = {""};
    };

    class I_Soldier_AR_F: I_Soldier_F {// AR
        weapons[] = {IND_AR};
        magazines[] = {IND_AR_MAG,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
        attachments[] = {""};
    };

    class I_Soldier_AAR_F: I_Soldier_F {// AAR
        backpackItems[] += {IND_AR_MAG2};
        attachments[] = {"optic_MRCO"};
        linkeditems[] += {"Binocular"};
    };

    class I_Soldier_A_F: I_Soldier_AAR_F {// AAR

    };

    class I_Soldier_LAT_F: I_Soldier_F {// RAT
        weapons[] = {IND_CARBINE};
        backpack[] = {"rhs_rpg_empty"}; /// randomized
        magazines[] = {IND_CARBINE_MAG,IND_AT_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_AT}; /// randomized
        attachments[] = {""};
    };

// ====================================================================================
// Support Infantry

    class I_support_MG_F: I_Soldier_F {// MMG
        weapons[] = {IND_MMG};
        backpack[] = {"B_AssaultPack_rgr"}; /// randomized
        magazines[] = {IND_MMG_MAG,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
    };

    class I_support_AMG_F: I_Soldier_F {// MMG Spotter/Ammo Bearer
        backpack[] = {"B_AssaultPack_rgr"}; /// randomized
        backpackItems[] += {IND_MMG_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
    };

    class I_soldier_AT_F: I_Soldier_F {// MAT Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"B_AssaultPack_dgtl"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_MAT}; /// randomized
        backpackItems[] += {IND_MAT_MAG};
    };

    class I_Soldier_AAT_F: I_Soldier_F {// MAT Spotter/Ammo Bearer
        backpack[] = {"B_AssaultPack_dgtl"};
        backpackItems[] += {IND_MAT_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
    };

    class I_soldier_AA_F: I_Soldier_F {// SAM Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"B_AssaultPack_dgtl"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_SAM}; /// randomized
        backpackItems[] += {IND_SAM_MAG};
    };

    class I_Soldier_AAA_F: I_Soldier_F {// SAM Spotter/Ammo Bearer
        backpackItems[] = {IND_SAM_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
        backpack[] = {"B_AssaultPack_dgtl"};
    };

    class I_support_Mort_F: I_Soldier_F {// Mortar Gunner
        weapons[] = {IND_CARBINE};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        items[] = {"MEDICAL_STANDARD"};
        backpack[] = {"I_Mortar_01_weapon_F"}; /// randomized
    };

    class I_support_AMort_F: I_Soldier_F {// Assistant Mortar
        backpack[] = {"I_Mortar_01_support_F"}; /// randomized
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
    };

    class I_spotter_F {// Spotter
        uniform[] = {"U_I_GhillieSuit"};  /// randomized
        vest[] = {"V_Chestrig_oli"}; /// randomized
        headgear[] = {"H_Booniehat_khk"}; /// randomized
        backpack[] = {"B_AssaultPack_rgr"}; /// randomized
        weapons[] = {IND_SPOTTER}; /// randomized
        magazines[] = {IND_SPOTTER_MAG,IND_SMOKE_WHITE};
        items[] = {"MEDICAL_STANDARD", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","LaserDesignator"};
        attachments[] = {"optic_KHS_blk"};
    };

    class I_sniper_F {// Sniper
        uniform[] = {"U_I_GhillieSuit"};  /// randomized
        vest[] = {"V_Chestrig_oli"}; /// randomized
        headgear[] = {"H_Booniehat_khk"}; /// randomized
        backpack[] = {"B_AssaultPack_rgr"}; /// randomized
        weapons[] = {IND_SNIPER}; /// randomized
        magazines[] = {IND_SNIPER_MAG,IND_SMOKE_WHITE};
        items[] = {"MEDICAL_STANDARD", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {"optic_KHS_blk"};
    };

// ====================================================================================
// Vehicle Infantry

    class I_Helipilot_F {// Pilot
        uniform[] = {"U_I_pilotCoveralls"};  /// randomized
        vest[] = {"V_TacVest_blk"}; /// randomized
        headgear[] = {"H_PilotHelmetFighter_I"}; /// randomized
        backpack[] = {"B_AssaultPack_rgr"};
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        items[] = {"MEDICAL_STANDARD","ACRE_PRC148", "ACRE_PRC343"};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
    };

    class I_helicrew_F: I_Helipilot_F { // Pilot

    };

    class I_Pilot_F: I_Helipilot_F { // Pilot
        uniform[] = {"U_I_PilotCoveralls"};  /// randomized
        headgear[] = {"H_PilotHelmetFighter_I"}; /// randomized
    };

    class I_crew_F {// Crew
        uniform[] = {"U_I_CombatUniform"};  /// randomized
        vest[] = {"V_BandollierB_oli"}; // randomized
        headgear[] = {"H_HelmetCrew_I"}; /// randomized
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        items[] = {"MEDICAL_STANDARD","ACRE_PRC148"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
    };

    class I_Soldier_repair_F: I_crew_F {// Repair Specialist
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit","ACRE_PRC148"};
        items[] += {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
    };

    class I_soldier_exp_F: I_soldier_repair_F {// Explosive Specialist
        uniform[] = {"U_I_CombatUniform_shortsleeve"};  /// randomized
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_SMG_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
    };

    class I_engineer_F: I_soldier_repair_F {// Explosive Specialist
        uniform[] = {"U_I_CombatUniform"};  /// randomized
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_SMG_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
    };

// ====================================================================================
// Special Infantry

    class I_diver_TL_F: I_Soldier_TL_F {// Diver TL
        weapons[] = {SDAR};
		magazines[] = {SDAR_MAG,IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
		uniform[] = {"U_I_Wetsuit"};  /// randomized
        vest[] = {"V_RebreatherIA"}; /// randomized
        backpack[] = {"B_Carryall_oli"};
        headgear[] = {};

        backpackItems[] += {/*"U_I_CombatUniform","V_Chestrig_oli","H_HelmetIA",*/IND_CARBINE};
        linkedItems[] += {"G_I_Diving"};

    };

    class I_diver_F: I_Soldier_F {// Diver
        weapons[] = {SDAR};
		magazines[] = {SDAR_MAG,IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
		uniform[] = {"U_I_Wetsuit"};  /// randomized
        vest[] = {"V_RebreatherIA"}; /// randomized
        backpack[] = {"B_Carryall_oli"};
        headgear[] = {};

        backpackItems[] += {/*"U_I_CombatUniform","V_Chestrig_oli","H_HelmetIA",*/IND_CARBINE};
        linkedItems[] += {"G_I_Diving"};

    };

};