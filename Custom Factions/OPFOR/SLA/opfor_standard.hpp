//Author: 
//Description: OPFOR (CSAT) Standard

class opf_f {
    //Rifle
    #define EAST_RIFLE "rhs_weap_akm"
    #define EAST_RIFLE_MAG "rhs_30Rnd_762x39mm:8","rhs_30Rnd_762x39mm_tracer:2"
    
	//GL Rifle
    #define EAST_GLRIFLE "rhs_weap_akm_gp25"
    #define EAST_GLRIFLE_MAG "rhs_30Rnd_762x39mm:8","rhs_30Rnd_762x39mm_tracer:2"
    #define EAST_GLRIFLE_MAG_SMOKE "rhs_GRD40_White:4","rhs_GRD40_Green:2","rhs_GRD40_Red:3"
    #define EAST_GLRIFLE_MAG_HE "rhs_VOG25P:14"
    
	//Carbine
    #define EAST_CARBINE "rhs_weap_akms"
    #define EAST_CARBINE_MAG "rhs_30Rnd_762x39mm:8","rhs_30Rnd_762x39mm_tracer:2"
    
	// AR
    #define EAST_AR "rhs_weap_pkm"
    #define EAST_AR_MAG "rhs_100Rnd_762x54mmR:9"
    #define EAST_AR_MAG2 "rhs_100Rnd_762x54mmR_green:5"
    
	// AT
    #define EAST_AT "ibr_rpg7v"
    #define EAST_AT_MAG "ibr_pg7v:3"
    
	// MMG
    #define EAST_MMG "rhs_weap_pkm"
    #define EAST_MMG_MAG "rhs_100Rnd_762x54mmR:5"
    
	// MAT
    #define EAST_MAT "ibr_rpg7v"
    #define EAST_MAT_MAG "ibr_pg7v:1","ibr_og7:2"
    
	// SAM
    #define EAST_SAM "rhs_weap_igla"
    #define EAST_SAM_MAG "rhs_mag_9k38_rocket:2"
   
    // Sniper Rifle
    #define EAST_SNIPER "rhs_weap_svdp_pso1"
    #define EAST_SNIPER_MAG "rhs_10Rnd_762x54mmR_7N1:8"
    
	// Spotter Rifle
    #define EAST_SPOTTER "hlc_rifle_aek971"
    #define EAST_SPOTTER_MAG "hlc_30Rnd_545x39_B_AK:8"
    
	// SMG
    #define EAST_SMG "rhs_weap_ak74m"
    #define EAST_SMG_MAG "rhs_30Rnd_545x39_AK:6"
    
	// Pistol
    #define EAST_PISTOL "rhsusf_weap_m1911a1"
    #define EAST_PISTOL_MAG "rhsusf_mag_7x45acp_MHP:4"
	
