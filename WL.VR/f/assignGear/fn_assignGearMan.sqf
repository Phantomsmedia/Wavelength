
// F3 - F3 Folk ARPS Assign Gear
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
private ["_unit", "_faction", "_loadout", "_path", "_uniforms", "_vests", "_headgears", "_goggles", "_backpack", "_backpackItems", "_weapons", "_launchers", "_handguns", "_magazines", "_items", "_linkedItems", "_attachments", "_primaryWeaponSelected", "_launcherSelected", "_handgunSelected", "_primaryMagazines", "_launcherMagazines", "_handgunMagazines", "_grenadeLauncherMagazines"];

_unit = _this select 0;

if (!(local _unit)) exitWith {};

if (isNil "f_var_medical_replacements") then {
    _medicalMode = getNumber (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_MODE");
     switch (_medicalMode) do
     {
         case 1:
         {
            f_var_medical_standard = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_BASIC" >> "STANDARD" >> "items");
            f_var_medical_leader = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_BASIC" >> "LEADER" >> "items");
            f_var_medical_medic = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_BASIC" >> "MEDIC" >> "items");
            f_var_medical_vehicle = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_BASIC" >> "VEHICLE" >> "items");
         };
        case 2:
         {
            f_var_medical_standard = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_ADVANCED" >> "STANDARD" >> "items");
            f_var_medical_leader = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_ADVANCED" >> "LEADER" >> "items");
            f_var_medical_medic = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_ADVANCED" >> "MEDIC" >> "items");
            f_var_medical_vehicle = getArray (missionConfigFile >> "CfgLoadouts" >> "MEDICAL_ADVANCED" >> "VEHICLE" >> "items");
         };
     };

    f_var_medical_replacements = [
        ["MEDICAL_STANDARD", f_var_medical_standard],
        ["MEDICAL_LEADER", f_var_medical_leader],
        ["MEDICAL_MEDIC", f_var_medical_medic],
        ["MEDICAL_VEHICLE", f_var_medical_vehicle]
    ];
};

_faction = tolower (faction _unit);
//Check variable f_gear, otherwise default to typeof
_loadout = _unit getVariable ["F_Gear", (typeOf _unit)];

// INSIGNIA (todo: move to the CfgLoadouts system)
// This block will give units insignia on their uniforms.
/*[_unit,_loadout] spawn {
    #include "f_assignInsignia.sqf"
};*/

if (isNil "F_Gear_Path_Override") then {
    _path = missionConfigFile >> "CfgLoadouts" >> _faction >> _loadout;
} else {
    _path = [_faction, _loadout] call F_Gear_Path_Override;
};

if(!isClass(_path)) exitWith {
    if ((isPlayer _unit) && (typeOf _unit != "VirtualCurator_F")) then {
        // _unit setVariable ["f_var_assignGear_done", true, true];
        diag_log format ["[BW] No loadout found for %1 (typeOf %2)", _unit, (typeof _unit)];
        systemChat format ["No loadout found for %1 (typeOf %2)", _unit, (typeof _unit)];
    };
};

if (isPlayer _unit) then {
    diag_log format ["[BW] Setting gear for unit [%1, %2] with path as CfgLoadouts >> %3 >> %4", _unit, (typeof _unit), _faction, _loadout];
};

_uniforms = getArray(_path >> "uniform");
_vests = getArray(_path >> "vest");
_headgears = getArray(_path >> "headgear");
_goggles = getArray(_path >> "goggles");
_backpack = getArray(_path >> "backpack");
_backpackItems = getArray(_path >> "backpackItems");
_weapons = getArray(_path >> "weapons");
_launchers = getArray(_path >> "launchers");
_handguns = getArray(_path >> "handguns");
_magazines = getArray(_path >> "magazines");
_items = getArray(_path >> "items");
_linkedItems = getArray(_path >> "linkedItems");
_attachments = getArray(_path >> "attachments");

if (isNil "F_Gear_Replace_MedicalItems") then {
    F_Gear_Replace_MedicalItems = {
        _array = _this;
        {
            _itemsEntry = _x;
            _itemsIndex = _forEachIndex;
            {
                if ((_x select 0) == _itemsEntry) then {
                    _array deleteAt _itemsIndex;
                    {_array pushBack _x} forEach (_x select 1);
                };
            } forEach f_var_medical_replacements;
        } forEach _array;
    };
};

_backpackItems call F_Gear_Replace_MedicalItems;
_items call F_Gear_Replace_MedicalItems;

removeAllWeapons _unit;
removeAllAssignedItems _unit;
removeAllItemsWithMagazines _unit;

// ====================================================================================
// Clothes
//Random Uniform:
if ((count _uniforms) == 0) then {
    removeUniform _unit;
} else {
    _toAdd = _uniforms call BIS_fnc_selectRandom;
    if ((!isNil "_toAdd") && {isClass (configFile >> "CfgWeapons" >> _toAdd)}) then {
        removeUniform _unit;
        if (_unit isUniformAllowed _toAdd) then {
            _unit addUniform _toAdd;
        } else {
            _unit forceAddUniform _toAdd;
        };
    } else {
        diag_log text format ["[BW] %1 Uniform (%2) not found using default (%3)", _loadout, _toAdd, (uniform _unit)];
    };
};
//Random Vest:
if ((count _vests) == 0) then {
    removeVest _unit;
} else {
    _toAdd = _vests call BIS_fnc_selectRandom;
    if ((!isNil "_toAdd") && {isClass (configFile >> "CfgWeapons" >> _toAdd)}) then {
        removeVest _unit;
        _unit addVest _toAdd;
    } else {
        diag_log text format ["[BW] %1 Vest (%2) not found using default (%3)", _loadout, _toAdd, (vest _unit)];
    };
};
//Random Backpack:
if ((count _backpack) == 0) then {
    removeBackpack _unit;
} else {
    _toAdd = _backpack call BIS_fnc_selectRandom;
    if ((!isNil "_toAdd") && {isClass (configFile >> "CfgVehicles" >> _toAdd)}) then {
        removeBackpack _unit;
        _unit addBackpack _toAdd;
    } else {
        diag_log text format ["[BW] %1 Backpack (%2) not found using default (%3)", _loadout, _toAdd, (backpack _unit)];
    };
};
//Random Headgear:
if ((count _headgears) == 0) then {
    removeHeadgear _unit;
} else {
    _toAdd = _headgears call BIS_fnc_selectRandom;
    if ((!isNil "_toAdd") && {isClass (configFile >> "CfgWeapons" >> _toAdd)}) then {
        removeHeadgear _unit;
        _unit addHeadgear _toAdd;
    } else {
        diag_log text format ["[BW] %1 Headgear (%2) not found using default (%3)", _loadout, _toAdd, (headgear _unit)];
    };
};

//Random Glasses:
if ((count _goggles) == 0) then {
    removeGoggles _unit;
} else {
    _toAdd = _goggles call BIS_fnc_selectRandom;
    if ((!isNil "_toAdd") && {isClass (configFile >> "CfgGlasses" >> _toAdd)}) then {
        removeGoggles _unit;
        _unit addGoggles _toAdd;
    } else {
        diag_log text format ["[BW] %1 Goggles (%2) not found using default (%3)", _loadout, _toAdd, (goggles _unit)];
    };
};

//Clear backpack
clearAllItemsFromBackpack _unit;

// Backpack Items
{
    _arr = [_x,":"] call BIS_fnc_splitString;
    if ((count _arr) > 0) then {
        _classname = _arr select 0;
        _amt = if (count _arr > 1) then {parseNumber (_arr select 1);} else {1};
        for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
            if (_unit canAddItemToBackpack _classname) then {
                _unit addItemToBackpack _classname;
            } else {
                _unit addItem _classname;
            };
        };
    };
} foreach _backpackItems;

