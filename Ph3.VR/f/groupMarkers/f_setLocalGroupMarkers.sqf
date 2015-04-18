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

// MARKERS: BLUFOR
// Markers seen by players in BLUFOR slots.

	case "blu_f":
	{
		["GrpBLUFOR_PL", 0, "PL", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["UnitBLUFOR_PSG", 0, "PSG", "ColorYellow"] spawn f_fnc_localSpecialistMarker;

		["GrpBLUFOR_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpBLUFOR_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpBLUFOR_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpBLUFOR_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpBLUFOR_IFV1",  7, "RAIDER1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_IFV2",  7, "RAIDER2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_IFV3",  7, "RAIDER3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_IFV4",  7, "RAIDER4", "ColorRed"] spawn f_fnc_localGroupMarker;
		
		["GrpBLUFOR_APC1",  7, "HIGHWAYMAN1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_APC2",  7, "HIGHWAYMAN2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_APC3",  7, "HIGHWAYMAN3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpBLUFOR_APC4",  7, "HIGHWAYMAN4", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpBLUFOR_TNK1",  8, "MARAUDER1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpBLUFOR_TH1",  9, "NOMAD1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpBLUFOR_TH2",  9, "NOMAD2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpBLUFOR_TH3",  9, "NOMAD3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpBLUFOR_TH4",  9, "NOMAD4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpBLUFOR_AH1",  9, "BANDIT1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitBLUFOR_PL_M", 0, "PLM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitBLUFOR_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitBLUFOR_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitBLUFOR_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: OPFOR
// Markers seen by players in OPFOR slots.

	case "opf_f":
	{
		["GrpOPFOR_PL", 0, "PL", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["UnitOPFOR_PSG", 0, "PSG", "ColorYellow"] spawn f_fnc_localSpecialistMarker;

		["GrpOPFOR_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpOPFOR_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpOPFOR_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpOPFOR_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpOPFOR_IFV1",  7, "RAIDER1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_IFV2",  7, "RAIDER2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpOPFOR_IFV3",  7, "RAIDER3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_IFV4",  7, "RAIDER4", "ColorRed"] spawn f_fnc_localGroupMarker;
		
		["GrpOPFOR_APC1",  7, "HIGHWAYMAN1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_APC2",  7, "HIGHWAYMAN2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_APC3",  7, "HIGHWAYMAN3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_APC4",  7, "HIGHWAYMAN4", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpOPFOR_TNK1",  8, "MARAUDER1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpOPFOR_TH1",  9, "NOMAD1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_TH2",  9, "NOMAD2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_TH3",  9, "NOMAD3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOPFOR_TH4",  9, "NOMAD4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpOPFOR_AH1",  9, "BANDIT1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitOPFOR_PL_M", 0, "PLM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOPFOR_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOPFOR_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOPFOR_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};


// ====================================================================================

// MARKERS: INDEPEDENT
// Markers seen by players in INDFOR slots.

	case "ind_f":
	{
		["GrpINDFOR_PL", 0, "PL", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["UnitINDFOR_PSG", 0, "PSG", "ColorYellow"] spawn f_fnc_localSpecialistMarker;

		["GrpINDFOR_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpINDFOR_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpINDFOR_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpINDFOR_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpINDFOR_IFV1",  7, "RAIDER1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_IFV2",  7, "RAIDER2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpINDFOR_IFV3",  7, "RAIDER3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_IFV4",  7, "RAIDER4", "ColorRed"] spawn f_fnc_localGroupMarker;
		
		["GrpINDFOR_APC1",  7, "HIGHWAYMAN1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_APC2",  7, "HIGHWAYMAN2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_APC3",  7, "HIGHWAYMAN3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_APC4",  7, "HIGHWAYMAN4", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpINDFOR_TNK1",  8, "MARAUDER1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpINDFOR_TH1",  9, "NOMAD1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_TH2",  9, "NOMAD2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_TH3",  9, "NOMAD3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpINDFOR_TH4",  9, "NOMAD4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpINDFOR_AH1",  9, "BANDIT1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitINDFOR_PL_M", 0, "PLM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitINDFOR_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitINDFOR_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitINDFOR_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};
};
	
// ====================================================================================
