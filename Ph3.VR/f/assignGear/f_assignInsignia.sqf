// F3 - Assign Insignia
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

private ["_group","_badge","_groupBadges","_roleBadge","_unit","_typeofUnit"];

_badge = ""; 
_unit = _this select 0;
_typeofUnit = _this select 1;
_faction = toLower (faction _unit);

// Note all badges must be defined in description.ext or be included your modpack.
// See: https://community.bistudio.com/wiki/Arma_3_Unit_Insignia

// This variable stores the final badge to use which will applied at the end of this script.
// A default badge can be set by changing this.


// ===================================================================================

// Assign Insignia based on type of the unit.

_roleBadge = switch (_typeofUnit) do
{

// INSIGNIA: MEDIC
	case "m":
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