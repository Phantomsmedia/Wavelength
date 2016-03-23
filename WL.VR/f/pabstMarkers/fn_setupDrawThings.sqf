#include "defines_unitsAndGroups.hpp"


F_Markers_thingsToDraw = [];

_playerFaction = toLower (faction player);
_showTheseFactions = [];
{
    if (_playerFaction in _x) exitWith {
        _showTheseFactions = _x;
    };
} forEach F_Markers_factionMap;


{
    //Pull groupID from server
    if (!(_x getVariable ["f_var_localIDSet", false])) then {
        _groupIDName = _x getVariable ["F3_GroupID", "-1"];
        if (_groupIDName != "-1") then {
            _x setVariable ["f_var_localIDSet", true];
            _x setGroupId [_groupIDName];

            _splitName = [_groupIDName," "] call BIS_fnc_splitString;
            if ((count _splitName) >= 2) then {
                _shortName = _splitName select 1;
                _style = [_shortName] call F_Markers_fnc_getGroupMarkerStyle;
                if((_style select 0) != "") then {
                    _x setVariable ["f_var_drawSettings", [_style select 3, _style select 0, _style select 1, _style select 2, [0,0,0], -1000, false]];
					_motBlacklist = [	//defines all .paas not meant to ever be paired with the "motorized" vertical bar modifier
						"\sc_mapmarkers\data\mtr.paa","\sc_mapmarkers\data\mtr1.paa","\sc_mapmarkers\data\mtr2.paa","\sc_mapmarkers\data\mtr3.paa","\A3\ui_f\data\map\markers\nato\b_med.paa","\sc_mapmarkers\data\dt.paa","\sc_mapmarkers\data\dt1.paa","\sc_mapmarkers\data\dt2.paa","\sc_mapmarkers\data\dt3.paa","\sc_mapmarkers\data\eng.paa","\sc_mapmarkers\data\eng1.paa","\sc_mapmarkers\data\eng2.paa","\sc_mapmarkers\data\eng3.paa","\sc_mapmarkers\data\ifv.paa","\sc_mapmarkers\data\ifv1.paa","\sc_mapmarkers\data\ifv2.paa","\sc_mapmarkers\data\ifv3.paa","\sc_mapmarkers\data\ifv4.paa","\sc_mapmarkers\data\ifv5.paa","\sc_mapmarkers\data\ifv6.paa","\sc_mapmarkers\data\ifv7.paa","\sc_mapmarkers\data\ifv8.paa","\sc_mapmarkers\data\tnk.paa","\sc_mapmarkers\data\tnk1.paa","\sc_mapmarkers\data\tnk2.paa","\sc_mapmarkers\data\tnk3.paa","\sc_mapmarkers\data\tnk4.paa","\sc_mapmarkers\data\apc.paa","\sc_mapmarkers\data\apc1.paa","\sc_mapmarkers\data\apc2.paa","\sc_mapmarkers\data\apc3.paa","\sc_mapmarkers\data\apc4.paa","\sc_mapmarkers\data\th.paa","\sc_mapmarkers\data\th1.paa","\sc_mapmarkers\data\th2.paa","\sc_mapmarkers\data\th3.paa","\sc_mapmarkers\data\th4.paa","\sc_mapmarkers\data\th5.paa","\sc_mapmarkers\data\th6.paa","\sc_mapmarkers\data\th7.paa","\sc_mapmarkers\data\th8.paa","\sc_mapmarkers\data\ah.paa","\sc_mapmarkers\data\ah1.paa","\sc_mapmarkers\data\ah2.paa","\sc_mapmarkers\data\ah3.paa","\sc_mapmarkers\data\ah4.paa","\sc_mapmarkers\data\fw.paa","\sc_mapmarkers\data\fw1.paa","\sc_mapmarkers\data\fw2.paa","\sc_mapmarkers\data\fw3.paa","\sc_mapmarkers\data\fw4.paa"
					];
					if !((_style select 0) in _motBlacklist) then {
						[_x,_style] spawn {	//persistent checking of vehicle-mount status
							params ["_x","_style"];
							while {!isNull _x} do {
								waitUntil {sleep 3; ((vehicle (leader _x)) != (leader _x))};
								_x setVariable ["f_var_drawSettings", [_style select 3, _style select 0, _style select 1, _style select 2, [0,0,0], -1000, true]];
								waitUntil {sleep 3; ((vehicle (leader _x)) == (leader _x))};
								_x setVariable ["f_var_drawSettings", [_style select 3, _style select 0, _style select 1, _style select 2, [0,0,0], -1000, false]];
							};
						};
					};
                };
            };
        };
    };

    _groupFaction = toLower (faction (leader _x));
    if (_groupFaction in _showTheseFactions) then {
        if (F_Markers_drawNonPlayerGroups || {({isPlayer _x} count (units _x)) > 0}) then {
            F_Markers_thingsToDraw pushBack _x;
            //If it doesn't have settings, just give a default:
            if ((_x getVariable ["f_var_drawSettings", []]) isEqualTo []) then {
                _x setVariable ["f_var_drawSettings", [(groupID _x), "\A3\ui_f\data\map\markers\nato\b_unknown.paa", [1,1,1,1], [20,20], [0,0,0], -1000, false]];
            };
        };
    };
    nil
} count allGroups;


{
    _unit = missionNameSpace getVariable [(_x select 0), objNull];
    if (!isNull _unit) then {
        _unitFaction = toLower (faction _unit);
        if (_unitFaction in _showTheseFactions) then {
            if ((_unit getVariable ["f_var_drawSettings", []]) isEqualTo []) then {
                _shortName = (_x select 1);
                _style = [_shortName] call F_Markers_fnc_getGroupMarkerStyle;
				_unit setVariable ["f_var_drawSettings", [_style select 3, _style select 0, _style select 1, _style select 2, [], -1000, false]];
            };
            F_Markers_thingsToDraw pushBack _unit;
        };
    };
    nil
} count UNIT_MARKERS;
