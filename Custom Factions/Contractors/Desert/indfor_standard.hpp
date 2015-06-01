//Author: Poop
//Description: Poop (yes, even more)

class ind_f {
    
	//Rifle
    #define IND_RIFLE "rhs_weap_ak74m_desert_npz"
    #define IND_RIFLE_MAG "rhs_30Rnd_545x39_AK:8","rhs_30Rnd_545x39_7N10_AK:2"
    
	//GL Rifle
    #define IND_GLRIFLE "rhs_weap_ak74m_gp25_npz"
    #define IND_GLRIFLE_MAG "rhs_30Rnd_545x39_AK:8","rhs_30Rnd_545x39_7N10_AK:2"
    #define IND_GLRIFLE_MAG_SMOKE "rhs_GRD40_White:4","rhs_GRD40_Green:2","rhs_GRD40_Red:3"
    #define IND_GLRIFLE_MAG_HE "rhs_VOG25:14"
    
	//Carbine
    #define IND_CARBINE "rhs_weap_m4a1_carryhandle_pmag"
    #define IND_CARBINE_MAG "rhs_mag_30Rnd_556x45_Mk318_Stanag:8","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red:2"
    
	// AR
    #define IND_AR "rhs_weap_pkm"
    #define IND_AR_MAG "rhs_100Rnd_762x54mmR:9"
    #define IND_AR_MAG2 "rhs_100Rnd_762x54mmR_green:5"
    
	// AT
    #define IND_AT "rhs_weap_rpg26"
    #define IND_AT_MAG "rhs_rpg26_mag:3"
    
	// MMG
    #define IND_MMG "rhs_weap_pkp"
    #define IND_MMG_MAG "rhs_100Rnd_762x54mmR:5"
    
	// MAT
    #define IND_MAT "rhs_weap_rpg7"
    #define IND_MAT_MAG "rhs_rpg7_PG7VL_mag:2","rhs_rpg7_OG7V_mag:1"
    
	// SAM
    #define IND_SAM "rhs_mag_9k38_rocket"
    #define IND_SAM_MAG "rhs_weap_igla:2"
   
    // Sniper Rifle
    #define IND_SNIPER "rhs_weap_svdp_npz"
    #define IND_SNIPER_MAG "rhs_10Rnd_762x54mmR_7N1:8"
    
	// Spotter Rifle
    #define IND_SPOTTER "rhs_weap_ak74m_desert_npz"
    #define IND_SPOTTER_MAG "rhs_30Rnd_545x39_AK:8"
    
	// SMG
    #define IND_SMG "rhs_weap_M590_5RD"
    #define IND_SMG_MAG "rhsusf_5Rnd_00Buck:6"
    
	// Pistol
    #define IND_PISTOL "rhs_weap_makarov_pmm"
    #define IND_PISTOL_MAG "rhs_mag_9x18_12_57N181S:4"
	
	// Grenades, Smoke and Frag
    #define IND_GRENADE "HandGrenade:2"
    #define IND_SMOKE_WHITE "SmokeShell:2"
    #define IND_SMOKE_GREEN "SmokeShellGreen"
    #define IND_SMOKE_RED "SmokeShellRed"


// ====================================================================================

    class Car {
        TransportMagazines[] = {IND_RIFLE_MAG,IND_RIFLE_MAG,IND_CARBINE_MAG,IND_AR_MAG,IND_AR_MAG,IND_GLRIFLE_MAG_HE,IND_AT_MAG};
        TransportItems[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
    };
	
