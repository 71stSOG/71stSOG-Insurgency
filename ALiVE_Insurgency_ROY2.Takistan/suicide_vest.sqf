    /* Created by: TrevorMcNeill for MeatBags
   /  Date Edited: 9/3/13
  /  Purpose of Script: Adds the Availability of the Suicide vest.
*/
//////////put in object init line of the ammo box: this addAction ["Equip Suicide Vest", "suicide_vest\equipvest.sqf"];

private ["_unit", "_id"];
//_unit= _this select 1;
_id= _this select 2;

if (vestOn) exitWith {titleText ["You already have a suicide vest","PLAIN DOWN"]};
vestOn = true;
titleText ["You have put on a suicide vest","PLAIN DOWN"];
player AddAction ["<t color='#E3F059'>SAFETY OFF</t>", {[_this select 2] call MB_fnc_safetyOff}];

MB_fnc_safetyOff = {
	private ["_id"];
	_id= _this select 0;
	player removeAction _id;

	dtnAction = player AddAction ["<t color=""#FF0000"">" +"DETONATE VEST",{[_this select 2] spawn MB_fnc_detonateVest}];
	player AddAction ["<t color=""#36C712"">" +"SAFETY ON",{
		player removeAction (_this select 2);
		player removeAction dtnAction;
		player AddAction ["<t color='#E3F059'>SAFETY OFF</t>", {[_this select 2] call MB_fnc_safetyOff}];
	}];
};

MB_fnc_detonateVest = {
	private ["_id"];
	_id= _this select 0;

	player say3D "insScream";
	sleep 1;
    createVehicle ["Bo_Mk82",getposATL player,[],0,""];
	player removeAction _id;
	vestOn = false;
};