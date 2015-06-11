/******************
*
*   By Nighteyes
*
*******************/
 
 
private ["_crate"];
 
_crate = _this select 0;
_crate addAction ["<t color='#E3F059'>Equip Suicide Vest</t>", "suicide_vest.sqf"];
 
if (isServer) then
{
        while {alive _crate} do
        {
                clearWeaponCargoGlobal _crate;
        clearMagazineCargoGlobal _crate;
        clearItemCargoGlobal _crate;
 
        //backpacks ----------------------------------------------------------
                _crate addBackpackCargoGlobal ["B_Carryall_cbr",4];
                _crate addBackpackCargoGlobal ["B_Carryall_oli",4];
                _crate addBackpackCargoGlobal ["B_Carryall_khk",4];
               
 
                //RPG-7 --------------------------------------------------------------
                _crate addWeaponCargoGlobal ["launch_B_Titan_F",2];
                _crate addWeaponCargoGlobal ["launch_RPG32_F",5];
                _crate addMagazineCargoGlobal ["Titan_AA",5];
                _crate addMagazineCargoGlobal ["RPG32_F",15];
                _crate addMagazineCargoGlobal ["RPG32_HE_F",15];

 
 
        //Pistol's ---------------------------------------------------------------
                _crate addWeaponCargoGlobal ["hgun_ACPC2_F",10];
                _crate addMagazineCargoGlobal ["9Rnd_45ACP_Mag",30];
               
        //radios's ---------------------------------------------------------------
                _crate addItemCargoGlobal ["tf_fadak",50];
               
 	//Civ uniforms ---------------------------------------------------------------
                _crate addItemCargoGlobal ["U_C_Commoner1_1",5];
		_crate addItemCargoGlobal ["U_C_Commoner_shorts",5];
		_crate addItemCargoGlobal ["U_C_Farmer",5];
		_crate addItemCargoGlobal ["U_C_Poloshirt_blue",5];
		_crate addItemCargoGlobal ["U_C_Poor_1",5];

        //AK's ---------------------------------------------------------------
                _crate addWeaponCargoGlobal ["arifle_Mk20_F",10];
                _crate addWeaponCargoGlobal ["arifle_Mk20_GL_F",5];
                _crate addWeaponCargoGlobal ["LMG_Mk200_F",2];
                _crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
                _crate addMagazineCargoGlobal ["200Rnd_65x39_cased_Box",10];
                _crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",30];

               
                //BINOCS ITEMS ------------------------------------------------------------
                _crate addItemCargoGlobal ["Binocular",10];
 
                //Grenadier ------------------------------------------------------

 
                //IEDS grenades --------------------------------------------------------------
 
                _crate addMagazineCargoGlobal ["IEDUrbanBig_Remote_Mag",15];
                _crate addMagazineCargoGlobal ["HandGrenade",30];
                _crate addMagazineCargoGlobal ["SmokeShellRed",50];
              
        sleep 600;
        };
};