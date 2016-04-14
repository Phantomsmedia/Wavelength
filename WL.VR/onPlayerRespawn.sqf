params ["_unit","_corpse"];
if !(isNull _corpse) then {
    [_unit,_corpse,3,3,true] call f_fnc_CamInit;
};