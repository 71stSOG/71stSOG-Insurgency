waitUntil { ([] call acre_api_fnc_isInitialized ) };

ISACRERUNNING = false;

sleep 30;

while {true} do {
	if (ISACRERUNNING) exitWith {
		["Insurgency | Alive: Acre Process Found. Exiting..."] call ALIVE_fnc_dump;
	};

	["Insurgency | Alive: Running Acre Check."] call ALIVE_fnc_dump;
	call INS_fnc_checkAcreConnected;
	sleep 25;
};