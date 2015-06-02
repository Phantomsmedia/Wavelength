//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// OPFOR 		CSAT				OPF_F
  case 0:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"O_crew_F","O_Helipilot_F","O_Soldier_TL_F",
		//Rifleman
		"O_Soldier_F",
		//Rifleman lite
		"O_Soldier_lite_F",
		//Grenadier
		"O_Soldier_GL_F",
		//Autorifleman
		"O_Soldier_AR_F",
		//Assistant Autorifleman
		"O_Soldier_AAR_F",
		//Ammobearer
		"O_Soldier_A_F",
		//Rifleman AT
		"O_Soldier_LAT_F",
		//AT Specialist
		"O_Soldier_AT_F",
		//Assistant AT
		"O_Soldier_AAT_F",
		//AA Specialist
		"O_Soldier_AA_F",
		//Assistant AA
		"O_Soldier_AAA_F",
		//Explosives Specialist
		"O_soldier_exp_F",
		//Engineer
		"O_engineer_F",
		//Repair Specialist
		"O_soldier_repair_F",
		//Medic
		"O_medic_F",
		//Marksman
		"O_soldier_M_F",
		//Spotter
		"O_spotter_F",
		//Sniper
		"O_sniper_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"O_Quadbike_01_F",
		//Ifrit MRAP
		"O_MRAP_02_F",
		//Ifrit MRAP GMG
		"O_MRAP_02_gmg_F",
		//Ifrit MRAP HMG
		"O_MRAP_02_hmg_F",
		//Kamaz Truck covered
		"O_Truck_02_covered_F",
		//Kamaz Truck dump
		"O_Truck_02_transport_F",
		//Kamaz Ammo
		"O_Truck_02_Ammo_F",
		//Kamaz Repair
		"O_Truck_02_box_F",
		//Kamaz Fuel
		"O_Truck_02_fuel_F",
		//Kamaz Medical
		"O_Truck_02_medical_F"
	];
    _Unit_Pool_T = [
		//MSE-3 Marid APC
		"O_APC_Wheeled_02_rcws_F",
		//ZSU-99 Tigris
		"O_APC_Tracked_02_AA_F",
		//BTR-K Kamysh
		"O_APC_Tracked_02_cannon_F",
		//2S9 Sochor
		"O_MBT_02_arty_F",
		//T-100 Varsuk
		"O_MBT_02_cannon_F"
	];
    _Unit_Pool_A = [
		//Mi48 Attack Red
		"O_Heli_Attack_02_F",
		//Mi48 Atttack Black
		"O_Heli_Attack_02_black_F",
		//ORCA Transport armed
		"O_Heli_Light_02_F",
		//ORCA Transport Black unarmed
		"O_Heli_Light_02_unarmed_F"
	];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR 		NATO					BLU_F
  case 1:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"B_crew_F","B_Helipilot_F","B_Soldier_TL_F",
		//Rifleman
		"B_Soldier_F",
		//Rifleman lite
		"B_Soldier_lite_F",
		//Grenadier
		"B_Soldier_GL_F",
		//Autorifleman
		"B_Soldier_AR_F",
		//Assistant Autorifleman
		"B_Soldier_AAR_F",
		//Ammobearer
		"B_Soldier_A_F",
		//Rifleman AT
		"B_Soldier_LAT_F",
		//AT Specialist
		"B_Soldier_AT_F",
		//Assistant AT
		"B_Soldier_AAT_F",
		//AA Specialist
		"B_Soldier_AA_F",
		//Assistant AA
		"B_Soldier_AAA_F",
		//Explosives Specialist
		"B_soldier_exp_F",
		//Engineer
		"B_engineer_F",
		//Repair Specialist
		"B_soldier_repair_F",
		//Medic
		"B_medic_F",
		//Marksman
		"B_soldier_M_F",
		//Spotter
		"B_spotter_F",
		//Sniper
		"B_sniper_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"B_Quadbike_01_F",
		//Hunter MRAP
		"B_MRAP_01_F",
		//Hunter MRAP HMG
		"B_MRAP_01_hmg_F",
		//Hunter MRAP GL
		"B_MRAP_01_gmg_F",
		//HEMTT Transport covered
		"B_Truck_01_covered_F",
		//HEMTT Truck open
		"B_Truck_01_transport_F",
		//HEMTT Ammo
		"B_Truck_01_ammo_F",
		//HEMTT Repair
		"B_Truck_01_Repair_F",
		//HEMTT Fuel
		"B_Truck_01_fuel_F",
		//HEMTT Medical
		"B_Truck_01_medical_F"
	];
    _Unit_Pool_T = [
		//AMV-7 Marshall APC
		"B_APC_Wheeled_01_cannon_F",
		//IFV-6a Cheetah
		"B_APC_Tracked_01_AA_F",
		//IFV-6c Panther
		"B_APC_Tracked_01_rcws_F",
		//M4 Scorcher
		"B_MBT_01_arty_F",
		//M2A1 Slammer
		"B_MBT_01_cannon_F",
		//M2A1 Slammer UP
		"B_MBT_01_TUSK_F",
		//M5 Sandstorm MLRS
		"B_MBT_01_mlrs_F"
	];
    _Unit_Pool_A = [
		//AH9
		"B_Heli_Light_01_armed_F",
		//MH9
		"B_Heli_Light_01_F",
		//AH99
		"B_Heli_Attack_01_F",
		//Ghosthawk
		"B_Heli_Transport_01_F"	
	];
  };
