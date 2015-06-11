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
MB_fnc_teleTimer2 = {
	_t = 0;
	while {_t < 60} do {
		_t = _t + 1;
		sleep 1;
	};
	waitUntil {_t >= 60};
	teleported = false;
};

if (!teleported) then {
	TitleText[format['CLICK ON THE MAP TO TELEPORT'],'PLAIN DOWN'];
	openMap [true, false];

	onMapSingleClick {
		_shift;
		_pos set [2,0];
		_enemyunits = {side _x == west} count ((_pos) nearEntities [['Man','Car','APC','Tank','Helicopter','Plane','Ship','Support'],300]);

		if (_enemyunits > 0) then {
				TitleText[format['CANNOT TELEPORT HERE, BLUFOR UNITS WITHIN 300 METERS'],'PLAIN DOWN'];
		} else {
				player setPos _pos; onMapSingleClick ''; true;
				TitleText[format['YOU HAVE BEEN TELEPORTED SUCCESSFULLY'],'PLAIN DOWN'];
				openMap [false, false];
				teleported = true;
				[] spawn MB_fnc_teleTimer2;
		};
	onMapSingleClick {_shift};
	};
};

if (teleported) then {
	TitleText[format['YOU HAVE TO WAIT 60 SECONDS BETWEEN BASE TELEPORTS'],'PLAIN DOWN'];
};