// F3 - ACRE Clientside Initialisation
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// ====================================================================================
// Set up the radio presets according to side.
_presetName = switch(side player) do {
	case west:{"default2"};
	case east:{"default3"};
	case resistance:{"default4"};
	default {"default"};
};
if (f_radios_settings_acre2_disableFrequencySplit) then {
	_presetName = "default";
};

//_ret = ["ACRE_PRC343", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC148", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC152", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC117F", _presetName ] call acre_api_fnc_setPreset;


// if dead, set spectator and exit
if(!alive player) exitWith {[true] call acre_api_fnc_setSpectator;};

_unit = player;

// ====================================================================================

// Set language of the units depending on side (BABEL API)
switch (side _unit) do {
	case blufor: {
		f_radios_settings_acre2_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	case opfor: {
		f_radios_settings_acre2_language_opfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	case independent: {
		f_radios_settings_acre2_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	default {
		f_radios_settings_acre2_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
};

// ====================================================================================

// RADIO ASSIGNMENT

// Wait for gear assignation to take place
waitUntil{(player getVariable ["f_var_assignGear_done", false])};
_typeOfUnit = _unit getVariable ["f_var_assignGear", "NIL"];

// REMOVE ALL RADIOS
// Wait for ACRE2 to initialise any radios the unit has in their inventory, and then
// remove them to ensure that duplicate radios aren't added by accident.
waitUntil{uiSleep 0.3; !("ItemRadio" in (items _unit + assignedItems _unit))};
uiSleep 1;

waitUntil{[] call acre_api_fnc_isInitialized};
{_unit removeItem _x;} forEach ([] call acre_api_fnc_getCurrentRadioList);
// ====================================================================================

// ASSIGN RADIOS TO UNITS
// Depending on the loadout used in the assignGear component, each unit is assigned
// a set of radios.

if(_typeOfUnit != "NIL") then {

  // If radios are enabled in the settings
  if(!f_radios_settings_acre2_disableRadios) then {
      // Everyone gets a short-range radio by default
      if(isnil "f_radios_settings_acre2_shortRange") then
      {
		if (_unit canAdd f_radios_settings_acre2_standardSHRadio) then
		{
			_unit addItem f_radios_settings_acre2_standardSHRadio;
		} else {
			f_radios_settings_acre2_standardSHRadio call f_radios_acre2_giveRadioAction;
		};
      }
      else
      {
        if(_typeOfUnit in f_radios_settings_acre2_shortRange) then
        {
			if (_unit canAdd f_radios_settings_acre2_standardSHRadio) then
			{
				_unit addItem f_radios_settings_acre2_standardSHRadio;
			} else {
				f_radios_settings_acre2_standardSHRadio call f_radios_acre2_giveRadioAction;
			};
        };
      };

      // If unit is in the above list, add a 148
      if(_typeOfUnit in f_radios_settings_acre2_longRange) then {
		if (_unit canAdd f_radios_settings_acre2_standardLRRadio) then
		{
			_unit addItem f_radios_settings_acre2_standardLRRadio;
		} else {
			f_radios_settings_acre2_standardLRRadio call f_radios_acre2_giveRadioAction;
		};

        // If unit is in the list of units that receive an extra long-range radio, add another 148
        if(_typeOfUnit in f_radios_settings_acre2_extraRadios) then {
			if (_unit canAdd f_radios_settings_acre2_extraRadio) then
			{
				_unit addItem f_radios_settings_acre2_extraRadio;
			} else {
				f_radios_settings_acre2_extraRadio call f_radios_acre2_giveRadioAction;
			};
        };

      };

      // ====================================================================================

	  // PRESET ASSIGNMENT

	  waitUntil {uiSleep 0.3; count ([] call acre_api_fnc_getCurrentRadioList) > 0};
	  uiSleep 1;

	  _presetArray = switch (side _unit) do {
	  	case blufor: {f_radios_settings_acre2_presets_blufor};
	  	case opfor: {f_radios_settings_acre2_presets_opfor};
	  	case independent: {f_radios_settings_acre2_presets_indfor};
	  	default {f_radios_settings_acre2_presets_indfor};
	  };

	  _presetLRArray = switch (side _unit) do {
	  	case blufor: {f_radios_settings_acre2_lr_presets_blufor};
	  	case opfor: {f_radios_settings_acre2_lr_presets_opfor};
	  	case independent: {f_radios_settings_acre2_lr_presets_indfor};
	  	default {f_radios_settings_acre2_lr_presets_indfor};
	  };

	  _groupID = groupID (group _unit);
	  _groupChannelIndex = -1;
	  _groupLRChannelIndex = -1;

	  _groupIDSplit = [_groupID, " "] call bis_fnc_splitString;
	  if ((count _groupIDSplit) > 2) then {
	  	_groupName = toUpper (_groupIDSplit select 1);
	  	{
	  		if (_groupName in _x) exitWith { _groupChannelIndex = _forEachIndex; };
	  	} forEach _presetArray;
	  	{
	  		if (_groupName in _x) exitWith { _groupLRChannelIndex = _forEachIndex; };
	  	} forEach _presetLRArray;
	  };

	  _radio343 = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType;
	  _radio148 = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType;
	  _radio152 = ["ACRE_PRC152"] call acre_api_fnc_getRadioByType;
	  _radio117 = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType;

	  if (_groupChannelIndex == -1) then {
	  	systemChat format["Unknown group for channel presets (%1)", _groupID];
	  	_groupChannelIndex = 0;
	  };

	  if (_groupLRChannelIndex == -1 && {((!isNil "_radio117") && {_radio117 != ""})}) then {
  		systemChat format["Unknown group for LR channel presets (%1)", _groupID];
	  	_groupLRChannelIndex = 0;
	  };


	  if ((!isNil "_radio343") && {_radio343 != ""}) then {
	      [_radio343, (_groupChannelIndex + 1)] call acre_api_fnc_setRadioChannel;
	  };


	  if ((!isNil "_radio148") && {_radio148 != ""}) then {
	      [_radio148, (_groupChannelIndex + 1)] call acre_api_fnc_setRadioChannel;
	  };


	  if ((!isNil "_radio152") && {_radio152 != ""}) then {
	      [_radio152, (_groupChannelIndex + 1)] call acre_api_fnc_setRadioChannel;
	  };

	  if ((!isNil "_radio117") && {_radio117 != ""}) then {
	      [_radio117, (_groupLRChannelIndex + 1)] call acre_api_fnc_setRadioChannel;
	  };

  };
};