//-------------------------------------------------------------------------------------------------
// INDEPENDENT 		AAF				IND_F
  case 2:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"I_crew_F","I_Helipilot_F","I_Soldier_TL_F",
		//Rifleman
		"I_Soldier_F",
		//Rifleman lite
		"I_Soldier_lite_F",
		//Grenadier
		"I_Soldier_GL_F",
		//Autorifleman
		"I_Soldier_AR_F",
		//Assistant Autorifleman
		"I_Soldier_AAR_F",
		//Ammobearer
		"I_Soldier_A_F",
		//Rifleman AT
		"I_Soldier_LAT_F",
		//AT Specialist
		"I_Soldier_AT_F",
		//Assistant AT
		"I_Soldier_AAT_F",
		//AA Specialist
		"I_Soldier_AA_F",
		//Assistant AA
		"I_Soldier_AAA_F",
		//Explosives Specialist
		"I_soldier_exp_F",
		//Engineer
		"I_engineer_F",
		//Repair Specialist
		"I_soldier_repair_F",
		//Medic
		"I_medic_F",
		//Marksman
		"I_soldier_M_F",
		//Spotter
		"I_spotter_F",
		//Sniper
		"I_sniper_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"I_Quadbike_01_F",
		//Strider
		"I_MRAP_03_F",
		//Strider GMG
		"I_MRAP_03_gmg_F",
		//Strider HMG
		"I_MRAP_03_hmg_F",
		//Kamaz Truck covered
		"I_Truck_02_covered_F",
		//Zamak Truck
		"I_Truck_02_transport_F",
		//Zamak Ammo
		"I_Truck_02_ammo_F",
		//Zamak Repair
		"I_Truck_02_box_F",
		//Zamak Fuel
		"I_Truck_02_fuel_F",
		//Zamak Medical
		"I_Truck_02_medical_F"
	];
    _Unit_Pool_T = [
		//AFV-4 Gorgon
		"I_APC_Wheeled_03_cannon_F",
		//FV-720 Mora
		"I_APC_tracked_03_cannon_F",
		//MBT-52 Kuma
		"I_MBT_03_cannon_F"
	];
    _Unit_Pool_A = [
		//WY-55 Hellcat
		"I_Heli_light_03_F",
		//WY-55 Hellcat (green)
		"I_Heli_light_03_unarmed_F",
		//CH-49 Mohawk
		"ch49ind"
	];
  };
