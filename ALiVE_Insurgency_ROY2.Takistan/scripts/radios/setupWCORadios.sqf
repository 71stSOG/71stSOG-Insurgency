/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: setupWCORadios.sqf

Author:

    Hazey

Last modified:

    2/28/2015

Description:


______________________________________________________*/
waitUntil { ([] call acre_api_fnc_isInitialized ) };

["ACRE_PRC148", "default", "Whiskey"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "default", "Whiskey"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "default", "Whiskey"] call acre_api_fnc_copyPreset;

["ACRE_PRC148", "Whiskey", 1, "label", "Alpha 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 2, "label", "Bravo 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 3, "label", "Charlie 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 4, "label", "Sqaud2Squad"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 5, "label", "TransNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 6, "label", "CasNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 7, "label", "ArmorNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 8, "label", "Artillery"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Whiskey", 10, "label", "High Command"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC152", "Whiskey", 1, "description", "Alpha 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 2, "description", "Bravo 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 3, "description", "Charlie 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 4, "description", "Sqaud2Squad"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 5, "description", "TransNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 6, "description", "CasNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 7, "description", "ArmorNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 8, "description", "Artillery"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "Whiskey", 10, "description", "High Command"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC117F", "Whiskey", 1, "name", "Alpha 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 2, "name", "Bravo 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 3, "name", "Charlie 1-1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 4, "name", "Sqaud2Squad"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 5, "name", "TransNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 6, "name", "CasNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 7, "name", "ArmorNET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 8, "name", "Artillery"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Whiskey", 10, "name", "High Command"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC148", "Whiskey"] call acre_api_fnc_setPreset;
["ACRE_PRC152", "Whiskey"] call acre_api_fnc_setPreset;
["ACRE_PRC117F", "Whiskey"] call acre_api_fnc_setPreset;