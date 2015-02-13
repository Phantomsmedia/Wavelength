private ["_vectorLength", "_camTarget", "_nearestLand", "_nearestMan"];

switch (A3G_SpectatorCamViewMode) do {
	case 0: {
		A3G_SpectatorCam cameraEffect ["terminate", "BACK"];

		A3G_SpectatorCamDir = direction A3G_SpectatorCamTarget;
		A3G_SpectatorCamPitch = -45;
		A3G_SpectatorCamVecDirUp = [A3G_SpectatorCamDir, A3G_SpectatorCamPitch] call A3GSC_fnc_CalcVecDir;
		A3G_SpectatorCamHeight = 3;

		A3G_SpectatorCam setPos (A3G_SpectatorCamTarget modelToWorld [0, -2.5, 3]);
		
		A3G_SpectatorCam setVectorDirAndUp A3G_SpectatorCamVecDirUp;
		A3G_SpectatorCam cameraEffect ["External", "BACK"];
		A3G_SpectatorCam camCommit 0;
		showCinemaBorder false;
		cameraEffectEnableHUD true;
	};
	case 1: {
		detach A3G_SpectatorCam;
		if(A3G_SpectatorCamPitch > 0) then {
			A3G_SpectatorCam attachTo [A3G_SpectatorCamTarget, [0.5,-1.5,1.5]];
		} else {
			//select target
			//right angled triangle calculations
			_vectorLength = A3G_SpectatorCamHeight / tan (-1 * A3G_SpectatorCamPitch);

			//rotate vector, position of camera + vector, z = 0
			// => exact position of what the camera is pointing at
			_camTarget = [_vectorLength * (sin A3G_SpectatorCamDir) + (getPos A3G_SpectatorCam select 0), _vectorLength * (cos A3G_SpectatorCamDir) + (getPos A3G_SpectatorCam select 1), 0];

			//ignoring Air vehicles because camTarget is always on the ground
			if !(isNull nearestObject [_camTarget, "CAManBase"] && isNull nearestObject [_camTarget, "Land"]) then {
				_nearestMan = nearestObject [_camTarget, "CAManBase"];
				_nearestLand = nearestObject [_camTarget, "LandVehicle"];
				if ((_nearestMan distance _camTarget) < (_nearestLand distance _camTarget)) then {
					A3G_SpectatorCamTarget = nearestObject [_camTarget, "CAManBase"];
				} else {
					A3G_SpectatorCamTarget = nearestObject [_camTarget, "LandVehicle"];
				};
			};
			if (A3G_SpectatorCamTarget isKindOf "CAManBase") then {
				A3G_SpectatorCam attachTo [A3G_SpectatorCamTarget, [0.5,-1.5,1.5]];
			} else {
				A3G_SpectatorCam attachTo [A3G_SpectatorCamTarget, [0,-8,1]];
			};
		};
		if (isPlayer A3G_SpectatorCamTarget) then {
			cutRsc ["A3GSC_titlePlayername", "PLAIN"];
			((uiNamespace getVariable "A3GSC_dispPlayerName") displayCtrl 1) ctrlSetText (name A3G_SpectatorCamTarget);
		};
		0 spawn {
			("A3GSC_playerStats" call BIS_fnc_rscLayer) cutRsc ["A3GSC_titlePlayerstats", "PLAIN"];
			while {A3G_SpectatorCamViewMode > 0 && !(isNull A3G_SpectatorCamTarget)} do {
				((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 1) progressSetPosition (getFatigue A3G_SpectatorCamTarget);
				((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 2) progressSetPosition (A3G_SpectatorCamTarget getVariable ["AGM_Blood", 1]);
				((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 3) progressSetPosition (A3G_SpectatorCamTarget getVariable ["AGM_Pain", 0]);

				if !(alive A3G_SpectatorCamTarget) then {
					((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 4) ctrlSetText "Dead";
				} else {
					if (A3G_SpectatorCamTarget getVariable ["AGM_isUnconscious", False]) then {
						if ((damage A3G_SpectatorCamTarget) > 0) then {
							((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 4) ctrlSetText "Unconscious & Bleeding";
						} else {
							((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 4) ctrlSetText "Unconscious";
						};
					} else {
						if (damage A3G_SpectatorCamTarget > 0) then {
							((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 4) ctrlSetText "Bleeding";
						} else {
							((uiNamespace getVariable "A3GSC_dispPlayerStats") displayCtrl 4) ctrlSetText "";
						};
					};
				};
				sleep 0.5;
			};
			("A3GSC_playerStats" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
		};
	};
	case 2: {
		detach A3G_SpectatorCam;
		A3G_SpectatorCam cameraEffect ["terminate", "BACK"];
		A3G_SpectatorCamTarget switchCamera "Internal";
		A3G_SpectatorCam camCommit 0;
		showCinemaBorder false;
		cameraEffectEnableHUD true;
	};
};