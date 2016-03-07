//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Creator    //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

scalar = "any";DAC_Init_Camps = 0;

waituntil{time > 0.3};

if(isAIcontroller) then {if(local player) then {DAC_Code = 1} else {DAC_Code = 0}} else {if(isnull player) then {DAC_Code = 3} else {DAC_Code = 2}};

//===============|
// DAC_Settings	 |
//===============|=============================================================================================|

	if(isNil "DAC_STRPlayers") then {
		DAC_STRPlayers = ["s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","UnitNATO_CO","UnitNATO_CO_M","UnitNATO_CO_UAV","UnitNATO_CO_D","UnitNATO_DC","UnitNATO_DC_M","UnitNATO_DC_UAV","UnitNATO_DC_D","UnitNATO_ASL_SL","UnitNATO_ASL_M","UnitNATO_A1_FTL","UnitNATO_A1_AR","UnitNATO_A1_AAR","UnitNATO_A1_AT","UnitNATO_A2_FTL","UnitNATO_A2_AR","UnitNATO_A2_AAR","UnitNATO_A2_AT","UnitNATO_A3_FTL","UnitNATO_A3_AR","UnitNATO_A3_AAR","UnitNATO_A3_AT","UnitNATO_BSL_SL","UnitNATO_BSL_M","UnitNATO_B1_FTL","UnitNATO_B1_AR","UnitNATO_B1_AAR","UnitNATO_B1_AT","UnitNATO_B2_FTL","UnitNATO_B2_AR","UnitNATO_B2_AAR","UnitNATO_B2_AT","UnitNATO_B3_FTL","UnitNATO_B3_AR","UnitNATO_B3_AAR","UnitNATO_B3_AT","UnitNATO_CSL_SL","UnitNATO_CSL_M","UnitNATO_C1_FTL","UnitNATO_C1_AR","UnitNATO_C1_AAR","UnitNATO_C1_AT","UnitNATO_C2_FTL","UnitNATO_C2_AR","UnitNATO_C2_AAR","UnitNATO_C2_AT","UnitNATO_C3_FTL","UnitNATO_C3_AR","UnitNATO_C3_AAR","UnitNATO_C3_AT","UnitOPFOR_CO","UnitOPFOR_CO_M","UnitOPFOR_CO_UAV","UnitOPFOR_CO_D","UnitOPFOR_DC","UnitOPFOR_DC_M","UnitOPFOR_DC_UAV","UnitOPFOR_DC_D","UnitOPFOR_ASL_SL","UnitOPFOR_ASL_M","UnitOPFOR_A1_FTL","UnitOPFOR_A1_AR","UnitOPFOR_A1_AAR","UnitOPFOR_A1_AT","UnitOPFOR_A2_FTL","UnitOPFOR_A2_AR","UnitOPFOR_A2_AAR","UnitOPFOR_A2_AT","UnitOPFOR_A3_FTL","UnitOPFOR_A3_AR","UnitOPFOR_A3_AAR","UnitOPFOR_A3_AT","UnitOPFOR_BSL_SL","UnitOPFOR_BSL_M","UnitOPFOR_B1_FTL","UnitOPFOR_B1_AR","UnitOPFOR_B1_AAR","UnitOPFOR_B1_AT","UnitOPFOR_B2_FTL","UnitOPFOR_B2_AR","UnitOPFOR_B2_AAR","UnitOPFOR_B2_AT","UnitOPFOR_B3_FTL","UnitOPFOR_B3_AR","UnitOPFOR_B3_AAR","UnitOPFOR_B3_AT","UnitOPFOR_CSL_SL","UnitOPFOR_CSL_M","UnitOPFOR_C1_FTL","UnitOPFOR_C1_AR","UnitOPFOR_C1_AAR","UnitOPFOR_C1_AT","UnitOPFOR_C2_FTL","UnitOPFOR_C2_AR","UnitOPFOR_C2_AAR","UnitOPFOR_C2_AT","UnitOPFOR_C3_FTL","UnitOPFOR_C3_AR","UnitOPFOR_C3_AAR","UnitOPFOR_C3_AT","UnitNATO_MMG1_FTL","UnitNATO_MMG1_G","UnitNATO_MMG1_AG","UnitNATO_MAT1_G","UnitNATO_MAT1_AG","UnitNATO_HMG1_FTL","UnitNATO_HMG1_G","UnitNATO_HMG1_AG","UnitNATO_HAT1_G","UnitNATO_HAT1_AG","UnitNATO_ENG1_FTL","UnitNATO_ENG1_A1","UnitNATO_ENG1_A2","UnitNATO_ENG1_A3","UnitNATO_DT1_TL","UnitNATO_DT1_D1","UnitNATO_DT1_D2","UnitNATO_DT1_D3","UnitNATO_TH1_P","UnitNATO_TH1_CP","UnitNATO_TH1_G1","UnitNATO_TH1_G2","UnitOPFOR_MMG1_G","UnitOPFOR_MMG1_AG","UnitOPFOR_MAT1_G","UnitOPFOR_MAT1_AG","UnitOPFOR_ENG1_FTL","UnitOPFOR_ENG1_A1","UnitOPFOR_ENG1_A2","UnitOPFOR_ENG1_A3","UnitOPFOR_DT1_TL","UnitOPFOR_DT1_D1","UnitOPFOR_DT1_D2","UnitOPFOR_DT1_D3","UnitOPFOR_TH1_P","UnitOPFOR_TH1_CP","UnitIND_CO","UnitIND_CO_M","UnitIND_CO_UAV","UnitIND_CO_D","UnitIND_DC","UnitIND_DC_M","UnitIND_DC_UAV","UnitIND_DC_D","UnitIND_ASL_SL","UnitIND_ASL_M","UnitIND_A1_FTL","UnitIND_A1_AR","UnitIND_A1_AAR","UnitIND_A1_AT","UnitIND_A2_FTL","UnitIND_A2_AR","UnitIND_A2_AAR","UnitIND_A2_AT","UnitIND_A3_FTL","UnitIND_A3_AR","UnitIND_A3_AAR","UnitIND_A3_AT","UnitIND_BSL_SL","UnitIND_BSL_M","UnitIND_B1_FTL","UnitIND_B1_AR","UnitIND_B1_AAR","UnitIND_B1_AT","UnitIND_B2_FTL","UnitIND_B2_AR","UnitIND_B2_AAR","UnitIND_B2_AT","UnitIND_B3_FTL","UnitIND_B3_AR","UnitIND_B3_AAR","UnitIND_B3_AT","UnitIND_CSL_SL","UnitIND_CSL_M","UnitIND_C1_FTL","UnitIND_C1_AR","UnitIND_C1_AAR","UnitIND_C1_AT","UnitIND_C2_FTL","UnitIND_C2_AR","UnitIND_C2_AAR","UnitIND_C2_AT","UnitIND_C3_FTL","UnitIND_C3_AR","UnitIND_C3_AAR","UnitIND_C3_AT","UnitIND_MMG1_G","UnitIND_MMG1_AG","UnitIND_MAT1_G","UnitIND_MAT1_AG","UnitIND_ENG1_FTL","UnitIND_ENG1_A1","UnitIND_ENG1_A2","UnitIND_ENG1_A3","UnitIND_DT1_TL","UnitIND_DT1_D1","UnitIND_DT1_D2","UnitIND_DT1_D3","UnitIND_TH1_P","UnitIND_TH1_CP","UnitNATO_TH2_P","UnitNATO_TH2_CP","UnitNATO_TH2_G1","UnitNATO_TH2_G2","UnitNATO_TH3_P","UnitNATO_TH3_CP","UnitNATO_TH3_G1","UnitNATO_TH3_G2","UnitNATO_TH4_P","UnitNATO_TH4_CP","UnitNATO_TH4_G1","UnitNATO_TH4_G2","UnitNATO_TH5_P","UnitNATO_TH5_CP","UnitNATO_TH5_G1","UnitNATO_TH5_G2","UnitNATO_TH6_P","UnitNATO_TH6_CP","UnitNATO_TH6_G1","UnitNATO_TH6_G2","UnitNATO_TH7_P","UnitNATO_TH7_CP","UnitNATO_TH7_G1","UnitNATO_TH7_G2","UnitNATO_TH8_P","UnitNATO_TH8_CP","UnitNATO_TH8_G1","UnitNATO_TH8_G2","UnitNATO_IFV1_C","UnitNATO_IFV1_G","UnitNATO_IFV1_D","UnitNATO_IFV2_C","UnitNATO_IFV2_G","UnitNATO_IFV2_D","UnitNATO_IFV3_C","UnitNATO_IFV3_G","UnitNATO_IFV3_D","UnitNATO_IFV4_C","UnitNATO_IFV4_G","UnitNATO_IFV4_D","UnitNATO_IFV5_C","UnitNATO_IFV5_G","UnitNATO_IFV5_D","UnitNATO_IFV6_C","UnitNATO_IFV6_G","UnitNATO_IFV6_D","UnitNATO_IFV7_C","UnitNATO_IFV7_G","UnitNATO_IFV7_D","UnitNATO_IFV8_C","UnitNATO_IFV8_G","UnitNATO_IFV8_D","UnitNATO_TNK1_C","UnitNATO_TNK1_G","UnitNATO_TNK1_D","UnitNATO_AH1_P","UnitNATO_AH1_CP","UnitIND_TH2_P","UnitIND_TH2_CP","UnitIND_TH3_P","UnitIND_TH3_CP","UnitIND_TH4_P","UnitIND_TH4_CP","UnitOPFOR_TH2_P","UnitOPFOR_TH2_CP","UnitOPFOR_TH3_P","UnitOPFOR_TH3_CP","UnitOPFOR_TH4_P","UnitOPFOR_TH4_CP","UnitOPFOR_TH5_P","UnitOPFOR_TH5_CP","UnitOPFOR_TH6_P","UnitOPFOR_TH6_CP","UnitOPFOR_TH7_P","UnitOPFOR_TH7_CP","UnitOPFOR_TH8_P","UnitOPFOR_TH8_CP","UnitOPFOR_IFV1_C","UnitOPFOR_IFV1_G","UnitOPFOR_IFV1_D","UnitOPFOR_IFV2_C","UnitOPFOR_IFV2_G","UnitOPFOR_IFV2_D","UnitOPFOR_IFV3_C","UnitOPFOR_IFV3_G","UnitOPFOR_IFV3_D","UnitOPFOR_IFV4_C","UnitOPFOR_IFV4_G","UnitOPFOR_IFV4_D","UnitOPFOR_IFV5_C","UnitOPFOR_IFV5_G","UnitOPFOR_IFV5_D","UnitOPFOR_IFV6_C","UnitOPFOR_IFV6_G","UnitOPFOR_IFV6_D","UnitOPFOR_IFV7_C","UnitOPFOR_IFV7_G","UnitOPFOR_IFV7_D","UnitOPFOR_IFV8_C","UnitOPFOR_IFV8_G","UnitOPFOR_IFV8_D","UnitOPFOR_TNK1_C","UnitOPFOR_TNK1_G","UnitOPFOR_TNK1_D","UnitOPFOR_AH1_P","UnitOPFOR_AH1_CP","UnitIND_IFV1_C","UnitIND_IFV1_G","UnitIND_IFV1_D","UnitIND_IFV2_C","UnitIND_IFV2_G","UnitIND_IFV2_D","UnitIND_IFV3_C","UnitIND_IFV3_G","UnitIND_IFV3_D","UnitIND_IFV4_C","UnitIND_IFV4_G","UnitIND_IFV4_D","UnitIND_IFV5_C","UnitIND_IFV5_G","UnitIND_IFV5_D","UnitIND_IFV6_C","UnitIND_IFV6_G","UnitIND_IFV6_D","UnitIND_IFV7_C","UnitIND_IFV7_G","UnitIND_IFV7_D","UnitIND_IFV8_C","UnitIND_IFV8_G","UnitIND_IFV8_D","UnitIND_TNK1_C","UnitIND_TNK1_G","UnitIND_TNK1_D","UnitIND_AH1_P","UnitIND_AH1_CP","UnitFIA_CO","UnitFIA_CO_M","UnitFIA_CO_UAV","UnitFIA_CO_D","UnitFIA_DC","UnitFIA_DC_M","UnitFIA_DC_UAV","UnitFIA_DC_D","UnitFIA_ASL_SL","UnitFIA_ASL_M","UnitFIA_A1_FTL","UnitFIA_A1_AR","UnitFIA_A1_AAR","UnitFIA_A1_AT","UnitFIA_A2_FTL","UnitFIA_A2_AR","UnitFIA_A2_AAR","UnitFIA_A2_AT","UnitFIA_A3_FTL","UnitFIA_A3_AR","UnitFIA_A3_AAR","UnitFIA_A3_AT","UnitFIA_BSL_SL","UnitFIA_BSL_M","UnitFIA_B1_FTL","UnitFIA_B1_AR","UnitFIA_B1_AAR","UnitFIA_B1_AT","UnitFIA_B2_FTL","UnitFIA_B2_AR","UnitFIA_B2_AAR","UnitFIA_B2_AT","UnitFIA_B3_FTL","UnitFIA_B3_AR","UnitFIA_B3_AAR","UnitFIA_B3_AT","UnitFIA_CSL_SL","UnitFIA_CSL_M","UnitFIA_C1_FTL","UnitFIA_C1_AR","UnitFIA_C1_AAR","UnitFIA_C1_AT","UnitFIA_C2_FTL","UnitFIA_C2_AR","UnitFIA_C2_AAR","UnitFIA_C2_AT","UnitFIA_C3_FTL","UnitFIA_C3_AR","UnitFIA_C3_AAR","UnitFIA_C3_AT","UnitFIA_HMG1_FTL","UnitFIA_HMG1_G","UnitFIA_HMG1_AG","UnitFIA_MMG1_FTL","UnitFIA_MMG1_G","UnitFIA_MMG1_AG","UnitFIA_MAT1_FTL","UnitFIA_MAT1_G","UnitFIA_MAT1_AG","UnitFIA_HAT1_FTL","UnitFIA_HAT1_G","UnitFIA_HAT1_AG","UnitFIA_ENG1_FTL","UnitFIA_ENG1_A1","UnitFIA_ENG1_A2","UnitFIA_ENG1_A3","UnitNATO_MTR1_FTL","UnitNATO_MTR1_G","UnitNATO_MTR1_AG","UnitNATO_MSAM1_FTL","UnitNATO_MSAM1_G","UnitNATO_MSAM1_AG","UnitNATO_ST1_SP","UnitNATO_ST1_SN","UnitNATO_WSL_SL","UnitNATO_WSL_M","UnitIND_MTR1_FTL","UnitIND_MTR1_G","UnitIND_MTR1_AG","UnitIND_MSAM1_FTL","UnitIND_MSAM1_G","UnitIND_MSAM1_AG","UnitIND_ST1_SP","UnitIND_ST1_SN","UnitIND_WSL_SL","UnitIND_WSL_M","UnitIND_MMG1_FTL","UnitIND_MMG1_G","UnitIND_MMG1_AG","UnitIND_MAT1_G","UnitIND_MAT1_AG","UnitIND_HMG1_FTL","UnitIND_HMG1_G","UnitIND_HMG1_AG","UnitIND_HAT1_G","UnitIND_HAT1_AG","UnitOPFOR_MTR1_FTL","UnitOPFOR_MTR1_G","UnitOPFOR_MTR1_AG","UnitOPFOR_MSAM1_FTL","UnitOPFOR_MSAM1_G","UnitOPFOR_MSAM1_AG","UnitOPFOR_ST1_SP","UnitOPFOR_ST1_SN","UnitOPFOR_WSL_SL","UnitOPFOR_WSL_M","UnitOPFOR_MMG1_FTL","UnitOPFOR_MMG1_G","UnitOPFOR_MMG1_AG","UnitOPFOR_MAT1_G","UnitOPFOR_MAT1_AG","UnitOPFOR_HMG1_FTL","UnitOPFOR_HMG1_G","UnitOPFOR_HMG1_AG","UnitOPFOR_HAT1_G","UnitOPFOR_HAT1_AG"];

		{
			if (!((vehicleVarName _x) in DAC_STRPlayers)) then { DAC_STRPlayers pushBack (vehicleVarName _x); };
		} forEach playableUnits;

	};
	if(isNil "DAC_AI_Count_Level")	then {		DAC_AI_Count_Level  = [[2,4],[3,6],[4,8],[6,12],[1,0]]			};
	if(isNil "DAC_Dyn_Weather") 	then {		DAC_Dyn_Weather		= [0,0,0,[0, 0, 0],0]						};
	if(isNil "DAC_Reduce_Value") 	then {		DAC_Reduce_Value	= [800,850,0]								};
	if(isNil "DAC_AI_Spawn") 		then {		DAC_AI_Spawn		= [[10,5,5],[10,5,15],0,120,250,1]			};
	if(isNil "DAC_Delete_Value") 	then {		DAC_Delete_Value	= [[180,150],[180,150],0,360,100,0]				};
	if(isNil "DAC_Del_PlayerBody") 	then {		DAC_Del_PlayerBody	= [0,0]										};
	if(isNil "DAC_Com_Values") 		then {		DAC_Com_Values		= [1,2,0,0]									};
	if(isNil "DAC_AI_AddOn") 		then {		DAC_AI_AddOn		= 1											};
	if(isNil "DAC_AI_Level") 		then {		DAC_AI_Level		= 3											};
	if(isNil "DAC_Res_Side") 		then {		DAC_Res_Side		= 2											};
	if(isNil "DAC_Marker") 			then {		DAC_Marker			= 0											};
	if(isNil "DAC_WP_Speed") 		then {		DAC_WP_Speed		= 0.01										};
	if(isNil "DAC_Join_Action")		then {		DAC_Join_Action		= false										};
	if(isNil "DAC_Fast_Init") 		then {		DAC_Fast_Init		= false										};
	if(isNil "DAC_Player_Marker")	then {		DAC_Player_Marker	= false										};
	if(isNil "DAC_Direct_Start")	then {		DAC_Direct_Start	= false										};
	if(isNil "DAC_Activate_Sound")	then {		DAC_Activate_Sound	= false										};
	if(isNil "DAC_Auto_UnitCount")	then {		DAC_Auto_UnitCount	= [8,10]									};
	if(isNil "DAC_Player_Support")	then {		DAC_Player_Support	= [10,[4,2000,3,1000]]						};
	if(isNil "DAC_SaveDistance")	then {		DAC_SaveDistance	= [500,["DAC_Save_Pos"]]					};
	if(isNil "DAC_Radio_Max")		then {		DAC_Radio_Max		= DAC_AI_Level								};

	DAC_BadBuildings 	= 	[];
	DAC_GunNotAllowed	= 	[];
	DAC_VehNotAllowed	= 	[];
	DAC_Locked_Veh		=	[];
	DAC_SP_Soldiers     =   ["B_soldier_AR_F","B_G_soldier_AR_F","O_soldier_AR_F","O_soldierU_AR_F","O_G_soldier_AR_F","I_soldier_AR_F","I_G_soldier_AR_F","SAA_AutomaticRifleman","QUD_AutomaticRifleman","GME_AutomaticRifleman","DRI_AutomaticRifleman"];
	DAC_Data_Array 		= 	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,[]];
	DAC_Marker_Val		= 	[];
	DAC_Zones			=	[];
	//=============================================================================================================|

	_scr = [] spawn (compile preprocessFile "\DAC_Source\Scripts\DAC_Start_Creator.sqf");
	waituntil {scriptdone _scr};
	sleep 0.1;
	waituntil {(DAC_Basic_Value > 0)};

if(DAC_Code < 2) then
{
	//===========================================|
	// StartScriptOnServer                       |
	//===========================================|
	//player sidechat "ServerStart"
	//[] execVM "myServerScript.sqf";
	//onMapSingleClick "_fun = [_pos,_shift]execVM ""Action.sqf""";
}
else
{
	if(DAC_Code == 3) then
	{
		//===========================================|
		// StartScriptOnJipClient                    |
		//===========================================|
		//player sidechat "JipClientStart"
		//[] execVM "myJipClientScript.sqf";
	}
	else
	{
		//===========================================|
		// StartScriptOnClient                       |
		//===========================================|
		//player sidechat "ClientStart"
		//[] execVM "myClientScript.sqf";
		//onMapSingleClick "_fun = [_pos,_shift]execVM ""Action.sqf""";
	};
};
