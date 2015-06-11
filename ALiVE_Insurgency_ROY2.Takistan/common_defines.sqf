/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: common_defines.sqf

Author:

	Hazey

Last modified:

	2/11/2015

Description:

	A safe place to put all the common defines you could ever want!

______________________________________________________*/

// ====================================================================================
//--- DEFINES

	//--- Debug - True = Enabled... Duh!
	ins_debug = false;

	//--- Advanced Roles Defines.
	INS_ENGINEERS = ["B_engineer_F","B_soldier_repair_F","B_soldier_exp_F","B_G_engineer_F","rhsusf_army_ucp_squadleader","rhsusf_army_ucp_engineer"];
	INS_MEDICS = ["B_medic_F","B_recon_medic_F","rhsusf_army_ucp_medic"];
	INS_UAV = ["B_soldier_UAV_F"];
	INS_MARKSMAN = ["B_recon_M_F","B_spotter_F","B_sniper_F","B_soldier_M_F","B_G_Soldier_M_F"];
	INS_AUTORIFLE = ["B_soldier_AR_F","B_support_MG_F","B_G_Soldier_AR_F","rhsusf_army_ucp_autorifleman"];

	//--- Public Score Define.
	INS_west_score = 0;
	publicVariable "INS_west_score";

	if (isServer || isDedicated) then {
		//--- Start CACHE as a null object to avoid any init issues.
		CACHE = objNull;
	};

	//--- Define intel types
	INS_INTELDROPPED = ["Land_HandyCam_F","Land_SatellitePhone_F","Land_Suitcase_F","Land_Ground_sheet_folded_OPFOR_F"];
	INS_INTELSPAWNED = ["Box_East_Support_F","Land_Laptop_unfolded_F","Land_Sleeping_bag_folded_F"];
	INS_CTPLOCATIONS = ["Land_A_Minaret_EP1","Land_A_Minaret_Porto_EP1"];

	//--- MHQ Defines
	INS_MHQ_CAMONET = "CamoNet_BLUFOR_big_F";
	INS_MHQ_SUPPLYCRATE = "B_supplyCrate_F";
	INS_MHQ_FLAGCLASS = "Flag_US_F";

	//--- Squad Defines
	INS_ALPHA_SQUAD = ["Hitman1","Hitman2","Hitman3","Hitman4","Hitman5","Hitman6","Hitman7","Hitman8"];
	INS_BRAVO_SQUAD = ["Hitman9","Hitman10","Hitman11","Hitman12","Hitman13","Hitman14","Hitman15","Hitman16"];
	INS_CHARLIE_SQUAD = ["Hitman17","Hitman18","Hitman19","Hitman20","Hitman21","Hitman22","Hitman23","Hitman24"];

// ====================================================================================