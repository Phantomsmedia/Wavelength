//Pabst ORBAT - Modified 6/4/16 by Bismarck
//TODO - Add another layer of formatted code loops to shorten the length further

if (!hasInterface) exitWith {};

[] spawn {
    uiSleep 10;
	
	// Defines for all sides
	
	private _debugMode = true;	//allows for AI to create ORBAT entries for testing
	
	_diaryHyperlinkedText = "";
	
	private _bsm_write = {
		params ["_masterList","_playerGroupsID","_playerGroups","_diaryHyperlinkedText"];
		
		{
			_groupID = _x select 0;
			_color = _x select 1;
			_displayName = _x select 2;
			_code = compile format ['
				if (''%1'' in _playerGroupsID) then {
					_group = _playerGroups select (_playerGroupsID find ''%1'');
					private _unitsText = ''<font face=''''PuristaLight'''' color=''''%2'''' size=''''13''''>'';
					if ((count units _group) > 0) then {
						{
							_unitsText = _unitsText + (name _x + '', '');
						} forEach units _group;
						_unitsText = [_unitsText,0,-2] call BIS_fnc_trimString;
						_unitsText = _unitsText + ''</font>'';
						
						_diaryHyperlinkedText = _diaryHyperlinkedText + format [''<font face=''''PuristaMedium'''' color=''''#FFFFFF'''' size=''''13''''>%3 </font>''];
						_diaryHyperlinkedText = _diaryHyperlinkedText + _unitsText;
						_diaryHyperlinkedText = _diaryHyperlinkedText + format [''<br/>''];
					};
				};
			',_groupID,_color,_displayName];
			call _code;
		} forEach _masterList;
		
		_diaryHyperlinkedText
	};
	
	// ============================================================================================================================
	// === WEST ===================================================================================================================
	// ============================================================================================================================
	
	
	if (playerSide == west) then {
		
		//_diaryHyperlinkedText = format ["Only accurate at mission start."];
		_diaryHyperlinkedText = format [""];
		
		private _playerGroupsID = [];
		private _playerGroups = [];
		
		{
			private _group = _x;
			_playerNum = {isPlayer _x} count (units _group);	//number of players in the group
			if (((_playerNum > 0) || _debugMode) && (side _group == west)) then {	//if more than zero players in group and group is west, add to templist of groups to check
				_playerGroupsID = _playerGroupsID + [_group getVariable ["F3_GroupID",""]];
				_playerGroups = _playerGroups + [_group];
			};
		} forEach allGroups;
		
		//will need to be expanded for COY/D/E/F later on...
		
		// ===================================================================================
		// PLATOON HQ
		
		_platoonExists = (({_x in _playerGroupsID} count ["NATO PLT -"]) > 0);
		if (_platoonExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Platoon</font><br/>"];
		
			_platoonMaster = [
				["NATO PLT -","#AE00AE","PltHQ"]
			];
			
			_diaryHyperlinkedText = [_platoonMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// ALPHA SQUAD
		
		_alphaExists = (({_x in _playerGroupsID} count ["NATO ASL -","NATO A1 -","NATO A2 -","NATO A3 -"]) > 0);
		if (_alphaExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Alpha Squad</font><br/>"];
		
			_alphaMaster = [
				["NATO ASL -","#FF0000","ASL"],
				["NATO A1 -","#FF0000","A1"],
				["NATO A2 -","#FF0000","A2"],
				["NATO A3 -","#FF0000","A3"]
			];
			
			_diaryHyperlinkedText = [_alphaMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// BRAVO SQUAD
		
		_bravoExists = (({_x in _playerGroupsID} count ["NATO BSL -","NATO B1 -","NATO B2 -","NATO B3 -"]) > 0);
		if (_bravoExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Bravo Squad</font><br/>"];
		
			_bravoMaster = [
				["NATO BSL -","#00B1EC","BSL"],
				["NATO B1 -","#00B1EC","B1"],
				["NATO B2 -","#00B1EC","B2"],
				["NATO B3 -","#00B1EC","B3"]
			];
			
			_diaryHyperlinkedText = [_bravoMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// CHARLIE SQUAD
		
		_charlieExists = (({_x in _playerGroupsID} count ["NATO CSL -","NATO C1 -","NATO C2 -","NATO C3 -"]) > 0);
		if (_charlieExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Charlie Squad</font><br/>"];
		
			_charlieMaster = [
				["NATO CSL -","#00FF00","CSL"],
				["NATO C1 -","#00FF00","C1"],
				["NATO C2 -","#00FF00","C2"],
				["NATO C3 -","#00FF00","C3"]
			];
			
			_diaryHyperlinkedText = [_charlieMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// ATTACHMENT TEAMS
		
		_attachmentsExists = (({_x in _playerGroupsID} count ["NATO MMG1 -","NATO MMG2 -","NATO MMG3 -","NATO MMG4 -","NATO HMG1 -","NATO HMG2 -","NATO HMG3 -","NATO HMG4 -","NATO MAT1 -","NATO MAT2 -","NATO MAT3 -","NATO MAT4 -","NATO HAT1 -","NATO HAT2 -","NATO HAT3 -","NATO HAT4 -","NATO MTR1 -","NATO MTR2 -","NATO MTR3 -","NATO MTR4 -","NATO MSAM1 -","NATO MSAM2 -","NATO MSAM3 -","NATO MSAM4 -","NATO HSAM1 -","NATO HSAM2 -","NATO HSAM3 -","NATO HSAM4 -","NATO ST1 -","NATO ST2 -","NATO ST3 -","NATO ST4 -","NATO DT1 -","NATO DT2 -","NATO DT3 -","NATO DT4 -","NATO ENG1 -","NATO ENG2 -","NATO ENG3 -", "NATO ENG4 -"]) > 0);
		if (_attachmentsExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Attachments</font><br/>"];
		
		
			_attachmentsMaster = [
				["NATO MMG1 -","#FFA600","MMG1"],
				["NATO MMG2 -","#FFA600","MMG2"],
				["NATO MMG3 -","#FFA600","MMG3"],
				["NATO MMG4 -","#FFA600","MMG4"],
				["NATO HMG1 -","#FFA600","HMG1"],
				["NATO HMG2 -","#FFA600","HMG2"],
				["NATO HMG3 -","#FFA600","HMG3"],
				["NATO HMG4 -","#FFA600","HMG4"],
				["NATO MAT1 -","#FFA600","MAT1"],
				["NATO MAT2 -","#FFA600","MAT2"],
				["NATO MAT3 -","#FFA600","MAT3"],
				["NATO MAT4 -","#FFA600","MAT4"],
				["NATO HAT1 -","#FFA600","HAT1"],
				["NATO HAT2 -","#FFA600","HAT2"],
				["NATO HAT3 -","#FFA600","HAT3"],
				["NATO HAT4 -","#FFA600","HAT4"],
				["NATO MTR1 -","#FFA600","MTR1"],
				["NATO MTR2 -","#FFA600","MTR2"],
				["NATO MTR3 -","#FFA600","MTR3"],
				["NATO MTR4 -","#FFA600","MTR4"],
				["NATO MSAM1 -","#FFA600","MSAM1"],
				["NATO MSAM2 -","#FFA600","MSAM2"],
				["NATO MSAM3 -","#FFA600","MSAM3"],
				["NATO MSAM4 -","#FFA600","MSAM4"],
				["NATO HSAM1 -","#FFA600","HSAM1"],
				["NATO HSAM2 -","#FFA600","HSAM2"],
				["NATO HSAM3 -","#FFA600","HSAM3"],
				["NATO HSAM4 -","#FFA600","HSAM4"],
				["NATO ST1 -","#FFA600","ST1"],
				["NATO ST2 -","#FFA600","ST2"],
				["NATO ST3 -","#FFA600","ST3"],
				["NATO ST4 -","#FFA600","ST4"],
				["NATO DT1 -","#FFA600","DT1"],
				["NATO DT2 -","#FFA600","DT2"],
				["NATO DT3 -","#FFA600","DT3"],
				["NATO DT4 -","#FFA600","DT4"],
				["NATO ENG1 -","#FFA600","ENG1"],
				["NATO ENG2 -","#FFA600","ENG2"],
				["NATO ENG3 -","#FFA600","ENG3"],
				["NATO ENG4 -","#FFA600","ENG4"]
			];
			
			_diaryHyperlinkedText = [_attachmentsMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// GROUND ASSETS
		
		_groundExists = (({_x in _playerGroupsID} count ["NATO IFV1 -","NATO IFV2 -","NATO IFV3 -","NATO IFV4 -","NATO IFV5 -","NATO IFV6 -","NATO IFV7 -","NATO IFV8 -","NATO APC1 -","NATO APC2 -","NATO APC3 -","NATO APC4 -","NATO APC5 -","NATO APC6 -","NATO APC7 -","NATO APC8 -","NATO TNK1 -","NATO TNK2 -","NATO TNK3 -","NATO TNK4 -","NATO TNK5 -","NATO TNK6 -","NATO TNK7 -","NATO TNK8 -"]) > 0);
		if (_groundExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Ground Assets</font><br/>"];
		
		
			_groundMaster = [
				["NATO IFV1 -","#FFA600","IFV1"],
				["NATO IFV2 -","#FFA600","IFV2"],
				["NATO IFV3 -","#FFA600","IFV3"],
				["NATO IFV4 -","#FFA600","IFV4"],
				["NATO IFV5 -","#FFA600","IFV5"],
				["NATO IFV6 -","#FFA600","IFV6"],
				["NATO IFV7 -","#FFA600","IFV7"],
				["NATO IFV8 -","#FFA600","IFV8"],
				["NATO APC1 -","#FFA600","APC1"],
				["NATO APC2 -","#FFA600","APC2"],
				["NATO APC3 -","#FFA600","APC3"],
				["NATO APC4 -","#FFA600","APC4"],
				["NATO APC5 -","#FFA600","APC5"],
				["NATO APC6 -","#FFA600","APC6"],
				["NATO APC7 -","#FFA600","APC7"],
				["NATO APC8 -","#FFA600","APC8"],
				["NATO TNK1 -","#FFA600","TNK1"],
				["NATO TNK2 -","#FFA600","TNK2"],
				["NATO TNK3 -","#FFA600","TNK3"],
				["NATO TNK4 -","#FFA600","TNK4"],
				["NATO TNK5 -","#FFA600","TNK5"],
				["NATO TNK6 -","#FFA600","TNK6"],
				["NATO TNK7 -","#FFA600","TNK7"],
				["NATO TNK8 -","#FFA600","TNK8"]
			];
			
			_diaryHyperlinkedText = [_groundMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// AIR ASSETS
		
		_airExists = (({_x in _playerGroupsID} count ["NATO TH1 -","NATO TH2 -","NATO TH3 -","NATO TH4 -","NATO TH5 -","NATO TH6 -","NATO TH7 -","NATO TH8 -","NATO AH1 -","NATO AH2 -","NATO AH3 -","NATO AH4 -","NATO AH5 -","NATO AH6 -","NATO AH7 -","NATO AH8 -","NATO FW1 -","NATO FW2 -","NATO FW3 -","NATO FW4 -","NATO FW5 -","NATO FW6 -","NATO FW7 -","NATO FW8 -"]) > 0);
		if (_airExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Air Assets</font><br/>"];
		
		
			_airMaster = [
				["NATO TH1 -","#FFA600","TH1"],
				["NATO TH2 -","#FFA600","TH2"],
				["NATO TH3 -","#FFA600","TH3"],
				["NATO TH4 -","#FFA600","TH4"],
				["NATO TH5 -","#FFA600","TH5"],
				["NATO TH6 -","#FFA600","TH6"],
				["NATO TH7 -","#FFA600","TH7"],
				["NATO TH8 -","#FFA600","TH8"],
				["NATO AH1 -","#FFA600","AH1"],
				["NATO AH2 -","#FFA600","AH2"],
				["NATO AH3 -","#FFA600","AH3"],
				["NATO AH4 -","#FFA600","AH4"],
				["NATO AH5 -","#FFA600","AH5"],
				["NATO AH6 -","#FFA600","AH6"],
				["NATO AH7 -","#FFA600","AH7"],
				["NATO AH8 -","#FFA600","AH8"],
				["NATO FW1 -","#FFA600","FW1"],
				["NATO FW2 -","#FFA600","FW2"],
				["NATO FW3 -","#FFA600","FW3"],
				["NATO FW4 -","#FFA600","FW4"],
				["NATO FW5 -","#FFA600","FW5"],
				["NATO FW6 -","#FFA600","FW6"],
				["NATO FW7 -","#FFA600","FW7"],
				["NATO FW8 -","#FFA600","FW8"]
			];
			
			_diaryHyperlinkedText = [_airMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
	};
	
	// ============================================================================================================================
	// === EAST ===================================================================================================================
	// ============================================================================================================================
	
	
	if (playerSide == east) then {
		
		//_diaryHyperlinkedText = format ["Only accurate at mission start."];
		_diaryHyperlinkedText = format [""];
		
		private _playerGroupsID = [];
		private _playerGroups = [];
		
		{
			private _group = _x;
			_playerNum = {isPlayer _x} count (units _group);	//number of players in the group
			if (((_playerNum > 0) || _debugMode) && (side _group == east)) then {	//if more than zero players in group and group is east, add to templist of groups to check
				_playerGroupsID = _playerGroupsID + [_group getVariable ["F3_GroupID",""]];
				_playerGroups = _playerGroups + [_group];
			};
		} forEach allGroups;
		
		//will need to be expanded for COY/D/E/F later on...
		
		// ===================================================================================
		// PLATOON HQ
		
		_platoonExists = (({_x in _playerGroupsID} count ["OPFOR PLT -"]) > 0);
		if (_platoonExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Platoon</font><br/>"];
		
			_platoonMaster = [
				["OPFOR PLT -","#AE00AE","PltHQ"]
			];
			
			_diaryHyperlinkedText = [_platoonMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// ALPHA SQUAD
		
		_alphaExists = (({_x in _playerGroupsID} count ["OPFOR ASL -","OPFOR A1 -","OPFOR A2 -","OPFOR A3 -"]) > 0);
		if (_alphaExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Alpha Squad</font><br/>"];
		
			_alphaMaster = [
				["OPFOR ASL -","#FF0000","ASL"],
				["OPFOR A1 -","#FF0000","A1"],
				["OPFOR A2 -","#FF0000","A2"],
				["OPFOR A3 -","#FF0000","A3"]
			];
			
			_diaryHyperlinkedText = [_alphaMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// BRAVO SQUAD
		
		_bravoExists = (({_x in _playerGroupsID} count ["OPFOR BSL -","OPFOR B1 -","OPFOR B2 -","OPFOR B3 -"]) > 0);
		if (_bravoExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Bravo Squad</font><br/>"];
		
			_bravoMaster = [
				["OPFOR BSL -","#00B1EC","BSL"],
				["OPFOR B1 -","#00B1EC","B1"],
				["OPFOR B2 -","#00B1EC","B2"],
				["OPFOR B3 -","#00B1EC","B3"]
			];
			
			_diaryHyperlinkedText = [_bravoMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// CHARLIE SQUAD
		
		_charlieExists = (({_x in _playerGroupsID} count ["OPFOR CSL -","OPFOR C1 -","OPFOR C2 -","OPFOR C3 -"]) > 0);
		if (_charlieExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Charlie Squad</font><br/>"];
		
			_charlieMaster = [
				["OPFOR CSL -","#00FF00","CSL"],
				["OPFOR C1 -","#00FF00","C1"],
				["OPFOR C2 -","#00FF00","C2"],
				["OPFOR C3 -","#00FF00","C3"]
			];
			
			_diaryHyperlinkedText = [_charlieMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// ATTACHMENT TEAMS
		
		_attachmentsExists = (({_x in _playerGroupsID} count ["OPFOR MMG1 -","OPFOR MMG2 -","OPFOR MMG3 -","OPFOR MMG4 -","OPFOR HMG1 -","OPFOR HMG2 -","OPFOR HMG3 -","OPFOR HMG4 -","OPFOR MAT1 -","OPFOR MAT2 -","OPFOR MAT3 -","OPFOR MAT4 -","OPFOR HAT1 -","OPFOR HAT2 -","OPFOR HAT3 -","OPFOR HAT4 -","OPFOR MTR1 -","OPFOR MTR2 -","OPFOR MTR3 -","OPFOR MTR4 -","OPFOR MSAM1 -","OPFOR MSAM2 -","OPFOR MSAM3 -","OPFOR MSAM4 -","OPFOR HSAM1 -","OPFOR HSAM2 -","OPFOR HSAM3 -","OPFOR HSAM4 -","OPFOR ST1 -","OPFOR ST2 -","OPFOR ST3 -","OPFOR ST4 -","OPFOR DT1 -","OPFOR DT2 -","OPFOR DT3 -","OPFOR DT4 -","OPFOR ENG1 -","OPFOR ENG2 -","OPFOR ENG3 -", "OPFOR ENG4 -"]) > 0);
		if (_attachmentsExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Attachments</font><br/>"];
		
		
			_attachmentsMaster = [
				["OPFOR MMG1 -","#FFA600","MMG1"],
				["OPFOR MMG2 -","#FFA600","MMG2"],
				["OPFOR MMG3 -","#FFA600","MMG3"],
				["OPFOR MMG4 -","#FFA600","MMG4"],
				["OPFOR HMG1 -","#FFA600","HMG1"],
				["OPFOR HMG2 -","#FFA600","HMG2"],
				["OPFOR HMG3 -","#FFA600","HMG3"],
				["OPFOR HMG4 -","#FFA600","HMG4"],
				["OPFOR MAT1 -","#FFA600","MAT1"],
				["OPFOR MAT2 -","#FFA600","MAT2"],
				["OPFOR MAT3 -","#FFA600","MAT3"],
				["OPFOR MAT4 -","#FFA600","MAT4"],
				["OPFOR HAT1 -","#FFA600","HAT1"],
				["OPFOR HAT2 -","#FFA600","HAT2"],
				["OPFOR HAT3 -","#FFA600","HAT3"],
				["OPFOR HAT4 -","#FFA600","HAT4"],
				["OPFOR MTR1 -","#FFA600","MTR1"],
				["OPFOR MTR2 -","#FFA600","MTR2"],
				["OPFOR MTR3 -","#FFA600","MTR3"],
				["OPFOR MTR4 -","#FFA600","MTR4"],
				["OPFOR MSAM1 -","#FFA600","MSAM1"],
				["OPFOR MSAM2 -","#FFA600","MSAM2"],
				["OPFOR MSAM3 -","#FFA600","MSAM3"],
				["OPFOR MSAM4 -","#FFA600","MSAM4"],
				["OPFOR HSAM1 -","#FFA600","HSAM1"],
				["OPFOR HSAM2 -","#FFA600","HSAM2"],
				["OPFOR HSAM3 -","#FFA600","HSAM3"],
				["OPFOR HSAM4 -","#FFA600","HSAM4"],
				["OPFOR ST1 -","#FFA600","ST1"],
				["OPFOR ST2 -","#FFA600","ST2"],
				["OPFOR ST3 -","#FFA600","ST3"],
				["OPFOR ST4 -","#FFA600","ST4"],
				["OPFOR DT1 -","#FFA600","DT1"],
				["OPFOR DT2 -","#FFA600","DT2"],
				["OPFOR DT3 -","#FFA600","DT3"],
				["OPFOR DT4 -","#FFA600","DT4"],
				["OPFOR ENG1 -","#FFA600","ENG1"],
				["OPFOR ENG2 -","#FFA600","ENG2"],
				["OPFOR ENG3 -","#FFA600","ENG3"],
				["OPFOR ENG4 -","#FFA600","ENG4"]
			];
			
			_diaryHyperlinkedText = [_attachmentsMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// GROUND ASSETS
		
		_groundExists = (({_x in _playerGroupsID} count ["OPFOR IFV1 -","OPFOR IFV2 -","OPFOR IFV3 -","OPFOR IFV4 -","OPFOR IFV5 -","OPFOR IFV6 -","OPFOR IFV7 -","OPFOR IFV8 -","OPFOR APC1 -","OPFOR APC2 -","OPFOR APC3 -","OPFOR APC4 -","OPFOR APC5 -","OPFOR APC6 -","OPFOR APC7 -","OPFOR APC8 -","OPFOR TNK1 -","OPFOR TNK2 -","OPFOR TNK3 -","OPFOR TNK4 -","OPFOR TNK5 -","OPFOR TNK6 -","OPFOR TNK7 -","OPFOR TNK8 -"]) > 0);
		if (_groundExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Ground Assets</font><br/>"];
		
		
			_groundMaster = [
				["OPFOR IFV1 -","#FFA600","IFV1"],
				["OPFOR IFV2 -","#FFA600","IFV2"],
				["OPFOR IFV3 -","#FFA600","IFV3"],
				["OPFOR IFV4 -","#FFA600","IFV4"],
				["OPFOR IFV5 -","#FFA600","IFV5"],
				["OPFOR IFV6 -","#FFA600","IFV6"],
				["OPFOR IFV7 -","#FFA600","IFV7"],
				["OPFOR IFV8 -","#FFA600","IFV8"],
				["OPFOR APC1 -","#FFA600","APC1"],
				["OPFOR APC2 -","#FFA600","APC2"],
				["OPFOR APC3 -","#FFA600","APC3"],
				["OPFOR APC4 -","#FFA600","APC4"],
				["OPFOR APC5 -","#FFA600","APC5"],
				["OPFOR APC6 -","#FFA600","APC6"],
				["OPFOR APC7 -","#FFA600","APC7"],
				["OPFOR APC8 -","#FFA600","APC8"],
				["OPFOR TNK1 -","#FFA600","TNK1"],
				["OPFOR TNK2 -","#FFA600","TNK2"],
				["OPFOR TNK3 -","#FFA600","TNK3"],
				["OPFOR TNK4 -","#FFA600","TNK4"],
				["OPFOR TNK5 -","#FFA600","TNK5"],
				["OPFOR TNK6 -","#FFA600","TNK6"],
				["OPFOR TNK7 -","#FFA600","TNK7"],
				["OPFOR TNK8 -","#FFA600","TNK8"]
			];
			
			_diaryHyperlinkedText = [_groundMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// AIR ASSETS
		
		_airExists = (({_x in _playerGroupsID} count ["OPFOR TH1 -","OPFOR TH2 -","OPFOR TH3 -","OPFOR TH4 -","OPFOR TH5 -","OPFOR TH6 -","OPFOR TH7 -","OPFOR TH8 -","OPFOR AH1 -","OPFOR AH2 -","OPFOR AH3 -","OPFOR AH4 -","OPFOR AH5 -","OPFOR AH6 -","OPFOR AH7 -","OPFOR AH8 -","OPFOR FW1 -","OPFOR FW2 -","OPFOR FW3 -","OPFOR FW4 -","OPFOR FW5 -","OPFOR FW6 -","OPFOR FW7 -","OPFOR FW8 -"]) > 0);
		if (_airExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Air Assets</font><br/>"];
		
		
			_airMaster = [
				["OPFOR TH1 -","#FFA600","TH1"],
				["OPFOR TH2 -","#FFA600","TH2"],
				["OPFOR TH3 -","#FFA600","TH3"],
				["OPFOR TH4 -","#FFA600","TH4"],
				["OPFOR TH5 -","#FFA600","TH5"],
				["OPFOR TH6 -","#FFA600","TH6"],
				["OPFOR TH7 -","#FFA600","TH7"],
				["OPFOR TH8 -","#FFA600","TH8"],
				["OPFOR AH1 -","#FFA600","AH1"],
				["OPFOR AH2 -","#FFA600","AH2"],
				["OPFOR AH3 -","#FFA600","AH3"],
				["OPFOR AH4 -","#FFA600","AH4"],
				["OPFOR AH5 -","#FFA600","AH5"],
				["OPFOR AH6 -","#FFA600","AH6"],
				["OPFOR AH7 -","#FFA600","AH7"],
				["OPFOR AH8 -","#FFA600","AH8"],
				["OPFOR FW1 -","#FFA600","FW1"],
				["OPFOR FW2 -","#FFA600","FW2"],
				["OPFOR FW3 -","#FFA600","FW3"],
				["OPFOR FW4 -","#FFA600","FW4"],
				["OPFOR FW5 -","#FFA600","FW5"],
				["OPFOR FW6 -","#FFA600","FW6"],
				["OPFOR FW7 -","#FFA600","FW7"],
				["OPFOR FW8 -","#FFA600","FW8"]
			];
			
			_diaryHyperlinkedText = [_airMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
	};
	
	// ============================================================================================================================
	// === INDF ===================================================================================================================
	// ============================================================================================================================
	
	
	if (playerSide == resistance) then {
		
		//_diaryHyperlinkedText = format ["Only accurate at mission start."];
		_diaryHyperlinkedText = format [""];
		
		private _playerGroupsID = [];
		private _playerGroups = [];
		
		{
			private _group = _x;
			_playerNum = {isPlayer _x} count (units _group);	//number of players in the group
			if (((_playerNum > 0) || _debugMode) && (side _group == resistance)) then {	//if more than zero players in group and group is ind, add to templist of groups to check
				_playerGroupsID = _playerGroupsID + [_group getVariable ["F3_GroupID",""]];
				_playerGroups = _playerGroups + [_group];
			};
		} forEach allGroups;
		
		//will need to be expanded for COY/D/E/F later on...
		
		// ===================================================================================
		// PLATOON HQ
		
		_platoonExists = (({_x in _playerGroupsID} count ["IND PLT -"]) > 0);
		if (_platoonExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Platoon</font><br/>"];
		
			_platoonMaster = [
				["IND PLT -","#AE00AE","PltHQ"]
			];
			
			_diaryHyperlinkedText = [_platoonMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// ALPHA SQUAD
		
		_alphaExists = (({_x in _playerGroupsID} count ["IND ASL -","IND A1 -","IND A2 -","IND A3 -"]) > 0);
		if (_alphaExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Alpha Squad</font><br/>"];
		
			_alphaMaster = [
				["IND ASL -","#FF0000","ASL"],
				["IND A1 -","#FF0000","A1"],
				["IND A2 -","#FF0000","A2"],
				["IND A3 -","#FF0000","A3"]
			];
			
			_diaryHyperlinkedText = [_alphaMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// BRAVO SQUAD
		
		_bravoExists = (({_x in _playerGroupsID} count ["IND BSL -","IND B1 -","IND B2 -","IND B3 -"]) > 0);
		if (_bravoExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Bravo Squad</font><br/>"];
		
			_bravoMaster = [
				["IND BSL -","#00B1EC","BSL"],
				["IND B1 -","#00B1EC","B1"],
				["IND B2 -","#00B1EC","B2"],
				["IND B3 -","#00B1EC","B3"]
			];
			
			_diaryHyperlinkedText = [_bravoMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// CHARLIE SQUAD
		
		_charlieExists = (({_x in _playerGroupsID} count ["IND CSL -","IND C1 -","IND C2 -","IND C3 -"]) > 0);
		if (_charlieExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Charlie Squad</font><br/>"];
		
			_charlieMaster = [
				["IND CSL -","#00FF00","CSL"],
				["IND C1 -","#00FF00","C1"],
				["IND C2 -","#00FF00","C2"],
				["IND C3 -","#00FF00","C3"]
			];
			
			_diaryHyperlinkedText = [_charlieMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// ATTACHMENT TEAMS
		
		_attachmentsExists = (({_x in _playerGroupsID} count ["IND MMG1 -","IND MMG2 -","IND MMG3 -","IND MMG4 -","IND HMG1 -","IND HMG2 -","IND HMG3 -","IND HMG4 -","IND MAT1 -","IND MAT2 -","IND MAT3 -","IND MAT4 -","IND HAT1 -","IND HAT2 -","IND HAT3 -","IND HAT4 -","IND MTR1 -","IND MTR2 -","IND MTR3 -","IND MTR4 -","IND MSAM1 -","IND MSAM2 -","IND MSAM3 -","IND MSAM4 -","IND HSAM1 -","IND HSAM2 -","IND HSAM3 -","IND HSAM4 -","IND ST1 -","IND ST2 -","IND ST3 -","IND ST4 -","IND DT1 -","IND DT2 -","IND DT3 -","IND DT4 -","IND ENG1 -","IND ENG2 -","IND ENG3 -", "IND ENG4 -"]) > 0);
		if (_attachmentsExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Attachments</font><br/>"];
		
		
			_attachmentsMaster = [
				["IND MMG1 -","#FFA600","MMG1"],
				["IND MMG2 -","#FFA600","MMG2"],
				["IND MMG3 -","#FFA600","MMG3"],
				["IND MMG4 -","#FFA600","MMG4"],
				["IND HMG1 -","#FFA600","HMG1"],
				["IND HMG2 -","#FFA600","HMG2"],
				["IND HMG3 -","#FFA600","HMG3"],
				["IND HMG4 -","#FFA600","HMG4"],
				["IND MAT1 -","#FFA600","MAT1"],
				["IND MAT2 -","#FFA600","MAT2"],
				["IND MAT3 -","#FFA600","MAT3"],
				["IND MAT4 -","#FFA600","MAT4"],
				["IND HAT1 -","#FFA600","HAT1"],
				["IND HAT2 -","#FFA600","HAT2"],
				["IND HAT3 -","#FFA600","HAT3"],
				["IND HAT4 -","#FFA600","HAT4"],
				["IND MTR1 -","#FFA600","MTR1"],
				["IND MTR2 -","#FFA600","MTR2"],
				["IND MTR3 -","#FFA600","MTR3"],
				["IND MTR4 -","#FFA600","MTR4"],
				["IND MSAM1 -","#FFA600","MSAM1"],
				["IND MSAM2 -","#FFA600","MSAM2"],
				["IND MSAM3 -","#FFA600","MSAM3"],
				["IND MSAM4 -","#FFA600","MSAM4"],
				["IND HSAM1 -","#FFA600","HSAM1"],
				["IND HSAM2 -","#FFA600","HSAM2"],
				["IND HSAM3 -","#FFA600","HSAM3"],
				["IND HSAM4 -","#FFA600","HSAM4"],
				["IND ST1 -","#FFA600","ST1"],
				["IND ST2 -","#FFA600","ST2"],
				["IND ST3 -","#FFA600","ST3"],
				["IND ST4 -","#FFA600","ST4"],
				["IND DT1 -","#FFA600","DT1"],
				["IND DT2 -","#FFA600","DT2"],
				["IND DT3 -","#FFA600","DT3"],
				["IND DT4 -","#FFA600","DT4"],
				["IND ENG1 -","#FFA600","ENG1"],
				["IND ENG2 -","#FFA600","ENG2"],
				["IND ENG3 -","#FFA600","ENG3"],
				["IND ENG4 -","#FFA600","ENG4"]
			];
			
			_diaryHyperlinkedText = [_attachmentsMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// GROUND ASSETS
		
		_groundExists = (({_x in _playerGroupsID} count ["IND IFV1 -","IND IFV2 -","IND IFV3 -","IND IFV4 -","IND IFV5 -","IND IFV6 -","IND IFV7 -","IND IFV8 -","IND APC1 -","IND APC2 -","IND APC3 -","IND APC4 -","IND APC5 -","IND APC6 -","IND APC7 -","IND APC8 -","IND TNK1 -","IND TNK2 -","IND TNK3 -","IND TNK4 -","IND TNK5 -","IND TNK6 -","IND TNK7 -","IND TNK8 -"]) > 0);
		if (_groundExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Ground Assets</font><br/>"];
		
		
			_groundMaster = [
				["IND IFV1 -","#FFA600","IFV1"],
				["IND IFV2 -","#FFA600","IFV2"],
				["IND IFV3 -","#FFA600","IFV3"],
				["IND IFV4 -","#FFA600","IFV4"],
				["IND IFV5 -","#FFA600","IFV5"],
				["IND IFV6 -","#FFA600","IFV6"],
				["IND IFV7 -","#FFA600","IFV7"],
				["IND IFV8 -","#FFA600","IFV8"],
				["IND APC1 -","#FFA600","APC1"],
				["IND APC2 -","#FFA600","APC2"],
				["IND APC3 -","#FFA600","APC3"],
				["IND APC4 -","#FFA600","APC4"],
				["IND APC5 -","#FFA600","APC5"],
				["IND APC6 -","#FFA600","APC6"],
				["IND APC7 -","#FFA600","APC7"],
				["IND APC8 -","#FFA600","APC8"],
				["IND TNK1 -","#FFA600","TNK1"],
				["IND TNK2 -","#FFA600","TNK2"],
				["IND TNK3 -","#FFA600","TNK3"],
				["IND TNK4 -","#FFA600","TNK4"],
				["IND TNK5 -","#FFA600","TNK5"],
				["IND TNK6 -","#FFA600","TNK6"],
				["IND TNK7 -","#FFA600","TNK7"],
				["IND TNK8 -","#FFA600","TNK8"]
			];
			
			_diaryHyperlinkedText = [_groundMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
		
		// ===================================================================================
		// AIR ASSETS
		
		_airExists = (({_x in _playerGroupsID} count ["IND TH1 -","IND TH2 -","IND TH3 -","IND TH4 -","IND TH5 -","IND TH6 -","IND TH7 -","IND TH8 -","IND AH1 -","IND AH2 -","IND AH3 -","IND AH4 -","IND AH5 -","IND AH6 -","IND AH7 -","IND AH8 -","IND FW1 -","IND FW2 -","IND FW3 -","IND FW4 -","IND FW5 -","IND FW6 -","IND FW7 -","IND FW8 -"]) > 0);
		if (_airExists) then {
			_diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font face='PuristaBold' color='#FFFFFF' size='14'>Air Assets</font><br/>"];
		
		
			_airMaster = [
				["IND TH1 -","#FFA600","TH1"],
				["IND TH2 -","#FFA600","TH2"],
				["IND TH3 -","#FFA600","TH3"],
				["IND TH4 -","#FFA600","TH4"],
				["IND TH5 -","#FFA600","TH5"],
				["IND TH6 -","#FFA600","TH6"],
				["IND TH7 -","#FFA600","TH7"],
				["IND TH8 -","#FFA600","TH8"],
				["IND AH1 -","#FFA600","AH1"],
				["IND AH2 -","#FFA600","AH2"],
				["IND AH3 -","#FFA600","AH3"],
				["IND AH4 -","#FFA600","AH4"],
				["IND AH5 -","#FFA600","AH5"],
				["IND AH6 -","#FFA600","AH6"],
				["IND AH7 -","#FFA600","AH7"],
				["IND AH8 -","#FFA600","AH8"],
				["IND FW1 -","#FFA600","FW1"],
				["IND FW2 -","#FFA600","FW2"],
				["IND FW3 -","#FFA600","FW3"],
				["IND FW4 -","#FFA600","FW4"],
				["IND FW5 -","#FFA600","FW5"],
				["IND FW6 -","#FFA600","FW6"],
				["IND FW7 -","#FFA600","FW7"],
				["IND FW8 -","#FFA600","FW8"]
			];
			
			_diaryHyperlinkedText = [_airMaster,_playerGroupsID,_playerGroups,_diaryHyperlinkedText] call _bsm_write;
		};
	};
	
	if (_diaryHyperlinkedText != "") then {
		player createDiaryRecord ["diary", ["ORBAT", _diaryHyperlinkedText]];
	};
	
	//OLD CODE
	/*
    {
        if (({isPlayer _x} count (units _x)) > 0) then {
            if (((side _x) getFriend playerside) > 0.6) then {
                _color = switch (side _x) do {
                case (west): {"#0088EE"};//0,0.45,0.9,1
                case (east): {"#DD0000"};//[0.75,0,0,1]
                case (resistance): {"#00DD00"};//[0,0.75,0,1]
                case (civilian): {"#880099"};//[0.6,0,0.75,1]
                    default {"#FFFFFF"};
                };
                _diaryHyperlinkedText = _diaryHyperlinkedText + format ["<br/><font color='%1' size='16'>%2</font><br/>", _color, (groupID _x)];
                {
                    _xIcon = gettext (configfile >> "CfgVehicles" >> typeOf (vehicle _x) >> "icon");
                    _image = gettext (configfile >> "CfgVehicleIcons" >> _xIcon);
                    _diaryHyperlinkedText = _diaryHyperlinkedText + format ["<img image='%1' width='16' height='16'/><font size='14'>%2</font><br/>", _image, (name _x)];
                } forEach (units _x);
            };
        };
    } forEach allGroups;
	*/
};
