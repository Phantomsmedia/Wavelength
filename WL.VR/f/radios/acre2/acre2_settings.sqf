// F3 - ACRE2 Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_acre2_disableRadios = TRUE;

// Whether or not the radio frequencies should be left as default, and not split per side
// TRUE = Disable frequency seperation across sides
f_radios_settings_acre2_disableFrequencySplit = FALSE;

// Set a list of units that get a short wave
// if its nil, that means all units get a radio
// empty array means that noone gets
//f_radios_settings_acre2_shortRange = ["dc","ftl","ar","aar","rat","dm","gren","r","car","smg"];
f_radios_settings_acre2_shortRange = [];

// Set the list of units that get a long range
//f_radios_settings_acre2_longRange = ["co", "dc","ftl","m", "mmgag","hmgag","matag","hatag", "mtrag","msamag","sp","vc", "pp","fwp", "eng", "engm", "uav", "fo", "div"];
f_radios_settings_acre2_longRange = [];

// Unit types you want to give an extra long-range radio
// E.G: ["co", "m"] would give the CO and all medics an extra long-range radios
//f_radios_settings_acre2_extraRadios = ["co","fo","vc","pp","fwp"];
f_radios_settings_acre2_extraRadios = [];

// Standard Short
f_radios_settings_acre2_standardSHRadio = "ACRE_PRC343";
// Standard LongRange
f_radios_settings_acre2_standardLRRadio = "ACRE_PRC148";
// Extra radio
f_radios_settings_acre2_extraRadio = "ACRE_PRC117F";

// ====================================================================================
// BABEL API

// Defines the languages that exist in the mission.
// string id, displayname
f_radios_settings_acre2_languages = [["english","English"],["russian","Russian"],["arabic","Arabic"],["czech","Czech"],["german","German"],["greek","Greek"],["farsi","Farsi"],["french","French"],["chinese","Chinese"],["ukrainian","Ukrainian"]];

// defines the language that a player can speak.
// can define multiple
f_radios_settings_acre2_language_blufor = ["english"];
f_radios_settings_acre2_language_opfor = ["russian"];
f_radios_settings_acre2_language_indfor = ["arabic"];

// ====================================================================================
// Channel names and group defaults
// first item in the array will correspond to the first channel
// item definition: ["CHANNEL NAME", ["GROUP1 NAME", "GROUP2 NAME"]]
// note that if using a 343 only the first 16 channels are available for the short-range array
// also note these only work if f_radios_settings_acre2_disableFrequencySplit is set to false
f_radios_settings_acre2_sr_groups_blufor = [
	["Alpha Net",     ["ASL", "A1", "A2", "A3"]],
	["Bravo Net",     ["BSL", "B1", "B2", "B3"]],
	["Charlie Net",   ["CSL", "C1", "C2", "C3"]],
	["Command Net",   ["CO", "DC", "PLT"]],
	["Delta Net",     ["DSL", "D1", "D2", "D3"]],
	["Echo Net",      ["ESL", "E1", "E2", "E3"]],
	["Foxtrot Net",   ["FSL", "F1", "F2", "F3"]],
	["Attachment 1",  ["MMG1", "HMG1", "MAT1", "HAT1",
		    	   "MTR1", "MSAM1", "HSAM1",
			   "ST1", "DT1", "ENG1"]],
	["Attachment 2",  ["TH1", "TH2", "TH3", "TH4",
			   "TH5", "TH6", "TH7", "TH8",
			   "AH1", "FW1"]],
	["Attachment 3",  ["IFV1", "IFV2", "IFV3", "IFV4",
			   "IFV5", "IFV6", "IFV7", "IFV8",
		    	   "APC1", "APC2", "APC3", "APC4",
		    	   "TNK1"]],
	["Attachment 4",  []],
	["Attachment 5",  []],
	["Attachment 6",  []],
	["Attachment 7",  []],
	["Attachment 8",  []],
	["Attachment 9",  []]
];

f_radios_settings_acre2_sr_groups_opfor = f_radios_settings_acre2_sr_groups_blufor;
f_radios_settings_acre2_sr_groups_indfor = f_radios_settings_acre2_sr_groups_blufor;

f_radios_settings_acre2_lr_groups_blufor = [
	["Command Net", ["CO", "DC", "PLT",
		    "ASL", "BSL", "CSL", "DSL", "ESL", "FSL",
		    "TH1", "TH2", "TH3", "TH4", "TH5", "TH6", "TH7", "TH8",
		    "AH1", "FW1",
		    "IFV1", "IFV2", "IFV3", "IFV4", "IFV5", "IFV6", "IFV7", "IFV8",
		    "APC1", "APC2", "APC3", "APC4",
		    "TNK1",
		    "MMG1", "HMG1",
		    "MAT1", "HAT1",
		    "MTR1",
		    "MSAM1", "HSAM1",
		    "ST1", "DT1",
		    "ENG1"]],
	["Empty Net", []],
	["Empty Net", []],
	["Air 1", []],
	["Air 2", []],
	["Air 3", []],
	["Air 4", []],
	["Air 5", []],
	["Air 6", []],
	["Air 7", []],
	["Air 8", []],
	["Air 9", []],
	["Air 10", []],
	["Armor 1", []],
	["Armor 2", []],
	["Armor 3", []],
	["Armor 4", []],
	["Armor 5", []],
	["Armor 6", []],
	["Armor 7", []],
	["Armor 8", []],
	["Armor 9", []],
	["Attachment 1", ["MMG1"]],
	["Attachment 2", ["HMG1"]],
	["Attachment 3", ["MAT1"]],
	["Attachment 4", ["HAT1"]],
	["Attachment 5", ["MTR1"]],
	["Attachment 6", ["MSAM1"]],
	["Attachment 7", ["HSAM1"]],
	["Attachment 8", ["ST1"]],
	["Attachment 9", ["DT1"]],
	["Attachment 10", ["ENG1"]]
];

f_radios_settings_acre2_lr_groups_opfor = f_radios_settings_acre2_lr_groups_blufor;
f_radios_settings_acre2_lr_groups_indfor = f_radios_settings_acre2_lr_groups_blufor;

// ====================================================================================
// MISC ACRE2 settings, these are all set the ACRE2 defaults

// ACRE Radio loss settings.
// Indiciates how much terrian loss should be modelled.
// Values: 0 no loss, 1 full terrian loss, default: 1
[1] call acre_api_fnc_setLossModelScale;

// ACRE full Duplex
// Sets the duplex of radio transmissions. If set to true, it means that you will receive transmissions even while talking and multiple people can speak at the same time.
[true] call acre_api_fnc_setFullDuplex;

// ACRE Interference
// Sets whether transmissions will interfere with eachother. This, by default, causes signal loss when multiple people are transmitting on the same frequency.
[true] call acre_api_fnc_setInterference;

// ACRE can AI hear players?
// False - AI not hear players, true - AI hear players.
[false] call acre_api_fnc_setRevealToAI;
