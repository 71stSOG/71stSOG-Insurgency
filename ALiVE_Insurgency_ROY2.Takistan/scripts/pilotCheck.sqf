private ["_pilots","_aircraft_nocopilot","_isPilot","_whitelist","_uid","_oldvehicle","_veh","_forbidden"];

_pilots = ["B_Pilot_F"];
_aircraft_nocopilot = ["Land_HelipadCircle_F", "B_Heli_Light_01_armed_F", "B_Heli_Attack_01_F", "B_Heli_Transport_01_camo_F", "B_Heli_Transport_01_camo_F"];

waitUntil {player == player};

_isPilot = ({typeOf player == _x} count _pilots) > 0;

_uid = getPlayerUID player;

_whitelist = ["76561197961831168","76561198025235447","76561197968966475","76561198006784532"];

if (_uid in _whitelist) exitWith {};

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if (vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only

		if((_veh isKindOf "Helicopter" || _veh isKindOf "Plane") && !(_veh isKindOf "ParachuteBase")) then {
			if(({typeOf _veh == _x} count _aircraft_nocopilot) > 0) then {
				_forbidden = [_veh turretUnit [0]];
				if(player in _forbidden) then {
					if (!_isPilot) then {
						private ["_title","_text"];

						_title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>INSURGENCY | ALiVE</t>
						<img color='#ffffff' image='media\images\img_line_ca.paa' align='left' size='0.60' /><br/>";
						_text = format["%1<t align='center' color='#eaeaea'>Co-pilot slot is disabled on this vehicle</t>
						<br/><br/><img color='#ffffff' image='media\images\img_line_ca.paa' align='left' size='0.60' />", _title];

						["openSideTop",1.4] call ALIVE_fnc_displayMenu;
						["setSideTopText",_text] call ALIVE_fnc_displayMenu;
						player action ["getOut",_veh];
					};
				};
			};
			if(!_isPilot) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					private ["_title","_text"];

					_title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>INSURGENCY | ALiVE</t>
					<img color='#ffffff' image='media\images\img_line_ca.paa' align='left' size='0.60' /><br/>";
					_text = format["%1<t align='center' color='#eaeaea'>You must be in a pilot slot to fly this aircraft</t>
					<br/><br/><img color='#ffffff' image='media\images\img_line_ca.paa' align='left' size='0.60' />", _title];

					["openSideTop",1.4] call ALIVE_fnc_displayMenu;
					["setSideTopText",_text] call ALIVE_fnc_displayMenu;
					player action ["getOut", _veh];
				};
			};
		};
	};

	sleep 10;
};

