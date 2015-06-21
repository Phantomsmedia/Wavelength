//WerthlesHeadless.sqf
//Split AI Groups Evenly Among Headless Clients

//private variables
private ["_recurrent", "_timeBetween", "_debug", "_advanced", "_startDelay", "_pause", "_syncGroup", "_trigSyncs", "_waySyncs", "_wayPoint", "_counts", "_null", "_localCount", "_stringInfo", "_who", "_amount", "_whom", "_inheadlessArray", "_ll", "_headlessCount", "_unitsInGroup", "_groupMoving", "_size", "_lead", "_leadOwner", "_leadHeadless", "_swap", "_fewest", "_zz", "_local", "_newSum", "_HC", "_syncTrigArray", "_wayNum", "_syncedTrigs", "_syncWayArray", "_syncedWays", "_moveToHC"];

//Ignored Special Variables: _this, _x, _forEachIndex.
//script parameters
_recurrent = _this select 0; // run repeatedly
_timeBetween = _this select 1; // time between each check
_debug = _this select 2; // show counts of local units as hints
_advanced = _this select 3; // selects which AI distribution method to use
_startDelay = _this select 4; // how long to wait before running
_pause = _this select 5; // how long to wait between each setGroupOwner, longer aids syncing

//Check the script is run in multiplayer only
if (isMultiplayer) then
{

	Werthles_SyncArrays = compileFinal "
		_syncGroup = _this select 0;
		_trigSyncs = _this select 1;
		_waySyncs = _this select 2;

		diag_log text format[""[Werthless] = %1"", _this];

		{
			_wayPoint = _x;
			{
				_x synchronizeTrigger [_wayPoint];
			} forEach (_trigSyncs select _forEachIndex);
		} forEach waypoints _syncGroup;

		{
			_wayPoint = _x;
			{
				_x synchronizeWaypoint [_wayPoint];
			} forEach (_waySyncs select _forEachIndex);
		} forEach waypoints _syncGroup;
	";


	if not (isServer or hasInterface) then
	{
		Werthles_SendInfo = compileFinal "
			sleep (random 5);
			_counts = {local _x} count allUnits;
			[[player,_counts],""Werthles_addHeadless"",false,false] call bis_fnc_mp;
		";
	}
	else
	{
		Werthles_SendInfo = compileFinal "";
	};

	//displays number of units local to each client as a hint, if debug is on
	if (_debug) then
	{
		_null = [] spawn {
			while {true} do
			{
				//make sure hints are not always displayed together
				sleep (7 + random 7);

				//count local units
				_localCount = {local _x} count allUnits;
				_stringInfo = profileName + ": " + str _localCount + " local units";

				//causes all to receive hints
				//[_stringInfo,"hint",true,false] call BIS_fnc_MP;
			};
		};
	};

	//Run only on server
	if (isServer) then
	{
		//set up arrays
		headlessArray = [];
		HeadlessLocalCounts = [];

		//function to add id and counts to headlessArray and HeadlessLocalCounts
		Werthles_addHeadless = compileFinal "
			_who = _this select 0;
			_amount = _this select 1;
			_whom = owner _who;
			_inheadlessArray = headlessArray find _whom;
			if (_inheadlessArray > -1) then
			{
				HeadlessLocalCounts set [_inheadlessArray,_amount];
			}
			else
			{
				headlessArray append [_whom];
				_inheadlessArray = headlessArray find _whom;
				HeadlessLocalCounts set [_inheadlessArray,_amount];
			};
		";

		//Headless client incrementer
		if not (_advanced) then
		{
			_ll = -1;
		};

		//sleep for the length of the start delay
		sleep _startDelay;

		//If DAC is initializing after start delay wait until it finishes or timeout
		if (!isNil "DAC_Basic_Value") then {
			_maxWait = time + 30;
			waituntil {sleep 1; (DAC_Basic_Value > 0) || time > _maxWait};
		};

		//If UPSMON is initializing after start delay wait until it finishes or timeout
		if (!isNil "UPSMON_INIT") then {
			_maxWait = time + 30;
			waituntil {sleep 1; (UPSMON_INIT > 0) || time > _maxWait};
		};

		//if recurrent, repeat
		while {_recurrent} do
		{
			//causes all to receive hints
			if (_debug) then
			{
				["Next cycle starting...","hint",true,false] call BIS_fnc_MP;
			};

			//tell HCs to send info
			[0,"Werthles_SendInfo",true,false] call BIS_fnc_MP;

			//wait for replies
			sleep 10;

			//Count the number of headless clients connected
			_headlessCount = count headlessArray;

			//if there are headless clients connected, split AIs
			if (_headlessCount > 0) then
			{
				//clean up groups
				{
					//check if groups are empty
					_unitsInGroup = count units _x;
					if (_unitsInGroup == 0) then
					{
						deleteGroup _x;
					};
				}forEach allGroups;

				////////////////////////////////////////////////////////
				//HeadlessLocalCounts - Array of counts in same order as headlessArray
				if (_advanced) then
				{
					//loop all groups
					{
						//get the group
						_groupMoving = _x;
						_size = count units _x;
						_lead = leader _x;
						_leadOwner = owner _lead;
						_leadHeadless = headlessArray find _leadOwner;

						_swap = true;
					    {
					      // If a player is in this group, don't swap to an HC
					      if (isPlayer _x) exitWith { _swap = false; };

					      // If a unit has 'hc_blacklist' set to true and is in this group, don't swap to an HC.
					      if (_x getVariable ["hc_blacklist", false]) exitWith { _swap = false; };

					      // If unit is in a vehicle check if vehicle or crew is blacklisted
					      if (vehicle _x != _x) then {
					        if ((vehicle _x) getVariable ["hc_blacklist", false]) exitWith { _swap = false; };
					      };

					    } forEach (units _x);

						//if allowed to swap and isn't controlled by a HC
						if (!(_swap) and (_leadHeadless == -1)) then
						{
							//find the headless client with the fewest AIs
							_fewest = HeadlessLocalCounts select 0;
							_zz = 0;
							{
								//the total local units for the current HC
								if (_x < _fewest) then
								{
									_zz = _forEachIndex;
									_fewest = _x;
								};
							}forEach HeadlessLocalCounts;

							//add group size to _local arrays
							_fewest = HeadlessLocalCounts select _zz;
							_newSum = _fewest + _size;
							HeadlessLocalCounts set [_zz,_newSum];

							//select the emptiest Headless Client
							_HC = headlessArray select _zz;

							_syncTrigArray = [];
							{
								_wayNum = _forEachIndex;
								_syncedTrigs = synchronizedTriggers _x;
								_syncTrigArray set [_wayNum,_syncedTrigs];
							}forEach waypoints _x;

							_syncWayArray = [];
							{
								_wayNum = _forEachIndex;
								_syncedWays = synchronizedWaypoints _x;
								_syncWayArray set [_wayNum,_syncedWays];
							}forEach waypoints _x;

							//move it to HC
							_moveToHC = _x setGroupOwner _HC;

							//causes all to receive hints
							if (_debug and _moveToHC) then
							{
								_stringInfo = str _x + " now controlled by client with ID: " + str _HC;
								[_stringInfo,"hint",true,false] call BIS_fnc_MP;
							};

							[[_groupMoving,_syncTrigArray,_syncWayArray],"Werthles_SyncArrays",true,false] call BIS_fnc_MP;

							sleep _pause;

							[[_groupMoving,_syncTrigArray,_syncWayArray],"Werthles_SyncArrays",true,false] call BIS_fnc_MP;
						};
					}forEach allGroups;
				}
				else////////////////////////////////////////////////////////
				{
					//assign all possible AI groups to headless clients
					{
						//setup
						_groupMoving = _x;
						_lead = leader _x;
						_leadOwner = groupOwner  _x;
						_leadHeadless = headlessArray find _leadOwner;

						_swap = true;
					    {
					      // If a player is in this group, don't swap to an HC
					      if (isPlayer _x) exitWith { _swap = false; };

					      // If a unit has 'hc_blacklist' set to true and is in this group, don't swap to an HC.
					      if (_x getVariable ["hc_blacklist", false]) exitWith { _swap = false; };

					      // If unit is in a vehicle check if vehicle or crew is blacklisted
					      if (vehicle _x != _x) then {
					        if ((vehicle _x) getVariable ["hc_blacklist", false]) exitWith { _swap = false; };
					      };

					    } forEach (units _x);

						//if allowed to swap and isn't controlled by a HC
						if (!(_swap) and (_leadHeadless == -1)) then
						{
							//increment HC
							_ll = _ll + 1;
							if !(_ll < _headlessCount) then
							{
								_ll = 0;
							};
							//select a headless client
							_HC = headlessArray select _ll;

							_syncTrigArray = [];
							{
								_wayNum = _forEachIndex;
								_syncedTrigs = synchronizedTriggers _x;
								_syncTrigArray set [_wayNum,_syncedTrigs];
							}forEach waypoints _x;

							_syncWayArray = [];
							{
								_wayNum = _forEachIndex;
								_syncedWays = synchronizedWaypoints _x;
								_syncWayArray set [_wayNum,_syncedWays];
							}forEach waypoints _x;

							//move it to HC
							_moveToHC = _x setGroupOwner _HC;

							//causes all to receive hints
							if (_debug and _moveToHC) then
							{
								_stringInfo = str _x + " now controlled by client with ID: " + str _HC;
								[_stringInfo,"hint",true,false] call BIS_fnc_MP;
							};

							[[_groupMoving,_syncTrigArray,_syncWayArray],"Werthles_SyncArrays",true,false] call BIS_fnc_MP;

							sleep _pause;

							[[_groupMoving,_syncTrigArray,_syncWayArray],"Werthles_SyncArrays",true,false] call BIS_fnc_MP;
						};
					}forEach allGroups;
				};
				////////////////////////////////////////////////////////

				//global tracker
				headlessArrayTracker = headlessArray;
				HeadlessLocalCountsTracker = HeadlessLocalCounts;

				//reset array
				headlessArray = [];
				HeadlessLocalCounts = [];
			};

			//causes all to receive hints
			if (_debug) then
			{
				["Cycle finished","hint",true,false] call BIS_fnc_MP;
			};

			//time between checks
			sleep _timeBetween;
		};
	};
} else {
	hint "Headless clients can only connect in multiplayer games, so WerthlesHeadless.sqf has terminated.";
};
