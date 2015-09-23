// F3 - ACRE2 Preset Setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

private ["_radioName", "_radioField"];

//Set the names for all the radios properly.
{
	_radioName = _x select 0;
	_radioField = _x select 1;

	{
		[_radioName, "default2", _forEachIndex + 1, _radioField, _x select 0] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_lr_groups_blufor;

	{
		[_radioName, "default3", _forEachIndex + 1, _radioField, _x select 0] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_lr_groups_opfor;

	{
		[_radioName, "default4", _forEachIndex + 1, _radioField, _x select 0] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_lr_groups_indfor;

} forEach [["ACRE_PRC148", "label"], ["ACRE_PRC152", "description"], ["ACRE_PRC117F", "name"]];