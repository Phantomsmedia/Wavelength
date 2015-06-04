//Author: 
//Description: INFOR (AAF) Standard

class ind_f {
    
	//Rifle
    #define IND_RIFLE "arifle_Katiba_F"
    #define IND_RIFLE_MAG "30Rnd_65x39_caseless_green:8","30Rnd_65x39_caseless_green_mag_Tracer:2"
    
	//GL Rifle
    #define IND_GLRIFLE "arifle_Katiba_GL_F"
    #define IND_GLRIFLE_MAG "30Rnd_65x39_caseless_green:8","30Rnd_65x39_caseless_green_mag_Tracer:2"
    #define IND_GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:4","1Rnd_SmokeGreen_Grenade_shell:2","1Rnd_SmokeRed_Grenade_shell:3"
    #define IND_GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:14"
    
	//Carbine
    #define IND_CARBINE "arifle_Katiba_C_F"
    #define IND_CARBINE_MAG "30Rnd_65x39_caseless_green:8","30Rnd_65x39_caseless_green_mag_Tracer:2"
    
	// AR
    #define IND_AR "LMG_Zafir_F"
    #define IND_AR_MAG "150Rnd_762x51_Box:9"
    #define IND_AR_MAG2 "150Rnd_762x51_Box_Tracer:5"
    
	// AT
    #define IND_AT "launch_RPG32_F"
    #define IND_AT_MAG "RPG32_F:3"
    
	// MMG
    #define IND_MMG "MMG_01_tan_F"
    #define IND_MMG_MAG "150Rnd_93x64_Mag:5"
    
	// MAT
    #define IND_MAT "launch_RPG32_F"
    #define IND_MAT_MAG "RPG32_F:2","RPG32_HE_F:1"
    
	// SAM
    #define IND_SAM "rhs_weap_igla"
    #define IND_SAM_MAG "rhs_mag_9k38_rocket:2"
   
    // Sniper Rifle
    #define IND_SNIPER "rhs_weap_svdp_wd"
    #define IND_SNIPER_MAG "rhs_10Rnd_762x54mmR_7N1:8"
    
	// Spotter Rifle
    #define IND_SPOTTER "srifle_EBR_F"
    #define IND_SPOTTER_MAG "20Rnd_762x51_Mag:8"
    
	// SMG
    #define IND_SMG "SMG_02_F"
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
	
// ====================================================================================
// Leadership INF and Groupies

