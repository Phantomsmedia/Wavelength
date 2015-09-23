//Author:
//Description: Insurgents

class ind_f {


	//Rifle
    #define IND_RIFLE "rhs_weap_akm"
    #define IND_RIFLE_MAG "rhs_30Rnd_762x39mm:8","rhs_30Rnd_762x39mm_tracer:2"

	//GL Rifle
    #define IND_GLRIFLE "rhs_weap_akm_gp25"
    #define IND_GLRIFLE_MAG "rhs_30Rnd_762x39mm:8","rhs_30Rnd_762x39mm_tracer:2"
    #define IND_GLRIFLE_MAG_SMOKE "rhs_GRD40_White:4","rhs_GRD40_Green:2","rhs_GRD40_Red:3"
    #define IND_GLRIFLE_MAG_HE "rhs_VOG25P:8"
    #define IND_GLRIFLE_MAG_FLARE "rhs_VG40OP_white:2","rhs_VG40OP_red:2"

	//Carbine
    #define IND_CARBINE "rhs_weap_akms"
    #define IND_CARBINE_MAG "rhs_30Rnd_762x39mm:8","rhs_30Rnd_762x39mm_tracer:2"

    //Diver
    #define SDAR "arifle_SDAR_F"
    #define SDAR_MAG "20Rnd_556x45_UW_mag:6"

	// AR
    #define IND_AR "rhs_weap_pkm"
    #define IND_AR_MAG "rhs_100Rnd_762x54mmR:9"
    #define IND_AR_MAG2 "rhs_100Rnd_762x54mmR_green:5"

	// AT
    #define IND_AT "ibr_rpg7v"
    #define IND_AT_MAG "ibr_pg7v:3"

	// MMG
    #define IND_MMG "rhs_weap_pkm"
    #define IND_MMG_MAG "rhs_100Rnd_762x54mmR:5"

	// MAT
    #define IND_MAT "ibr_rpg7v"
    #define IND_MAT_MAG "ibr_pg7v:1","ibr_og7:2"

	// SAM
    #define IND_SAM "rhs_weap_igla"
    #define IND_SAM_MAG "rhs_mag_9k38_rocket:2"

    // Sniper Rifle
    #define IND_SNIPER "rhs_weap_svdp_pso1"
    #define IND_SNIPER_MAG "rhs_10Rnd_762x54mmR_7N1:8"

	// Spotter Rifle
    #define IND_SPOTTER "hlc_rifle_aek971"
    #define IND_SPOTTER_MAG "hlc_30Rnd_545x39_B_AK:8"

	// SMG
    #define IND_SMG "rhs_weap_ak74m"
    #define IND_SMG_MAG "rhs_30Rnd_545x39_AK:6"

	// Pistol
    #define IND_PISTOL "rhsusf_weap_m1911a1"
    #define IND_PISTOL_MAG "rhsusf_mag_7x45acp_MHP:4"

