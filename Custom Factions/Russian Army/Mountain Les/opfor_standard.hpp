//Author: 
//Description: OPFOR (CSAT) Standard

class opf_f {
    //Rifle
    #define EAST_RIFLE "rhs_weap_ak74m_camo","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo","rhs_weap_ak74m","rhs_weap_ak74m_plummag"
    #define EAST_RIFLE_MAG "rhs_30Rnd_545x39_AK:8","rhs_30Rnd_545x39_AK_green:2"
    
	//GL Rifle
    #define EAST_GLRIFLE "rhs_weap_ak74m_gp25"
    #define EAST_GLRIFLE_MAG "rhs_30Rnd_545x39_AK:8","rhs_30Rnd_545x39_AK_green:2"
    #define EAST_GLRIFLE_MAG_SMOKE "rhs_GRD40_White:4","rhs_GRD40_Green:1","rhs_GRD40_Red:2"
    #define EAST_GLRIFLE_MAG_HE "rhs_VOG25:10"
    #define EAST_GLRIFLE_MAG_FLARE "rhs_VG40OP_white:2","rhs_VG40OP_red:2","rhs_VG40OP_white:2","rhs_VG40OP_green:2"
    
	//Carbine
    #define EAST_CARBINE "rhs_weap_ak74m_camo","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo","rhs_weap_ak74m","rhs_weap_ak74m_plummag"
    #define EAST_CARBINE_MAG "rhs_30Rnd_545x39_AK:8","rhs_30Rnd_545x39_AK_green:2"
    
	// AR
    #define EAST_AR "rhs_weap_pkp"
    #define EAST_AR_MAG "rhs_100Rnd_762x54mmR:5"
    #define EAST_AR_MAG2 "rhs_100Rnd_762x54mmR_green:4"
    
	// AT
    #define EAST_AT "rhs_weap_rpg26"
    #define EAST_AT_MAG "rhs_rpg26_mag","rhs_rpg26_mag"
    
	// MMG
    #define EAST_MMG "rhs_weap_pkp"
    #define EAST_MMG_MAG "rhs_100Rnd_762x54mmR:5"
    
	// MAT
    #define EAST_MAT "rhs_weap_rpg7"
    #define EAST_MAT_MAG "rhs_rpg7_PG7VR_mag:2","rhs_rpg7_TBG7V_mag:2"
    
	// SAM
    #define EAST_SAM "rhs_weap_igla"
    #define EAST_SAM_MAG "rhs_mag_9k38_rocket:2"
    
	// Sniper Rifle
    #define EAST_SNIPER "rhs_weap_svds"
    #define EAST_SNIPER_MAG "rhs_10Rnd_762x54mmR_7N1:8"
    
	// Spotter Rifle
    #define EAST_SPOTTER "rhs_weap_svds"
    #define EAST_SPOTTER_MAG "rhs_10Rnd_762x54mmR_7N1:8"
    
	// SMG
    #define EAST_SMG "rhs_weap_ak74m_folded"
    #define EAST_SMG_MAG "rhs_30Rnd_545x39_AK:5"
    
	// Pistol
    #define EAST_PISTOL "rhs_weap_pya"
    #define EAST_PISTOL_MAG "rhs_mag_9x19_17:4"

    // Grenades, Smoke and Frag
    #define EAST_GRENADE "rhs_mag_rgd5:2"
    #define EAST_SMOKE_WHITE "rhs_mag_rdg2_white:2"
    #define EAST_SMOKE_GREEN "rhs_mag_rdg2_green"
    #define EAST_SMOKE_RED "rhs_mag_nspn_red"


// ====================================================================================

    class Car {
        TransportMagazines[] = {EAST_RIFLE_MAG,EAST_RIFLE_MAG,EAST_CARBINE_MAG,EAST_AR_MAG,EAST_AR_MAG,EAST_GLRIFLE_MAG_HE,EAST_AT_MAG};
        TransportItems[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
    };
	
    class Tank {
        TransportMagazines[] = {EAST_RIFLE_MAG,EAST_RIFLE_MAG,EAST_CARBINE_MAG,EAST_AR_MAG,EAST_AR_MAG,EAST_GLRIFLE_MAG_HE,EAST_AT_MAG};
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
	
// ====================================================================================
// Leadership INF and Groupies

