_unit = _this select 0;

if (!(alive player) && isMultiplayer && (count playableUnits == 0)) then {
	[["LOSER", false],"BIS_fnc_endMission",true,true] call BIS_fnc_MP;
};

if ("task_force_radio" in activatedAddons) then {[player, true] call TFAR_fnc_forceSpectator};
if ("acre_main" in activatedAddons) then {[true] call acre_api_fnc_setSpectator};

if ("agm_medical" in activatedAddons) then {
	player setVariable ["AGM_Bleeding", false];
	player setVariable ["AGM_Unconscious", false];
	player setVariable ["AGM_InPain", false];
	AGM_BloodLevel_CC ppEffectEnable False;
	AGM_Unconscious_CC ppEffectEnable False;
	AGM_Unconscious_RB ppEffectEnable False;
	AGM_Blinding_CC ppEffectEnable False;
	AGM_Pain_CC ppEffectEnable False;
	AGM_Pain_CA ppEffectEnable False;
	[false] call AGM_Core_fnc_disableUserInput;
};

if ("agm_nametags" in activatedAddons) then {
	AGM_NameTags_PlayerNamesViewDistance = 100;
};

A3G_SpectatorCamWDown = false;
A3G_SpectatorCamADown = false;
A3G_SpectatorCamSDown = false;
A3G_SpectatorCamDDown = false;
A3G_SpectatorCamQDown = false;
A3G_SpectatorCamEDown = false;
A3G_SpectatorCamShiftDown = false;
A3G_SpectatorCamAltDown = false;

A3G_SpectatorCamViewMode = 0;		//0 - free cam | 1 - 3rd person   | 2 - first person
A3G_SpectatorCamVisionMode = 0;		//0 - standard | 1 - night vision | 2 - thermal vision

A3G_SpectatorCamTarget = _unit;
A3G_SpectatorCamDir = direction A3G_SpectatorCamTarget;
A3G_SpectatorCamPitch = -45;
A3G_SpectatorCamVecDirUp = [A3G_SpectatorCamDir, A3G_SpectatorCamPitch] call A3GSC_fnc_CalcVecDir;
A3G_SpectatorCamHeight = 3;

A3G_SpectatorCam = "camera" camCreate (A3G_SpectatorCamTarget modelToWorld [0, -2.5, 3]);
A3G_SpectatorCam setVectorDirAndUp A3G_SpectatorCamVecDirUp;
A3G_SpectatorCam cameraEffect ["External", "BACK"];
A3G_SpectatorCam camCommit 0;
showCinemaBorder false;
cameraEffectEnableHUD true;
A3G_SpectatorCamHelpVisible = true;
("A3GSC_Help" call BIS_fnc_rscLayer) cutRsc ["A3GSC_titleHelp", "PLAIN"];

(findDisplay 46) displayRemoveAllEventHandlers "MouseMoving";
(findDisplay 46) displayAddEventHandler ["MouseMoving", {
	_deltaX = _this select 1;
	_deltaY = _this select 2;
	A3G_SpectatorCamDir = A3G_SpectatorCamDir + _deltaX;
	A3G_SpectatorCamPitch = -89 max (89 min (A3G_SpectatorCamPitch - _deltaY));
	A3G_SpectatorCamVecDirUp = [A3G_SpectatorCamDir, A3G_SpectatorCamPitch] call A3GSC_fnc_CalcVecDir;
}];