    class Tank {
        TransportMagazines[] = {IND_RIFLE_MAG,IND_RIFLE_MAG,IND_CARBINE_MAG,IND_AR_MAG,IND_AR_MAG,IND_GLRIFLE_MAG_HE,IND_AT_MAG};
        TransportItems[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
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

    class I_Soldier_F {// rifleman
        uniform[] = {"U_I_CombatUniform"};  /// randomized
        vest[] = {"V_PlateCarrier1_blk","V_TacVestIR_blk","V_TacVest_blk"}; /// randomized
        headgear[] = {"H_Watchcap_cbr","H_Watchcap_cbr"}; /// randomized
        backpack[] = {"B_AssaultPack_blk"}; /// randomized
        backpackItems[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
        weapons[] = {IND_RIFLE}; /// randomized
        launchers[] = {}; /// randomized
        handguns[] = {}; /// randomized
        magazines[] = {IND_RIFLE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        items[] = {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {"rhsusf_acc_compm4"};
    };
	
    class I_officer_F: I_Soldier_F {// CO and DC
        weapons[] = {IND_GLRIFLE};
        magazines[] = {IND_GLRIFLE_MAG,IND_GLRIFLE_MAG_HE,IND_GLRIFLE_MAG_SMOKE,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
        linkedItems[] += {"ItemGPS","Binocular"};
        attachments[] = {"rhsusf_acc_ACOG"};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        items[] = {"ACE_MapTools","ACRE_PRC148"};
    };
	
    class I_Soldier_SL_F: I_Officer_F {// SL
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ACRE_PRC343","NVGoggles_INDEP","ItemGPS","Binocular"};
        items[] = {"ACE_MapTools","ACRE_PRC148", "ACRE_PRC343"};
        backpackItems[] = {"ACE_fieldDressing:4","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
    };
	
    class I_soldier_UAV_F: I_Soldier_F {
        backpack[] = {"I_UAV_01_backpack_F"}; /// randomized
        linkedItems[] += {"I_uavterminal"};
    };
	
    class I_Soldier_TL_F: I_Soldier_F {// FTL
        weapons[] = {IND_GLRIFLE};
        headgear[] = {"H_HelmetIA"}; /// randomized
        magazines[] = {IND_GLRIFLE_MAG,IND_GLRIFLE_MAG_HE,IND_GLRIFLE_MAG_SMOKE,IND_GRENADE,IND_SMOKE_WHITE,};
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
        attachments[] = {"rhsusf_acc_compm4"};
        linkeditems[] += {"Binocular"};
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
        backpack[] = {"B_AssaultPack_blk"};
        backpackItems[] = {"ACE_fieldDressing:31","ACE_epinephrine:8","ACE_bloodIV:2","ACE_morphine:14","ACE_earplugs"};
    };
	
    class I_support_MG_F: I_Soldier_F {// MMG
        weapons[] = {IND_MMG};
        backpack[] = {"B_AssaultPack_blk"}; /// randomized
        magazines[] = {IND_MMG_MAG,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
    };
	
    class I_Soldier_A_F: I_Soldier_F {// MMG Spotter/Ammo Bearer
        backpack[] = {"B_TacticalPack_blk"}; /// randomized
        backpackItems[] += {IND_MMG_MAG};
        linkeditems[] += {"ACE_Vector"};
    };
	
    class I_soldier_AT_F: I_Soldier_F {// MAT Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"B_AssaultPack_blk"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_MAT}; /// randomized
        backpackItems[] += {IND_MAT_MAG};
    };
	
    class I_Soldier_AAT_F: I_Soldier_F {// MAT Spotter/Ammo Bearer
        backpack[] = {"B_TacticalPack_blk"};
        backpackItems[] += {IND_MAT_MAG};
        linkeditems[] += {"ACE_Vector"};
    };
	
    class I_soldier_AA_F: I_Soldier_F {// SAM Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"B_AssaultPack_blk"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_SAM}; /// randomized
        backpackItems[] += {IND_SAM_MAG};
    };
	
    class I_Soldier_AAA_F: I_Soldier_F {// SAM Spotter/Ammo Bearer
        backpackItems[] = {IND_SAM_MAG};
        linkeditems[] += {"ACE_Vector"};
        backpack[] = {"B_TacticalPack_blk"};
    };
	
    class I_support_Mort_F: I_Soldier_F {// Mortar Gunner
        weapons[] = {IND_CARBINE};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        backpack[] = {"I_Mortar_01_weapon_F"}; /// randomized
    };
	
    class I_support_AMort_F: I_Soldier_F {// Assistant Mortar
        backpack[] = {"I_Mortar_01_support_F"}; /// randomized
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        linkeditems[] += {"ACE_Vector"};
    };
	
    class I_spotter_F {// Spotter
        uniform[] = {"U_I_FullGhillie_lsh"};  /// randomized
        vest[] = {"V_Chestrig_oli"}; /// randomized
        headgear[] = {"H_Booniehat_khk"}; /// randomized
        backpack[] = {"B_AssaultPack_blk"}; /// randomized
        weapons[] = {IND_SPOTTER}; /// randomized
        magazines[] = {IND_SPOTTER_MAG,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","LaserDesignator"};
        attachments[] = {"rhsusf_acc_ACOG"};
    };
	
    class I_sniper_F {// Sniper
        uniform[] = {"U_I_FullGhillie_lsh"};  /// randomized
        vest[] = {"V_Chestrig_oli"}; /// randomized
        headgear[] = {"H_Booniehat_khk"}; /// randomized
        backpack[] = {"B_AssaultPack_blk"}; /// randomized
        weapons[] = {IND_SNIPER}; /// randomized
        magazines[] = {IND_SNIPER_MAG,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {"optic_KHS_old"};
    };
	
    class I_Helipilot_F {// Pilot
        uniform[] = {"U_I_pilotCoveralls"};  /// randomized
        vest[] = {"V_TacVest_blk"}; /// randomized
        headgear[] = {"H_PilotHelmetFighter_I"}; /// randomized
        backpack[] = {"B_AssaultPack_rgr"};
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs", "ACRE_PRC343"};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
    };
	
    class I_crew_F {// Crew
        uniform[] = {"U_I_CombatUniform"};  /// randomized
        vest[] = {"V_BandollierB_oli"}; // randomized
        headgear[] = {"H_HelmetCrew_I"}; /// randomized
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
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
        magazines[] = {IND_CARBINE_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
    };
	
    class I_engineer_F: I_soldier_repair_F {// Explosive Specialist
        uniform[] = {"U_I_CombatUniform"};  /// randomized
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_CARBINE_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
    };
};
