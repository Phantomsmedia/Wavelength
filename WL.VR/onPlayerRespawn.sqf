params ["_unit","_corpse"];
if !(isNull _corpse) then {
	[_unit,_corpse,_unit,0,true] call f_fnc_CamInit;
};