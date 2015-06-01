//Author: 
//Description: FIA Faction
// ====================================================================================

class blu_f {

	// Here we're creating definitions for weapons and magazines that are called later. 
    
	//Rifle
    #define WEST_RIFLE "arifle_TRG21_F"
    #define WEST_RIFLE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Red:2"
    
	//GL Rifle
    #define WEST_GLRIFLE "arifle_TRG21_GL_F"
    #define WEST_GLRIFLE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Red:2"
    #define WEST_GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:4","1Rnd_SmokeGreen_Grenade_shell:2","1Rnd_SmokeRed_Grenade_shell:3"
    #define WEST_GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:8"
    #define WEST_GLRIFLE_MAG_FLARE "UGL_FlareRed_F:2","UGL_FlareGreen_F:2"
    
	//Carbine
    #define WEST_CARBINE "arifle_TRG20_F"
    #define WEST_CARBINE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Red:2"
   
   // AR
    #define WEST_AR "LMG_Mk200_F"
    #define WEST_AR_MAG "200Rnd_65x39_cased_Box:2"
    #define WEST_AR_MAG2 "200Rnd_65x39_cased_Box_Tracer:2"
    
	// AT
    #define WEST_AT "launch_NLAW_F"
    #define WEST_AT_MAG "ACE_PreloadedMissileDummy"
    
	// MMG
    #define WEST_MMG "MMG_01_tan_F"
    #define WEST_MMG_MAG "150Rnd_93x64_Mag:5"
    
	// MAT
    #define WEST_MAT "launch_RPG32_F"
    #define WEST_MAT_MAG "RPG32_F:3"
    
	// SAM
    #define WEST_SAM "launch_I_Titan_F"
    #define WEST_SAM_MAG "Titan_AA:2"
    
	// Sniper Rifle
    #define WEST_SNIPER "srifle_DMR_06_camo_F"
    #define WEST_SNIPER_MAG "20Rnd_762x51_Mag:8"
   
   // Spotter Rifle
    #define WEST_SPOTTER "arifle_TRG21_F"
    #define WEST_SPOTTER_MAG "30Rnd_556x45_Stanag:8"
    
	// SMG
    #define WEST_SMG "SMG_01_F"
    #define WEST_SMG_MAG "30Rnd_45ACP_Mag_SMG_01:6"
   
   // Pistol
    #define WEST_PISTOL "hgun_ACPC2_F"
    #define WEST_PISTOL_MAG "9Rnd_45ACP_Mag:4"
	
	// Grenades, Smoke and Frag
	#define WEST_GRENADE "HandGrenade:2"
	#define WEST_SMOKE_WHITE "SmokeShell:2"
	#define WEST_SMOKE_GREEN "SmokeShellGreen"
	#define WEST_SMOKE_RED "SmokeShellRed"

	
// ====================================================================================
	
    class Car {
        TransportMagazines[] = {WEST_RIFLE_MAG,WEST_RIFLE_MAG,WEST_CARBINE_MAG,WEST_AR_MAG,WEST_AR_MAG,WEST_GLRIFLE_MAG_HE,WEST_AT_MAG};
        TransportItems[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
    };
	
    class Tank {
        TransportMagazines[] = {WEST_RIFLE_MAG,WEST_RIFLE_MAG,WEST_CARBINE_MAG,WEST_AR_MAG,WEST_AR_MAG,WEST_GLRIFLE_MAG_HE,WEST_AT_MAG};
        TransportItems[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
    };
	
    class Helicopter {
        TransportMagazines[] = {WEST_RIFLE_MAG,WEST_RIFLE_MAG,WEST_CARBINE_MAG,WEST_AR_MAG,WEST_AR_MAG,WEST_GLRIFLE_MAG_HE};
        TransportItems[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
    };
	
    class Plane {
        TransportMagazines[] = {};
    };
	
    class Ship_F {
        TransportMagazines[] = {};
    };

// ====================================================================================
// Leadership INF and Groupies