//-------------------------------------------------------------------------------------------------
// Civilians				CIV_F
  case 3:
  {
    _Unit_Pool_S = [
		"C_man_w_worker_F","C_man_pilot_F","C_man_1",
		"C_man_polo_1_F",
		"C_man_polo_2_F",
		"C_man_polo_3_F",
		"C_man_polo_4_F",
		"C_man_polo_5_F",
		"C_man_polo_6_F",
		"C_man_1_1_F",
		"C_man_1_2_F",
		"C_man_1_3_F",
		"C_man_shorts_1_F",
		"C_man_shorts_2_F",
		"C_man_shorts_3_F",
		"C_man_p_shorts_1_F",
		"C_man_hunter_1_F",
		"C_man_p_beggar_F",
		"C_man_p_fugitive_F"
	];
    _Unit_Pool_V = [
		"C_Van_01_box_F",
		"C_Van_01_transport_F",
		"C_Hatchback_01_sport_F",
		"C_Hatchback_01_F",
		"C_Quadbike_01_F",
		"C_Offroad_01_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR 		CSAT (Recon)			OPF_F
  case 4:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"O_crew_F","O_Helipilot_F","O_recon_TL_F",
		//Recon Scout
		"O_recon_F",
		//Recon Scout AT
		"O_recon_LAT_F",
		//Recon JTAC
		"O_recon_JTAC_F",
		//Rifleman AT
		"O_Soldier_LAT_F",
		//Explosives Specialist
		"O_recon_exp_F",
		//Recon Medic
		"O_recon_medic_F",
		//Recon Marksman
		"O_recon_M_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"O_Quadbike_F",
		//Ifrit
		"O_MRAP_02_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		//ORCA Transport armed
		"O_Heli_Light_02_F",
		//ORCA Transport Black unarmed
		"O_Heli_Light_02_unarmed_F"
	];
  };
 //-------------------------------------------------------------------------------------------------
 // BLUFOR			NATO (Recon)				BLU_F
  case 5:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"B_crew_F","B_Helipilot_F","B_recon_TL_F",
		//Recon Scout
		"B_recon_F",
		//Recon Scout AT
		"B_recon_LAT_F",
		//Recon JTAC
		"B_recon_JTAC_F",
		//Rifleman AT
		"B_Soldier_LAT_F",
		//Explosives Specialist
		"B_recon_exp_F",
		//Recon Medic
		"B_recon_medic_F",
		//Recon Marksman
		"B_recon_M_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"B_Quadbike_F",
		//Ifrit
		"B_MRAP_02_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		//AH9
		"B_Heli_Light_01_armed_F",
		//MH9
		"B_Heli_Light_01_F"
	];
  };
 //-------------------------------------------------------------------------------------------------
 // INDEPENDENT		 AAF (Recon)				IND_F
  case 6:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"I_crew_F","I_Helipilot_F","I_recon_TL_F",
		//Recon Scout
		"I_recon_F",
		//Recon Scout AT
		"I_recon_LAT_F",
		//Recon JTAC
		"I_recon_JTAC_F",
		//Rifleman AT
		"I_Soldier_LAT_F",
		//Explosives Specialist
		"I_recon_exp_F",
		//Recon Medic
		"I_recon_medic_F",
		//Recon Marksman
		"I_recon_M_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"I_Quadbike_F",
		//Strider
		"I_MRAP_03_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR			Rebels Red				OPF_G_F
  case 7:
  {
    _Unit_Pool_S = [
		"O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_SL_F",
		"O_G_Soldier_AR_F",
		"O_G_Soldier_LAT_F",
		"O_G_Soldier_A_F",
		"O_G_medic_F",
		"O_G_Soldier_F",
		"O_G_Soldier_GL_F",
		"O_G_Soldier_M_F",
		"O_G_engineer_F"
	];
    _Unit_Pool_V = [
		"O_G_Offroad_01_F",
		"O_G_Offroad_01_armed_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR		Rebels Blue				BLU_G_F
  case 8:
  {
    _Unit_Pool_S = [
		"B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_SL_F",
		"B_G_Soldier_AR_F",
		"B_G_Soldier_LAT_F",
		"B_G_Soldier_A_F",
		"B_G_medic_F",
		"B_G_Soldier_F",
		"B_G_Soldier_GL_F",
		"B_G_Soldier_M_F",
		"B_G_engineer_F"
	];
    _Unit_Pool_V = [
		"B_G_Quadbike_01_F",
		"B_G_Offroad_01_F",
		"B_G_Offroad_01_armed_F",
		"B_G_Van_01_transport_F"
	];
    _Unit_Pool_T = ["B_G_Van_01_fuel_F"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// INDFOR		Rebels Green				IND_G_F
  case 9:
  {
    _Unit_Pool_S = [
		"I_G_Soldier_F","I_G_Soldier_F","I_G_Soldier_SL_F",
		"I_G_Soldier_AR_F",
		"I_G_Soldier_LAT_F",
		"I_G_Soldier_A_F",
		"I_G_medic_F",
		"I_G_Soldier_F",
		"I_G_Soldier_GL_F",
		"I_G_Soldier_M_F",
		"I_G_engineer_F"
	];
    _Unit_Pool_V = [
		"I_G_Offroad_01_F",
		"I_G_Offroad_01_armed_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// RHS DAC Factions by SavageCDN and Przemro
//------------------------------------------------------------------------------------------------- 
// OPFOR RHS Russians								@rhs_afrf3
// Russian Motor Rifle Troops (MSV)					rhs_faction_msv
  case 10:
  {
    _Unit_Pool_S = [
		"rhs_msv_driver_armored", "rhs_msv_combatcrew", "rhs_msv_sergeant",
		"rhs_msv_rifleman",
		"rhs_msv_grenadier",
		"rhs_msv_at",						//grenadier RPG
		"rhs_msv_strelok_rpg_assist",		//grenadier RPG assistant
		"rhs_msv_aa",
		"rhs_msv_efreitor",
		"rhs_msv_engineer",
		"rhs_msv_machinegunner",
		"rhs_msv_machinegunner_assistant",
		"rhs_msv_marksman",
		"rhs_msv_medic",
		"rhs_msv_LAT",						//rifleman RPG-26
		"rhs_msv_RShG2"						//rifleman RShG2
		
	];
    _Unit_Pool_V = [
		"rhs_tigr_msv",						//MRAP	
		"RHS_UAZ_MSV_01",
		"rhs_uaz_open_MSV_01",
		"RHS_BM21_MSV_01",					//rocket truck
		"rhs_gaz66_msv",
		"rhs_gaz66o_msv",
		"rhs_gaz66_r142_msv",				//radio truck
		"rhs_gaz66_ap2_msv",				//ambulance
		"RHS_Ural_MSV_01",
		"rhs_gaz66_repair_msv",
		"RHS_Ural_Fuel_MSV_01"		
	];
    _Unit_Pool_T = [
		"rhs_btr60_msv",
		"rhs_btr70_msv",
		"rhs_btr80_msv",
		"rhs_btr80a_msv",
		"rhs_bmp1_msv",
		"rhs_bmp1d_msv",
		"rhs_bmp1k_msv",
		"rhs_bmp1p_msv",
		"rhs_brm1k_msv",					//para
		"rhs_bmp2_msv",
		"rhs_bmp2e_msv",
		"rhs_bmp2d_msv",
		"rhs_bmp2k_msv",
		"rhs_prp3_msv"						
	];
    _Unit_Pool_A = [];
  };
//------------------------------------------------------------------------------------------------- 
// BLUFOR RHS Americans
// US Army (Woodland)							rhs_faction_usarmy_wd
  case 11:
  {
    _Unit_Pool_S = [
		"rhsusf_army_ocp_combatcrewman", "rhsusf_army_ocp_helipilot", "rhsusf_army_ocp_teamleader",
		"rhsusf_army_ocp_rifleman",
		"rhsusf_army_ocp_riflemanl",		//light
		"rhsusf_army_ocp_riflemanat",		//M136
		"rhsusf_army_ocp_grenadier",		//grenadier
		"rhsusf_army_ocp_marksman",
		"rhsusf_army_ocp_medic",
		"rhsusf_army_ocp_machinegunner",
		"rhsusf_army_ocp_machinegunnera",	//MG assistant
		"rhsusf_army_ocp_engineer",			
		"rhsusf_army_ocp_autorifleman",
		"rhsusf_army_ocp_aa",				//Stinger
		"rhsusf_army_ocp_javelin"			//Javelin
		
	];
    _Unit_Pool_V = [								
		"rhsusf_m998_w_2dr_fulltop",
		"rhsusf_m998_w_2dr_halftop",
		"rhsusf_m998_w_2dr",					
		"rhsusf_m998_w_4dr_fulltop",
		"rhsusf_m998_w_4dr_halftop",
		"rhsusf_m998_w_4dr",
		"rhsusf_m113_usarmy",
		"rhsusf_m1025_w"
	];
    _Unit_Pool_T = [
		"RHS_M6_wd",
		"rhsusf_m109_usarmy",
		"RHS_M2A2_BUSKI_WD",		
		"RHS_M2A3_BUSKI_wd",
		"RHS_M2A3_BUSKIII_wd",
		"RHS_M2A2_wd",
		"RHS_M2A3_wd",
		"rhsusf_m1a1aimwd_usarmy",					
		"rhsusf_m1a1aim_tuski_wd",
		"rhsusf_m1a2sep1wd_usarmy",
		"rhsusf_m1a2sep1tuskiwd_usarmy"
	];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR RHS
// Russians VDV
  case 12:
  {
    _Unit_Pool_S = [
		"rhs_vdv_combatcrew", "rhs_pilot", "rhs_vdv_sergeant",
		"rhs_vdv_RShG2",
		"rhs_vdv_LAT",
		"rhs_vdv_rifleman",
		"rhs_vdv_medic",
		"rhs_vdv_marksman",
		"rhs_vdv_machinegunner",
		"rhs_vdv_machinegunner_assistant",
		"rhs_vdv_at",
		"rhs_vdv_strelok_rpg_assist",
		"rhs_vdv_grenadier",
		"rhs_vdv_engineer",
		"rhs_vdv_aa"
	];
    _Unit_Pool_V = [	// BTR here, 1 rocket = BTR dead, so IMO they fit here
		"rhs_tigr_ffv_vdv",
		"RHS_Ural_Open_VDV_01",
		"RHS_Ural_VDV_01",
		"rhs_btr80_vdv",
		"rhs_btr80a_vdv"
	]; 
    _Unit_Pool_T = [
		"rhs_bmd1p",
		"rhs_bmd2m",
		"rhs_bmd4m_vdv",
		"rhs_bmd4ma_vdv",
		"rhs_bmp1p_vdv",
		"rhs_bmp2k_vdv",
		"rhs_sprut_vdv"
	];
    _Unit_Pool_A = [
		"RHS_Mi8MTV3_vdv",
		"RHS_Mi8MTV3_vdv",
		"RHS_Mi8MTV3_UPK23_vdv",
		"RHS_Mi24V_UPK23_vdv"
	];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR RHS
// USMC (woodland)
  case 13:
  {
    _Unit_Pool_S = [
		"rhsusf_usmc_marpat_wd_combatcrewman", "rhsusf_usmc_marpat_wd_helipilot", "rhsusf_usmc_marpat_wd_teamleader",
		"rhsusf_usmc_marpat_wd_riflemanat",
		"rhsusf_usmc_marpat_wd_rifleman",
		"rhsusf_usmc_marpat_wd_marksman",
		"rhsusf_usmc_marpat_wd_machinegunner_ass",
		"rhsusf_usmc_marpat_wd_machinegunner",
		"rhsusf_usmc_marpat_wd_autorifleman_m249",
		"rhsusf_usmc_marpat_wd_autorifleman_m249_ass",
		"rhsusf_usmc_marpat_wd_stinger"
	];
    _Unit_Pool_V = [	// only armed vehicles
		"rhsusf_m1025_w_s_m2_10",
		"rhsusf_m1025_w_s_mk19_10",
		"rhsusf_rg33_m2_usmc_wd"
	]; 
    _Unit_Pool_T = [
		"rhsusf_m1a1fep_wd",
		"rhsusf_m1a1fep_od"
	];
    _Unit_Pool_A = [	// added A3 ittlebird, it is quite balanced and nice to fight aginst
		"RHS_AH1Z_wd",
		"RHS_UH1Y_FFAR",
		"RHS_UH1Y",
		"B_Heli_Light_01_armed_F"
	]; 
  };
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
// LOP DAC factions added by Don [6.Rus] 	(DonElSarjo)
//-------------------------------------------------------------------------------------------------
// Afghan Militia (Leight's Opfor Pack) - INDEPENDENT
case 14:
{
_Unit_Pool_S = [
	"LOP_AM_Infantry_AT", 
	"LOP_AM_Infantry_AR", 
	"LOP_AM_Infantry_Corpsman", 
	"LOP_AM_Infantry_GL", 
	"LOP_AM_Infantry_Engineer", 
	"LOP_AM_Infantry_Marksman", 
	"LOP_AM_Soldier", 
	"LOP_AM_Infantry_SL", 
	"LOP_AM_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_AM_Landrover", 
	"LOP_AM_Landrover_M2", 
	"LOP_AM_Offroad", 
	"LOP_AM_Offroad_M2", 
	"LOP_AM_Truck"
];
_Unit_Pool_T = [
	"LOP_AM_BTR60", 
	"LOP_AM_M113_W", 
	"LOP_AM_T72BA"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// African Militia (Leight's Opfor Pack) - INDEPENDENT
case 15:
{
_Unit_Pool_S = [
	"LOP_AFR_Infantry_AT", 
	"LOP_AFR_Infantry_Corpsman", 
	"LOP_AFR_Driver", 
	"LOP_AFR_Infantry_GL", 
	"LOP_AFR_Infantry_IED", 
	"LOP_AFR_Infantry_AR", 
	"LOP_AFR_Infantry_Marksman", 
	"LOP_AFR_Infantry", 
	"LOP_AFR_Infantry_SL", 
	"LOP_AFR_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_AFR_Landrover", 
	"LOP_AFR_Landrover_M2", 
	"LOP_AFR_Offroad", 
	"LOP_AFR_Offroad_M2", 
	"LOP_AFR_Truck"
];
_Unit_Pool_T = [
	"LOP_AFR_BTR60", 
	"LOP_AFR_M113_W", 
	"LOP_AFR_T72BA"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// ISTS (Leight's Opfor Pack) - INDEPENDENT
case 16:
{
_Unit_Pool_S = [
	"LOP_ISTS_Infantry_AT", 
	"LOP_ISTS_Infantry_AR", 
	"LOP_ISTS_Infantry_Corpsman", 
	"LOP_ISTS_Infantry_GL", 
	"LOP_ISTS_Infantry_Engineer", 
	"LOP_ISTS_Infantry_Marksman", 
	"LOP_ISTS_Soldier", 
	"LOP_ISTS_Infantry_SL", 
	"LOP_ISTS_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_ISTS_Landrover", 
	"LOP_ISTS_Landrover_M2", 
	"LOP_ISTS_Offroad", 
	"LOP_ISTS_Offroad_M2", 
	"LOP_ISTS_Truck"
];
_Unit_Pool_T = [
	"LOP_ISTS_BTR60", 
	"LOP_ISTS_M113_W", 
	"LOP_ISTS_T72BA"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// RACS (Leight's Opfor Pack) - INDEPENDENT
case 17:
{
_Unit_Pool_S = [
	"LOP_RACS_Infantry_AT", 
	"LOP_RACS_Infantry_AT_Asst", 
	"LOP_RACS_Infantry_Corpsman", 
	"LOP_RACS_Infantry_Crewman", 
	"LOP_RACS_Infantry_Pilot", 
	"LOP_RACS_Infantry_Engineer", 
	"LOP_RACS_Infantry_GL", 
	"LOP_RACS_Infantry_MG", 
	"LOP_RACS_Infantry_MG_Asst", 
	"LOP_RACS_Infantry_Marksman", 
	"LOP_RACS_Infantry_Rifleman", 
	"LOP_RACS_Infantry_SL", 
	"LOP_RACS_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_RACS_Landrover", 
	"LOP_RACS_Landrover_M2", 
	"LOP_RACS_Offroad", 
	"LOP_RACS_Offroad_M2", 
	"LOP_RACS_Truck"
];
_Unit_Pool_T = [
	"LOP_RACS_M113_W",
	"LOP_RACS_T72BA"
];
_Unit_Pool_A = [
	"LOP_RACS_MH9_armed",
	"LOP_RACS_MH9",
	"LOP_RACS_UH60M"
];
};
//-------------------------------------------------------------------------------------------------
// Iraqi Army (Leight's Opfor Pack) - BLUFOR // no support units
case 18:
{
_Unit_Pool_S = [
	"LOP_IA_Infantry_AT", 
	"LOP_IA_Infantry_AT_Asst", 
	"LOP_IA_Infantry_Corpsman", 
	"LOP_IA_Infantry_Crewman", 
	"LOP_IA_Infantry_Engineer", 
	"LOP_IA_Infantry_GL", 
	"LOP_IA_Infantry_MG", 
	"LOP_IA_Infantry_MG_Asst", 
	"LOP_IA_Infantry_Marksman", 
	"LOP_IA_Infantry_Rifleman", 
	"LOP_IA_Infantry_SL", 
	"LOP_IA_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_IA_BM21", 
	"LOP_IA_HEMTT_Mover_D", 
	"LOP_IA_HEMTT_Box_D", 
	"LOP_IA_HEMTT_Transport_D", 
	"LOP_IA_HEMTT_Covered_D", 
	"LOP_IA_M1025_W_M2", 
	"LOP_IA_M1025_W_Mk19", 
	"LOP_IA_M1025_D", 
	"LOP_IA_M998_D_4DR", 
	"LOP_IA_Offroad", 
	"LOP_IA_Offroad_M2", 
	"LOP_IA_Truck"
];
_Unit_Pool_T = [
	"LOP_IA_BMP1",
	"LOP_IA_BMP2",
	"LOP_IA_M113_W",
	"LOP_IA_M1A1_AIM_D",
	"LOP_IA_ZSU234"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// Chernarus Defence Force (Leight's Opfor Pack) - BLUFOR // no support units
case 19:
{
_Unit_Pool_S = [
	"LOP_CDF_Infantry_AA", 
	"LOP_CDF_Infantry_AA", 
	"LOP_CDF_Infantry_AT_Asst", 
	"LOP_CDF_Infantry_Corpsman", 
	"LOP_CDF_Infantry_Crewman", 
	"LOP_CDF_Infantry_Engineer", 
	"LOP_CDF_Infantry_GL", 
	"LOP_CDF_Infantry_MG", 
	"LOP_CDF_Infantry_MG_Asst", 
	"LOP_CDF_Infantry_Marksman", 
	"LOP_CDF_Infantry_Officer", 
	"LOP_CDF_Infantry_Pilot", 
	"LOP_CDF_Infantry_Rifleman",
	"LOP_CDF_Infantry_SL", 
	"LOP_CDF_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_CDF_BM21", 
	"LOP_CDF_KAMAZ_Transport", 
	"LOP_CDF_KAMAZ_Covered", 
	"LOP_CDF_UAZ" ,
	"LOP_CDF_UAZ_Open", 
	"LOP_CDF_Ural", 
	"LOP_CDF_Ural_open"
];
_Unit_Pool_T = [
	"LOP_CDF_BMD1", 
	"LOP_CDF_BMD2", 
	"LOP_CDF_BMP1", 
	"LOP_CDF_BMP1D", 
	"LOP_CDF_BMP2", 
	"LOP_CDF_BMP2D", 
	"LOP_CDF_BTR60", 
	"LOP_CDF_BTR70", 
	"LOP_CDF_T72BA", 
	"LOP_CDF_T72BB", 
	"LOP_CDF_ZSU234"
];
_Unit_Pool_A = [
	"LOP_CDF_Mi24V_AT", 
	"LOP_CDF_Mi24V_FAB", 
	"LOP_CDF_Mi24V_UPK23", 
	"LOP_CDF_Mi8MT_Cargo", 
	"LOP_CDF_Mi8MTV3_FAB", 
	"LOP_CDF_Mi8MTV3_UPK23"
];
};
//-------------------------------------------------------------------------------------------------
// Afghan Army (Leight's Opfor Pack) - BLUFOR
case 20:
{
_Unit_Pool_S = [
	"LOP_AA_Infantry_AT", 
	"LOP_AA_Infantry_AT_Asst", 
	"LOP_AA_Infantry_Corpsman", 
	"LOP_AA_Infantry_Crewman", 
	"LOP_AA_Infantry_Engineer", 
	"LOP_AA_Infantry_GL", 
	"LOP_AA_Infantry_MG", 
	"LOP_AA_Infantry_MG_Asst", 
	"LOP_AA_Infantry_Marksman", 
	"LOP_AA_Infantry_Rifleman", 
	"LOP_AA_Infantry_SL", 
	"LOP_AA_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_AA_M1025_W_M2", 
	"LOP_AA_M1025_W_Mk19", 
	"LOP_AA_M1025_D", 
	"LOP_AA_M998_D_4DR", 
	"LOP_AA_Offroad", 
	"LOP_AA_Offroad_M2", 
	"LOP_AA_Truck"
];
_Unit_Pool_T = [
	"LOP_AA_BMP1", 
	"LOP_AA_BMP2", 
	"LOP_AA_M113_W", 
	"LOP_AA_ZSU234"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// Afghan Police (Leight's Opfor Pack) - BLUFOR
case 21:
{
_Unit_Pool_S = [
	"LOP_AA_Police_Corpsman",
	"LOP_AA_Police_MG",
	"LOP_AA_Police_Rifleman",
	"LOP_AA_Police_SL",
	"LOP_AA_Police_TL"
];
_Unit_Pool_V = [
	"LOP_AA_Offroad_Police", 
	"LOP_AA_Offroad_M2_Police"
];
_Unit_Pool_T = [
	"LOP_AA_Offroad_Police", 
	"LOP_AA_Offroad_M2_Police"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// ChDKZ (Leight's Opfor Pack) - OPFOR
case 22:
{
_Unit_Pool_S = [
	"LOP_ChDKZ_Infantry_AT", 
	"LOP_ChDKZ_Infantry_Bardak", 
	"LOP_ChDKZ_Infantry_Commander", 
	"LOP_ChDKZ_Infantry_Corpsman", 
	"LOP_ChDKZ_Infantry_Crewman", 
	"LOP_ChDKZ_Infantry_Engineer", 
	"LOP_ChDKZ_Infantry_GL", 
	"LOP_ChDKZ_Infantry_MG", 
	"LOP_ChDKZ_Infantry_Marksman", 
	"LOP_ChDKZ_Infantry_Pilot", 
	"LOP_ChDKZ_Infantry_Rifleman", 
	"LOP_ChDKZ_Infantry_SL", 
	"LOP_ChDKZ_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_ChDKZ_BM21", 
	"LOP_ChDKZ_UAZ", 
	"LOP_ChDKZ_UAZ_Open", 
	"LOP_ChDKZ_Ural", 
	"LOP_ChDKZ_Ural_open"
];
_Unit_Pool_T = [
	"LOP_ChDKZ_BMP1", 
	"LOP_ChDKZ_BMP1D", 
	"LOP_ChDKZ_BMP2", 
	"LOP_ChDKZ_BMP2D", 
	"LOP_ChDKZ_BTR60", 
	"LOP_ChDKZ_BTR70", 
	"LOP_ChDKZ_T72BA", 
	"LOP_ChDKZ_T72BB", 
	"LOP_ChDKZ_ZSU234"
];
_Unit_Pool_A = [
	"LOP_ChDKZ_Mi8MT_Cargo", 
	"LOP_ChDKZ_Mi8MTV3_FAB", 
	"LOP_ChDKZ_Mi8MTV3_UPK23"
];
};
//-------------------------------------------------------------------------------------------------
// SLA (Leight's Opfor Pack) - OPFOR
case 23:
{
_Unit_Pool_S = [
	"LOP_SLA_Infantry_AA",
	"LOP_SLA_Infantry_AT",
	"LOP_SLA_Infantry_AT_Asst",
	"LOP_SLA_Infantry_Corpsman",
	"LOP_SLA_Infantry_Crewman", 
	"LOP_SLA_Infantry_Engineer", 
	"LOP_SLA_Infantry_GL", 
	"LOP_SLA_Infantry_MG", 
	"LOP_SLA_Infantry_MG_Asst", 
	"LOP_SLA_Infantry_Marksman", 
	"LOP_SLA_Infantry_Officer", 
	"LOP_SLA_Infantry_Pilot", 
	"LOP_SLA_Infantry_Rifleman", 
	"LOP_SLA_Infantry_SL", 
	"LOP_SLA_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_SLA_BM21", 
	"LOP_SLA_UAZ", 
	"LOP_SLA_UAZ_Open", 
	"LOP_SLA_Ural", 
	"LOP_SLA_Ural_open"
];
_Unit_Pool_T = [
	"LOP_SLA_BMP1", 
	"LOP_SLA_BMP1D", 
	"LOP_SLA_BMP2", 
	"LOP_SLA_BMP2D", 
	"LOP_SLA_BTR60", 
	"LOP_SLA_BTR70", 
	"LOP_SLA_T72BA", 
	"LOP_SLA_T72BB", 
	"LOP_SLA_ZSU234"
];
_Unit_Pool_A = [
	"LOP_SLA_Mi8MT_Cargo", 
	"LOP_SLA_Mi8MTV3_FAB", 
	"LOP_SLA_Mi8MTV3_UPK23"
];
};
//-------------------------------------------------------------------------------------------------
// Novorussian force (Leight's Opfor Pack) - OPFOR
case 24:
{
_Unit_Pool_S = [
	"LOP_US_Infantry_AA",
	"LOP_US_Infantry_AT",
	"LOP_US_Infantry_AT_Asst",
	"LOP_US_Infantry_Corpsman",
	"LOP_US_Infantry_Crewman", 
	"LOP_US_Infantry_Engineer", 
	"LOP_US_Infantry_GL", 
	"LOP_US_Infantry_MG", 
	"LOP_US_Infantry_MG_Asst", 
	"LOP_US_Infantry_Marksman", 
	"LOP_US_Infantry_Officer", 
	"LOP_US_Infantry_Rifleman", 
	"LOP_US_Infantry_SL", 
	"LOP_US_Infantry_TL"
];
_Unit_Pool_V = [
	"LOP_US_BM21", 
	"LOP_US_UAZ", 
	"LOP_US_UAZ_Open", 
	"LOP_US_Ural", 
	"LOP_US_Ural_open"
];
_Unit_Pool_T = [
	"LOP_US_BMP1", 
	"LOP_US_BMP1D", 
	"LOP_US_BMP2", 
	"LOP_US_BMP2D", 
	"LOP_US_BTR60", 
	"LOP_US_BTR70", 
	"LOP_US_T72BA", 
	"LOP_US_T72BB", 
	"LOP_US_ZSU234"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// African civilians (Leight's Opfor Pack) - CIV
case 25:
{
_Unit_Pool_S = [
	"LOP_AFR_Civ_Man_01", 
	"LOP_AFR_Civ_Man_01_S", 
	"LOP_AFR_Civ_Man_02", 
	"LOP_AFR_Civ_Man_02_S", 
	"LOP_AFR_Civ_Man_03", 
	"LOP_AFR_Civ_Man_03_S", 
	"LOP_AFR_Civ_Man_04", 
	"LOP_AFR_Civ_Man_04_S", 
	"LOP_AFR_Civ_Man_05", 
	"LOP_AFR_Civ_Man_05_S", 
	"LOP_AFR_Civ_Man_06", 
	"LOP_AFR_Civ_Man_06_S"
];
_Unit_Pool_V = [
	"LOP_AFR_Civ_Hatchback", 
	"LOP_AFR_Civ_Offroad", 
	"LOP_AFR_Civ_Landrover", 
	"LOP_AFR_Civ_UAZ", 
	"LOP_AFR_Civ_UAZ_Open", 
	"LOP_AFR_Civ_Ural", 
	"LOP_AFR_Civ_Ural_open"
];
_Unit_Pool_T = [
	"LOP_AFR_Civ_Hatchback", 
	"LOP_AFR_Civ_Offroad", 
	"LOP_AFR_Civ_Landrover", 
	"LOP_AFR_Civ_UAZ", 
	"LOP_AFR_Civ_UAZ_Open", 
	"LOP_AFR_Civ_Ural", 
	"LOP_AFR_Civ_Ural_open"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// Takistani civilians (Leight's Opfor Pack) - CIV
case 26:
{
_Unit_Pool_S = [
	"LOP_Tak_Civ_Man_01", 
	"LOP_Tak_Civ_Man_02", 
	"LOP_Tak_Civ_Man_04"
];
_Unit_Pool_V = [
	"LOP_TAK_Civ_Hatchback", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_Ural_open"
];
_Unit_Pool_T = [
	"LOP_TAK_Civ_Hatchback", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_Ural_open"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
  Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray
