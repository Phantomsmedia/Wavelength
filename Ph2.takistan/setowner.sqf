if !(isServer) exitWith {};
_HC = _this select 0;
_list = _this select 1;
OC_pass = 0;
OC_fail = 0;
for "_i" from 0 to ((count _list) - 1) do {
	_unit = _list select _i;
	
	if (_unit setOwner (owner _HC)_ then {
		OC_pass = OC_pass + 1;
	} else {
		OC_fail = OC_fail + 1;
	};
};
publicVariable "OC_pass";
publicVariable "OC_fail";