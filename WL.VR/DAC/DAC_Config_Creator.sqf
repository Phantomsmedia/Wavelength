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
		DAC_STRPlayers = ["UnitOPFOR_PLT","UnitOPFOR_PSG","UnitOPFOR_PLT_R1","UnitOPFOR_PLT_M","UnitOPFOR_PLT_FO","UnitOPFOR_PLT_R2","UnitOPFOR_ASL_SL","UnitOPFOR_ASL_M","UnitOPFOR_A1_FTL","UnitOPFOR_A1_R","UnitOPFOR_A1_AT2","UnitOPFOR_A1_AT","UnitOPFOR_A1_AR","UnitOPFOR_A1_AAR","UnitOPFOR_A2_FTL","UnitOPFOR_A2_R","UnitOPFOR_A2_AT2","UnitOPFOR_A2_AT","UnitOPFOR_A2_AR","UnitOPFOR_A2_AAR","UnitOPFOR_BSL_SL","UnitOPFOR_BSL_M","UnitOPFOR_B1_FTL","UnitOPFOR_B1_R","UnitOPFOR_B1_AT2","UnitOPFOR_B1_AT","UnitOPFOR_B1_AR","UnitOPFOR_B1_AAR","UnitOPFOR_B2_FTL","UnitOPFOR_B2_R","UnitOPFOR_B2_AT2","UnitOPFOR_B2_AT","UnitOPFOR_B2_AR","UnitOPFOR_B2_AAR","UnitOPFOR_CSL_SL","UnitOPFOR_CSL_M","UnitOPFOR_C1_FTL","UnitOPFOR_C1_R","UnitOPFOR_C1_AT2","UnitOPFOR_C1_AT","UnitOPFOR_C1_AR","UnitOPFOR_C1_AAR","UnitOPFOR_C2_FTL","UnitOPFOR_C2_R","UnitOPFOR_C2_AT2","UnitOPFOR_C2_AT","UnitOPFOR_C2_AR","UnitOPFOR_C2_AAR","UnitOPFOR_TH1_P","UnitOPFOR_TH1_CP","UnitOPFOR_TH1_G1","UnitOPFOR_TH1_G2","UnitOPFOR_TH2_P","UnitOPFOR_TH2_CP","UnitOPFOR_TH2_G1","UnitOPFOR_TH2_G2","UnitOPFOR_TH3_P","UnitOPFOR_TH3_CP","UnitOPFOR_TH3_G1","UnitOPFOR_TH3_G2","UnitOPFOR_TH4_P","UnitOPFOR_TH4_CP","UnitOPFOR_TH4_G1","UnitOPFOR_TH4_G2","UnitOPFOR_TH5_P","UnitOPFOR_TH5_CP","UnitOPFOR_TH5_G1","UnitOPFOR_TH5_G2","UnitOPFOR_TH6_P","UnitOPFOR_TH6_CP","UnitOPFOR_TH6_G1","UnitOPFOR_TH6_G2","UnitOPFOR_TH7_P","UnitOPFOR_TH7_CP","UnitOPFOR_TH7_G1","UnitOPFOR_TH7_G2","UnitOPFOR_TH8_P","UnitOPFOR_TH8_CP","UnitOPFOR_TH8_G1","UnitOPFOR_TH8_G2","UnitOPFOR_AH1_P","UnitOPFOR_AH1_CP","UnitOPFOR_FW1_P","UnitOPFOR_IFV1_C","UnitOPFOR_IFV1_G","UnitOPFOR_IFV1_D","UnitOPFOR_IFV2_C","UnitOPFOR_IFV2_G","UnitOPFOR_IFV2_D","UnitOPFOR_IFV3_C","UnitOPFOR_IFV3_G","UnitOPFOR_IFV3_D","UnitOPFOR_IFV4_C","UnitOPFOR_IFV4_G","UnitOPFOR_IFV4_D","UnitOPFOR_APC1_C","UnitOPFOR_APC1_G","UnitOPFOR_APC1_D","UnitOPFOR_APC2_C","UnitOPFOR_APC2_G","UnitOPFOR_APC2_D","UnitOPFOR_APC3_C","UnitOPFOR_APC3_G","UnitOPFOR_APC3_D","UnitOPFOR_APC4_C","UnitOPFOR_APC4_G","UnitOPFOR_APC4_D","UnitOPFOR_TNK1_C","UnitOPFOR_TNK1_G","UnitOPFOR_TNK1_D","UnitOPFOR_MMG1_AG","UnitOPFOR_MMG1_G","UnitOPFOR_HMG1_AG","UnitOPFOR_HMG1_G","UnitOPFOR_MAT1_AG","UnitOPFOR_MAT1_G","UnitOPFOR_HAT1_AG","UnitOPFOR_HAT1_G","UnitOPFOR_MTR1_AG","UnitOPFOR_MTR1_G","UnitOPFOR_MSAM1_AG","UnitOPFOR_MSAM1_G","UnitOPFOR_HSAM1_AG","UnitOPFOR_HSAM1_G","UnitOPFOR_ST1_SP","UnitOPFOR_ST1_SN","UnitOPFOR_ENG1_FTL","UnitOPFOR_ENG1_A1","UnitOPFOR_ENG1_A2","UnitOPFOR_ENG1_A3","UnitOPFOR_DT1_TL","UnitOPFOR_DT1_D1","UnitOPFOR_DT1_D2","UnitOPFOR_DT1_D3","UnitNATO_PLT","UnitNATO_PSG","UnitNATO_PLT_R1","UnitNATO_PLT_M","UnitNATO_PLT_FO","UnitNATO_PLT_R2","UnitNATO_ASL_SL","UnitNATO_ASL_M","UnitNATO_A1_FTL","UnitNATO_A1_R","UnitNATO_A1_AT","UnitNATO_A1_AR","UnitNATO_A1_AAR","UnitNATO_A1_AT2","UnitNATO_A2_FTL","UnitNATO_A2_R","UnitNATO_A2_AT","UnitNATO_A2_AR","UnitNATO_A2_AAR","UnitNATO_A2_AT2","UnitNATO_BSL_SL","UnitNATO_BSL_M","UnitNATO_B1_FTL","UnitNATO_B1_R","UnitNATO_B1_AT","UnitNATO_B1_AR","UnitNATO_B1_AAR","UnitNATO_B1_AT2","UnitNATO_B2_FTL","UnitNATO_B2_R","UnitNATO_B2_AT","UnitNATO_B2_AR","UnitNATO_B2_AAR","UnitNATO_B2_AT2","UnitNATO_CSL_SL","UnitNATO_CSL_M","UnitNATO_C1_FTL","UnitNATO_C1_R","UnitNATO_C1_AT","UnitNATO_C1_AR","UnitNATO_C1_AAR","UnitNATO_C1_AT2","UnitNATO_C2_FTL","UnitNATO_C2_R","UnitNATO_C2_AT","UnitNATO_C2_AR","UnitNATO_C2_AAR","UnitNATO_C2_AT2","UnitNATO_TH1_P","UnitNATO_TH1_CP","UnitNATO_TH1_G1","UnitNATO_TH1_G2","UnitNATO_TH2_P","UnitNATO_TH2_CP","UnitNATO_TH2_G1","UnitNATO_TH2_G2","UnitNATO_TH3_P","UnitNATO_TH3_CP","UnitNATO_TH3_G1","UnitNATO_TH3_G2","UnitNATO_TH4_P","UnitNATO_TH4_CP","UnitNATO_TH4_G1","UnitNATO_TH4_G2","UnitNATO_TH5_P","UnitNATO_TH5_CP","UnitNATO_TH5_G1","UnitNATO_TH5_G2","UnitNATO_TH6_P","UnitNATO_TH6_CP","UnitNATO_TH6_G1","UnitNATO_TH6_G2","UnitNATO_TH7_P","UnitNATO_TH7_CP","UnitNATO_TH7_G1","UnitNATO_TH7_G2","UnitNATO_TH8_P","UnitNATO_TH8_CP","UnitNATO_TH8_G1","UnitNATO_TH8_G2","UnitNATO_AH1_P","UnitNATO_AH1_CP","UnitNATO_FW1_P","UnitNATO_IFV1_C","UnitNATO_IFV1_G","UnitNATO_IFV1_D","UnitNATO_IFV2_C","UnitNATO_IFV2_G","UnitNATO_IFV2_D","UnitNATO_IFV3_C","UnitNATO_IFV3_G","UnitNATO_IFV3_D","UnitNATO_IFV4_C","UnitNATO_IFV4_G","UnitNATO_IFV4_D","UnitNATO_APC1_C","UnitNATO_APC1_G","UnitNATO_APC1_D","UnitNATO_APC2_C","UnitNATO_APC2_G","UnitNATO_APC2_D","UnitNATO_APC3_C","UnitNATO_APC3_G","UnitNATO_APC3_D","UnitNATO_APC4_C","UnitNATO_APC4_G","UnitNATO_APC4_D","UnitNATO_TNK1_C","UnitNATO_TNK1_G","UnitNATO_TNK1_D","UnitNATO_MMG1_AG","UnitNATO_MMG1_G","UnitNATO_HMG1_AG","UnitNATO_HMG1_G","UnitNATO_MAT1_AG","UnitNATO_MAT1_G","UnitNATO_HAT1_AG","UnitNATO_HAT1_G","UnitNATO_MTR1_AG","UnitNATO_MTR1_G","UnitNATO_MSAM1_AG","UnitNATO_MSAM1_G","UnitNATO_HSAM1_AG","UnitNATO_HSAM1_G","UnitNATO_ST1_SP","UnitNATO_ST1_SN","UnitNATO_ENG1_FTL","UnitNATO_ENG1_A1","UnitNATO_ENG1_A2","UnitNATO_ENG1_A3","UnitNATO_DT1_TL","UnitNATO_DT1_D1","UnitNATO_DT1_D2","UnitNATO_DT1_D3","UnitIND_PLT","UnitIND_PSG","UnitIND_PLT_R1","UnitIND_PLT_FO","UnitIND_PLT_R2","UnitIND_PLT_M","UnitIND_ASL_SL","UnitIND_ASL_M","UnitIND_A1_FTL","UnitIND_A1_R","UnitIND_A1_AT","UnitIND_A1_AR","UnitIND_A1_AAR","UnitIND_A1_AT2","UnitIND_A2_FTL","UnitIND_A2_R","UnitIND_A2_AT","UnitIND_A2_AR","UnitIND_A2_AAR","UnitIND_A2_AT2","UnitIND_BSL_SL","UnitIND_BSL_M","UnitIND_B1_FTL","UnitIND_B1_R","UnitIND_B1_AT","UnitIND_B1_AR","UnitIND_B1_AAR","UnitIND_B1_AT2","UnitIND_B2_FTL","UnitIND_B2_R","UnitIND_B2_AT","UnitIND_B2_AR","UnitIND_B2_AAR","UnitIND_B2_AT2","UnitIND_CSL_SL","UnitIND_CSL_M","UnitIND_C1_FTL","UnitIND_C1_R","UnitIND_C1_AT","UnitIND_C1_AR","UnitIND_C1_AAR","UnitIND_C1_AT2","UnitIND_C2_FTL","UnitIND_C2_R","UnitIND_C2_AT","UnitIND_C2_AR","UnitIND_C2_AAR","UnitIND_C2_AT2","UnitIND_TH1_P","UnitIND_TH1_CP","UnitIND_TH1_G1","UnitIND_TH1_G2","UnitIND_TH2_P","UnitIND_TH2_CP","UnitIND_TH2_G1","UnitIND_TH2_G2","UnitIND_TH3_P","UnitIND_TH3_CP","UnitIND_TH3_G1","UnitIND_TH3_G2","UnitIND_TH4_P","UnitIND_TH4_CP","UnitIND_TH4_G1","UnitIND_TH4_G2","UnitIND_TH5_P","UnitIND_TH5_CP","UnitIND_TH5_G1","UnitIND_TH5_G2","UnitIND_TH6_P","UnitIND_TH6_CP","UnitIND_TH6_G1","UnitIND_TH6_G2","UnitIND_TH7_P","UnitIND_TH7_CP","UnitIND_TH7_G1","UnitIND_TH7_G2","UnitIND_TH8_P","UnitIND_TH8_CP","UnitIND_TH8_G1","UnitIND_TH8_G2","UnitIND_AH1_P","UnitIND_AH1_CP","UnitIND_FW1_P","UnitIND_IFV1_C","UnitIND_IFV1_G","UnitIND_IFV1_D","UnitIND_IFV2_C","UnitIND_IFV2_G","UnitIND_IFV2_D","UnitIND_IFV3_C","UnitIND_IFV3_G","UnitIND_IFV3_D","UnitIND_IFV4_C","UnitIND_IFV4_G","UnitIND_IFV4_D","UnitIND_APC1_C","UnitIND_APC1_G","UnitIND_APC1_D","UnitIND_APC2_C","UnitIND_APC2_G","UnitIND_APC2_D","UnitIND_APC3_C","UnitIND_APC3_G","UnitIND_APC3_D","UnitIND_APC4_C","UnitIND_APC4_G","UnitIND_APC4_D","UnitIND_TNK1_C","UnitIND_TNK1_G","UnitIND_TNK1_D","UnitIND_MMG1_AG","UnitIND_MMG1_G","UnitIND_HMG1_AG","UnitIND_HMG1_G","UnitIND_MAT1_AG","UnitIND_MAT1_G","UnitIND_HAT1_AG","UnitIND_HAT1_G","UnitIND_MTR1_AG","UnitIND_MTR1_G","UnitIND_MSAM1_AG","UnitIND_MSAM1_G","UnitIND_HSAM1_AG","UnitIND_HSAM1_G","UnitIND_ST1_SP","UnitIND_ST1_SN","UnitIND_ENG1_FTL","UnitIND_ENG1_A1","UnitIND_ENG1_A2","UnitIND_ENG1_A3","UnitIND_DT1_TL","UnitIND_DT1_D1","UnitIND_DT1_D2","UnitIND_DT1_D3"];

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
