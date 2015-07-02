/*
 * passToHCs.sqf
 *
 * In the mission editor, name the Headless Clients "HC", "HC2", "HC3" without the quotes
 *
 * In the mission init.sqf, call passToHCs.sqf with:
 * execVM "passToHCs.sqf";
 *
 * It seems that the dedicated server and headless client processes never use more than 20-22% CPU each.
 * With a dedicated server and 3 headless clients, that's about 88% CPU with 10-12% left over.  Far more efficient use of your processing power.
 *
 */

PassToHC_ReceiveMessage = compileFinal "
    if (hasInterface && (serverCommandAvailable '#kick' || isServer)) then {
      player globalChat (_this select 0);
    };
";

if (!isServer) exitWith {};

waitUntil{!isNil "f_param_headlessClient"};

if (f_param_headlessClient == 0) exitWith {};

private ["_HC_ID","_HC2_ID","_HC3_ID","_rebalanceTimer","_cleanUpThreshold","_maxWait","_loadBalance","_currentHC","_numTransfered","_swap","_rc","_numHC","_numHC2","_numHC3","_numDeleted"];

PassToHC_SendMessage = compileFinal "
  diag_log text _this;
  if (isServer && hasInterface) then {
    [_this] call PassToHC_ReceiveMessage;
  } else {
    [[_this], 'PassToHC_ReceiveMessage', true, false] call BIS_fnc_MP;
  };
";

"passToHCs: Started" call PassToHC_SendMessage;

waitUntil {!isNil "HC"};
waitUntil {!isNull HC};

_HC_ID = -1; // Will become the Client ID of HC
_HC2_ID = -1; // Will become the Client ID of HC2
_HC3_ID = -1; // Will become the Client ID of HC3
_rebalanceTimer = 60;  // Rebalance sleep timer in seconds
_cleanUpThreshold = 50; // Threshold of number of dead bodies + destroyed vehicles before forcing a clean up

PassToHC_NumTransfered = 0;

"passToHCs: Waiting for init scripts to settle before starting first pass..." call PassToHC_SendMessage;

sleep 15;

// If DAC is initializing after start delay wait until it finishes or timeout
if (!isNil "DAC_Basic_Value") then {
  _maxWait = time + 30;
  waituntil {sleep 1; (DAC_Basic_Value > 0) || time > _maxWait};
};

// If UPSMON is initializing after start delay wait until it finishes or timeout
if (!isNil "UPSMON_INIT") then {
  _maxWait = time + 30;
  waituntil {sleep 1; (UPSMON_INIT > 0) || time > _maxWait};
};

// Wait a bit more just in-case they scripts have not settled/synced yet
sleep 3;

format["passToHCs: First pass beginning now..."] call PassToHC_SendMessage;

