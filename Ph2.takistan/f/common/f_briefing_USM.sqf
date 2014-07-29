// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: USM 80s 90s units

// ====================================================================================

// TASKS
// The code below creates tasks. A (commented-out) sample task is included.

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
*** Insert mission credits here. ***
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
RADIO CHANNELS
<br/><br/>
Squad Leaders
<br/>
Command Squad - Channel 1, 148 (Command Net) 
<br/>
Alpha Squad Lead - Channel 1, 148 (Command Net); Channel 2, 148 (Alpha FT Net)
<br/>
Bravo Squad Lead - Channel 1, 148 (Command Net); Channel 3, 148 (Bravo FT Net)
<br/>
Charlie Squad Lead - Channel 1, 148 (Command Net); Channel 4, 148 (Charlie FT Net)
<br/>
Note that ASL, BSL and CSL have 2 148 radio’s. One is to be set to Command Net, the other to their correlating Squad Fire Team Channel.
<br/>
Note that attachment squads (e.g MMG, MAT etc) and any air, light or heavy armour will be on Command Net (Channel 1, 148).
<br/><br/>
Fire Team Leaders
<br/>
Alpha 1 Fire Team Leader - Channel 2, 148 (Alpha FT Net)
<br/>
Alpha 2 Fire Team Leader - Channel 2, 148 (Alpha FT Net)
<br/>
Alpha 3 Fire Team Leader - Channel 2, 148 (Alpha FT Net)
<br/>
Bravo 1 Fire Team Leader - Channel 3, 148 (Bravo FT Net)
<br/>
Bravo 2 Fire Team Leader - Channel 3, 148 (Bravo FT Net)
<br/>
Bravo 3 Fire Team Leader - Channel 3, 148 (Bravo FT Net)
<br/>
Charlie 1 Fire Team Leader - Channel 4, 148 (Charlie FT Net)
<br/>
Charlie 2 Fire Team Leader - Channel 4, 148 (Charlie FT Net)
<br/>
Charlie 3 Fire Team Leader - Channel 4, 148 (Charlie FT Net)
<br/><br/>
343 Radio Channels
<br/>
Alpha 343 - Channel 1
<br/>
Bravo 343 - Channel 2
<br/>
Charlie 343 - Channel 3
<br/>
Command 343 - Channel 4
<br/>
Note that attachment squads (e.g MMG, MAT etc) and any air, light or heavy armour use SEPARATE channels from 5-12 on the 343 radio. 
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Insert very short summary of plan here. ***
<br/><br/>
MOVEMENT PLAN
<br/>
*** Insert movement instructions here. ***
<br/><br/>
FIRE SUPPORT PLAN
<br/>
*** Insert fire support instructions here. ***
<br/><br/>
SPECIAL TASKS
<br/>
*** Insert instructions for specific units here. ***
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
*** Insert the mission here. ***
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
*** Insert general information about the situation here.***
<br/><br/>
ENEMY FORCES
<br/>
*** Insert information about enemy forces here.***
<br/><br/>
FRIENDLY FORCES
<br/>
*** Insert information about friendly forces here.***
"]];

// ====================================================================================