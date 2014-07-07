// F2 - Folk Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};

// As PMC units are used as exchange medics and engineers, they are defaulted to the UN markers.
// Change "bis_un" to "bis_tk_gue" when using the TK Local Platoon
//if (_unitfaction == "pmc_baf") then {_unitfaction = "bis_un";};

// ====================================================================================

// PRECOMPILE
// Prevents the next script to be read by the engine everytime it's used:

fnc_folk_localGroupMarker = compile preprocessFile "f\common\folk_localGroupMarker.sqf";
fnc_folk_localSpecialistMarker = compile preprocessFile "f\common\folk_localSpecialistMarker.sqf";

// ====================================================================================
switch (_unitfaction) do
{

// ====================================================================================
// MARKERS: FALKLANDS ERA BRITS
// Markers seen by players in US slots.

	case "I44_B_Army":
	{
		["GrpBAFwo_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAFwo_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAFwo_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpBAFwo_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpBAFwo_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAFwo_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpBAFwo_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFwo_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitBAFwo_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAFwo_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAFwo_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAFwo_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAFwo_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================
// MARKERS: US (VIETNAM)
// Markers seen by players in US slots.

	case "I44_A_Army":
	{
		["GrpVIETNAM_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpVIETNAM_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpVIETNAM_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpVIETNAM_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpVIETNAM_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpVIETNAM_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpVIETNAM_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIETNAM_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitVIETNAM_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitVIETNAM_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitVIETNAM_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitVIETNAM_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitVIETNAM_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: US
// Markers seen by players in US slots.

	case "bis_us":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: USM US ARMY
// Markers seen by players in USM US Army slots.

	case "usm_usarmy":
	{
		["GrpUS_USM_TC2", 0, "TRANS2", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_TC", 0, "TRANS1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_AC", 0, "ATCK", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_USM_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_HAM", 2, "HAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_IFV1",  7, "Wolf1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_IFV2",  7, "Wolf2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		
		["UnitUS_USM_CO_M", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_1", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_1", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_1", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_1", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_2", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_2", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_2", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_2", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_3", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_3", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_3", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_3", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_4", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_4", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_4", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_4", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_5", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_5", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_5", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_5", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_6", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_6", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_6", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_6", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_7", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_7", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_7", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_7", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	case "usm_usmarinecorps":
	{
		["GrpUS_USM_TC2", 0, "TRANS2", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_TC", 0, "TRANS1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_AC", 0, "ATCK", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_USM_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_HAM", 2, "HAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_IFV1",  7, "Wolf1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_USM_IFV2",  7, "Wolf2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		
		["UnitUS_USM_CO_M", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_1", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_1", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_1", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_1", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_2", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_2", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_2", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_2", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_3", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_3", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_3", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_3", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_4", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_4", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_4", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_4", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_5", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_5", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_5", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_5", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_6", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_6", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_6", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_6", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["UnitUS_USM_CO_M_7", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_ASL_M_7", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_USM_BSL_M_7", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_USM_CSL_M_7", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
// ====================================================================================
// MARKERS: PMC (Custom)
// Markers seen by players in PMC slots.

	case "pmc_baf":
	{
		["GrpIND_PMC_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpIND_PMC_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_WHISK", 2, "WSK", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_TH1",  8, "Falcon1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_TH2",  8, "Falcon2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_AH1",  8, "Eagle", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitIND_PMC_CO_M", 0, "COMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitIND_PMC_ASL_M", 0, "AMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitIND_PMC_BSL_M", 0, "BMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitIND_PMC_CSL_M", 0, "CMED", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["GrpIND_PMC_WHISK_MG", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_WHISK_MAT", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpIND_PMC_WHISK_SN", 4, "SNPR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpIND_PMC_WHISK_AA", 3, "AA", "ColorOrange"] spawn fnc_folk_localGroupMarker;
	};
	
// ====================================================================================

// MARKERS: 75th Rangers
// Markers seen by players in PMC slots.

	case "mas_usa_rang":
	{
		["Grp75Range_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["Grp75Range_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["Grp75Range_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["Grp75Range_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["Grp75Range_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["Grp75Range_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["Grp75Range_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		
		["Unit75Range_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["Unit75Range_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["Unit75Range_CO_M_1", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_DC_M_1", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_ASL_M_1", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["Unit75Range_BSL_M_1", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_CSL_M_1", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["Unit75Range_CO_M_2", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_DC_M_2", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_ASL_M_2", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["Unit75Range_BSL_M_2", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_CSL_M_2", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["Unit75Range_CO_M_3", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_DC_M_3", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_ASL_M_3", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["Unit75Range_BSL_M_3", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["Unit75Range_CSL_M_3", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
// ====================================================================================
	
// USMC
// Markers seen by players in USMC slots.
	
	case "usmc":
	{
		["GrpUSMC_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMC_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMC_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMC_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMC_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//DESERT
		
		["GrpUSMCdes_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCdes_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCdes_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCdes_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCdes_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCdes_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCdes_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCdes_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMCdes_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCdes_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCdes_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMCdes_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCdes_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//WINTER
		
		["GrpUSMCwin_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCwin_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCwin_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCwin_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCwin_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCwin_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCwin_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCwin_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMCwin_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCwin_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCwin_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMCwin_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCwin_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// CDF
// Markers seen by players in CDF slots.
	
	case "cdf":
	{
		["GrpCDF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpCDF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpCDF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitCDF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitCDF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//WINTER
		
		["GrpCDFwin_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpCDFwin_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpCDFwin_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpCDFwin_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpCDFwin_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpCDFwin_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpCDFwin_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDFwin_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitCDFwin_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDFwin_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDFwin_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitCDFwin_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDFwin_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//VIETNAM
		
		["GrpVIE_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpVIE_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpVIE_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpVIE_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpVIE_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpVIE_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpVIE_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpVIE_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitVIE_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitVIE_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitVIE_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitVIE_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitVIE_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: TAKISTANI ARMY
// Markers seen by players in TAKISTANI ARMY slots.

	case "bis_tk":
	{
		["GrpTK_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpTK_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpTK_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpTK_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpTK_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpTK_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitTK_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitTK_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================
	
// MARKERS: RUSSIA
// Markers seen by players in RUSSIA slots.
	
	case "ru":
	{
		["GrpRU_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRU_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRU_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRU_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpRU_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRU_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitRU_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitRU_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//DESERT
		
		["GrpRUdes_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRUdes_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRUdes_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpRUdes_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRUdes_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUdes_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitRUdes_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUdes_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUdes_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitRUdes_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUdes_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//WINTER
		
		["GrpRUwin_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRUwin_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRUwin_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpRUwin_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRUwin_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUwin_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitRUwin_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUwin_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUwin_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitRUwin_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUwin_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================



// MARKERS: TAKISTANI MILITIA
// Markers seen by players in TAKISTANI MILITIA slots.

	case "bis_tk_ins":
	{
		["GrpINS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpINS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpINS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpINS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpINS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpINS_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpINS_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpINS_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_AH1",  8, "Lightning1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitINS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitINS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitINS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitINS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitINS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: INSURGENT
// Markers seen by players in INSURGENT (CHDKZ) slots.

	case "ins":
	{
		["GrpA2INS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2INS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2INS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpA2INS_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2INS_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitA2INS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2INS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitA2INS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitA2INS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2INS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
       
// ====================================================================================

// MARKERS: TAKISTANI LOCALS (INDEPENDENT)
// Markers seen by players in TAKISTANI LOCALS (INDEPENDENT) slots.

	case "bis_tk_gue":
	{
		["GrpGUE_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpGUE_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpGUE_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpGUE_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpGUE_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitGUE_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitGUE_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================
	
// MARKERS: GUERILLA (NAPA)
// Markers seen by players in GUERILLA (NAPA) slots.

	case "gue":
	{
		["GrpA2GUE_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2GUE_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2GUE_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUE_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUE_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitA2GUE_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitA2GUE_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//WINTER
		
		["GrpA2GUEWIN_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2GUEWIN_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2GUEWIN_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUEWIN_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUEWIN_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUEWIN_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitA2GUEwin_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUEwin_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUEwin_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitA2GUEwin_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUEwin_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};


// ====================================================================================

// MARKERS: UN
// Markers seen by players in UN slots.

	case "bis_un":
	{
		["GrpUN_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUN_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUN_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUN_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUN_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUN_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUN_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUN_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUN_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUN_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUN_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUN_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUN_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: BRITISH ARMED FORCES
// Markers seen by players in BRITISH ARMED FORCES slots.

	case "bis_baf":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//DESERT
		
		["GrpBAFdes_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAFdes_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAFdes_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAFdes_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAFdes_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpBAFdes_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAFdes_AH1",  8, "Lightning", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitBAFdes_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAFdes_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAFdes_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAFdes_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAFdes_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: CZECH REPUBPLIC
// Markers seen by players in CZECH REPUBPLIC slots.

	case "bis_cz":
	{

	};

// ====================================================================================

// MARKERS: GERMAN
// Markers seen by players in GERMAN slots.

	case "bis_ger":
	{
		["GrpGER_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGER_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGER_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGER_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGER_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpGER_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpGER_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGER_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGER_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGER_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGER_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGER_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGER_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGER_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGER_MMG1", 2, "MMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_MAT1", 3, "MAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_ST1",  4, "ST", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_HMG1",  2, "HMG", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_MTR1",  5, "MTR", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_HAT1",  3, "HAT", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_SAM1",  3, "SAM", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_ENG1",  6, "ENG", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGER_IFV1",  7, "Bison1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGER_IFV2",  7, "Bison2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpGER_IFV3",  7, "Bison3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGER_TNK1",  7, "Thunder", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpGER_TH1",  8, "BigBird1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_TH2",  8, "BigBird2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGER_AH1",  8, "Lightning1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitGER_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGER_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitGER_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitGER_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGER_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: CIVILIAN (TAKISTANI)
// Markers seen by players in CIVILIAN (TAKISTANI) slots.

	case "bis_tk_civ":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (SPECIAL)
// Markers seen by players in CIVILIAN (SPECIAL) slots.

	case "bis_civ_special":
	{

	};
       
// ====================================================================================

};

// ====================================================================================

if (true) exitWith {};