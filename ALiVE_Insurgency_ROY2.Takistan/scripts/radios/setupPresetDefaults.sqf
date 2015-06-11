/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: setupPresetDefaults.sqf

Author:

    Hazey

Last modified:

    2/28/2015

Description:


______________________________________________________*/
private["_unit", "_localUnitType", "_localRadioList"];
 _unit = _this select 0;
 _localUnitType = _this select 1;
if (player != _unit) exitWith {false};

_this spawn {
     _unit = _this select 0;
    _localUnitType = _this select 1;

    waitUntil { ([] call acre_api_fnc_isInitialized ) };
    switch _localUnitType do {
        case 'Alpha': {
            [ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
            [ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
        };

        case 'Bravo': {
            [ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
            [ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
        };

        case 'Charlie': {
            [ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
            [ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 3] call acre_api_fnc_setRadioChannel;
        };

        case 'Air': {
            [ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 6] call acre_api_fnc_setRadioChannel;
            [ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 6] call acre_api_fnc_setRadioChannel;
        };

        case 'Armor': {
            [ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
            [ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
        };

        default: {
            [ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
            [ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
        };
    };
};
*/