// F3 - Assign Insignia
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

private ["_group","_badge","_groupBadges","_roleBadge","_unit","_typeofUnit"];

_badge = "";
_unit = _this select 0;
_typeofUnit = [_this select 1,"_"] call BIS_fnc_splitString;
_faction = toLower (faction _unit);

// Note all badges must be defined in description.ext or be included your modpack.
// See: https://community.bistudio.com/wiki/Arma_3_Unit_Insignia

// This variable stores the final badge to use which will applied at the end of this script.
// A default badge can be set by changing this.


// ===================================================================================

// Assign Insignia based on type of the unit.

_roleBadge = switch (true) do
{

// INSIGNIA: MEDIC
	case ("medic" in _typeofUnit): {
	{
		switch (_faction) do
		{
			case "blu_f": {"NATO_Medic_Badge"};
			case "opf_f": {"CSAT_Medic_Badge"};
			case "ind_f": {"AAF_Medic_Badge"};
			default {"NATO_Medic_Badge"};
		};
	};
	default {""};
};

// ====================================================================================

// This array stores a list of groups and the corresponding badge they will receive.
// Bin by faction (lowers numbers of groups for each unit to be grouped by too!).

_groupBadges = [];

switch (_faction) do
{
	case "blu_f" : {
		_groupBadges = [
			["GrpNATO_ASL","NATO_ASL_Badge"],
			["GrpNATO_A1","NATO_A1_Badge"],
			["GrpNATO_A2","NATO_A2_Badge"],
			["GrpNATO_A3","NATO_A3_Badge"],
			["GrpNATO_BSL","NATO_BSL_Badge"],
			["GrpNATO_B1","NATO_B1_Badge"],
			["GrpNATO_B2","NATO_B2_Badge"],
			["GrpNATO_B3","NATO_B3_Badge"],
			["GrpNATO_CSL","NATO_CSL_Badge"],
			["GrpNATO_C1","NATO_C1_Badge"],
			["GrpNATO_C2","NATO_C2_Badge"],
			["GrpNATO_C3","NATO_C3_Badge"],
			["GrpNATO_CO","NATO_CO_Badge"],
			["GrpNATO_DC","NATO_DC_Badge"]
		];
	};
	case "opf_f": {
		_groupBadges = [
			["GrpCSAT_ASL","CSAT_ASL_Badge"],
			["GrpCSAT_A1","CSAT_A1_Badge"],
			["GrpCSAT_A2","CSAT_A2_Badge"],
			["GrpCSAT_A3","CSAT_A3_Badge"],
			["GrpCSAT_BSL","CSAT_BSL_Badge"],
			["GrpCSAT_B1","CSAT_B1_Badge"],
			["GrpCSAT_B2","CSAT_B2_Badge"],
			["GrpCSAT_B3","CSAT_B3_Badge"],
			["GrpCSAT_CSL","CSAT_CSL_Badge"],
			["GrpCSAT_C1","CSAT_C1_Badge"],
			["GrpCSAT_C2","CSAT_C2_Badge"],
			["GrpCSAT_C3","CSAT_C3_Badge"],
			["GrpCSAT_CO","CSAT_CO_Badge"],
			["GrpCSAT_DC","CSAT_DC_Badge"]
		];
	};
	case "ind_f": {
		_groupBadges = [
			["GrpAAF_ASL","AAF_ASL_Badge"],
			["GrpAAF_A1","AAF_A1_Badge"],
			["GrpAAF_A2","AAF_A2_Badge"],
			["GrpAAF_A3","AAF_A3_Badge"],
			["GrpAAF_BSL","AAF_BSL_Badge"],
			["GrpAAF_B1","AAF_B1_Badge"],
			["GrpAAF_B2","AAF_B2_Badge"],
			["GrpAAF_B3","AAF_B3_Badge"],
			["GrpAAF_CSL","AAF_CSL_Badge"],
			["GrpAAF_C1","AAF_C1_Badge"],
			["GrpAAF_C2","AAF_C2_Badge"],
			["GrpAAF_C3","AAF_C3_Badge"],
			["GrpAAF_CO","AAF_CO_Badge"],
			["GrpAAF_DC","AAF_DC_Badge"]
		];
	};

};

// ====================================================================================
// END OF CONFIGURABLE SETTINGS - BELOW ASSIGNS THE INSIGNIAS
// ====================================================================================

// Loop through the groups and match badges to the group _unit belongs to. Due to the groups being variables this requires calling formatted at runtime code.

_group = (group _unit);


{
	if(!isnil (_x select 0)) then {
			call compile format ["
				if (%1==_group) then {
					_badge = _x select 1;
				};
			",_x select 0];
	};
} forEach _groupBadges;

// ====================================================================================

//  Let the unit insignia override the group insignia.

if (_roleBadge != "") then {
	_badge = _roleBadge;
};

// Apply the insignia.
if (_badge != "") then {
	// spawn to avoid waitUntil bug.
	private["_index","_texture","_cfgTexture"];

	// Wait till they have the proper uniform assigned.
	waitUntil{_unit getVariable ["f_var_assignGear_done",false]};
	waitUntil{(uniform _unit) != ""};

	// Replicate behaviour of setInsignia
	_cfgTexture = [["CfgUnitInsignia",_badge],configfile] call bis_fnc_loadclass;
	if (_cfgTexture == configfile) exitwith {["'%1' not found in CfgUnitInsignia",_badge] call bis_fnc_error; false};
	_texture = gettext (_cfgTexture >> "texture");

	_index = -1;
	{
		if (_x == "insignia") exitwith {_index = _foreachindex;};
	} foreach getarray (configfile >> "CfgVehicles" >> gettext (configfile >> "CfgWeapons" >> uniform _unit >> "ItemInfo" >> "uniformClass") >> "hiddenSelections");

	if (_index >= 0) then {
		_unit setvariable ["bis_fnc_setUnitInsignia_class",_badge,false];
		_unit setobjecttexture [_index,_texture];
	};
};