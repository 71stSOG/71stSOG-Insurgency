/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: initPlayerLocal.sqf

Author:

	Hazey

Last modified:

	2/27/2015

Description:

	Init player - Starts and runs things.
______________________________________________________*/

enableSentences FALSE;
enableSaving [FALSE,FALSE];

// ====================================================================================
	//--- DEFINES/ INCLUDES
	asr_ai3_main_enabled 		= 1;		// All the other settings matter only if we have 1 here; set 0 to disable all scripted features
	asr_ai3_main_radionet 		= 1;		// AI groups share known enemy locations over radio
	asr_ai3_main_radiorange 	= 500;		// Maximum range for AI radios (warning: increasing this impacts game performance)
	asr_ai3_main_seekcover 		= 1;		// Set to 1 if AI should move to near cover in combat when they're exposed in the open, 0 to disable.
	asr_ai3_main_throwsmoke		= 0.3;		// AI throws smoke when hit for cover (set 0 to disable or a number up to 1 to enable, higher number means better chance to do it)
	asr_ai3_main_usebuildings 	= 0.7;		// Chance the AI group will enter nearby building positions for cover (0 to 1 values, 0 will disable the feature)
	asr_ai3_main_getinweapons 	= 0.7;		// Chance the AI group will mount nearby static and vehicle weapons in combat (0 to 1 values, 0 will disable the feature)
	asr_ai3_main_packNVG		= 1;		// Automatically un-equip NVG during the day (store them in the vest/backpack) and re-equip when it gets dark
	asr_ai3_main_dayscope		= 0;		// Prevent AI from using scope fire modes at night (reduced engagement range and accuracy); requires ASDG JR and all clients running same mods as the server
	asr_ai3_main_debug 			= 0;		// Log extra debugging info to RPT, create debug markers and hints (1-enabled, 0-disabled)

// ====================================================================================

if (isDedicated) exitWith {};
waitUntil {!isNull player};

//--- Run Pilot Check Script.
if (paramsArray select 9 == 1) then {
	_null = [] execVM "scripts\pilotCheck.sqf";
};

//--- Run Mission Breifing.
_null = [] execVM "scripts\briefings\briefing.sqf";


//--- will cause to fall if fatigued
[] execVM 'QS_Fatigue.sqf';

//--- 3rd person only for infantry
[] execVM '3rdView_Restrictions.sqf';

"ELAPSED_TIME" addPublicVariableEventHandler {
	[_this select 1] spawn {
		private[Q(_ELAPSED_TIME)];
		_ELAPSED_TIME = _this select 0;
		
		switch (_ELAPSED_TIME) do {
			case 300: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
			case 600: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
			case 900: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
			case 1080: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
		};
		if (_ELAPSED_TIME > 1080) then {
			while{_ELAPSED_TIME < END_TIME } do {
				[END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint;
			};
		};
    };
};

waitUntil {!isNull player};
onMapSingleClick {_shift};
player enableFatigue false;
player addEventHandler ["respawn", {player enableFatigue false; onMapSingleClick "_shift"} ];
if (side player == east) then {

        [] spawn MB_fnc_randomUniform;
        teleported = false;
        teleportedPlayer = false;
        player addAction ["Teleport", "opfor_teleporter_player.sqf"];
        player addEventHandler ["respawn", {
        [] spawn MB_fnc_randomUniform;
        player addAction ["Teleport", "opfor_teleporter_player.sqf"];
        }];
        vestOn = false;
        plcIEDactnState = false;
};