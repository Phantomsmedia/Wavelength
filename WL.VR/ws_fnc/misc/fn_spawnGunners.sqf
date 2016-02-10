// ws_fnc_spawnGunners
// By Zriel | st1arma.es
/*
FEATURE
Spawn AI gunners on selected vehicles, if f_var_spawnGunners in the vehicle is true and if f_param_spawnGunners is true also.
USAGE

[object] call ws_fnc_spawnGunners

PARAMETERS
1. The object (vehicle) to spawn gunners on.  | MANDATORY

RETURNS
crew

NOTE
ARMA 3 only

*/

private ["_vehicle","_crew"];

_vehicle = _this select 0;

waitUntil {!isNil "f_var_setParams"};

if (!(f_param_spawnGunners == 1) || !(local _vehicle) || !(_vehicle getVariable ["f_var_spawnGunners",false])) exitWith {};

createVehicleCrew _vehicle;
_crew = crew _vehicle;

{
   if ((assignedVehicleRole _x select 0 == "Turret") && (assignedVehicleRole _x select 1 select 0 == 0)) then {_vehicle deleteVehicleCrew _x; _crew = _crew - [_x];};
    if (driver _vehicle == _x) then {_vehicle deleteVehicleCrew _x; _crew = _crew - [_x];};
} forEach _crew;

_crew;
