// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction
if(count _this == 0) then
{
	_unitfaction = toLower (faction player);

	// If the unitfaction is different from the 	group leader's faction, the latters faction is used
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
}
else
{
	_unitfaction = (_this select 0);
};
// ====================================================================================
switch (_unitfaction) do
{
// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO slots.

	case "blu_f":
	{
		["GrpNATO_PLTHQ", 0, "PLT. HQ", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpNATO_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_APC1",  8, "APC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_APC2",  8, "APC2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_APC3",  8, "APC3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_APC4",  8, "APC4", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_TNK1",  9, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_TH1",  10, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH2",  10, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH3",  10, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH4",  10, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH5",  10, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH6",  10, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH7",  10, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TH8",  10, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpNATO_AH1",  10, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		
		["GrpNATO_FW1",  11, "FW1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		
		["UnitNATO_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > CSAT
// Markers seen by players in CSAT slots.

	case "opf_f":
	{
		["GrpCSAT_PLTHQ", 0, "PLT. HQ", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_APC1",  8, "APC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_APC2",  8, "APC2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_APC3",  8, "APC3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_APC4",  8, "APC4", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_TNK1",  9, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_TH1",  10, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH2",  10, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH3",  10, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH4",  10, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH5",  10, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH6",  10, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH7",  10, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TH8",  10, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_AH1",  10, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		
		["GrpCSAT_FW1",  11, "FW1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		
		["UnitCSAT_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;		
	};

// ====================================================================================

// MARKERS: INDEPEDENT > AAF
// Markers seen by players in AAF slots.

	case "ind_f":
	{
		["GrpAAF_PLTHQ", 0, "PLT. HQ", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpAAF_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpAAF_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_APC1",  8, "APC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_APC2",  8, "APC2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_APC3",  8, "APC3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_APC4",  8, "APC4", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_TNK1",  9, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_TH1",  10, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH2",  10, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH3",  10, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH4",  10, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH5",  10, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH6",  10, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH7",  10, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH8",  10, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpAAF_AH1",  10, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		
		["GrpAAF_FW1",  11, "FW1", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["UnitAAF_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;		
	};
	
};

// ====================================================================================