	// Grenades, Smoke and Frag
    #define IND_GRENADE "rhs_mag_m67:2"
    #define IND_SMOKE_WHITE "rhs_mag_an_m8hc:2"
    #define IND_SMOKE_GREEN "rhs_mag_m18_green"
    #define IND_SMOKE_RED "rhs_mag_m18_red"


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
        uniform[] = {"LOP_U_AFR_Fatigue_04_slv","LOP_U_AFR_Fatigue_04","LOP_U_AFR_Fatigue_03","LOP_U_AFR_Fatigue_02","LOP_U_AFR_Fatigue_01"};  /// randomized
        vest[] = {"LOP_6sh46"}; /// randomized
        headgear[] = {"H_Cap_oli_hs","H_Cap_oli"}; /// randomized
        backpack[] = {"rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_coy","B_Carryall_khk","B_AssaultPack_rgr"}; /// randomized
        backpackItems[] = {"MEDICAL_STANDARD","ACE_IR_Strobe_item"};
        weapons[] = {IND_RIFLE}; /// randomized
        launchers[] = {}; /// randomized
        handguns[] = {}; /// randomized
        magazines[] = {IND_RIFLE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        items[] = {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {""};
    };

    class I_officer_F: I_Soldier_F {// CO and DC
        weapons[] = {IND_GLRIFLE};
        magazines[] = {IND_GLRIFLE_MAG,IND_GLRIFLE_MAG_HE,IND_GLRIFLE_MAG_SMOKE,IND_GLRIFLE_MAG_FLARE,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
        linkedItems[] += {"ItemGPS","Binocular"};
        attachments[] = {""};
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

// ====================================================================================
// Grunt Infantry

    class I_Soldier_TL_F: I_Soldier_F {// FTL
        weapons[] = {IND_GLRIFLE};
        //headgear[] = {"H_HelmetIA"}; /// randomized
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
        attachments[] = {""};
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

    class I_medic_F: I_Soldier_F {// Medic
        weapons[] = {IND_CARBINE};
        magazines[] = {IND_CARBINE_MAG,IND_SMOKE_WHITE,IND_SMOKE_WHITE,IND_SMOKE_WHITE};
        backpack[] = {"B_Carryall_khk"};
        backpackItems[] = {"MEDICAL_MEDIC"};
    };

// ====================================================================================
// Support Infantry

    class I_support_MG_F: I_Soldier_F {// MMG
        weapons[] = {IND_MMG};
        backpack[] = {"B_Carryall_khk"}; /// randomized
        magazines[] = {IND_MMG_MAG,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
    };

    class I_Support_AMG_F: I_Soldier_F {// MMG Spotter/Ammo Bearer
        backpack[] = {"B_Carryall_khk"}; /// randomized
        backpackItems[] += {IND_MMG_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
    };

    class I_soldier_AT_F: I_Soldier_F {// MAT Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"rhs_rpg_empty"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_MAT}; /// randomized
        backpackItems[] += {IND_MAT_MAG};
    };

    class I_Soldier_AAT_F: I_Soldier_F {// MAT Spotter/Ammo Bearer
        backpack[] = {"rhs_rpg_empty"};
        backpackItems[] += {IND_MAT_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
    };

    class I_soldier_AA_F: I_Soldier_F {// SAM Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"B_Carryall_khk"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_SAM}; /// randomized
        backpackItems[] += {IND_SAM_MAG};
    };

    class I_Soldier_AAA_F: I_Soldier_F {// SAM Spotter/Ammo Bearer
        backpack[] = {"B_Carryall_khk"};
		backpackItems[] = {IND_SAM_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] += {"ACRE_PRC148"};
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
        //uniform[] = {"U_I_GhillieSuit"};  /// randomized
        //vest[] = {"V_Chestrig_oli"}; /// randomized
        //headgear[] = {"H_Booniehat_khk"}; /// randomized
        //backpack[] = {"B_AssaultPack_rgr"}; /// randomized
        weapons[] = {IND_SPOTTER}; /// randomized
        magazines[] = {IND_SPOTTER_MAG,IND_SMOKE_WHITE};
        items[] = {"MEDICAL_STANDARD", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","LaserDesignator"};
        attachments[] = {"HLC_Optic_1p29"};
    };

    class I_sniper_F {// Sniper
        //uniform[] = {"U_I_GhillieSuit"};  /// randomized
        //vest[] = {"V_Chestrig_oli"}; /// randomized
        //headgear[] = {"H_Booniehat_khk"}; /// randomized
        //backpack[] = {"B_AssaultPack_rgr"}; /// randomized
        weapons[] = {IND_SNIPER}; /// randomized
        magazines[] = {IND_SNIPER_MAG,IND_SMOKE_WHITE};
        items[] = {"MEDICAL_STANDARD", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {"rhs_acc_pso1m2"};
    };

// ====================================================================================
// Vehicle Infantry

    class I_Helipilot_F {// Pilot
        //uniform[] = {"U_I_pilotCoveralls"};  /// randomized
        //vest[] = {"V_TacVest_blk"}; /// randomized
        //headgear[] = {"H_PilotHelmetFighter_I"}; /// randomized
        //backpack[] = {"B_AssaultPack_rgr"};
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
        //uniform[] = {"U_I_CombatUniform"};  /// randomized
        //vest[] = {"V_BandollierB_oli"}; // randomized
        //headgear[] = {"H_HelmetCrew_I"}; /// randomized
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        items[] = {"MEDICAL_STANDARD","ACRE_PRC148"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
    };

    class I_Soldier_repair_F: I_crew_F {// Repair Specialist
        backpack[] = {"B_Carryall_khk"};
        backpackItems[] = {"Toolkit","ACRE_PRC148"};
        items[] += {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
    };

    class I_soldier_exp_F: I_soldier_repair_F {// Explosive Specialist
        //uniform[] = {"U_I_CombatUniform_shortsleeve"};  /// randomized
        backpack[] = {"B_Carryall_khk"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_CARBINE_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
    };

    class I_engineer_F: I_soldier_repair_F {// Explosive Specialist
        //uniform[] = {"U_I_CombatUniform"};  /// randomized
        backpack[] = {"B_Carryall_khk"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_CARBINE_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
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

        backpackItems[] += {/*"U_I_CombatUniform","V_Chestrig_oli","H_HelmetIA"*/IND_CARBINE};
        linkedItems[] += {"G_I_Diving"};

    };

    class I_diver_F: I_Soldier_F {// Diver
        weapons[] = {SDAR};
        magazines[] = {SDAR_MAG,IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        uniform[] = {"U_I_Wetsuit"};  /// randomized
        vest[] = {"V_RebreatherIA"}; /// randomized
        backpack[] = {"B_Carryall_oli"};
        headgear[] = {};

        backpackItems[] += {/*"U_I_CombatUniform","V_Chestrig_oli","H_HelmetIA"*/IND_CARBINE};
        linkedItems[] += {"G_I_Diving"};

    };
};
