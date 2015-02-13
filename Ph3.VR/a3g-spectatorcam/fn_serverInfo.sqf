if (isMultiplayer) then {
	0 spawn {while {true} do {
		waitUntil {!(isNull findDisplay 49)};
		("serverInfo" call BIS_fnc_rscLayer) cutRsc ["A3GSC_titleServerInfo", "PLAIN"];

		waitUntil {isNull findDisplay 49};
		("serverInfo" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
	};};
};