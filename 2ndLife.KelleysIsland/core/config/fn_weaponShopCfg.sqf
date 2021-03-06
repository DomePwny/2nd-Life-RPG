#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/

params [["_shop", "", [""]]];

if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
_ret = [];
 
switch(_shop) do
{
        case "med_supplies":
        {
			switch (true) do
			{
				case (playerSide != independent): {"You are not an EMS"};
				default {
					["EMS Supplies Shop",
						[
							["cg_torch",nil,550], 
							["cg_torchbattery",nil,50],
							["2ndLife_Extinguisher",nil,825],
							["30Rnd_test_mag",nil,25],
							["ToolKit",nil,2500],
							["ItemCompass",nil,50],
							["tf_anprc152",nil,10],
							["ItemWatch",nil,10]
						]
					];
				};
			};
        };
        case "med_basic":
        {
			switch (true) do
			{
				case (playerSide != independent): {"You are not an EMS"};
				default {
					["EMS Basic Shop",
						[
							["Second_Life_Defi_i","Defibrillator",1250],
							["CG_ATF_Drug_Bottle_01_i","Valium",5],
							["ItemGPS",nil,25],
							["tf_microdagr",nil,5],
							["tf_anprc152",nil,10],
							["Binocular",nil,120],
							["ToolKit",nil,2500],
							["ItemCompass",nil,50],
							["ItemWatch",nil,10],
							["Chemlight_red",nil,20],
							["Chemlight_yellow",nil,20],
							["Chemlight_green",nil,20],
							["Chemlight_blue",nil,20]
						]
					];
				};
			};
        };
    
        case "cop_basic":
        {
			switch(true) do
			{
				case (playerSide != west): {"You are not a cop!"};
				default
				{
					["Police Utility Shop",								
						[
							["Second_Life_Binder_i",nil,10],
							["CG_ATF_Pizza_Box_i","Pizza",500],
							["CG_ATF_Donut_Box_i","Donuts",750],
							["2ndLife_Extinguisher",nil,825],
							["30Rnd_test_mag",nil,25],
							["cg_torch",nil,550], 
							["cg_torchbattery",nil,50],
							["CG_Spikes_Collapsed",nil,250], 
							["gign_shield","Riot Shield",10],
							["acc_flashlight","ACC Flashlight",10],
							["RH_M6X","RH Flashlight",10],
							["ToolKit",nil,2500], 
							["ItemCompass",nil,50],  
							["ItemWatch",nil,10],                                          
							["Chemlight_red",nil,20],
							["Chemlight_yellow",nil,20],
							["Chemlight_green",nil,20],
							["Chemlight_blue",nil,20],
							["Binocular",nil,15],
							["ItemGPS",nil,10],  
							["tf_anprc152",nil,10]
						]
					];
				};
			};
        };
		
		case "cop_weaponShop": 
		{
			_ret = [];
			if(__GETC__(life_coplevel) > 0) then {
				_ret pushBack [
					["Taser_26",nil,125],
					["26_cartridge",nil,2],
					["RH_m9",nil,240],
					["RH_15Rnd_9x19_M9",nil,5]
				];
			};
			if(__GETC__(life_coplevel) > 1) then {
				_temp = [
					["RH_fnp45",nil,240],
					["RH_15Rnd_45cal_fnp",nil,4],
					["hgun_Pistol_heavy_01_F",nil,240],
					["11Rnd_45ACP_Mag",nil,5],
					["hlc_smg_mp5a4",nil,3100],
					["hlc_30Rnd_9x19_GD_MP5",nil,25],
					["SMG_05_F",nil,2850],
					["30Rnd_9x21_Mag_SMG_02",nil,20]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 2) then {
				_temp =  [
					["RH_compM2l","Rifle Aimpoint Low",25],
					["RH_compM2","Rifle Aimpoint",25],
					["hlc_rifle_CQBR",nil,3425],
					["hlc_30rnd_556x45_EPR",nil,25],
					["hlc_smg_mp5k",nil,3625],
					["hlc_30Rnd_9x19_B_MP5",nil,25]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 3) then {
				_temp =  [
					["RH_M4A1_ris",nil,4222],
					["RH_30Rnd_556x45_M855A1",nil,20],
					["RH_barska_rds","Barska Red Dot",25],
					["RH_cmore","C-more Red Dot",25],
					["RH_m4covers_f",nil,25],
					["KPFS_G36C",nil,3725],
					["KPFS_30Rnd_556x45_G36",nil,25]
					
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 5) then {
				_temp =  [
					["RH_uspm",nil,240],
					["RH_16Rnd_40cal_usp",nil,5]						
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 6) then {
				_temp =  [

					["RH_M4A6",nil,12220],
					["optic_MRCO",nil,220],
					["RH_30Rnd_68x43_FMJ",nil,220],
					["RH_SFM952V",nil,80],
					["RH_compM2l",nil,80],
					["RH_t1","Aimpoint",10],
					["RH_ta648",nil,222],
					["prpl_benelli_14_pgs_rail","Shotgun Rubber",2200],
					["prpl_6Rnd_12Gauge_Slug","Rubber Bullets",20],
					["Rangefinder",nil,500],
					["RH_bull",nil,240],
					["RH_6Rnd_454_Mag",nil,4],
					["RH_bullb",nil,240],
					["RH_6Rnd_454_Mag",nil,4]				
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 7) then {
				_temp =  [
					["HandGrenade_Stone","Flashbang",300],
					["SmokeShellYellow","TearGas",300],

					["RH_m110sd","MK 11 Silencer",220],
					["RH_qdss_nt4","M4A6 Silencer",220],
					["muzzle_snds_H","KAC Silencer",220],
					["RH_peq2","Laser (All Rifles)",220],

					["RH_Mk11",nil,6220],
					["RH_20Rnd_762x51_M80A1",nil,220],

					["RH_fn57",nil,1120],
					["RH_sfn57",nil,20],
					["RH_M6X",nil,20],
					["RH_20Rnd_57x28_FN",nil,20],
					
					["arifle_MXM_Black_F",nil,8575],
					["30Rnd_65x39_caseless_mag",nil,65],
					["optic_Arco",nil,20],
					["optic_SOS",nil,20],
					["muzzle_snds_H",nil,20]


				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			["Police Weapon Shop", _ret select 0];
		};
		
        case "rebel_low":
        {
			switch(true) do
			{
				case (rebelshipment getVariable["notCaptured",FALSE]): {"Die Polizei hat alles entsorgt...!"};
				case (playerside != east): {"Du bist nicht in der Mafia."};
				default
				{
					["Mafia Pistolen",
						[
							["RH_vp70",nil,9850],
							["RH_18Rnd_9x19_VP",nil,125],  

							//Micro Uzi
							["RH_muzi",nil,9500],
							["RH_30Rnd_9x19_UZI",nil,250],

							//Tec9
							["RH_tec9",nil,9800],
							["RH_32Rnd_9x19_tec",nil,260],

							["RH_vz61",nil,11800],
							["RH_20Rnd_32cal_vz61",nil,280],

							["RH_fn57",nil,11800],
							["RH_20Rnd_57x28_FN",nil,280],

							//Glock 18
							["RH_g18",nil,15500],
							["RH_33Rnd_9x19_g18",nil,250],


							["RH_Deagleg",nil,31500],

							["RH_Deaglem",nil,31500],
							["RH_demz",nil,1500],
							["RH_M6X",nil,1500],

							["RH_7Rnd_50_AE",nil,250]
						]
					];
				};
			};
        };

        case "rebel_high":
        {
			switch(true) do
			{
				case (rebelshipment getVariable["notCaptured",FALSE]): {"Die Polizei hat alles entsorgt...!"};
				case (playerside != east): {"Du bist nicht in der Mafia."};
				default
				{
					["Mafia Langwaffen",
						[
							["optic_MRCO",nil,1220],
							["RH_Delft",nil,550],
							["hlc_optic_kobra",nil,550],

							["RH_compM2","Rifle Aimpoint",425],
							["RH_compM2l","Rifle Aimpoint Low",425],

							["RH_m16a6_des",nil,91550],
							["RH_30Rnd_68x43_FMJ",nil,1550],


							["RH_ar10",nil,51550],
							["RH_20Rnd_762x51_AR10",nil,350],

							["hlc_rifle_akm",nil,45550],
							["hlc_rifle_ak47",nil,45550],
							["hlc_30Rnd_762x39_b_ak",nil,300],

							["SG553_CQB",nil,40550],
							["30Rnd_556x45_Stanag",nil,300],

							["hlc_rifle_aks74u",nil,30550],
							["hlc_30Rnd_545x39_B_AK",nil,300],

							["hgun_PDW2000_F",nil,15550],
							["SMG_02_F",nil,21550],
							["30Rnd_9x21_Mag",nil,255],

					
							["chakFNP90_50rnd_skin1",nil,11000],
							["chakFNP90_57x28_B_skin1",nil,332],

							["SMG_01_F",nil,15000],
							["30Rnd_45ACP_Mag_SMG_01",nil,232]
						]
					];
				};
			};
        };
       
        case "gun":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"Du bist kein Zivilist!"};
				case (!license_civ_gun): {"Du hast kein Waffenschein!"};
				default
				{
					["Kaels Firearms",
						[
							["KPFS_HKP7",nil,1250],
							["KPFS_8Rnd_9x19_PARA",nil,120],

							["KPFS_Mauser_Hsc",nil,1450],
							["kpfs_8Rnd_765x17_PP",nil,120],

							["KPFS_Walther_M9",nil,1550],
							["kpfs_6Rnd_635x15",nil,120],

							["KPFS_P99",nil,1600],
							["KPFS_15rnd_9x19_P99",nil,125],

							["RH_g17",nil,1750],
							["RH_g19",nil,1850],
							["RH_g19t",nil,1850],
							["RH_17Rnd_9x19_g17",nil,120],

							["RH_m9",nil,1800],
							["RH_15Rnd_9x19_M9",nil,120],

							["RH_sw659",nil,1950],
							["RH_14Rnd_9x19_sw",nil,150],

							["hgun_Rook40_F",nil,3350],
							["16Rnd_9x21_Mag",nil,125],
							
							["hgun_P07_F",nil,3350],
							["16Rnd_9x21_Mag",nil,125],
							["RH_gsh18",nil,5150],
							["RH_18Rnd_9x19_gsh",nil,195],
							["RH_kimber",nil,30500],
							["RH_7Rnd_45cal_m1911",nil,275]                                            
						]
					];
				};
			};
        };
        
        case "rifle":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"Du bist kein Zivilist!"};
				case (!license_civ_rifle): {"Du brauchst ein Waffenschein!"};
				default
				{
					["Hunting Shop",
						[
							["Trixie_CZ550","CZ500",7500],
							["Trixie_CZ550_Mag","CZ500-Magazin",20],
							["vvv_fishing_rod","Angel",5000],
							["cebos","Angelköder",1000],
							["arifle_SDAR_F","Turtle ONLY SDAR",10000],
							["20Rnd_556x45_UW_mag","Underwater magazine",120]
						]
					];
				};
			};
        };    

		case "magazin": 
		{
			switch(true) do
			{
				_ret = [];
				if(playerSide in [civilian,east]) then {
					_ret = [
						["KPFS_8Rnd_9x19_PARA",nil,120],
						["kpfs_8Rnd_765x17_PP",nil,120],
						["kpfs_6Rnd_635x15",nil,120],
						["KPFS_15rnd_9x19_P99",nil,125],
						["RH_17Rnd_9x19_g17",nil,120],
						["RH_15Rnd_9x19_M9",nil,120],
						["RH_14Rnd_9x19_sw",nil,150],
						["16Rnd_9x21_Mag",nil,125],
						["RH_18Rnd_9x19_gsh",nil,195],
						["RH_7Rnd_45cal_m1911",nil,275]
					];
				};
				if(playerSide == west) then {
					_ret = [
						["RH_15Rnd_9x19_M9",nil,5],
						["RH_15Rnd_45cal_fnp",nil,4],
						["11Rnd_45ACP_Mag",nil,5],
						["hlc_30Rnd_9x19_GD_MP5",nil,25],
						["RH_30Rnd_556x45_M855A1",nil,20],
						["RH_30Rnd_6x35_mag",nil,220],
						["RH_16Rnd_40cal_usp",nil,5],
						["RH_30Rnd_68x43_FMJ",nil,220],
						["prpl_6Rnd_12Gauge_Slug","Rubber Bullets",20],
						["RH_6Rnd_454_Mag",nil,4],
						["RH_6Rnd_454_Mag",nil,4],
						["RH_20Rnd_762x51_M80A1",nil,220],
						["RH_20Rnd_57x28_FN",nil,20]
					];
				};
			};
			["Magazine", _ret select 0];
		};
       
        case "gang":
        {
			switch(true) do
			{
				case (playerSide != east): {"Du bist nicht in der Mafia."};
				default
				{
					["Hideout Armament",
						[                                        
						]
					];
				};
			};
        };
  
        case "genstore":
        {
			["General and Fishing",
				[
					["cg_torch",nil,550], 
					["cg_torchbattery",nil,50],
					["cg_hatchet","Axt",3000],
					["ToolKit",nil,2500],
					["CG_ATF_Pizza_Box_i","Pizza",1400],
					["CG_ATF_Donut_Box_i","Donuts",1600],
					["Second_Life_Laptop_i",nil,20000],
					["2nd_lifetabletd",nil,50],
					["ItemMap",nil,6],
					["ItemGPS",nil,110],
					["Binocular",nil,110],
					["ItemCompass",nil,50],
					["ItemWatch",nil,10]
				]
			];
        };
};