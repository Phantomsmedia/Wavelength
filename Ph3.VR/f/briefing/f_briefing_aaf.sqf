// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
*** Insert general information about the situation here.***
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
*** Insert information about enemy forces here.***
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
*** Insert information about friendly forces here.***
// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
*** Insert the mission here. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
*** Insert very short summary of plan here. ***
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
*** Insert movement instructions here. ***
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
*** Insert fire support instructions here. ***
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
*** Insert instructions for specific units here. ***
"]];

// ====================================================================================

// NOTES: SIGNAL
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Signal","
<br/>
Bandit - Attack Helicopters
<br/><br/>
Nomad - Transport Helicopters
<br/><br/>
Raider - Infantry Fighting Vehicles
<br/><br/>
Highwayman - Armoured Personnel Carriers
<br/><br/>
Marauder - Tanks
"]];

// ====================================================================================

// NOTES: INTEL
// The code below creates an intel section, which contains pictures (327x327).
// Uncomment the next line to use.

//_intel = player createDiaryRecord ["diary", ["Intel","
<br/>
*** Insert information on the first intel piece. ***
<br/>
<img image='intel1.jpg'/>
<br/>
*** Insert information on the second intel piece. ***
<br/>
<img image='intel2.jpg'/>
<br/>
"]];

// ====================================================================================

// NOTES: RADIO IMAGE
// The code below creates the administration sub-section of notes.

_radio = player createDiaryRecord ["diary", ["Radios","
<br/>
Squad Leaders
<br/> 
Command Squad - Freq 40 (Command Net)
<br/> 
Alpha Squad Lead - Freq 40 (Command Net); Freq 31 (Alpha FT Net) 
<br/>
Bravo Squad Lead - Freq 40 (Command Net); Freq 32 (Bravo FT Net) 
<br/>
Charlie Squad Lead - Freq 40 (Command Net); Freq 33 (Charlie FT Net) 
 <br/><br/>
Fire Team Leaders 
<br/>
Alpha 1 Fire Team Leader - Freq 31 (Alpha FT Net) 
<br/>
Alpha 2 Fire Team Leader - Freq 31 (Alpha FT Net)
<br/> 
Alpha 3 Fire Team Leader - Freq 31 (Alpha FT Net) 
<br/>
Bravo 1 Fire Team Leader - Freq 32 (Bravo FT Net) 
<br/>
Bravo 2 Fire Team Leader - Freq 32 (Bravo FT Net)
<br/> 
Bravo 3 Fire Team Leader - Freq 32 (Bravo FT Net) 
<br/>
Charlie 1 Fire Team Leader - Freq 33 (Charlie FT Net) 
<br/>
Charlie 2 Fire Team Leader - Freq 33 (Charlie FT Net) 
<br/>
Charlie 3 Fire Team Leader - Freq 33 (Charlie FT Net) 
 <br/><br/>
GI Radio Channels 
<br/>
Alpha 1  - Freq 31.1 (Alpha Net) 
<br/>
Alpha 2  - Freq 31.2 (Alpha Net) 
<br/>
Alpha 3  - Freq 31.3 (Alpha Net) 
<br/>
Bravo 1  - Freq 32.1 (Bravo Net) 
<br/>
Bravo 2  - Freq 32.2 (Bravo Net) 
<br/>
Bravo 3  - Freq 32.3 (Bravo Net) 
<br/>
Charlie 1  - Freq 33.1 (Charlie Net) 
<br/>
Charlie 2  - Freq 33.2 (Charlie Net) 
<br/>
Charlie 3  - Freq 33.3 (Charlie Net) 
<br/>
Command SR (Medic and CMD) - Channel 40.1
<br/><br/>
Support Channels
<br/>
From 50.1 to 50.9 for Air Support
<br/>
From 51.1 to 51.9 for Armor Support
<br/>
From 52.1 to 52.9 for Infantry Support (MMG etc)
<br/>
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
*** Insert mission credits here. ***
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================