// ====================================================================================
// Items
{
    _arr = [_x,":"] call BIS_fnc_splitString;
    if ((count _arr) > 0) then {
        _classname = _arr select 0;
        _amt = if (count _arr > 1) then {parseNumber (_arr select 1);} else {1};
        for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
            _unit additem _classname;
        };
    };
} foreach _items;
{
    _arr = [_x,":"] call BIS_fnc_splitString;
    if ((count _arr) > 0) then {
        _classname = _arr select 0;
        _amt = if (count _arr > 1) then {parseNumber (_arr select 1);} else {1};
        if ("Binocular" in ([(configFile >> "CfgWeapons" >> _classname), true] call BIS_fnc_returnParents)) then {
            _unit addWeapon _classname;
        } else {
            for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
                _unit linkItem _classname;
            };
        };
    };
} foreach _linkedItems;


// ====================================================================================
// Weapons
if ((count _weapons) > 0) then {_primaryWeaponSelected = _weapons call BIS_fnc_selectRandom;};
if ((count _launchers) > 0) then {_launcherSelected = _launchers call BIS_fnc_selectRandom;};
if ((count _handguns) > 0) then {_handgunSelected = _handguns call BIS_fnc_selectRandom;};

// ====================================================================================
// Magazines
if (!isNil "_primaryWeaponSelected") then {
    _primaryMagazines = getArray(configFile >> "CfgWeapons" >> _primaryWeaponSelected >> "magazines");
        if (count getArray(configFile >> "CfgWeapons" >> _primaryWeaponSelected >> "muzzles") > 1) then {
            _grenadeLauncher = getArray(configFile >> "CfgWeapons" >> _primaryWeaponSelected >> "muzzles") select 1;
            _grenadeLauncherMagazines = getArray(configFile >> "CfgWeapons" >> _grenadeLauncher >> "magazines");
        } else {_grenadeLauncherMagazines = [];};
    } else {_primaryMagazines = [];_grenadeLauncherMagazines = [];};