    class O_Soldier_F { // rifleman
        uniform[] = {"rhs_uniform_flora_patchless_alt"};  /// randomized
        vest[] = {"rhs_6b23_ML_6sh92","rhs_6b23_ML_rifleman"}; /// randomized
        headgear[] = {"rhs_6b27m_green","rhs_6b27m_ml","rhs_6b27m_ml_ess"}; /// randomized
        backpack[] = {"rhs_sidor"}; /// randomized
        backpackItems[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
        weapons[] = {EAST_RIFLE}; /// randomized
        launchers[] = {}; /// randomized
        handguns[] = {}; /// randomized
        magazines[] = {EAST_RIFLE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        items[] = {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {"rhs_acc_1p63","rhs_acc_pkas","rhs_acc_dtk"};
    };
	
    class O_officer_F: O_Soldier_F { // CO and DC
        weapons[] = {EAST_GLRIFLE};
        vest[] = {"rhs_6b13_6sh92"}; /// randomized
        headgear[] = {"rhs_6b27m_ml"}; /// randomized
        magazines[] = {EAST_GLRIFLE_MAG,EAST_GLRIFLE_MAG_HE,EAST_GLRIFLE_MAG_FLARE,EAST_GLRIFLE_MAG_SMOKE,EAST_PISTOL_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        handguns[] = {EAST_PISTOL}; /// randomized
        linkedItems[] += {"ItemGPS","Binocular"};
        backpackItems[] += {"ACE_key_east","ACRE_PRC117F"};
        items[] = {"ACE_MapTools", "ACRE_PRC148"};
    };
	
    class O_soldier_SL_F: O_Officer_F { // SL
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ACRE_PRC343","NVGoggles","ItemGPS","Binocular"};
        items[] = {"ACE_MapTools","ACRE_PRC148", "ACRE_PRC343"};
        backpackItems[] = {"ACE_fieldDressing:4","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
    };
	
    class O_soldier_UAV_F: O_Soldier_F {
        backpack[] = {"O_UAV_01_backpack_F"}; /// randomized
        linkedItems[] += {"O_uavterminal"};
    };
	
    class O_Soldier_TL_F: O_Soldier_F {// FTL
        weapons[] = {EAST_GLRIFLE};
        //headgear[] = {"rhsusf_ach_helmet_headset_ess_ocp"}; /// randomized
        magazines[] = {EAST_GLRIFLE_MAG,EAST_GLRIFLE_MAG_HE,EAST_GLRIFLE_MAG_SMOKE,EAST_GRENADE,EAST_SMOKE_WHITE};
        linkedItems[] += {"ItemGPS","Binocular"};
        backpackItems[] += {"ACE_key_east"};
    };
	
    class O_soldier_GL_F: O_Soldier_TL_F { // SL
    
	};
	
    class O_Soldier_AR_F: O_Soldier_F {// AR
        //vest[] = {"rhsusf_iotv_ocp_SAW"}; /// randomized
        weapons[] = {EAST_AR};
        magazines[] = {EAST_AR_MAG,EAST_PISTOL_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        handguns[] = {EAST_PISTOL}; /// randomized
        attachments[] = {};
    };
	
    class O_Soldier_AAR_F: O_Soldier_F {// AAR
        backpackItems[] += {EAST_AR_MAG2};
        attachments[] = {"rhs_acc_ekp1"};
        linkedItems[] += {"Binocular"};
    };
	
    class O_Soldier_LAT_F: O_Soldier_F {// RAT
        weapons[] = {EAST_CARBINE};
        magazines[] = {EAST_CARBINE_MAG,EAST_AT_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        launchers[] = {EAST_AT}; /// randomized
    };
	
    class O_medic_F: O_Soldier_F {// Medic
        //vest[] = {"rhsusf_iotv_ocp_medic"}; /// randomized
        weapons[] = {EAST_CARBINE};
        magazines[] = {EAST_CARBINE_MAG,EAST_SMOKE_WHITE};
        backpackItems[] = {"ACE_fieldDressing:31","ACE_epinephrine:8","ACE_bloodIV:2","ACE_morphine:14","ACE_earplugs"};
    };
	
    class O_support_MG_F: O_Soldier_F {// MMG
        weapons[] = {EAST_MMG};
        magazines[] = {EAST_MMG_MAG,EAST_PISTOL_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        handguns[] = {EAST_PISTOL}; /// randomized
    };
	
    class O_Soldier_A_F: O_Soldier_F {// MMG Spotter/Ammo Bearer
        backpackItems[] += {EAST_MMG_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class O_soldier_AT_F: O_Soldier_F {// MAT Gunner
        weapons[] = {EAST_CARBINE};
        backpack[] = {"rhs_assault_umbts"};
        magazines[] = {EAST_CARBINE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        launchers[] = {EAST_MAT}; /// randomized
        backpackItems[] += {EAST_MAT_MAG};
        attachments[] = {"rhs_acc_1p63","rhs_acc_pgo7v","rhs_acc_dtk"};
    };
	
    class O_Soldier_AAT_F: O_Soldier_F {// MAT Spotter/Ammo Bearer
        backpack[] = {"rhs_assault_umbts"};
        backpackItems[] += {EAST_MAT_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class O_soldier_AA_F: O_Soldier_F {// SAM Gunner
        weapons[] = {EAST_CARBINE};
        magazines[] = {EAST_CARBINE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        launchers[] = {EAST_SAM}; /// randomized
        backpackItems[] += {EAST_SAM_MAG};
    };
	
    class O_Soldier_AAA_F: O_Soldier_F {// SAM Spotter/Ammo Bearer
        backpackItems[] += {EAST_SAM_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class O_support_Mort_F: O_Soldier_F {// Mortar Gunner
        weapons[] = {EAST_CARBINE};
        magazines[] = {EAST_CARBINE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        backpack[] = {"O_Mortar_01_weapon_F"}; /// randomized
    };
	
    class O_support_AMort_F: O_Soldier_F {// Assistant Mortar
        backpack[] = {"O_Mortar_01_support_F"}; /// randomized
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class O_spotter_F {// Spotter
        headgear[] = {"H_HelmetSpecO_ocamo"}; /// randomized
        uniform[] = {"rhs_uniform_flora_patchless_alt"};  /// randomized
        vest[] = {"rhs_6b23_sniper"}; /// randomized
        weapons[] = {EAST_SPOTTER}; /// randomized
        magazines[] = {EAST_SPOTTER_MAG,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","LaserDesignator"};
        attachments[] = {"optic_Hamr"};
    };
	
    class O_sniper_F {// Sniper
        headgear[] = {"rhs_Booniehat_flora","rhs_fieldcap"}; /// randomized
        uniform[] = {"rhs_uniform_flora_patchless_alt"};  /// randomized
        vest[] = {"rhs_6b23_sniper"}; /// randomized
        weapons[] = {EAST_SNIPER}; /// randomized
        magazines[] = {EAST_SNIPER_MAG,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {"rhs_acc_pso1m2"};
    };
	
    class O_Helipilot_F {// Pilot
        uniform[] = {"rhs_uniform_df15"};  /// randomized
        vest[] = {"V_TacVest_blk"}; /// randomized
        headgear[] = {"rhs_zsh7a"}; /// randomized
        backpack[] = {"rhs_sidor"};
        weapons[] = {EAST_SMG}; /// randomized
        magazines[] = {EAST_SMG_MAG,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        backpackItems[] = {"ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","NVgoggles"};
        attachments[] = {};
    };
	
    class O_crew_F {// Crew
        headgear[] = {"rhs_uniform_flora_patchless_alt"}; /// randomized
        uniform[] = {"rhs_6b23_engineer"};  /// randomized
        vest[] = {"rhs_tsh4_ess_bala"}; /// randomized
        backpack[] = {"rhs_sidor"};
        weapons[] = {EAST_CARBINE}; /// randomized
        magazines[] = {EAST_CARBINE_MAG,EAST_SMOKE_WHITE};
        items[] = {};
        backpackItems[] = {"ACRE_PRC117F", "ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {};
    };
	
    class O_soldier_repair_F: O_crew_F {// Repair Specialist
        backpack[] = {"rhs_assault_umbts_engineer"};
        backpackItems[] = {"Toolkit", "ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        items[] = {"ACRE_PRC343"};
        vest[] = {"rhs_6b23_engineer"}; /// randomized
		headgear[] = {"rhs_tsh4_ess"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {};
    };
	
    class O_soldier_exp_F: O_soldier_repair_F {// Mines Specialist
        backpack[] = {"rhs_sidor"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {EAST_CARBINE_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
        attachments[] = {"rhs_acc_dtk"};
    };
	
    class O_engineer_F: O_soldier_repair_F {// Explosive Specialist
        backpack[] = {"rhs_sidor"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {EAST_CARBINE_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
        attachments[] = {"rhs_acc_dtk"};
    };
};
