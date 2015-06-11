/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: checkAcreConnected.sqf

Author:

    Hazey

Last modified:

    2/28/2015

Description:


______________________________________________________*/
private ["_returned","_isTS3Conneceted"];

waitUntil { ([] call task_force_radio_items_isInitialized ) };

_returned = [] call acre_sys_debug_fnc_checkPipes;
_isTS3Conneceted = _returned select 0;

["Insurgency | Alive: TFAR Conneceted: %1", _isTS3Conneceted] call ALIVE_fnc_dump;

if (!_isTS3Conneceted) then {
	cutRsc ["TFAR_CHECK","PLAIN"];
	playSound "warning";
	ISACRERUNNING = false;
} else {
	cutText ["","BLACK IN"];
	ISACRERUNNING = True;
};