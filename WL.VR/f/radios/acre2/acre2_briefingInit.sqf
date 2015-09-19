// 1TacF3 - ACRE2 Briefing Init
// ====================================================================================

private ["_unit", "_channelIndex", "_channelIndexLR", "_fn_numToColor", "_radiosToGive", "_languagesToSpeak", "_presetArray", "_presetLRArray", "_assignedRadioChannels", "_usedRadioIndexs", "_symbolForPresent", "_ltext", "_text", "_radioIndex", "_radioType", "_channelIndex", "_presetData", "_radio", "_frequency", "_chanNum", "_color", "_channelLine", "_text2"];

_unit = player;
_channelIndex = _this select 0;
_channelIndexLR = _this select 1;

_fn_numToColor = {
	private ["_number", "_color"];
	_number = _this select 0;
	_color = switch (_number) do {
		 case -1: {"#FFFFFF"};
		 case 0: {"#1AFF00"};
		 case 1: {"#0071FF"};
		 case 2: {"#E8DF06"};
        case 3: {"#06E8B1"};
		default {"#FFAB06"};
	};
	// return color
	_color
};

// CONSTRUCT BRIEFING AND MATCH THE RADIO CHANNELS TO RADIOS, SO LATER WE CAN SET THEM ON THE MATCHE CHANNELS.

waitUntil {count ([] call acre_api_fnc_getCurrentRadioList) > 0};
sleep 0.2;
_radiosToGive = [] call acre_api_fnc_getCurrentRadioList;

_languagesToSpeak = f_radios_settings_acre2_spokenLanguages;

_presetArray = switch (side _unit) do {
	case blufor: {f_radios_settings_acre2_sr_groups_blufor};
  	case opfor: {f_radios_settings_acre2_sr_groups_opfor};
  	case independent: {f_radios_settings_acre2_sr_groups_indfor};
  	default {f_radios_settings_acre2_sr_groups_indfor};
};

_presetLRArray = switch (side _unit) do {
	case blufor: {f_radios_settings_acre2_lr_groups_blufor};
  	case opfor: {f_radios_settings_acre2_lr_groups_opfor};
  	case independent: {f_radios_settings_acre2_lr_groups_indfor};
	default {f_radios_settings_acre2_lr_groups_indfor};
};

_assignedRadioChannels = []; { _assignedRadioChannels pushBack [_x,-1]; } forEach _radiosToGive; // 'ClassName','Chan num'
_usedRadioIndexs = []; // Used for tracking colours, so that we know which ones we have already used.
_symbolForPresent = "<font color='#ff4747'>*</font>";
_ltext = format["<font size='11'>Legend: %1 is used to denote a channel you are suppose to be on.<br/>The colours are used to match your radios with channels (your radios will be set to these channels), white radios will remain on channel 1.<br/>I can speak any languages that are <font color='#ff4747'>highlighted</font>.</font><br/><br/>",_symbolForPresent];

// BRIEFING: LANGUAGES
_ltext = _ltext + "<font size='16'>BABEL - LANGUAGES</font><br/>Languages spoken in this area:<br/>";
{
  if (_forEachIndex != 0) then {_ltext = _ltext + ", "; };
  if ((_x select 0) in _languagesToSpeak) then {
	_ltext = _ltext + format["<font color='#ff4747'>%1</font>",_x select 1];
  } else {
	_ltext = _ltext + format["%1",_x select 1];
  };
} forEach f_radios_settings_acre2_languages;


_text = "<br/><font size='16'>RADIO CHANNEL LISTING</font>";
{
	_radioIndex = _forEachIndex;
	_radioType = _x select 0;
	_channelIndex = _x select 2;

	if (count (_x select 1) > 0) then { // If at least one channel is defined.
		_radio = [_radioType] call acre_api_fnc_getRadioByType;

		if ((!isNil "_radio") && {_radio != ""}) then {
			_text = _text + "<br/>For: ";
			_text = _text + getText (configfile >> "CfgWeapons" >> (_x select 0) >> "displayName");
			_text = _text + ":<br/>";

			_presetData = [_radioType, f_radios_settings_acre2_presetName] call acre_api_fnc_getPresetData;

			{
				try {
					_chanNum = _forEachIndex + 1;
					_frequency = [_radioType, f_radios_settings_acre2_presetName, _chanNum, "frequencyTX"] call acre_api_fnc_getPresetChannelField;

					if (_frequency >= 1000) then {
			            		_frequency = [_frequency, 4,3] call CBA_fnc_formatNumber;
			          	} else {
			        		if (_frequency < 100) then {
			            	    		_frequency = format[" %1",[_frequency, 2,5] call CBA_fnc_formatNumber];
				           	} else {
			           		     _frequency = [_frequency, 3,5] call CBA_fnc_formatNumber;
				           	};
			          	};

			          	_channelLine = format["CHN %1 (%2 MHz) - %3", _chanNum, _frequency, (_x select 0)];

			          	if (_chanNum == (_channelIndex + 1)) then { // If player is supposed to be on this channel
			          		_color = [_radioIndex] call _fn_numToColor;
						  	_channelLine = format[" %1 ",_symbolForPresent] + format["<font color='%1'>",_color] + _channelLine + "</font><br/>";
			          	} else {
			          		_channelLine = format["   "] +_channelLine + "<br/>";
			         	};

		         		_text = _text + _channelLine;
				} catch {};
			} forEach (_x select 1);

		};

	};
} forEach [
	[f_radios_settings_acre2_standardSHRadio, _presetArray, _channelIndex],
	[f_radios_settings_acre2_standardLRRadio, _presetLRArray, _channelIndexLR],
	[f_radios_settings_acre2_extraRadio, _presetLRArray, _channelIndexLR]
];

_text2 = "<br/><br/><font size='16'>MY ASSIGNED RADIOS</font><br/>";
{
	_color = [_forEachIndex] call _fn_numToColor;
	_text2 = _text2 + format["<font color='%1'>%2</font><br/>",_color,getText (configfile >> "CfgWeapons" >> _x >> "displayName")];
} forEach _radiosToGive;

_text = _ltext + _text2 + _text;

//Provide instructions on the page. such as * to denote a channel you are suppose to be on, explain what the colours mean.
_unit createDiaryRecord ["diary", ["ACRE2", _text]];
