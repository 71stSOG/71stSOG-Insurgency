//SimpleCrateRefill.sqf by Jigsor
//Refills ammo crates with contents inventoried at script run time.
//_nul = [CrateObject,DelayMinutes] execVM "scripts\SimpleCrateRefill.sqf";
//_nul = [this,10] execVM "scripts\SimpleCrateRefill.sqf";

if (!isServer) exitWith {};
waitUntil {time > 0};
sleep (random 10);

private ["_crate","_delay","_all_mags","_all_weps","_all_items","_has_items"];

_crate = _this select 0;
_delay = (_this select 1) * 60;
_has_items = false;
_all_mags = magazineCargo _crate;
_all_weps = WeaponCargo _crate;
_all_items = ItemCargo _crate;
//_backpacks = getBackpackCargo _crate;
if (count _all_items > 0) then {_has_items = true;};

while {true} do {
	clearMagazineCargoGlobal _crate;
	sleep 0.3;
	clearWeaponCargoGlobal _crate;
	sleep 0.3;
	if (_has_items) then {clearItemCargoGlobal _crate;};
	sleep 0.3;
	{_crate addMagazineCargoGlobal [_x, 1];} foreach _all_mags;
	sleep 0.3;
	{_crate addWeaponCargoGlobal [_x, 1];} foreach _all_weps;
	sleep 0.3;
	if (_has_items) then {{_crate addItemCargoGlobal [_x, 1];} foreach _all_items;};
	sleep _delay;
};