    class I_Soldier_F {// rifleman
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        vest[] = {"MNP_Vest_ChinaH_T"}; /// randomized
        headgear[] = {"MNP_Helmet_PAGST_CN"}; /// randomized
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"}; /// randomized
        backpackItems[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
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
        magazines[] = {IND_GLRIFLE_MAG,IND_GLRIFLE_MAG_HE,IND_GLRIFLE_MAG_SMOKE,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
        linkedItems[] += {"ItemGPS","Binocular"};
        attachments[] = {"optic_ACO_grn"};
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
    
	class I_medic_F: I_Soldier_F {// Medic
        weapons[] = {IND_CARBINE};
        magazines[] = {IND_CARBINE_MAG,IND_SMOKE_WHITE,IND_SMOKE_WHITE,IND_SMOKE_WHITE};
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
        backpackItems[] = {"ACE_fieldDressing:31","ACE_epinephrine:8","ACE_bloodIV:2","ACE_morphine:14","ACE_earplugs"};
    };

// ====================================================================================
// Grunt Infantry	

    class I_Soldier_TL_F: I_Soldier_F {// FTL
        weapons[] = {IND_GLRIFLE};
        headgear[] = {"MNP_Helmet_PAGST_CN"}; /// randomized
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
        attachments[] = {"optic_MRCO"};
        linkeditems[] += {"Binocular"};
    };
	
    class I_Soldier_LAT_F: I_Soldier_F {// RAT
        weapons[] = {IND_CARBINE};
        backpack[] = {"RPG32_F"}; /// randomized
        magazines[] = {IND_CARBINE_MAG,IND_AT_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_AT}; /// randomized
        attachments[] = {""};
    };
	
// ====================================================================================
// Support Infantry
	
    class I_support_MG_F: I_Soldier_F {// MMG
        weapons[] = {IND_MMG};
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"}; /// randomized
        magazines[] = {IND_MMG_MAG,IND_PISTOL_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        handguns[] = {IND_PISTOL}; /// randomized
    };
	
    class I_Soldier_A_F: I_Soldier_F {// MMG Spotter/Ammo Bearer
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"}; /// randomized
        backpackItems[] += {IND_MMG_MAG};
        linkeditems[] += {"ACE_Vector"};
    };
	
    class I_soldier_AT_F: I_Soldier_F {// MAT Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_MAT}; /// randomized
        backpackItems[] += {IND_MAT_MAG};
    };
	
    class I_Soldier_AAT_F: I_Soldier_F {// MAT Spotter/Ammo Bearer
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
        backpackItems[] += {IND_MAT_MAG};
        linkeditems[] += {"ACE_Vector"};
    };
	
    class I_soldier_AA_F: I_Soldier_F {// SAM Gunner
        weapons[] = {IND_CARBINE};
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
        magazines[] = {IND_CARBINE_MAG,IND_GRENADE,IND_SMOKE_WHITE};
        launchers[] = {IND_SAM}; /// randomized
        backpackItems[] += {IND_SAM_MAG};
    };
	
    class I_Soldier_AAA_F: I_Soldier_F {// SAM Spotter/Ammo Bearer
        backpackItems[] = {IND_SAM_MAG};
        linkeditems[] += {"ACE_Vector"};
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
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
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        vest[] = {"V_Chestrig_khk"}; /// randomized
        headgear[] = {"MNP_Helmet_PAGST_CN"}; /// randomized
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"}; /// randomized
        weapons[] = {IND_SPOTTER}; /// randomized
        magazines[] = {IND_SPOTTER_MAG,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","LaserDesignator"};
        attachments[] = {"optic_Hamr"};
    };
	
    class I_sniper_F {// Sniper
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        vest[] = {"V_Chestrig_khk"}; /// randomized
        headgear[] = {"MNP_Helmet_PAGST_CN"}; /// randomized
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"}; /// randomized
        weapons[] = {IND_SNIPER}; /// randomized
        magazines[] = {IND_SNIPER_MAG,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
        attachments[] = {"rhs_acc_pgo7v"};
    };

// ====================================================================================
// Vehicle Infantry
	
    class I_Helipilot_F {// Pilot
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        vest[] = {"V_TacVest_oli"}; /// randomized
        headgear[] = {"H_PilotHelmetHeli_O"}; /// randomized
        backpack[] = {"MNP_B_FieldPack_PLA_Basic"};
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs", "ACRE_PRC343"};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
    };
	
    class I_crew_F {// Crew
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        vest[] = {"V_TacVest_brn"}; // randomized
        headgear[] = {"H_HelmetCrew_O"}; /// randomized
        weapons[] = {IND_SMG}; /// randomized
        magazines[] = {IND_SMG_MAG,IND_SMOKE_WHITE};
        backpackItems[] += {"ACE_key_indp","ACRE_PRC117F"};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS"};
    };
	
    class I_Soldier_repair_F: I_crew_F {// Repair Specialist
        backpack[] = {"B_Carryall_ocamo"};
        backpackItems[] = {"Toolkit","ACRE_PRC148"};
        items[] += {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
    };
	
    class I_soldier_exp_F: I_soldier_repair_F {// Explosive Specialist
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        backpack[] = {"B_Carryall_ocamo"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_CARBINE_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
    };
	
    class I_engineer_F: I_soldier_repair_F {// Explosive Specialist
        uniform[] = {"MNP_CombatUniform_China"};  /// randomized
        backpack[] = {"B_Carryall_ocamo"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {IND_CARBINE_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
    };
};
