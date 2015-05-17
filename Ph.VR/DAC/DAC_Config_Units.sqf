//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// First three units in Pool S must be Crewman, Pilot, Leader. Place units more often if you wish for them to appear more often.
// AA is automatically disabled. 
// CSAT
  case 0:
  {
    _Unit_Pool_S = ["O_crew_F","O_Helipilot_F","O_Soldier_SL_F","O_soldier_AR_F","O_soldier_AR_F","O_soldier_exp_F","O_soldier_GL_F","O_soldier_GL_F","O_soldier_M_F","O_medic_F","O_soldier_repair_F","O_Soldier_F","O_Soldier_F","O_soldier_LAT_F","O_soldier_LAT_F","O_soldier_lite_F","O_soldier_TL_F","O_soldier_TL_F"];
    _Unit_Pool_V = ["O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F"];
    _Unit_Pool_T = ["O_MBT_02_arty_F","I_APC_Wheeled_03_cannon_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_cannon_F"];
  _Unit_Pool_A = ["O_Heli_Attack_02_F","O_Heli_Light_02_F","O_Heli_Light_02_armed_F"];
  };
//-------------------------------------------------------------------------------------------------
// NATO
  case 1:
  {
    _Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_SL_F","B_soldier_AR_F","B_soldier_AR_F","B_soldier_exp_F","B_soldier_GL_F","B_soldier_GL_F","B_soldier_M_F","B_medic_F","B_soldier_repair_F","B_Soldier_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT_F","B_soldier_lite_F","B_soldier_TL_F","B_soldier_TL_F"];
    _Unit_Pool_V = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
    _Unit_Pool_T = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
    _Unit_Pool_A = ["B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_F"];
  };
//-------------------------------------------------------------------------------------------------
// AAF
  case 2:
  {
    _Unit_Pool_S = ["I_crew_F","I_helipilot_F","I_officer_F","I_Soldier_LAT_F","I_Soldier_LAT_F","I_Soldier_M_F","I_Soldier_GL_F","I_Soldier_exp_F","I_engineer_F","I_medic_F","I_Soldier_AR_F","I_Soldier_A_F"];
    _Unit_Pool_V = ["I_Truck_02_covered_F","I_Truck_02_transport_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_F"];
    _Unit_Pool_T = ["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
    _Unit_Pool_A = ["I_Heli_light_03_F"];
  };
//-------------------------------------------------------------------------------------------------
// Civilians
  case 3:
  {
    _Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
    _Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_T = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_A = [];
  };
  //-------------------------------------------------------------------------------------------------
    // FIA
  case 4:
  {
    _Unit_Pool_S = ["B_G_engineer_F","B_G_medic_F","B_G_officer_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_Soldier_exp_F","B_G_Soldier_F","B_G_Soldier_GL_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_M_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];
    _Unit_Pool_V = ["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Russian MSV (RHS: Russian Armed Forces)
  case 5:
  {
    _Unit_Pool_S = ["rhs_msv_crew","rhs_pilot_combat_heli","rhs_msv_officer","rhs_msv_machinegunner","rhs_msv_machinegunner","rhs_msv_grenadier","rhs_msv_grenadier","rhs_msv_medic","rhs_msv_rifleman","rhs_msv_rifleman","rhs_msv_LAT","rhs_msv_LAT","rhs_msv_sergeant","rhs_msv_sergeant"];
    _Unit_Pool_V = ["rhs_tigr_msv","RHS_Ural_msv_01","RHS_Ural_Open_msv_01"];
    _Unit_Pool_T = ["rhs_btr80_msv"];
	_Unit_Pool_A = ["RHS_Mi24P_vvsc","RHS_Mi8mt_vvsc","RHS_Mi8AMTSh_vvsc"];
  };
//-------------------------------------------------------------------------------------------------
// US Army Woodland (RHS: United States Armed Forces)
  case 6:
  {
    _Unit_Pool_S = ["rhsusf_army_ocp_crewman","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_medic","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_rifleman","rhsusf_army_ocp_medic","rhsusf_army_ocp_engineer","rhsusf_army_ocp_rifleman","rhsusf_army_ocp_rifleman","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_riflemanl","rhsusf_army_ocp_teamleader","rhsusf_army_ocp_teamleader"];
    _Unit_Pool_V = ["rhsusf_m998_w_2dr_fulltop","rhsusf_m998_w_2dr_halftop","rhsusf_m998_w_2dr"];
    _Unit_Pool_T = ["rhsusf_m113_usarmy","RHS_M2A2_wd","RHS_M2A2_BUSKI_WD","RHS_M2A3_BUSKIII_wd","rhsusf_m1a2sep1tuskiwd_usarmy","rhsusf_m109_usarmy"];
    _Unit_Pool_A = ["RHS_UH60M","RHS_UH60M_MEV","RHS_AH64D_wd"];
  };
//-------------------------------------------------------------------------------------------------
// Russian VDV (RHS: Russian Armed Forces)
  case 7:
  {
    _Unit_Pool_S = ["rhs_vdv_crew","rhs_pilot","rhs_vdv_sergeant","rhs_vdv_machinegunner","rhs_vdv_machinegunner","rhs_vdv_medic","rhs_vdv_grenadier","rhs_vdv_grenadier","rhs_vdv_rifleman","rhs_vdv_medic","rhs_vdv_engineer","rhs_vdv_rifleman","rhs_vdv_rifleman","rhs_vdv_LAT","rhs_vdv_LAT","rhs_vdv_rifleman","rhs_vdv_junior_sergeant","rhs_vdv_junior_sergeant"];
    _Unit_Pool_V = ["rhs_gaz66_vdv","RHS_Ural_VDV_01","RHS_Ural_Open_VDV_01"];
    _Unit_Pool_T = ["rhs_bmd2","rhs_bmp1d_vdv","rhs_btr70_vdv","rhs_btr60_vdv","rhs_btr80_vdv","rhs_bmp2d_vdv"];
    _Unit_Pool_A = ["RHS_Mi8AMT_vdv","RHS_Mi8MTV3_vdv","RHS_Mi24V_vdv"];
  }; 
//-------------------------------------------------------------------------------------------------
    // Insurgents (RHS: Russian Armed Forces)
  case 8:
  {
    _Unit_Pool_S = ["rhs_g_engineer_F","rhs_g_medic_F","rhs_g_Soldier_SL_F","rhs_g_Soldier_F","rhs_g_Soldier_AR_F","rhs_g_Soldier_lite_F","rhs_g_Soldier_LAT_F","rhs_g_Soldier_M_F","rhs_g_Soldier_exp_F"];
    _Unit_Pool_V = ["rhs_btr70_chdkz","rhs_ural_open_chdkz","RHS_BM21_chdkz","RHS_UAZ_chdkz"];
    _Unit_Pool_T = ["rhs_zsu234_chdkz","rhs_t72bb_chdkz","rhs_btr70_chdkz"];
    _Unit_Pool_A = ["RHS_Mi8amt_chdkz"];
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
