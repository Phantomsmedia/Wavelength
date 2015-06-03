// F3 - ACRE2 Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_acre2_disableRadios = FALSE;

// Whether or not the radio frequencies should be left as default, and not split per side
// TRUE = Disable frequency seperation across sides
f_radios_settings_acre2_disableFrequencySplit = FALSE;

// Set a list of units that get a short wave
// if its nil, that means all units get a radio
// empty array means that noone gets
//f_radios_settings_acre2_shortRange = ["ftl","ar","aar","rat","dm","gren","r","car","smg"];
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
f_radios_settings_acre2_standardLRRadio = "ACRE_PRC152";
// Extra radio
f_radios_settings_acre2_extraRadio = "ACRE_PRC117F";

// ====================================================================================
// BABEL API

// Defines the languages that exist in the mission.
// string id, displayname
f_radios_settings_acre2_languages = [["english","English"],["russian","Russian"],["arabic","Arabic"]];

// defines the language that a player can speak.
// can define multiple
f_radios_settings_acre2_language_blufor = ["english"];
f_radios_settings_acre2_language_opfor = ["russian"];
f_radios_settings_acre2_language_indfor = ["arabic"];

// Channels names
// first item in the array will correspond to the first channel
// note these only work if f_radios_settings_acre2_disableFrequencySplit is set to false
f_radios_settings_acre2_groups_blufor = ["Alpha Net","Bravo Net","Charlie Net","Command Net","Delta Net","Echo Net","Foxtrot Net","Blank Net","Blank Net","Air 1","Air 2","Air 3","Air 4","Air 5","Air 6","Air 7","Air 8","Air 9","Air 10","Armor 1","Armor 2","Armor 3","Armor 4","Armor 5","Armor 6","Armor 7","Armor 8","Armor 9","Attachment 1","Attachment 2","Attachment 3","Attachment 4","Attachment 5","Attachment 6","Attachment 7","Attachment 8","Attachment 9","Attachment 10"];

f_radios_settings_acre2_groups_opfor = ["Alpha Net","Bravo Net","Charlie Net","Command Net","Delta Net","Echo Net","Foxtrot Net","Blank Net","Blank Net","Air 1","Air 2","Air 3","Air 4","Air 5","Air 6","Air 7","Air 8","Air 9","Air 10","Armor 1","Armor 2","Armor 3","Armor 4","Armor 5","Armor 6","Armor 7","Armor 8","Armor 9","Attachment 1","Attachment 2","Attachment 3","Attachment 4","Attachment 5","Attachment 6","Attachment 7","Attachment 8","Attachment 9","Attachment 10"];

f_radios_settings_acre2_groups_indfor = ["Alpha Net","Bravo Net","Charlie Net","Command Net","Delta Net","Echo Net","Foxtrot Squad Net","Blank Net","Blank Net","Air 1","Air 2","Air 3","Air 4","Air 5","Air 6","Air 7","Air 8","Air 9","Air 10","Armor 1","Armor 2","Armor 3","Armor 4","Armor 5","Armor 6","Armor 7","Armor 8","Armor 9","Attachment 1","Attachment 2","Attachment 3","Attachment 4","Attachment 5","Attachment 6","Attachment 7","Attachment 8","Attachment 9","Attachment 10"];

// Channel names and group defaults
// first item in the array will correspond to the first channel
// item definition: ["CHANNEL NAME", ["GROUP1 NAME", "GROUP2 NAME"]]
// note that if using a 343 only the first 16 channels are available for the short-range array
// also note these only work if f_radios_settings_acre2_disableFrequencySplit is set to false
f_radios_settings_acre2_sr_groups_blufor = [
	["Alpha Net",     ["ASL", "A1", "A2", "A3"]],
	["Bravo Net",     ["BSL", "B1", "B2", "B3"]],
	["Charlie Net",   ["CSL", "C1", "C2", "C3"]],
	["Command Net",   ["CO", "DC", "PLTHQ"]],
	["Delta Net",     ["DSL", "D1", "D2", "D3"]],
	["Echo Net",      ["ESL", "E1", "E2", "E3"]],
	["Foxtrot Net",   ["FSL", "F1", "F2", "F3"]],
	["Blank Net",     []],
	["Blank Net",     []],
	["Air 1",     	  ["TH1"]],
	["Air 2",     	  ["TH2"]],
	["Air 3",     	  ["TH3"]],
	["Air 4",     	  ["TH4"]],
	["Air 5",     	  ["TH5"]],
	["Air 6",     	  ["TH6"]],
	["Air 7",     	  ["TH8"]],
	["Air 8",     	  ["AH1"]],
	["Air 9",     	  ["FW1"]],
	["Air 10",        []],
	["Armor 1",       ["IFV1", "IFV2", "IFV3", "IFV4", "IFV5", "IFV6", "IFV7", "IFV8"],
	["Armor 2",       ["APC1", "APC2", "APC3", "APC4"],
	["Armor 3",       []],
	["Armor 4",       []],
	["Armor 5",       []],
	["Armor 6",       []],
	["Armor 7",       []],
	["Armor 8",       []],
	["Armor 9",       []],
	["Attachment 1",  []],
	["Attachment 2",  []],
	["Attachment 3",  []],
	["Attachment 4",  []],
	["Attachment 5",  []],
	["Attachment 6",  []],
	["Attachment 7",  []],
	["Attachment 8",  []],
	["Attachment 9",  []],
	["Attachment 10", []]
];

f_radios_settings_acre2_sr_groups_opfor = f_radios_settings_acre2_sr_groups_blufor;
f_radios_settings_acre2_sr_groups_indfor = f_radios_settings_acre2_sr_groups_blufor;

f_radios_settings_acre2_lr_groups_blufor = [
	["Alpha Net", []],
	["Bravo Net", []],
	["Charlie Net", []],
	["Command Net", []],
		[
			"CO", "DC", "PLTHQ",
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
		    "ENG1"
		]
	],
	["Delta Net", []],
	["Echo Net", []],
	["Foxtrot Net", []],
	["Blank Net", []],
	["Blank Net", []],
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
	["Attachment 10", ["ENG1"]
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
