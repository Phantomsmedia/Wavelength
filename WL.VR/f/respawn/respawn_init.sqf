#include "respawn_settings.sqf"
#include "respawn_gui_code.sqf";

if (isServer) then {
  //Counters to allow for unique IDs of respawned players and groups.
  f_serverRespawnPlayerCounter = 1;
  f_serverRespawnGroupCounter = 1;
  [] spawn {
	waitUntil {time > 0};
	//check if respawn marker exists, if it doesn't then create it
	if (getMarkerColor "respawn" == "") then {
		createMarker ["respawn",[0,0]];
	};
  };
};

if (hasInterface) then {
  [] spawn {
    waitUntil {time > 0};
      player setVariable ["f_respawnName", name player, true];
      player setVariable ["f_respawnUID", getPlayerUID player, true];
  };
};
