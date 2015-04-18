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

	if(isNil "DAC_STRPlayers")		then {		DAC_STRPlayers		= ["s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","UnitBLUFOR_CO","UnitBLUFOR_CO_M","UnitBLUFOR_CO_UAV","UnitBLUFOR_CO_D","UnitBLUFOR_DC","UnitBLUFOR_DC_M","UnitBLUFOR_DC_UAV","UnitBLUFOR_DC_D","UnitBLUFOR_ASL_SL","UnitBLUFOR_ASL_M","UnitBLUFOR_A1_FTL","UnitBLUFOR_A1_AR","UnitBLUFOR_A1_AAR","UnitBLUFOR_A1_AT","UnitBLUFOR_A2_FTL","UnitBLUFOR_A2_AR","UnitBLUFOR_A2_AAR","UnitBLUFOR_A2_AT","UnitBLUFOR_A3_FTL","UnitBLUFOR_A3_AR","UnitBLUFOR_A3_AAR","UnitBLUFOR_A3_AT","UnitBLUFOR_BSL_SL","UnitBLUFOR_BSL_M","UnitBLUFOR_B1_FTL","UnitBLUFOR_B1_AR","UnitBLUFOR_B1_AAR","UnitBLUFOR_B1_AT","UnitBLUFOR_B2_FTL","UnitBLUFOR_B2_AR","UnitBLUFOR_B2_AAR","UnitBLUFOR_B2_AT","UnitBLUFOR_B3_FTL","UnitBLUFOR_B3_AR","UnitBLUFOR_B3_AAR","UnitBLUFOR_B3_AT","UnitBLUFOR_CSL_SL","UnitBLUFOR_CSL_M","UnitBLUFOR_C1_FTL","UnitBLUFOR_C1_AR","UnitBLUFOR_C1_AAR","UnitBLUFOR_C1_AT","UnitBLUFOR_C2_FTL","UnitBLUFOR_C2_AR","UnitBLUFOR_C2_AAR","UnitBLUFOR_C2_AT","UnitBLUFOR_C3_FTL","UnitBLUFOR_C3_AR","UnitBLUFOR_C3_AAR","UnitBLUFOR_C3_AT","UnitOPFOR_CO","UnitOPFOR_CO_M","UnitOPFOR_CO_UAV","UnitOPFOR_CO_D","UnitOPFOR_DC","UnitOPFOR_DC_M","UnitOPFOR_DC_UAV","UnitOPFOR_DC_D","UnitOPFOR_ASL_SL","UnitOPFOR_ASL_M","UnitOPFOR_A1_FTL","UnitOPFOR_A1_AR","UnitOPFOR_A1_AAR","UnitOPFOR_A1_AT","UnitOPFOR_A2_FTL","UnitOPFOR_A2_AR","UnitOPFOR_A2_AAR","UnitOPFOR_A2_AT","UnitOPFOR_A3_FTL","UnitOPFOR_A3_AR","UnitOPFOR_A3_AAR","UnitOPFOR_A3_AT","UnitOPFOR_BSL_SL","UnitOPFOR_BSL_M","UnitOPFOR_B1_FTL","UnitOPFOR_B1_AR","UnitOPFOR_B1_AAR","UnitOPFOR_B1_AT","UnitOPFOR_B2_FTL","UnitOPFOR_B2_AR","UnitOPFOR_B2_AAR","UnitOPFOR_B2_AT","UnitOPFOR_B3_FTL","UnitOPFOR_B3_AR","UnitOPFOR_B3_AAR","UnitOPFOR_B3_AT","UnitOPFOR_CSL_SL","UnitOPFOR_CSL_M","UnitOPFOR_C1_FTL","UnitOPFOR_C1_AR","UnitOPFOR_C1_AAR","UnitOPFOR_C1_AT","UnitOPFOR_C2_FTL","UnitOPFOR_C2_AR","UnitOPFOR_C2_AAR","UnitOPFOR_C2_AT","UnitOPFOR_C3_FTL","UnitOPFOR_C3_AR","UnitOPFOR_C3_AAR","UnitOPFOR_C3_AT","UnitBLUFOR_MMG1_FTL","UnitBLUFOR_MMG1_G","UnitBLUFOR_MMG1_AG","UnitBLUFOR_MAT1_G","UnitBLUFOR_MAT1_AG","UnitBLUFOR_HMG1_FTL","UnitBLUFOR_HMG1_G","UnitBLUFOR_HMG1_AG","UnitBLUFOR_HAT1_G","UnitBLUFOR_HAT1_AG","UnitBLUFOR_ENG1_FTL","UnitBLUFOR_ENG1_A1","UnitBLUFOR_ENG1_A2","UnitBLUFOR_ENG1_A3","UnitBLUFOR_DT1_TL","UnitBLUFOR_DT1_D1","UnitBLUFOR_DT1_D2","UnitBLUFOR_DT1_D3","UnitBLUFOR_TH1_P","UnitBLUFOR_TH1_CP","UnitBLUFOR_TH1_G1","UnitBLUFOR_TH1_G2","UnitOPFOR_MMG1_G","UnitOPFOR_MMG1_AG","UnitOPFOR_MAT1_G","UnitOPFOR_MAT1_AG","UnitOPFOR_ENG1_FTL","UnitOPFOR_ENG1_A1","UnitOPFOR_ENG1_A2","UnitOPFOR_ENG1_A3","UnitOPFOR_DT1_TL","UnitOPFOR_DT1_D1","UnitOPFOR_DT1_D2","UnitOPFOR_DT1_D3","UnitOPFOR_TH1_P","UnitOPFOR_TH1_CP","UnitINDFOR_CO","UnitINDFOR_CO_M","UnitINDFOR_CO_UAV","UnitINDFOR_CO_D","UnitINDFOR_DC","UnitINDFOR_DC_M","UnitINDFOR_DC_UAV","UnitINDFOR_DC_D","UnitINDFOR_ASL_SL","UnitINDFOR_ASL_M","UnitINDFOR_A1_FTL","UnitINDFOR_A1_AR","UnitINDFOR_A1_AAR","UnitINDFOR_A1_AT","UnitINDFOR_A2_FTL","UnitINDFOR_A2_AR","UnitINDFOR_A2_AAR","UnitINDFOR_A2_AT","UnitINDFOR_A3_FTL","UnitINDFOR_A3_AR","UnitINDFOR_A3_AAR","UnitINDFOR_A3_AT","UnitINDFOR_BSL_SL","UnitINDFOR_BSL_M","UnitINDFOR_B1_FTL","UnitINDFOR_B1_AR","UnitINDFOR_B1_AAR","UnitINDFOR_B1_AT","UnitINDFOR_B2_FTL","UnitINDFOR_B2_AR","UnitINDFOR_B2_AAR","UnitINDFOR_B2_AT","UnitINDFOR_B3_FTL","UnitINDFOR_B3_AR","UnitINDFOR_B3_AAR","UnitINDFOR_B3_AT","UnitINDFOR_CSL_SL","UnitINDFOR_CSL_M","UnitINDFOR_C1_FTL","UnitINDFOR_C1_AR","UnitINDFOR_C1_AAR","UnitINDFOR_C1_AT","UnitINDFOR_C2_FTL","UnitINDFOR_C2_AR","UnitINDFOR_C2_AAR","UnitINDFOR_C2_AT","UnitINDFOR_C3_FTL","UnitINDFOR_C3_AR","UnitINDFOR_C3_AAR","UnitINDFOR_C3_AT","UnitINDFOR_MMG1_G","UnitINDFOR_MMG1_AG","UnitINDFOR_MAT1_G","UnitINDFOR_MAT1_AG","UnitINDFOR_ENG1_FTL","UnitINDFOR_ENG1_A1","UnitINDFOR_ENG1_A2","UnitINDFOR_ENG1_A3","UnitINDFOR_DT1_TL","UnitINDFOR_DT1_D1","UnitINDFOR_DT1_D2","UnitINDFOR_DT1_D3","UnitINDFOR_TH1_P","UnitINDFOR_TH1_CP","UnitBLUFOR_TH2_P","UnitBLUFOR_TH2_CP","UnitBLUFOR_TH2_G1","UnitBLUFOR_TH2_G2","UnitBLUFOR_TH3_P","UnitBLUFOR_TH3_CP","UnitBLUFOR_TH3_G1","UnitBLUFOR_TH3_G2","UnitBLUFOR_TH4_P","UnitBLUFOR_TH4_CP","UnitBLUFOR_TH4_G1","UnitBLUFOR_TH4_G2","UnitBLUFOR_TH5_P","UnitBLUFOR_TH5_CP","UnitBLUFOR_TH5_G1","UnitBLUFOR_TH5_G2","UnitBLUFOR_TH6_P","UnitBLUFOR_TH6_CP","UnitBLUFOR_TH6_G1","UnitBLUFOR_TH6_G2","UnitBLUFOR_TH7_P","UnitBLUFOR_TH7_CP","UnitBLUFOR_TH7_G1","UnitBLUFOR_TH7_G2","UnitBLUFOR_TH8_P","UnitBLUFOR_TH8_CP","UnitBLUFOR_TH8_G1","UnitBLUFOR_TH8_G2","UnitBLUFOR_IFV1_C","UnitBLUFOR_IFV1_G","UnitBLUFOR_IFV1_D","UnitBLUFOR_IFV2_C","UnitBLUFOR_IFV2_G","UnitBLUFOR_IFV2_D","UnitBLUFOR_IFV3_C","UnitBLUFOR_IFV3_G","UnitBLUFOR_IFV3_D","UnitBLUFOR_IFV4_C","UnitBLUFOR_IFV4_G","UnitBLUFOR_IFV4_D","UnitBLUFOR_IFV5_C","UnitBLUFOR_IFV5_G","UnitBLUFOR_IFV5_D","UnitBLUFOR_IFV6_C","UnitBLUFOR_IFV6_G","UnitBLUFOR_IFV6_D","UnitBLUFOR_IFV7_C","UnitBLUFOR_IFV7_G","UnitBLUFOR_IFV7_D","UnitBLUFOR_IFV8_C","UnitBLUFOR_IFV8_G","UnitBLUFOR_IFV8_D","UnitBLUFOR_TNK1_C","UnitBLUFOR_TNK1_G","UnitBLUFOR_TNK1_D","UnitBLUFOR_AH1_P","UnitBLUFOR_AH1_CP","UnitINDFOR_TH2_P","UnitINDFOR_TH2_CP","UnitINDFOR_TH3_P","UnitINDFOR_TH3_CP","UnitINDFOR_TH4_P","UnitINDFOR_TH4_CP","UnitOPFOR_TH2_P","UnitOPFOR_TH2_CP","UnitOPFOR_TH3_P","UnitOPFOR_TH3_CP","UnitOPFOR_TH4_P","UnitOPFOR_TH4_CP","UnitOPFOR_TH5_P","UnitOPFOR_TH5_CP","UnitOPFOR_TH6_P","UnitOPFOR_TH6_CP","UnitOPFOR_TH7_P","UnitOPFOR_TH7_CP","UnitOPFOR_TH8_P","UnitOPFOR_TH8_CP","UnitOPFOR_IFV1_C","UnitOPFOR_IFV1_G","UnitOPFOR_IFV1_D","UnitOPFOR_IFV2_C","UnitOPFOR_IFV2_G","UnitOPFOR_IFV2_D","UnitOPFOR_IFV3_C","UnitOPFOR_IFV3_G","UnitOPFOR_IFV3_D","UnitOPFOR_IFV4_C","UnitOPFOR_IFV4_G","UnitOPFOR_IFV4_D","UnitOPFOR_IFV5_C","UnitOPFOR_IFV5_G","UnitOPFOR_IFV5_D","UnitOPFOR_IFV6_C","UnitOPFOR_IFV6_G","UnitOPFOR_IFV6_D","UnitOPFOR_IFV7_C","UnitOPFOR_IFV7_G","UnitOPFOR_IFV7_D","UnitOPFOR_IFV8_C","UnitOPFOR_IFV8_G","UnitOPFOR_IFV8_D","UnitOPFOR_TNK1_C","UnitOPFOR_TNK1_G","UnitOPFOR_TNK1_D","UnitOPFOR_AH1_P","UnitOPFOR_AH1_CP","UnitINDFOR_IFV1_C","UnitINDFOR_IFV1_G","UnitINDFOR_IFV1_D","UnitINDFOR_IFV2_C","UnitINDFOR_IFV2_G","UnitINDFOR_IFV2_D","UnitINDFOR_IFV3_C","UnitINDFOR_IFV3_G","UnitINDFOR_IFV3_D","UnitINDFOR_IFV4_C","UnitINDFOR_IFV4_G","UnitINDFOR_IFV4_D","UnitINDFOR_IFV5_C","UnitINDFOR_IFV5_G","UnitINDFOR_IFV5_D","UnitINDFOR_IFV6_C","UnitINDFOR_IFV6_G","UnitINDFOR_IFV6_D","UnitINDFOR_IFV7_C","UnitINDFOR_IFV7_G","UnitINDFOR_IFV7_D","UnitINDFOR_IFV8_C","UnitINDFOR_IFV8_G","UnitINDFOR_IFV8_D","UnitINDFOR_TNK1_C","UnitINDFOR_TNK1_G","UnitINDFOR_TNK1_D","UnitINDFOR_AH1_P","UnitINDFOR_AH1_CP","UnitFIA_CO","UnitFIA_CO_M","UnitFIA_CO_UAV","UnitFIA_CO_D","UnitFIA_DC","UnitFIA_DC_M","UnitFIA_DC_UAV","UnitFIA_DC_D","UnitFIA_ASL_SL","UnitFIA_ASL_M","UnitFIA_A1_FTL","UnitFIA_A1_AR","UnitFIA_A1_AAR","UnitFIA_A1_AT","UnitFIA_A2_FTL","UnitFIA_A2_AR","UnitFIA_A2_AAR","UnitFIA_A2_AT","UnitFIA_A3_FTL","UnitFIA_A3_AR","UnitFIA_A3_AAR","UnitFIA_A3_AT","UnitFIA_BSL_SL","UnitFIA_BSL_M","UnitFIA_B1_FTL","UnitFIA_B1_AR","UnitFIA_B1_AAR","UnitFIA_B1_AT","UnitFIA_B2_FTL","UnitFIA_B2_AR","UnitFIA_B2_AAR","UnitFIA_B2_AT","UnitFIA_B3_FTL","UnitFIA_B3_AR","UnitFIA_B3_AAR","UnitFIA_B3_AT","UnitFIA_CSL_SL","UnitFIA_CSL_M","UnitFIA_C1_FTL","UnitFIA_C1_AR","UnitFIA_C1_AAR","UnitFIA_C1_AT","UnitFIA_C2_FTL","UnitFIA_C2_AR","UnitFIA_C2_AAR","UnitFIA_C2_AT","UnitFIA_C3_FTL","UnitFIA_C3_AR","UnitFIA_C3_AAR","UnitFIA_C3_AT","UnitFIA_HMG1_FTL","UnitFIA_HMG1_G","UnitFIA_HMG1_AG","UnitFIA_MMG1_FTL","UnitFIA_MMG1_G","UnitFIA_MMG1_AG","UnitFIA_MAT1_FTL","UnitFIA_MAT1_G","UnitFIA_MAT1_AG","UnitFIA_HAT1_FTL","UnitFIA_HAT1_G","UnitFIA_HAT1_AG","UnitFIA_ENG1_FTL","UnitFIA_ENG1_A1","UnitFIA_ENG1_A2","UnitFIA_ENG1_A3","UnitBLUFOR_MTR1_FTL","UnitBLUFOR_MTR1_G","UnitBLUFOR_MTR1_AG","UnitBLUFOR_MSAM1_FTL","UnitBLUFOR_MSAM1_G","UnitBLUFOR_MSAM1_AG","UnitBLUFOR_ST1_SP","UnitBLUFOR_ST1_SN","UnitBLUFOR_WSL_SL","UnitBLUFOR_WSL_M","UnitINDFOR_MTR1_FTL","UnitINDFOR_MTR1_G","UnitINDFOR_MTR1_AG","UnitINDFOR_MSAM1_FTL","UnitINDFOR_MSAM1_G","UnitINDFOR_MSAM1_AG","UnitINDFOR_ST1_SP","UnitINDFOR_ST1_SN","UnitINDFOR_WSL_SL","UnitINDFOR_WSL_M","UnitINDFOR_MMG1_FTL","UnitINDFOR_MMG1_G","UnitINDFOR_MMG1_AG","UnitINDFOR_MAT1_G","UnitINDFOR_MAT1_AG","UnitINDFOR_HMG1_FTL","UnitINDFOR_HMG1_G","UnitINDFOR_HMG1_AG","UnitINDFOR_HAT1_G","UnitINDFOR_HAT1_AG","UnitOPFOR_MTR1_FTL","UnitOPFOR_MTR1_G","UnitOPFOR_MTR1_AG","UnitOPFOR_MSAM1_FTL","UnitOPFOR_MSAM1_G","UnitOPFOR_MSAM1_AG","UnitOPFOR_ST1_SP","UnitOPFOR_ST1_SN","UnitOPFOR_WSL_SL","UnitOPFOR_WSL_M","UnitOPFOR_MMG1_FTL","UnitOPFOR_MMG1_G","UnitOPFOR_MMG1_AG","UnitOPFOR_MAT1_G","UnitOPFOR_MAT1_AG","UnitOPFOR_HMG1_FTL","UnitOPFOR_HMG1_G","UnitOPFOR_HMG1_AG","UnitOPFOR_HAT1_G","UnitOPFOR_HAT1_AG"]};
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
	if(isNil "DAC_Marker") 			then {		DAC_Marker			= 2											};
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