while {true} do {
  // Do not enable load balancing unless more than one HC is present
  // Leave this variable false, we'll enable it automatically under the right conditions
  _loadBalance = false;

  // Get HC Client ID else set variables to null
  try {
    _HC_ID = owner HC;

    if (_HC_ID > 2) then {
      diag_log format ["passToHCs: Found HC with Client ID %1", _HC_ID];
    } else {
      diag_log "passToHCs: [WARN] HC disconnected";

      HC = objNull;
      _HC_ID = -1;
    };
   } catch { diag_log format ["passToHCs: [ERROR] [HC] %1", _exception]; HC = objNull; _HC_ID = -1; };

  // Get HC2 Client ID else set variables to null
  if (!isNil "HC2") then {
    try {
      _HC2_ID = owner HC2;

      if (_HC2_ID > 2) then {
        diag_log format ["passToHCs: Found HC2 with Client ID %1", _HC2_ID];
      } else {
        diag_log "passToHCs: [WARN] HC2 disconnected";

        HC2 = objNull;
        _HC2_ID = -1;
      };
    } catch { diag_log format ["passToHCs: [ERROR] [HC2] %1", _exception]; HC2 = objNull; _HC2_ID = -1; };
  };

  // Get HC3 Client ID else set variables to null
  if (!isNil "HC3") then {
    try {
      _HC3_ID = owner HC3;

      if (_HC3_ID > 2) then {
        diag_log format ["passToHCs: Found HC2 with Client ID %1", _HC3_ID];
      } else {
        diag_log "passToHCs: [WARN] HC3 disconnected";

        HC3 = objNull;
        _HC3_ID = -1;
      };
    } catch { diag_log format ["passToHCs: [ERROR] [HC3] %1", _exception]; HC3 = objNull; _HC3_ID = -1; };
  };

  // If no HCs present, wait for HC to rejoin
  if ( (isNull HC) && (isNull HC2) && (isNull HC3) ) then { waitUntil {!isNull HC}; };

  // Check to auto enable Round-Robin load balancing strategy
  if ( (!isNull HC && !isNull HC2) || (!isNull HC && !isNull HC3) || (!isNull HC2 && !isNull HC3) ) then { _loadBalance = true; };

  if ( _loadBalance ) then {
    diag_log "passToHCs: Starting load-balanced transfer of AI groups to HCs";
  } else {
    // No load balancing
    diag_log "passToHCs: Starting transfer of AI groups to HC";
  };

  // Determine first HC to start with
  _currentHC = 0;

  if (!isNull HC) then { _currentHC = 1; } else {
    if (!isNull HC2) then { _currentHC = 2; } else { _currentHC = 3; };
  };

  // Pass the AI
  _numTransfered = 0;
  {
    _syncGroup = _x;
    _swap = true;
    
    _ownerID = _HC_ID;
    
     if ( _loadBalance ) then {

        _ownerID = switch (_currentHC) do {
          case 1: { if (!isNull HC2) then { _currentHC = 2; } else { _currentHC = 3; }; _HC_ID };
          case 2: { if (!isNull HC3) then { _currentHC = 3; } else { _currentHC = 1; }; _HC2_ID };
          case 3: { if (!isNull HC) then { _currentHC = 1; } else { _currentHC = 2; }; _HC3_ID };
          default {-1};
        };
        
    } else {
    
        _ownerID = switch (_currentHC) do {
          case 1: {_HC_ID};
          case 2: {_HC2_ID};
          case 3: {_HC3_ID};
          default {-1};
        };
    
    };

    // Check if group has already been transfered
    if (_syncGroup getVariable ["hc_transfered", false]) then {
      _swap = false;
    } else {
        
        if (groupOwner _syncGroup == _ownerID) then {
            _x setVariable ["hc_transfered", true];
            _swap = false;
        };
    
    };

    // Check if group is blacklisted
    if (_syncGroup getVariable ["hc_blacklist", false]) then {
      _swap = false;
    };

    if ( _swap ) then {
      {
        // If a player is in this group, don't swap to an HC
        if (isPlayer _x) exitWith { _swap = false; };

        // If a unit has 'hc_blacklist' set to true and is in this group, don't swap to an HC.
        if (_x getVariable ["hc_blacklist", false]) exitWith { _swap = false; };

        // If unit is in a vehicle check if vehicle or crew is blacklisted
        if (vehicle _x != _x) then {
          if ((vehicle _x) getVariable ["hc_blacklist", false]) exitWith { _swap = false; };
        };

      } forEach (units _syncGroup);
    };

    // Check if group has any waypoints synced to triggers and auto blacklist
    if ( _swap ) then {
      {
        if (count (synchronizedTriggers _x) > 0) exitWith {
          _syncGroup setVariable ["hc_blacklist", true];
          _swap = false;
        };
      } forEach (waypoints _syncGroup);
    };

    // If load balance enabled, round robin between the HCs - else pass all to HC
    if ( _swap ) then {
      _rc = false;

      _syncTrigArray = [];
      _syncWayArray = [];
      {
        _wayNum = _forEachIndex;
        _syncedTrigs = synchronizedTriggers _x;
        _syncTrigArray set [_wayNum,_syncedTrigs];

        _syncedWays = synchronizedWaypoints _x;
        _syncWayArray set [_wayNum,_syncedWays];
      } forEach waypoints _x;

      if (_ownerID >= 0) then {
        _rc = _x setGroupOwner _ownerID;
      } else {
        diag_log format["passToHCs: [ERROR] No Valid HC to pass to.  _currentHC = %1", _currentHC];
      };


      // If the transfer was successful, count it for accounting and diagnostic information
      if ( _rc ) then {
        _x setVariable ["hc_transfered", true];
        PassToHC_NumTransfered = PassToHC_NumTransfered + 1;
      };
    };
  } forEach (allGroups);

  if (PassToHC_NumTransfered > 0) then {
    // More accounting and diagnostic information

    diag_log format ["passToHCs: Transfered %1 AI groups to HC(s)", PassToHC_NumTransfered];

    _numHC = 0;
    _numHC2 = 0;
    _numHC3 = 0;

    {
      switch (owner ((units _x) select 0)) do {
        case _HC_ID: { _numHC = _numHC + 1; };
        case _HC2_ID: { _numHC2 = _numHC2 + 1; };
        case _HC3_ID: { _numHC3 = _numHC3+ 1; };
      };
    } forEach (allGroups);

    diag_log if (_numHC > 0) then { format ["passToHCs: %1 AI groups currently on HC", _numHC]; };
    diag_log if (_numHC2 > 0) then { format ["passToHCs: %1 AI groups currently on HC2", _numHC2]; };
    diag_log if (_numHC3 > 0) then { format ["passToHCs: %1 AI groups currently on HC3", _numHC3]; };

    diag_log format ["passToHCs: %1 AI groups total across all HC(s)", (_numHC + _numHC2 + _numHC3)];
  } else {
    diag_log "passToHCs: No rebalance or transfers required this round";
  };

  // Force clean up dead bodies and destroyed vehicles
  if (count allDead > _cleanUpThreshold) then {
    _numDeleted = 0;
    {
      deleteVehicle _x;

      _numDeleted = _numDeleted + 1;
    } forEach allDead;

    diag_log format ["passToHCs: Cleaned up %1 dead bodies/destroyed vehicles", _numDeleted];
  };

  // Rebalance every rebalanceTimer seconds to avoid hammering the server
  sleep _rebalanceTimer;
};
