// F2 - ORBAT Notes
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// Group IDs need to be set before the ORBAT listing can be created
waitUntil {sleep 1; scriptDone f_script_setGroupIDs};

// Define needed variables
private ["_orbatText", "_groups", "_precompileGroups"];
_orbatText = "<br />NOTE<br />
The ORBAT below is only accurate at mission start.<br />
<br />
ORBAT<br />";
_groups = [];
_hiddenGroups = [group F2_Precompile_East] + [group F2_Precompile_West];

{
	// Add to ORBAT if side matches, group isn't already listed, and group has players
	if ((side _x == side group player) && !(_x in _groups) && ({isPlayer _x} count units _x) > 0) then {
		_groups = _groups + [_x];
	};
} forEach allGroups;

// Remove groups we don't want to show
_groups = _groups - _hiddenGroups;

//Print out each group and members
{
	//display marker for group and group leader
	_mkrName = format ["mkr_%1",_x];
	_orbatText = _orbatText + format["<marker name='%3'>%1</marker> %2", _x, name leader _x,_mkrname];
	
	//add break between groups
	_orbatText = _orbatText + "<br />";
	
	{
		//display heading spaces after leader of group
		if(count units _x > 1) then
		{
			_orbatText = _orbatText + "    ";
		};
	
		//display members if not leaders
		if(_x != leader _x) then
		{
			_orbatText = _orbatText + format["%1", name _x];
		};
	}
	forEach units _x;
	
	//if the group had extra units, throw a return
	if(1 < count units _x) then
	{
		_orbatText = _orbatText + "<br />";
	};
}
forEach _groups;

// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["ORBAT", _orbatText]];
