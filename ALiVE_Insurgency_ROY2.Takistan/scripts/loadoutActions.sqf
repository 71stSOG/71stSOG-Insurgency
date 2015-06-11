private ["_loader"];
_loader = _this select 0;

loadout0 = _loader addAction [("<t color=""#000000"">" + "Reset Vehicle Inventory" + "</t>"),"scripts\vehicleLoadout.sqf", 0];
loadout1 = _loader addAction [("<t color=""#FFFF00"">" + "Rifleman Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 1];
loadout2 = _loader addAction [("<t color=""#FFFF00"">" + "Forward Artillery Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 2];
loadout3 = _loader addAction [("<t color=""#FFFF00"">" + "MG Soldier Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 3];
loadout4 = _loader addAction [("<t color=""#FFFF00"">" + "Anti Armor Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 4];
loadout5 = _loader addAction [("<t color=""#FF0000"">" + "Medical Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 5];
loadout6 = _loader addAction [("<t color=""#FFFF00"">" + "Radio Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 6];
loadout7 = _loader addAction [("<t color=""#FFFF00"">" + "EOD Loadout" + "</t>"),"scripts\vehicleLoadout.sqf", 7];