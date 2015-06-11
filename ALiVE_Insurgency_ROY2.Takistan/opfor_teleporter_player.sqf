/********************************************************************
*	                          __    ____
*	 /'\_/`\                 /\ \__/\  _`\
*	/\      \     __     __  \ \ ,_\ \ \L\ \     __       __     ____
*	\ \ \__\ \  /'__`\ /'__`\ \ \ \/\ \  _ <'  /'__`\   /'_ `\  /',__\
*	 \ \ \_/\ \/\  __//\ \L\.\_\ \ \_\ \ \L\ \/\ \L\.\_/\ \L\ \/\__, `\
*	  \ \_\\ \_\ \____\ \__/.\_\\ \__\\ \____/\ \__/.\_\ \____ \/\____/
*	   \/_/ \/_/\/____/\/__/\/_/ \/__/ \/___/  \/__/\/_/\/___L\ \/___/
*	                                                      /\____/
*	                                                      \_/__/
*
********************************************************************/
MB_fnc_teleTimer = {
	_t = 0;
	while {_t < 150} do {
		_t = _t + 1;
		sleep 1;
	};
	waitUntil {_t >= 150};
	teleportedPlayer = false;
};

 if (isNil "teleported") then {teleported=false;};
	TitleText[format['CLICK ON THE MAP TO TELEPORT'],'PLAIN DOWN'];
	openMap [true, false];
	onMapSingleClick {

	_pos set [2,0];
	_enemyunits = {side _x == west} count ((_pos) nearEntities [['Man','Car','APC','Tank','Helicopter','Plane','Ship','Support'],500]);
	_enemyunits2 = {side _x == west} count ((getPos player) nearEntities [['Man','Car','APC','Tank','Helicopter','Plane','Ship','Support'],700]);

	if (_enemyunits2 > 0) then {
			TitleText[format['CANNOT TELEPORT AWAY FROM BLUFOR UNITS AND THE BATTLE'],'PLAIN DOWN'];
			openMap [false, false];
			onMapSingleClick ''; true;
	} else {

		if (_enemyunits > 0) then {
				TitleText[format['CANNOT TELEPORT THERE, BLUFOR UNITS WITHIN 500 METERS'],'PLAIN DOWN'];
		} else {
					player setPos _pos; onMapSingleClick ''; true;
					openMap [false, false];
					TitleText[format['YOU HAVE BEEN TELEPORTED SUCESSFULLY'],'PLAIN DOWN'];
					teleportedPlayer = true;
					[] spawn MB_fnc_teleTimer;
			};
		};
	onMapSingleClick {_shift};
	};
};

if (teleportedPlayer) then {
	TitleText[format['YOU HAVE TO WAIT 5 MINUTES TO TELEPORT AGAIN'],'PLAIN DOWN'];
};