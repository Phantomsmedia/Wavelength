// F3 - AGM Clientside Initialisation
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// Wait for gear assignation to take place
waitUntil{(player getVariable ["f_var_assignGear_done", false])};

private "_typeOfUnit";

_typeOfUnit = player getVariable "f_var_assignGear";

// Remove pre-assigned medical items
{player removeItems _x} forEach ["FirstAidKit","Medikit","ACE_fieldDressing","ACE_morphine","ACE_epinephrine","ACE_bloodIV_500"];

// Add basic items to all units
player addItem "ACE_EarPlugs";
{player addItem "ACE_fieldDressing"} forEach [1,2,3,4,5];
player addItem "ACE_morphine";

if (_typeOfUnit == "m") then
{

	// BACKPACK: LIGHT
	if (f_param_backpacks <= 1) then {
		(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",  15];
		(unitBackpack player) addItemCargoGlobal ["ACE_morphine", 10];
		(unitBackpack player) addItemCargoGlobal ["ACE_epinephrine",   10];
		(unitBackpack player) addItemCargoGlobal ["ACE_bloodIV_500", 2];
	};
	// BACKPACK: HEAVY
	if (f_param_backpacks == 2) then {
		(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing", 25];
		(unitBackpack player) addItemCargoGlobal ["ACE_morphine", 15];
		(unitBackpack player) addItemCargoGlobal ["ACE_epinephrine",   15];
		(unitBackpack player) addItemCargoGlobal ["ACE_bloodIV_500", 4];
	};
};