	// Grenades, Smoke and Frag
    #define EAST_GRENADE "rhs_mag_m67:2"
    #define EAST_SMOKE_WHITE "rhs_mag_an_m8hc:2"
    #define EAST_SMOKE_GREEN "rhs_mag_m18_green"
    #define EAST_SMOKE_RED "rhs_mag_m18_red"


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
        uniform[] = {"LOP_U_SLA_Fatigue_01"};  /// randomized
        vest[] = {"LOP_V_6Sh92_OLV","rhs_6sh92_digi"}; /// randomized
        headgear[] = {"LOP_H_SSh68Helmet_OLV","LOP_H_SSh68Helmet_BLK"}; /// randomized
        backpack[] = {"B_Kitbag_sgg"}; /// randomized
        backpackItems[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
        weapons[] = {EAST_RIFLE}; /// randomized
        launchers[] = {}; /// randomized
        handguns[] = {}; /// randomized
        magazines[] = {EAST_RIFLE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        items[] = {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {""};
    };
	
    class O_officer_F: O_Soldier_F { // CO and DC
        weapons[] = {EAST_GLRIFLE};
        //vest[] = {"rhsusf_iotv_ocp_Grenadier"}; /// randomized
        //headgear[] = {"rhsusf_ach_helmet_headset_ocp"}; /// randomized
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
        attachments[] = {""};
        linkedItems[] += {"Binocular"};
    };
	
    class O_Soldier_LAT_F: O_Soldier_F {// RAT
        weapons[] = {EAST_CARBINE};
        magazines[] = {EAST_CARBINE_MAG,EAST_AT_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        launchers[] = {EAST_AT}; /// randomized
    };
	
    class O_medic_F: O_Soldier_F {// Medic
        //vest[] = {"rhsusf_iotv_ocp_medic"}; /// randomized
		backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        weapons[] = {EAST_CARBINE};
        magazines[] = {EAST_CARBINE_MAG,EAST_SMOKE_WHITE};
        backpackItems[] = {"ACE_fieldDressing:31","ACE_epinephrine:8","ACE_bloodIV:2","ACE_morphine:14","ACE_earplugs"};
    };
	
    class O_support_MG_F: O_Soldier_F {// MMG
        weapons[] = {EAST_MMG};
		backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        magazines[] = {EAST_MMG_MAG,EAST_PISTOL_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        handguns[] = {EAST_PISTOL}; /// randomized
    };
	
    class O_Soldier_A_F: O_Soldier_F {// MMG Spotter/Ammo Bearer
		backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        backpackItems[] += {EAST_MMG_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class O_soldier_AT_F: O_Soldier_F {// MAT Gunner
        weapons[] = {EAST_CARBINE};
        backpack[] = {"rhs_rpg_empty"};
        magazines[] = {EAST_CARBINE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        launchers[] = {EAST_MAT}; /// randomized
        backpackItems[] += {EAST_MAT_MAG};
        attachments[] = {"rhs_acc_1p63","rhs_acc_pgo7v","rhs_acc_dtk"};
    };
	
    class O_Soldier_AAT_F: O_Soldier_F {// MAT Spotter/Ammo Bearer
        backpack[] = {"rhs_rpg_empty"};
        backpackItems[] += {EAST_MAT_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class O_soldier_AA_F: O_Soldier_F {// SAM Gunner
        weapons[] = {EAST_CARBINE};
		backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        magazines[] = {EAST_CARBINE_MAG,EAST_GRENADE,EAST_SMOKE_WHITE};
        launchers[] = {EAST_SAM}; /// randomized
        backpackItems[] += {EAST_SAM_MAG};
    };
	
    class O_Soldier_AAA_F: O_Soldier_F {// SAM Spotter/Ammo Bearer
		backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
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
        headgear[] = {"H_Bandanna_khk"}; /// randomized
        //uniform[] = {"U_O_GhillieSuit"};  /// randomized
        //vest[] = {"V_Chestrig_khk"}; /// randomized
        weapons[] = {EAST_SPOTTER}; /// randomized
        magazines[] = {EAST_SPOTTER_MAG,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","LaserDesignator"};
        attachments[] = {"HLC_Optic_1p29"};
    };
	
    class O_sniper_F {// Sniper
        headgear[] = {"H_Bandanna_khk"}; /// randomized
        //uniform[] = {"U_O_GhillieSuit"};  /// randomized
        //vest[] = {"V_Chestrig_khk"}; /// randomized
        weapons[] = {EAST_SNIPER}; /// randomized
        magazines[] = {EAST_SNIPER_MAG,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {"rhs_acc_pso1m2"};
    };
	
    class O_Helipilot_F {// Pilot
        //uniform[] = {"U_O_PilotCoveralls"};  /// randomized
        //vest[] = {"V_TacVest_blk"}; /// randomized
        headgear[] = {"H_PilotHelmetHeli_O"}; /// randomized
        //backpack[] = {"B_AssaultPack_rgr"};
        weapons[] = {EAST_SMG}; /// randomized
        magazines[] = {EAST_SMG_MAG,EAST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        backpackItems[] = {"ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","NVgoggles"};
        attachments[] = {};
    };
	
    class O_crew_F {// Crew
        headgear[] = {"H_HelmetCrew_O"}; /// randomized
        //uniform[] = {"U_O_SpecopsUniform_ocamo"};  /// randomized
        //vest[] = {"V_BandollierB_khk"}; /// randomized
        //backpack[] = {"B_Carryall_mcamo"};
        weapons[] = {EAST_CARBINE}; /// randomized
        magazines[] = {EAST_CARBINE_MAG,EAST_SMOKE_WHITE};
        items[] = {};
        backpackItems[] = {"ACRE_PRC117F", "ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {};
    };
	
    class O_soldier_repair_F: O_crew_F {// Repair Specialist
        backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        backpackItems[] = {"Toolkit", "ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        items[] = {"ACRE_PRC343"};
        //vest[] = {"V_HarnessO_brn"}; /// randomized
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
        attachments[] = {};
    };
	
    class O_soldier_exp_F: O_soldier_repair_F {// Mines Specialist
        backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {EAST_CARBINE_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
        attachments[] = {};
    };
	
    class O_engineer_F: O_soldier_repair_F {// Explosive Specialist
        backpack[] = {"B_Carryall_oli","B_Carryall_mcamo"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {EAST_CARBINE_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
        attachments[] = {};
    };
};
