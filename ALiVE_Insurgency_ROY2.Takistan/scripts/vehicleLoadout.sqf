private ["_loader","_loadouttype","_veh","_veh_type"];
_loader = _this select 0;
if (vehicle _loader == player) exitWith{hint "You are not in a Vehicle!";};
_loadouttype = _this select 3;
_veh = vehicle _loader;
_veh_type = typeof _veh;

// Reset Loadout
If (_loadouttype == 0) then {
    _veh vehicleChat format ["Clearing Vehicle Inventory %1... Please Wait...", _veh_type];
    
    _veh setFuel 0;
  
    sleep 10;
	
    clearMagazineCargoGlobal _veh;
    clearWeaponCargoGlobal _veh;
    clearItemCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
    
    _veh setFuel 1;
    
    _veh vehicleChat format ["Unloading Complete..."];

    hint "Vehicle Inventory Cleared";
};

// Rifleman Loadout
If (_loadouttype == 1) then {
    _veh vehicleChat format ["Loading Rifleman Gear into %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
	
    _veh addWeaponCargoGlobal["rhs_weap_m16a4_carryhandle_pmag",2];
    _veh addMagazineCargoGlobal["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30];
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG", 2];
    _veh addMagazineCargoGlobal["smokeshell",6];
    _veh addMagazineCargoGlobal["smokeshellgreen",6];
    _veh addMagazineCargoGlobal["rhs_mag_m67",12];
    _veh addMagazineCargoGlobal["MiniGrenade",12];
	_veh addItemCargoGlobal ["AGM_EarBuds", 2];
	_veh addItemCargoGlobal ["AGM_CableTie", 2];


	_veh setFuel 1;
    
    _veh vehicleChat format ["Loading Complete..."];

    hint "Rifleman Gear Loaded";
};

// Forward Artillery
If (_loadouttype == 2) then {
    _veh vehicleChat format ["Loading Forward Artillery Gear into %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
    _veh addWeaponCargoGlobal["laserdesignator",1];
    _veh addBackpackCargoGlobal ["B_Mortar_01_support_F",1];
    _veh addBackpackCargoGlobal ["B_Mortar_01_weapon_F",1];
    _veh addMagazineCargoGlobal["smokeshell",6];
    _veh addMagazineCargoGlobal["smokeshellgreen",6];
    _veh addMagazineCargoGlobal["smokeshellred",6];
    _veh addMagazineCargoGlobal["Laserbatteries",2];
	_veh addWeaponCargoGlobal["rhs_weap_m4a1",2];
	_veh addMagazineCargoGlobal["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",10];
	_veh addItemCargoGlobal ["AGM_EarBuds", 2];

    
	_veh setFuel 1;
	
    _veh vehicleChat format ["Loading Complete..."];

    hint "Forward Artillary";
};

// MG Soldier Team
If (_loadouttype == 3) then {
    _veh vehicleChat format ["Loading MG Soldier Gear into %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
    _veh addWeaponCargoGlobal["rhs_weap_m240B",1];
    _veh addMagazineCargoGlobal["rhsusf_100Rnd_762x51",12];
    _veh addItemCargoGlobal ["rhsusf_acc_ELCAN", 2];
    _veh addMagazineCargoGlobal["smokeshell",6];
	_veh addMagazineCargoGlobal["rhs_mag_m67",6];
    _veh addMagazineCargoGlobal["MiniGrenade",6];
	_veh addItemCargoGlobal ["AGM_EarBuds", 2];
	_veh addItemCargoGlobal ["AGM_SpareBarrel", 1];


    
	_veh setFuel 1;
	
    _veh vehicleChat format ["Loading Complete..."];

    hint "MG Soldier Gear Loaded";
};

// AntiArmor Team
If (_loadouttype == 4) then {
    _veh vehicleChat format ["Loading AntiArmor Gear into %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
	
    _veh addWeaponCargoGlobal["rhs_weap_M136_hedp", 5];
    //_veh addMagazineCargoGlobal["Titan_AT",4];
	//_veh addMagazineCargoGlobal["Titan_AP",4];
    _veh addMagazineCargoGlobal["smokeshell", 12];
	_veh addMagazineCargoGlobal["rhs_m136_hedp_mag", 5];	
	_veh addItemCargoGlobal ["AGM_EarBuds", 2];


    
	_veh setFuel 1;
	
    _veh vehicleChat format ["Loading Complete..."];

    hint "AntiArmor Team Gear Loaded";
};

// Medical Team
If (_loadouttype == 5) then {
    _veh vehicleChat format ["Loading Medical Team Gear into %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
    _veh addWeaponCargoGlobal["rhs_weap_m4a1", 1];
    _veh addMagazineCargoGlobal["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10];
    _veh addMagazineCargoGlobal["smokeshell",10];
    _veh addMagazineCargoGlobal["smokeshellblue",10];
    _veh addItemCargoGlobal["AGM_Bandage",40];
	_veh addItemCargoGlobal["AGM_Morphine",40];
	_veh addItemCargoGlobal["AGM_Epipen",20];
	_veh addItemCargoGlobal["AGM_Bloodbag",10];
	_veh addItemCargoGlobal ["AGM_EarBuds", 2];

    
    
	_veh setFuel 1;
	
    _veh vehicleChat format ["Loading Complete..."];

    hint "Medical Team Gear Loaded";
};

// Radio Team
If (_loadouttype == 6) then {
    _veh vehicleChat format ["Loading Radio Team Gear %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
	
	_veh addWeaponCargoGlobal["itemRadio", 4];
    _veh addWeaponCargoGlobal["ACRE_PRC117F", 1];
    //_veh addWeaponCargoGlobal["ACRE_PRC148_UHF",5];
    //_veh addWeaponCargoGlobal["ACRE_PRC148",5];
    _veh addWeaponCargoGlobal["ACRE_PRC152", 2];
	
	_veh setFuel 1;
    
    _veh vehicleChat format ["Loading Complete..."];

    hint "Radio Team Gear Loaded";
};

// Engineering Loadout
If (_loadouttype == 7) then {
    _veh vehicleChat format ["Loading Engineering Team Gear %1... Please Wait...", _veh_type];
	
	_veh setFuel 0;
	
    sleep 10;
	_veh addWeaponCargoGlobal["rhs_weap_m4a1",1];
    _veh addMagazineCargoGlobal["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",5];
    _veh addMagazineCargoGlobal["smokeshell",10];
    _veh addMagazineCargoGlobal["smokeshellblue",10];
	_veh addItemCargoGlobal["ToolKit",1];
	_veh addItemCargoGlobal["MineDetector",1];
    _veh addMagazineCargoGlobal["DemoCharge_Remote_Mag",10];
    _veh addMagazineCargoGlobal["SatchelCharge_Remote_Mag",2];
    _veh addMagazineCargoGlobal["ClaymoreDirectionalMine_Remote_Mag",5];
    _veh addMagazineCargoGlobal["APERSBoundingMine_Range_Mag",5];
    _veh addMagazineCargoGlobal["SLAMDirectionalMine_Wire_Mag",5];
	_veh addItemCargoGlobal ["AGM_EarBuds", 2];
	_veh addItemCargoGlobal["AGM_Clacker",1];
	_veh addItemCargoGlobal["AGM_DefusalKit",1];


	
	_veh setFuel 1;
    
    _veh vehicleChat format ["Loading Complete..."];

    hint "Engineering Gear Loaded";
	
};

_veh removeaction loadout0;
_veh removeaction loadout1;
_veh removeaction loadout2;
_veh removeaction loadout3;
_veh removeaction loadout4;
_veh removeaction loadout5;
_veh removeaction loadout6;
_veh removeaction loadout7;