    class B_Soldier_F {// rifleman
        uniform[] = {"U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_leader"};  /// randomized
        vest[] = {"V_Chestrig_rgr","V_Chestrig_khk"}; /// randomized
        headgear[] = {"H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_oli","H_Cap_tan","H_Cap_blk_Raven","H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk"}; /// randomized
        backpack[] = {"B_AssaultPack_dgtl"}; /// randomized
        backpackItems[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
        weapons[] = {WEST_RIFLE}; /// randomized
        launchers[] = {}; /// randomized
        handguns[] = {}; /// randomized
        magazines[] = {WEST_RIFLE_MAG,WEST_GRENADE,WEST_SMOKE_WHITE};
        items[] = {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","NVGoggles"};
        attachments[] = {"optic_Holosight","acc_pointer_IR"};
    };
	
    class B_officer_F: B_Soldier_F {// CO and DC
        weapons[] = {WEST_GLRIFLE};
        vest[] = {"V_Chestrig_rgr","V_Chestrig_khk"}; /// randomized
        headgear[] = {"H_Booniehat_dgtl"}; /// randomized
        magazines[] = {WEST_GLRIFLE_MAG,WEST_GLRIFLE_MAG_HE,WEST_GLRIFLE_MAG_SMOKE,WEST_GLRIFLE_MAG_FLARE,WEST_PISTOL_MAG,WEST_GRENADE,WEST_SMOKE_WHITE,WEST_SMOKE_GREEN};
        handguns[] = {WEST_PISTOL}; /// randomized
        backpackItems[] += {"ACE_key_west", "ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","NVGoggles","ItemGPS","ACE_Vector"};
        items[] = {"ACE_MapTools","ACRE_PRC148"};
    };
	
    class B_Soldier_SL_F: B_Officer_F {// SL
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","NVGoggles","ItemGPS","Binocular"};
        items[] = {"ACE_MapTools","ACRE_PRC148", "ACRE_PRC343"};
        backpackItems[] = {"ACE_fieldDressing:4","ACE_morphine","ACE_IR_Strobe_item","ACE_earplugs"};
    };
	
    class B_soldier_UAV_F: B_Soldier_F {
        backpack[] = {"B_TacticalPack_oli"}; /// randomized
        linkedItems[] += {"B_uavterminal"};
    };
	
	class B_medic_F: B_Soldier_F {// Medic
        vest[] = {"V_PlateCarrierIAGL_oli"}; /// randomized
        weapons[] = {WEST_CARBINE};
        magazines[] = {WEST_CARBINE_MAG,WEST_SMOKE_WHITE};
        backpackItems[] = {"ACE_fieldDressing:31","ACE_epinephrine:8","ACE_bloodIV:2","ACE_morphine:14"};
    };
	
// ====================================================================================
// Grunt Infantry	

    class B_Soldier_TL_F: B_Soldier_F {// FTL
        weapons[] = {WEST_GLRIFLE};
        headgear[] = {"H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_oli","H_Cap_tan","H_Cap_blk_Raven","H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk"}; /// randomized
        magazines[] = {WEST_GLRIFLE_MAG,WEST_GLRIFLE_MAG_HE,WEST_GLRIFLE_MAG_SMOKE,WEST_GLRIFLE_MAG_FLARE,WEST_SMOKE_WHITE,WEST_GRENADE,WEST_SMOKE_WHITE,WEST_GRENADE,WEST_SMOKE_WHITE};
        backpackItems[] += {"ACE_key_west"};
        linkedItems[] += {"ItemGPS","Binocular"};
    };
	
    class B_Soldier_AR_F: B_Soldier_F {// AR
        vest[] = {"V_Chestrig_khk"}; /// randomized
        weapons[] = {WEST_AR};
        magazines[] = {WEST_AR_MAG,WEST_PISTOL_MAG,WEST_GRENADE,WEST_SMOKE_WHITE};
        handguns[] = {WEST_PISTOL}; /// randomized
    };
	
    class B_Soldier_AAR_F: B_Soldier_F {// AAR
        backpackItems[] += {WEST_AR_MAG2};
        attachments[] = {"optic_ACO_grn"};
        linkedItems[] += {"Binocular"};
    };
	
    class B_Soldier_LAT_F: B_Soldier_F {// RAT
        weapons[] = {WEST_CARBINE};
        magazines[] = {WEST_CARBINE_MAG,WEST_AT_MAG,WEST_GRENADE,WEST_SMOKE_WHITE};
        launchers[] = {WEST_AT}; /// randomized
    };
// ====================================================================================
// Support Infantry 
	
    class B_support_MG_F: B_Soldier_F {// MMG
        weapons[] = {WEST_MMG};
        magazines[] = {WEST_MMG_MAG,WEST_PISTOL_MAG,WEST_GRENADE,WEST_SMOKE_WHITE};
        handguns[] = {WEST_PISTOL}; /// randomized
        attachments[] = {};
    };
	
    class B_Soldier_A_F: B_Soldier_F {// MMG Spotter/Ammo Bearer
        backpackItems[] += {WEST_MMG_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class B_soldier_AT_F: B_Soldier_F {// MAT Gunner
        weapons[] = {WEST_CARBINE};
        magazines[] = {WEST_CARBINE_MAG,WEST_GRENADE,WEST_SMOKE_WHITE};
        launchers[] = {WEST_MAT}; /// randomized
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        backpackItems[] = {WEST_MAT_MAG};
    };
	
    class B_Soldier_AAT_F: B_Soldier_F {// MAT Spotter/Ammo Bearer
        backpackItems[] = {WEST_MAT_MAG};
        linkedItems[] += {"ACE_Vector"};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
    };
	
    class B_soldier_AA_F: B_Soldier_F {// SAM Gunner
        weapons[] = {WEST_CARBINE};
        magazines[] = {WEST_CARBINE_MAG,WEST_GRENADE,WEST_GRENADE,WEST_SMOKE_WHITE};
        launchers[] = {WEST_SAM}; /// randomized
        backpackItems[] += {WEST_SAM_MAG};
    };
	
    class B_Soldier_AAA_F: B_Soldier_F {// SAM Spotter/Ammo Bearer
        backpackItems[] = {WEST_SAM_MAG};
        linkedItems[] += {"ACE_Vector"};
    };
	
    class B_support_Mort_F: B_Soldier_F {// Mortar Gunner
        weapons[] = {WEST_CARBINE};
        magazines[] = {WEST_CARBINE_MAG,WEST_GRENADE,WEST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        backpack[] = {"B_Mortar_01_weapon_F"}; /// randomized
    };
	
    class B_support_AMort_F: B_Soldier_F {// Assistant Mortar
        backpack[] = {"B_Mortar_01_support_F"}; /// randomized
        linkedItems[] += {"ACE_Vector"};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
    };
	
    class B_spotter_F {// Spotter
        uniform[] = {"U_B_FullGhillie_lsh"};  /// randomized
        vest[] = {"V_Chestrig_rgr"}; /// randomized
        headgear[] = {"H_Watchcap_camo"}; /// randomized
        weapons[] = {WEST_SPOTTER}; /// randomized
        magazines[] = {WEST_SPOTTER_MAG,WEST_SMOKE_WHITE,WEST_GRENADE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemGPS","LaserDesignator"};
        attachments[] = {"optic_Holosight","acc_pointer_IR"};
    };
	
    class B_sniper_F {// Sniper
        uniform[] = {"U_B_FullGhillie_lsh"};  /// randomized
        vest[] = {"V_Chestrig_rgr"}; /// randomized
        headgear[] = {"H_Watchcap_camo"}; /// randomized
        weapons[] = {WEST_SNIPER}; /// randomized
        magazines[] = {WEST_SNIPER_MAG,WEST_SMOKE_WHITE,WEST_GRENADE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs", "ACRE_PRC343"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemGPS"};
        attachments[] = {"optic_SOS","acc_pointer_IR"};
    };
	
// ====================================================================================
// Vehicle Infantry
	
    class B_Helipilot_F {// Pilot
        uniform[] = {"U_BG_leader"};  /// randomized
        backpack[] = {"B_AssaultPack_blk"};
        vest[] = {"V_TacVest_oli"}; /// randomized
        headgear[] = {"H_PilotHelmetHeli_I"}; /// randomized
        weapons[] = {WEST_SMG}; /// randomized
        magazines[] = {WEST_SMG_MAG,WEST_SMOKE_WHITE};
        backpackItems[] += {"ACE_key_west","ACRE_PRC117F"};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACRE_PRC148","ACE_earplugs"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","itemGPS","NVgoggles"};
    };
	
    class B_helicrew_F: B_Helipilot_F { // Pilot

    };
	
    class B_crew_F {// Crew
        uniform[] = {"U_BG_Guerrilla_6_1"};  // randomized
        vest[] = {"V_TacVest_oli"}; // randomized
        headgear[] = {"H_HelmetCrew_I"}; /// randomized
        backpack[] = {"B_Carryall_oli"};
        weapons[] = {WEST_CARBINE}; /// randomized
        magazines[] = {WEST_CARBINE_MAG,WEST_SMOKE_WHITE};
        items[] = {"ACE_fieldDressing:3","ACE_morphine","ACE_earplugs"};
        backpackItems[] += {"ACE_key_west","ACRE_PRC148","ACRE_PRC117F"};
        linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemGPS"};
    };
	
    class B_soldier_repair_F: B_crew_F {// Repair Specialist
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit"};
        vest[] = {"V_PlateCarrier1_rgr"}; /// randomized
        items[] += {"ACRE_PRC343"};
        linkedItems[] = {"ItemMap", "ItemCompass", "ItemWatch"};
    };
	
    class B_soldier_exp_F: B_soldier_repair_F {// Explosive Specialist
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {WEST_CARBINE_MAG,"DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"};
    };
	
    class B_engineer_F: B_soldier_repair_F {// Mine Specialist
        backpack[] = {"B_Carryall_oli"};
        backpackItems[] = {"Toolkit","ACE_DefusalKit","ACE_Clacker","MineDetector"};
        magazines[] = {WEST_CARBINE_MAG,"ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"};
    };
};
