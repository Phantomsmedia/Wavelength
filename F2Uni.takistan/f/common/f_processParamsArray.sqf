// F2 - Process ParamsArray
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

for [ { _i = 0 }, { _i < count(paramsArray) }, { _i = _i + 1 } ] do
{
	_paramName =(configName ((missionConfigFile >> "Params") select _i));
	_paramValue = (paramsArray select _i);
	_paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
	_code = format[_paramCode, _paramValue];
	call compile _code;
};

_fogDensity = f_param_fogDensity;
_fogType = f_param_fogType;
_fogOpacity = f_param_fogOpacity / 10;

//FOG SCRIPT INITIALIZATION
if (f_param_fogClouds == 1) then {
	if (f_param_fogType == 1) then { //IF IT IS FOG
		null=[Player,350,20,_fogDensity,8,12,-0.3,0.1,_fogOpacity,1,1,1,13,12,15,true] execFSM "Fog.fsm";
	};
	if (f_param_fogType == 2) then { //IF IT IS SAND/DUST
		null=[Player,350,20,_fogDensity,8,12,-0.3,0.1,_fogOpacity,0.80392156862,0.72549019607,0.61176470588,13,12,15,true,10] execFSM "Fog.fsm";
	};
};

// Prevents damage in the first xxx seconds of the mission (grace period)
{
	_x allowDamage false;
} forEach playableUnits;
_countVar = f_param_safestart*60;
while {_countVar > 0} do {
	hint format["Safe-start Timer: %1",_countVar];
	sleep 1;
	_countVar = _countVar - 1;
};
hint format["Safe-start Timer: Over"];
{
	_x allowDamage true;
} forEach playableUnits;