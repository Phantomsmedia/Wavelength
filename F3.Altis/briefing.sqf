// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f\common\f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

waitUntil {!isnil "f_var_debugMode"};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};



// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Player faction: %1",_unitfaction];
	};

// ====================================================================================

// BRIEFING: INDFOR > AGF
// The following block of code executes only if the player is in an AGF slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "mas_afr_ind") exitwith {

#include "f\briefing\f_briefing_agf.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: OPFOR > AFRICA (CAF)
// The following block of code executes only if the player is in an AGF slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "caf_ag_afr") exitwith {

#include "f\briefing\f_briefing_africa.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: BLUFOR > NATO
// The following block of code executes only if the player is in a NATO slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "BLU_F") exitwith {

#include "f\briefing\f_briefing_nato.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: BLUFOR > Canadian Maple Farmers TW
// The following block of code executes only if the player is in a CAF TW slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "CAF_TW") exitwith {

#include "f\briefing\f_briefing_caftw.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: BLUFOR > USMC MEU
// The following block of code executes only if the player is in a USMC slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "mas_usa_mars") exitwith {

#include "f\briefing\f_briefing_usmc.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: BLUFOR > US Army
// The following block of code executes only if the player is in a US Army slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "AV_USArmy") exitwith {

#include "f\briefing\f_briefing_usarmy.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: BLUFOR > Delta Ghost
// The following block of code executes only if the player is in a Delta Ghost slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "mas_usa_delta") exitwith {

#include "f\briefing\f_briefing_delta.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: BLUFOR > BAF
// The following block of code executes only if the player is in a BAF slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "BLU_BAF_F") exitwith {

#include "f\briefing\f_briefing_baf.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: BLUFOR > FIA
// The following block of code executes only if the player is in a FIA slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "BLU_G_F") exitwith {

#include "f\briefing\f_briefing_fia.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: OPFOR > CSAT
// The following block of code executes only if the player is in a CSAT slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "OPF_F") exitwith {

#include "f\briefing\f_briefing_csat.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: INDEPENDENT > PMC
// The following block of code executes only if the player is in a PMC slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "PMC_POMI") exitwith {

#include "f\briefing\f_briefing_pmc.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: INDEPENDENT > Russians
// The following block of code executes only if the player is in a Russian slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "SUD_RU") exitwith {

#include "f\briefing\f_briefing_russia.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: INDEPENDENT > AAF
// The following block of code executes only if the player is in a AAF
// slot; it automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "IND_F") exitwith {

#include "f\briefing\f_briefing_aaf.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: CIVILIAN
// The following block of code executes only if the player is in a CIVILIAN
// slot; it automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "CIV_F") exitwith {

#include "f\briefing\f_briefing_civ.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

player globalchat format ["DEBUG (briefing.sqf): Faction %1 is not defined.",_unitfaction];