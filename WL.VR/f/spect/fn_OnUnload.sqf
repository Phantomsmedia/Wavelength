disableSerialization;
sleep 1;
if (f_cam_forcedExit) ExitWith {};

f_cam_specialExit = false;

// handler to check for menus we want to wait on
_handle = [] spawn {
	// Zeus menus
	if (!isNull (findDisplay 312)) then {
		_done = false;
		waitUntil {sleep 0.1;!isNull (findDisplay 312)}; // wait until open

		// disable all the rendering from spect while in Zeus
		call F_fnc_RemoveHandlers;
		f_cam_specialExit = true;

		while {!_done} do
		{
		    waitUntil {sleep 0.1;isNull (findDisplay 312)}; // then wait until its not open
		    if(isnil "bis_fnc_moduleRemoteControl_unit") then // check if someone is being remote controled
		    {
		    	[player,player,player,0,true] spawn F_fnc_CamInit;
		        _done = true;
		    }; // restart spectator once exit.
		};
	};
	// Pause menu
	if (!isNull (findDisplay 49)) then {
		waitUntil {sleep 0.1; isNull (findDisplay 49)}; // then wait until its not open
	};
	// Pabst Menu
	if (!isNull (uiNamespace getVariable "PABST_ADMIN_dialogControl")) then {
		_idc = ctrlIDD (uiNamespace getVariable "PABST_ADMIN_dialogControl");
		waitUntil {sleep 0.1; isNull (findDisplay _idc)};
	};
};

waitUntil {sleep 0.1; scriptDone _handle};

// Allow handler to take control over re-init
if (f_cam_specialExit) ExitWith {};

createDialog "f_spec_dialog";

_displayDialog = (findDisplay 9228);
call f_fnc_ReloadModes;
ctrlSetText [2112,(f_cam_sideNames select f_cam_sideButton)];
if(f_cam_playersOnly) then { ctrlSetText [2111,"Players only"];}
else { ctrlSetText [2111,"All units"];};
_helpWindow = _displayDialog displayCtrl 1310;
_mapWindow = _displayDialog displayCtrl 1350;
_fullmapWindow = _displayDialog displayCtrl 1360;
_mapWindow ctrlShow false;
_fullmapWindow ctrlShow false;
_fullmapWindow mapCenterOnCamera false;
_mapWindow mapCenterOnCamera false;
_helpWindow ctrlSetStructuredText parseText (f_cam_helptext);
// hide it to stop from being spammed open.
ctrlShow [1315, !ctrlVisible 1315];
ctrlShow [1310, !ctrlVisible 1310];
ctrlShow [1300, !ctrlVisible 1300];
ctrlShow [1305, !ctrlVisible 1305];