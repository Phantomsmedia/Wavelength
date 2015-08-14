// F3 - Add TFR Radios Function
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES

private["_unit", "_typeOfUnit", "_longRange","_radio1","_radio2","_radio3", "_backpackItems"];

_unit = player;

_typeOfUnit = _unit getVariable ["F_Gear", (typeOf _unit)];

// DEFINE THE RADIOS THAT WILL BE USED

switch ((side _unit)) do { //longrange, shortrange, rifradio
    case (west): {
      _radio1 = "tf_rt1523g_big";
      _radio2 = TF_defaultWestPersonalRadio;
      _radio3 = TF_defaultWestPersonalRadio;};
    case (east): {
      _radio1 = "tf_mr3000_rhs";
      _radio2 = TF_defaultEastPersonalRadio;
      _radio3 = TF_defaultEastPersonalRadio;};
    default {
      _radio1 = "tf_anprc155_coyote";
      _radio2 = TF_defaultGuerPersonalRadio;
      _radio3 = TF_defaultGuerPersonalRadio;};
};

// ====================================================================================

// ASSIGN RADIOS TO UNITS
// Depending on the loadout used in the assignGear component, each unit is assigned
// a set of radios.

if(_typeOfUnit != "NIL") then {

  // If radios are enabled in the settings
  if(!f_radios_settings_tfr_disableRadios) then {

      // Set the list of units that get a rifleman's radio
      _rifradio = ["_Soldier_F","_soldier_A_F","_soldier_AR_F","_soldier_AAR_F","_soldier_LAT_F","_Soldier_AT_F","_Soldier_AAT_F","_soldier_M_F","_Soldier_AA_F","_Soldier_AAA_F","_engineer_F","_soldier_repair_F","_HeavyGunner_F",
                    "_support_Amort_F","_support_MG_F","_support_AMG_F","_helicrew_F","_Pilot_F","_crew_F","_diver_F"];

      // Set the list of units that get a shortrange radio
      _shortrange = ["_officer_F", "_soldier_SL_F", "_medic_F", "_soldier_TL_F", "_Helipilot_F","_diver_TL_F"];

      // Give out respective radios
      if (({[_x,_typeOfUnit] call BIS_fnc_inString} count _rifradio) > 0) then {
        _unit linkItem _radio3;
      } else {
        if (({[_x,_typeOfUnit] call BIS_fnc_inString} count _shortrange) > 0) then {
          _unit linkItem _radio2;
        };
      };

      // Special cases
      _specialist = ["_sniper_F","_spotter_F"];

      // If unit is leader of group and in the above list, give SR. Else, give them
      // a rifleman's radio.

      if (({[_x,_typeOfUnit] call BIS_fnc_inString;} count _specialist) > 0) then {
        if (_unit == (leader (group _unit))) then {
          _unit linkItem _radio2;
        } else {
          _unit linkItem _radio3;
        };
      };

      // Give out LR backpacks according to f\radios\tfr_settings.sqf.
      if(f_radios_settings_tfr_defaultLRBackpacks) then {
        if (_unit == (leader (group _unit))) then {
          _backpackItems = backpackItems _unit;
          removeBackpack _unit;
          _unit addBackpack _radio1;
          {_unit addItemToBackpack _x;} forEach _backpackItems;
        };
      } else {
        // If unit is in the list of units that receive a long-range radio, do so.
        if(_typeOfUnit in f_radios_settings_tfr_backpackRadios) then {
          _backpackItems = backpackItems _unit;
          removeBackpack _unit;
          _unit addBackpack _radio1;
          {_unit addItemToBackpack _x;} forEach _backpackItems;
        };
      };

  };

};

// ====================================================================================