(findDisplay 46) displayRemoveAllEventHandlers "KeyDown";
(findDisplay 46) displayAddEventHandler ["KeyDown", {
	_keycode = _this select 1;
	switch (_keycode) do {
		case 0x11: {A3G_SpectatorCamWDown = true;};
		case 0x1E: {A3G_SpectatorCamADown = true;};
		case 0x1F: {A3G_SpectatorCamSDown = true};
		case 0x20: {A3G_SpectatorCamDDown = true};
		case 0x10: {A3G_SpectatorCamQDown = true};
		case 0x12: {A3G_SpectatorCamEDown = true};
		case 0x2A: {A3G_SpectatorCamShiftDown = true};
		case 0x38: {A3G_SpectatorCamAltDown = true};
		case 0x39: {A3G_SpectatorCamViewMode = (A3G_SpectatorCamViewMode + 1) mod 3; [] call A3GSC_fnc_HandleCameraSwitch};
		case 0x31: {A3G_SpectatorCamVisionMode = (A3G_SpectatorCamVisionMode + 1) mod 3; [] call A3GSC_fnc_HandleVisionSwitch};
		case 0xCD: {
			if (count playableUnits > 0) then {
				if !(isPlayer A3G_SpectatorCamTarget && (count playableUnits > 0)) then {
					A3G_SpectatorCamTarget = playableUnits select 0;
				} else {
					A3G_SpectatorCamTarget = playableUnits select (((playableUnits find A3G_SpectatorCamTarget) + 1) mod (count playableUnits));
				};
				cutRsc ["A3GSC_titlePlayername", "PLAIN"];
				((uiNamespace getVariable "A3GSC_dispPlayerName") displayCtrl 1) ctrlSetText (name A3G_SpectatorCamTarget);
				[] call A3GSC_fnc_HandleCameraSwitch;
			} else {
				cutRsc ["A3GSC_titlePlayername", "PLAIN"];
				((uiNamespace getVariable "A3GSC_dispPlayerName") displayCtrl 1) ctrlSetText (name A3G_SpectatorCamTarget);
			};
		};
		case 0xCB: {
			if (count playableUnits > 0) then {
				if !(isPlayer A3G_SpectatorCamTarget) then {
					A3G_SpectatorCamTarget = playableUnits select 0;
				} else {
					A3G_SpectatorCamTarget = playableUnits select (((playableUnits find A3G_SpectatorCamTarget) - 1 + (count playableUnits)) mod (count playableUnits));
				};
				cutRsc ["A3GSC_titlePlayername", "PLAIN"];
				((uiNamespace getVariable "A3GSC_dispPlayerName") displayCtrl 1) ctrlSetText (name A3G_SpectatorCamTarget);
				[] call A3GSC_fnc_HandleCameraSwitch;
			} else {
				cutRsc ["A3GSC_titlePlayername", "PLAIN"];
				((uiNamespace getVariable "A3GSC_dispPlayerName") displayCtrl 1) ctrlSetText (name A3G_SpectatorCamTarget);
			};
		};
		case 0x23: {
			if (A3G_SpectatorCamHelpVisible) then {
				A3G_SpectatorCamHelpVisible = false;
				("A3GSC_Help" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
			} else {
				A3G_SpectatorCamHelpVisible = true;
				("A3GSC_Help" call BIS_fnc_rscLayer) cutRsc ["A3GSC_titleHelp", "PLAIN"];
			};
		};
	};
	false
}];

(findDisplay 46) displayRemoveAllEventHandlers "KeyUp";
(findDisplay 46) displayAddEventHandler ["KeyUp", {
	_keycode = _this select 1;
	switch (_keycode) do {
		case 0x11: {A3G_SpectatorCamWDown = false};
		case 0x1E: {A3G_SpectatorCamADown = false};
		case 0x1F: {A3G_SpectatorCamSDown = false};
		case 0x20: {A3G_SpectatorCamDDown = false};
		case 0x10: {A3G_SpectatorCamQDown = false};
		case 0x12: {A3G_SpectatorCamEDown = false};
		case 0x2A: {A3G_SpectatorCamShiftDown = false};
		case 0x38: {A3G_SpectatorCamAltDown = false};
	};
	false
}];

addMissionEventHandler ["Draw3D", {
	
	if (A3G_SpectatorCamViewMode == 0) then {
		_factorSpeed = 0.4;
		if (A3G_SpectatorCamShiftDown) then {
			_factorSpeed = 1;
		};
		if (A3G_SpectatorCamAltDown) then {
			_factorSpeed = 0.2;
		};

		_newPosDelta = [0,0,0];
		_vecDir = vectorDir A3G_SpectatorCam;
		//do not change height with WASD, make speed independant of pitch/bank
		_vecDir set [2, 0];
		_vecDir = vectorNormalized _vecDir;

		if (A3G_SpectatorCamWDown) then {
			_newPosDelta = _newPosDelta vectorAdd _vecDir;
		};
		if (A3G_SpectatorCamSDown) then {
			_newPosDelta = _newPosDelta vectorDiff _vecDir;
		};

		if (A3G_SpectatorCamADown) then {
			_newPosDelta = _newPosDelta vectorAdd [(_vecDir select 0) * -4.37114e-008 - (_vecDir select 1), (_vecDir select 0) + (_vecDir select 1) * -4.37114e-008, (_vecDir select 2)];
		};
		if (A3G_SpectatorCamDDown) then {
			_newPosDelta = _newPosDelta vectorAdd [(_vecDir select 0) * -4.37114e-008 + (_vecDir select 1), -(_vecDir select 0) + (_vecDir select 1) * -4.37114e-008, (_vecDir select 2)];
		};

		if (A3G_SpectatorCamEDown) then {
			A3G_SpectatorCamHeight = A3G_SpectatorCamHeight + 0.5;
			_newPosDelta = _newPosDelta vectorAdd [0,0,0.5];
		};
		if (A3G_SpectatorCamQDown) then {
			_newPosDelta = _newPosDelta vectorDiff [0,0,0.5];
		};
		
		_newPos = (getPos A3G_SpectatorCam) vectorAdd (_newPosDelta vectorMultiply (_factorSpeed * (1 max (10 min A3G_SpectatorCamHeight*0.05))));
		A3G_SpectatorCam setPos _newPos;
		A3G_SpectatorCam setVectorDirAndUp A3G_SpectatorCamVecDirUp;
		A3G_SpectatorCamHeight = _newPos select 2;
	};

	{
		_tagPosition = visiblePositionASL _x;
		_tagPosition set [2, ((_x modelToWorld [0,0,2]) select 2)];
		switch (side group _x) do {
			case west: {
				if ((A3G_SpectatorCam distance _x > 500) && (isFormationLeader _x)) then {
					drawIcon3D ["\A3\ui_f\data\map\Markers\NATO\b_unknown.paa", [0,0.3,0.6,0.5], _tagPosition, 1, 1, 0];
				} else {
					if (A3G_SpectatorCam distance leader group _x <= 500) then {
						if (captive _x) then {
							drawIcon3D ["\a3\ui_f\data\map\MapControl\tree_ca.paa", [0,0.3,0.6,0.5], _tagPosition, 0.5, 0.5, 0];
						} else {
							drawIcon3D ["\a3\ui_f\data\map\Markers\Military\dot_ca.paa", [0,0.3,0.6,0.5], _tagPosition, 1, 1, 0];
						};
					};
				};
			};
			case east: {
				if ((A3G_SpectatorCam distance _x > 500) && (isFormationLeader _x)) then {
					drawIcon3D ["\A3\ui_f\data\map\Markers\NATO\o_unknown.paa", [0.5,0,0,0.5], _tagPosition, 1, 1, 0];
				} else {
					if (A3G_SpectatorCam distance leader group _x <= 500) then {
						if (captive _x) then {
							drawIcon3D ["\a3\ui_f\data\map\MapControl\tree_ca.paa", [0.5,0,0,0.5], _tagPosition, 0.5, 0.5, 0];
						} else {
							drawIcon3D ["\a3\ui_f\data\map\Markers\Military\dot_ca.paa", [0.5,0,0,0.5], _tagPosition, 1, 1, 0];
						};
					};
				};
			};
			case independent: {
				if ((A3G_SpectatorCam distance _x > 500) && (isFormationLeader _x)) then {
					drawIcon3D ["\A3\ui_f\data\map\Markers\NATO\n_unknown.paa", [0,0.5,0,0.5], _tagPosition, 1, 1, 0];
				} else {
					if (A3G_SpectatorCam distance leader group _x <= 500) then {
						if (captive _x) then {
							drawIcon3D ["\a3\ui_f\data\map\MapControl\tree_ca.paa", [0,0.5,0,0.5], _tagPosition, 0.5, 0.5, 0];
						} else {
							drawIcon3D ["\a3\ui_f\data\map\Markers\Military\dot_ca.paa", [0,0.5,0,0.5], _tagPosition, 1, 1, 0];
						};
					};
				};
			};
		};
	} foreach allUnits;

}];
