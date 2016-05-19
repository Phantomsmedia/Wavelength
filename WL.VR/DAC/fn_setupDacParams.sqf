//Check HC for 1.36 Headless Client
if (isNil "f_param_headlessClient") then {f_param_headlessClient = "f_param_headlessClient" call BIS_fnc_getParamValue;};  //f_param_headlessClient from description.ext/Params
isAIcontroller = if ((!isMultiplayer) || (isNil "HC")) then {
    isServer;
} else {
    switch (f_param_headlessClient) do {
    case (0): {isServer}; 								//param == "off"
    case (1): {(!hasInterface && !isDedicated)};		//param == "auto"
    };
};


if ((!isNil "f_param_dacdebug") && {f_param_dacdebug == 1}) then {
    DAC_Com_Values    = [1,2,0,0];
    DAC_Marker = 2;
} else {
    DAC_Com_Values    = [1,1,0,0];
    DAC_Marker = 0;
};