if (!isNil "_launcherSelected") then {_launcherMagazines = getArray(configFile >> "CfgWeapons" >> _launcherSelected >> "magazines");} else {_launcherMagazines = [];};
if (!isNil "_handgunSelected") then {_handgunMagazines = getArray(configFile >> "CfgWeapons" >> _handgunSelected >> "magazines");} else {_handgunMagazines = [];};

_magazinesNotAdded = [];
{
    _arr = [_x,":"] call BIS_fnc_splitString;
    if ((count _arr) > 0) then {
        _classname = _arr select 0;

        _isPrimaryMagazine = ({_classname isKindOf [_x, configFile >> "CfgMagazines"]} count _primaryMagazines) > 0;
        _isGLMagazine = ({_classname isKindOf [_x, configFile >> "CfgMagazines"]} count _grenadeLauncherMagazines) > 0;
        _isLauncherMagazine = ({_classname isKindOf [_x, configFile >> "CfgMagazines"]} count _launcherMagazines) > 0;
        _isHandgunMagazine = ({_classname isKindOf [_x, configFile >> "CfgMagazines"]} count _handgunMagazines) > 0;
        _isGrenade = count ( "_classname in getArray( _x >> 'magazines' )" configClasses ( configFile >> "CfgWeapons" >> "Throw" ) ) > 0;
        _isExplosive = count ( "_classname in getArray( _x >> 'magazines' )" configClasses ( configFile >> "CfgWeapons" >> "Put" ) ) > 0;

        if (_isPrimaryMagazine || _isGLMagazine || _isLauncherMagazine || _isHandgunMagazine || _isGrenade || _isExplosive) then {
            _amt = if (count _arr > 1) then {parseNumber (_arr select 1);} else {1};
            _unit addMagazines [_classname, _amt];
            _notAdded = _amt - ({_x == _classname} count (magazines _unit));
            for "_index" from 0 to (_notAdded - 1) do {
                _magazinesNotAdded pushBack _classname;
            };
        };
    };
} foreach _magazines;

if (!isNil "_primaryWeaponSelected") then {_unit addWeapon _primaryWeaponSelected;};
if (!isNil "_launcherSelected") then {_unit addWeapon _launcherSelected;};
if (!isNil "_handgunSelected") then {_unit addWeapon _handgunSelected;};

// ====================================================================================
// attachments
{
    _arr = [_x,":"] call BIS_fnc_splitString;
    if ((count _arr) > 0) then {
        _classname = _arr select 0;
        _amt = if (count _arr > 1) then {parseNumber (_arr select 1);} else {1};
        for [{_i=1},{_i<=_amt},{_i=_i+1}] do {
            _unit addPrimaryWeaponItem _classname;
            _unit addSecondaryWeaponItem _classname;
            _unit addHandgunItem _classname;
        };
    };
} foreach _attachments;

//Try to add missing magazines:
{
    if (_unit canAdd _x) then {
        _unit addMagazines [_x, 1];
    } else {
        if (isNil "F_GEAR_ERROR_LOADOUTS") then {F_GEAR_ERROR_LOADOUTS = [];};
        diag_log text format ["[BW] %1 - No room for magazine %2", _loadout, _x];
        if (!(_loadout in F_GEAR_ERROR_LOADOUTS)) then {
            F_GEAR_ERROR_LOADOUTS pushBack _loadout;
            diag_log text format ["Failed To add Magazine %1 to %2", _x, _loadout];
            if (isServer && hasInterface) then {
                systemChat format ["Failed To add Magazine %1 to %2", _x, _loadout];
            };
        };
    };
} forEach _magazinesNotAdded;

_a = _path >> "init";
if (isText _a) then {
    _unit call compile ("this = _this;"+ getText _a);
};
_w = (parseNumber ([_unit] call ace_movement_fnc_getWeight));
if ((_w > 30) && (_w < 35)) then {
    diag_log format ["[SC] Heavy loadout found %1 (%2 - %3)", _unit, (typeof _unit), ([_unit] call ace_movement_fnc_getWeight)];
    systemChat format ["Heavy loadout found %1 (%2 - %3)", _unit, (typeof _unit), ([_unit] call ace_movement_fnc_getWeight)];
};
if (_w > 35) then {
    diag_log format ["[SC] Loadout too heavy for %1 (%2 - %3)", _unit, (typeof _unit), ([_unit] call ace_movement_fnc_getWeight)];
    systemChat format ["Loadout too heavy for %1 (%2 - %3)", _unit, (typeof _unit), ([_unit] call ace_movement_fnc_getWeight)];
};

_unit setVariable ["f_var_assignGear_done", true, true];
