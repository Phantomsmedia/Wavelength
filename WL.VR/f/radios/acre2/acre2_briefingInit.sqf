// 1TacF3 - ACRE2 Briefing Init tweaked for Signal
// ====================================================================================

private ["_unit", "_channelIndex", "_channelIndexLR", "_fn_numToColor", "_radiosToGive", "_languagesToSpeak", "_presetArray", "_presetLRArray", "_assignedRadioChannels", "_usedRadioIndexs", "_symbolForPresent", "_ltext", "_text", "_radioIndex", "_radioType", "_channelIndex", "_presetData", "_radio", "_frequency", "_chanNum", "_color", "_channelLine", "_text2"];

if (!hasInterface) exitWith {};

params ["_groupID", "_languagesPlayerSpeaks", "_groupFreqIndex", "_groupLRFreqIndex"];
if (player getVariable ["F_Signals_Created", false]) exitWith {};
uiSleep 5;

_cleanLines = {
  params ["_array", ["_maxPerLine", 25], ["_newLineSpace", "      "]];
  private _return = "";
  private _output = [];
  private _charCount = 0;
  {
    _charCount = _charCount + count _x;
    if (_charCount > _maxPerLine) then {
      _output pushBack ["<br/>%1%2, ", _newLineSpace, _x];
      _charCount = count _x;
    } else {
      _output pushBack format ["%1, ", _x];
    };
    nil
  } count _array;
  _return = _output joinString ", ";
  [_return, 0, -2] call BIS_fnc_trimString
};

_getFrequencyString = {
	params ["_radioType", "_chanNum"];

	private _return = "";
	try {
		_frequency = [_radioType, f_radios_settings_acre2_presetName, _chanNum, "frequencyTX"] call acre_api_fnc_getPresetChannelField;

		if (_frequency >= 1000) then {
	    		_frequency = [_frequency, 4,3] call CBA_fnc_formatNumber;
	  	} else {
			if (_frequency < 100) then {
	    	    		_frequency = format["%1",[_frequency, 2,5] call CBA_fnc_formatNumber];
	           	} else {
	   		     _frequency = [_frequency, 3,5] call CBA_fnc_formatNumber;
	           	};
	  	};

	  	_return = _frequency;
	} catch {};

	_return
};

//Show Spoken Languages:
private _languageDisplayNames = [];
{
  private _playerShortName = _x;
  private _displayName = "err";
  {
    _x params ["_xShort", "_xDisplay"];
    if (_xShort == _playerShortName) exitWith {_languageDisplayNames pushBack _xDisplay};
    nil
  } count f_radios_settings_acre2_languages;
  nil
} count _languagesPlayerSpeaks;
private _diaryBuilder = [];
_diaryBuilder pushBack format ["<font size=15>You speak: %1</font><br/>", ([_languageDisplayNames] call _cleanLines)];

//Show Radio Nets:
private _hasSR = false;
private _hasLR = false;
{
  if (_x isKindOf ["ACRE_PRC343", configFile >> "CfgWeapons"]) then {_hasSR = true;};
  if (_x isKindOf ["ACRE_PRC148", configFile >> "CfgWeapons"]) then {_hasLR = true;};
  if (_x isKindOf ["ACRE_PRC117F", configFile >> "CfgWeapons"]) then {_hasLR = true;};
  nil
} count (items player);

diag_log text format ["[F3 ACRE2] - SIGNALS Briefing %1 - [%2,%3]", _this, _hasSR, _hasLR];

private _presetArray = switch (side player) do {
	case blufor: {f_radios_settings_acre2_sr_groups_blufor};
  	case opfor: {f_radios_settings_acre2_sr_groups_opfor};
  	case independent: {f_radios_settings_acre2_sr_groups_indfor};
  	default {f_radios_settings_acre2_sr_groups_indfor};
};

private _presetLRArray = switch (side player) do {
	case blufor: {f_radios_settings_acre2_lr_groups_blufor};
  	case opfor: {f_radios_settings_acre2_lr_groups_opfor};
  	case independent: {f_radios_settings_acre2_lr_groups_indfor};
	default {f_radios_settings_acre2_lr_groups_indfor};
};

_diaryBuilder pushBack "<br/><font size=15>SR Radio Net (343)</font><br/>";
{
  if (_hasSR && {_groupFreqIndex == _forEachIndex}) then {
    _diaryBuilder pushBack format [" <font color='#ff0000' size=14>&gt;%1:</font> %2 (%3 MHz)<br/>", (_forEachIndex + 1), ([[_x select 0]] call _cleanLines), ([f_radios_settings_acre2_standardSHRadio, _forEachIndex + 1] call _getFrequencyString)];
  } else {
    _diaryBuilder pushBack format ["  <font size=14>%1:</font> %2 (%3 MHz)<br/>", (_forEachIndex + 1), ([[_x select 0]] call _cleanLines), ([f_radios_settings_acre2_standardSHRadio, _forEachIndex + 1] call _getFrequencyString)];
  };
} forEach _presetArray;

_diaryBuilder pushBack "<br/><font size=15>LR Radio Net (148/117)</font><br/>";
{
  if (_hasLR && {_groupLRFreqIndex == _forEachIndex}) then {
    _diaryBuilder pushBack format [" <font color='#ff0000' size=14>&gt;%1:</font> %2 (%3 MHz)<br/>", (_forEachIndex + 1), ([[_x select 0]] call _cleanLines), ([f_radios_settings_acre2_standardLRRadio, _forEachIndex + 1] call _getFrequencyString)];
  } else {
    _diaryBuilder pushBack format ["  <font size=14>%1:</font> %2 (%3 MHz)<br/>", (_forEachIndex + 1), ([[_x select 0]] call _cleanLines), ([f_radios_settings_acre2_standardLRRadio, _forEachIndex + 1] call _getFrequencyString)];
  };
} forEach _presetLRArray;

_diaryBuilder pushBack "<br/><br/>Note: Subject to change.";

//_diaryBuilder pushBack "<br/><br/><execute expression='[] call F_Radios_fnc_reinitRadio;'>Reinitialize radios</execute>";

player createDiaryRecord ["diary", ["ACRE2", _diaryBuilder joinString ""]];
player setVariable ["F_Signals_Created", true];
