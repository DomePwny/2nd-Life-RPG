#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_medSiren_active = false;
life_ipdSiren_active = false;
life_umbrellus_active = false;
life_umbrellus2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 5; //Scaled in seconds - nicht unter 5 setzen, sonst spackt das spawnen rum (spawninsel)
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
Life_request_timer = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_adacMarker = [];
life_adac_request = false;
life_married = "";
life_earplugs = false;

delay_pickaxe = false; // Left Windows-Spam Pickaxe Fix

lrl_buy = true;
lrl_sell = true;
lrl_knockedOut = false;
lrl_spamcounter = 0;
lrl_copLeitstelle = false;
lrl_emsLeitstelle = false;
lrl_lacLeitstelle = false;
lrl_noWeapons = ["","Rangefinder","Binocular","Radar_Gun","A3L_sign","A3L_sign2","Tv_Camera","gign_shield"];
lrl_coinsCheck = false;
lrl_coinsDelay = false;
lrl_unrestrainTimerBool = false;
lrl_vibratooor = false;
lrl_died = false;
lrl_isDead = false;
lrl_version = "BackpacksOnTRUE160218a";


//Persistent Saving
__CONST__(life_save_civ,TRUE);  //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,175); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,1500); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;

life_thirst = 100;
life_hunger = 100;
life_intox = 0.00;

__CONST__(life_paycheck_period,5); //Five minutes

doofi_b4r5 = 0;

__CONST__(life_impound_car,150);
__CONST__(life_impound_boat,50);
__CONST__(life_impound_air,150);

life_istazed = false;
life_my_gang = ObjNull;
life_smartphoneTarget = ObjNull;

life_vehicles = [];
bank_robber = [];

lrl_noAction = if((life_istazed) OR (lrl_knockedOut) OR (life_knockout)) then {true} else {false}; //Keine 100 Abfragen mehr im skript

switch (playerSide) do
{
	case west: 
	{
		man_ey_b4nK = 2350; //Starting Bank Money
		life_paycheck = 75; //Paycheck Amount
	};
	case civilian: 
	{
		man_ey_b4nK = 2350; //Starting Bank Money
		life_paycheck = 75; //Paycheck Amount
	};
	
	case independent: {
		man_ey_b4nK = 2350;
		life_paycheck = 75;
	};

	case east:
	{
		man_ey_b4nK = 2350; //Starting Bank Money
		life_paycheck = 75; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/

life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_axt",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_bohrmaschine",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cokeseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	"life_inv_zoobeer",
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_cigarette",
	"life_inv_raxsrum",
	"life_inv_weddingring",
	"life_inv_schwarzpulver",
	"life_inv_kohle",
	"life_inv_elektroteile",
	"life_inv_grillkohle",
	"life_inv_laminat",
	"life_inv_holz",
	"life_inv_presseformular",
	"life_inv_taxischeinformular",
	"life_inv_nothammer",
	"life_inv_mehl",
	"life_inv_brotteig",
	"life_inv_keks",
	"life_inv_pizzabrot",
	"life_inv_pizza",
	"life_inv_permdriverformular",
	"life_inv_sos",
	"life_inv_blaulicht",
	"life_inv_augenbinde"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
//Cop Licenses
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],

//Medic Licenses
	["license_med_air","med"],

//Civilian Vehicular & Diving
	["license_civ_driver","civ"],
	["license_civ_bike","civ"],
	["license_civ_bus","civ"],
	["license_civ_air","civ"],
	["license_civ_boat","civ"],
	["license_civ_truck","civ"],
	["license_civ_dive","civ"],

//Civilian Weapons
	["license_civ_gun","civ"],
	["license_civ_ilgun","civ"],
	["license_civ_rebel","civ"],

//Civilian Processing
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_oil","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_elektriker","civ"],
	["license_civ_grillmeister","civ"],
	["license_civ_schreiner","civ"],
	["license_civ_mehlmahl","civ"],

//Civilian Other
	["license_civ_home","civ"],
	["license_civ_presse","civ"],
	["license_civ_taxischein","civ"],
	["license_civ_permdriver","civ"],
	["license_civ_fischerei","civ"] //Nur zum Verkaufen von Fisch

];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];

//[shortVar,reward]
life_illegal_items = [
	["schwarzpulver",25],
	["spikeStrip",50],
	["opium",75],
	["heroinp",75],
	["cocaine",50],
	["cocainep",50],
	["cannabis",60],
	["marijuana",60],
	["turtle",10],
	["blastingcharge",1000],
	["boltcutter",200],
	["nothammer",125],
	["lockpick",20],
	["sos",100],
	["blaulicht",50],
	["bohrmaschine",100]
];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",0],
	["heroinp",220],
	["salema",5],	//2
	["ornate",5],	//2
	["mackerel",6],	//3
	["tuna",5],	//2
	["mullet",7],	//4
	["catshark",8], //4
	["rabbit",0],
	["oilp",225],
	["turtle",200],
	["water",0],
	["coffee",0],
	["turtlesoup",50],
	["donuts",0],
	["marijuana",215],
	["tbacon",1],
	["lockpick",20],
	["pickaxe",50],
	["axt",50],
	["redgull",6],
	["peach",0],
	["cocaine",112],
	["cocainep",233],
	["diamondc",242],
	["iron_r",207],
	["copper_r",155],
	["salt_r",61],
	["glass",107],
	["fuelF",150],
	["fuelE",15],
	["elektroteile",200],
	["laminat",145],
	["grillkohle",95],
	["schwarzpulver",230],

	["wheat",12],
	["sunflower",15],
	["corn",43],
	["bean",17],
	["cotton",12],
	["olive",25],
	["opium",50],
	["cannabis",50],
	["pumpkin",41],

	["wheat seed",1],
	["sunflower seed",1],
	["corn seed",1],
	["bean seed",1],
	["cotton seed",1],
	["olive seed",1],
	["opium seed",5],
	["coke seed",5],
	["cannabis seed",5],
	["pumpkin seed",1],

	["raw goat meat",5],
	["raw chicken",50],
	["raw sheep meat",5],
	["raw rabbit",5],
	["mehl",5],
	["brotteig",15],

	["spikeStrip",50],
	["blastingcharge",1000],
	["boltcutter",200],
	["defusekit",50],
	["storagesmall",3500],
	["storagebig",7500],
	
	["cement",180],
	["goldbar",4750], 

	["zoobeer",1], 
	["BarGate",25],
	["RoadBlockConc",25],
	["RoadBlockWood",25],
	["RoadCone",2],
	["RoadConeStrip",12],
	["RoadConeB",2],
	["RoadConeStripB",12],
	["cigarette",2],
	["Rax's Rum",2],
	["weddingring",1750],
	["presseformular",250],
	["taxischeinformular",250],
	["nothammer",125],
	["keks",1],
	["pizzabrot",2],
	["pizza",3],
	["permdriverformular",3000],
	["sos",100],
	["blaulicht",50],
	["augenbinde",12]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",1],
	["rabbit",1],
	["water",1],

	["turtle",450],
	["turtlesoup",125],
	["donuts",1],
	["coffee",1],
	["tbacon",2],
	["lockpick",35],
	["pickaxe",75],
	["axt",75],
	["redgull",10],
	["fuelF",250],
	["fuelE",100],

	["wheat seed",2],
	["sunflower seed",2],
	["corn seed",2],
	["bean seed",2],
	["cotton seed",2],
	["olive seed",2],
	["opium seed",10],
	["cannabis seed",10],
	["pumpkin seed",2],
	["coke seed",10],

	["raw goat meat",10],
	["raw chicken",10],
	["raw sheep meat",10],
	["raw rabbit",10],

	["peach",1],
	["spikeStrip",75],
	["blastingcharge",1250],
	["boltcutter",300],
	["defusekit",100],
	["storagesmall",5000],
	["storagebig",10000],

	["zoobeer",2],
	["BarGate",50],
	["RoadBlockConc",40],
	["RoadBlockWood",40],
	["RoadCone",5],
	["RoadConeStrip",25],
	["RoadConeB",5],
	["RoadConeStripB",25],
	["cigarette",4],
	["Rax's Rum",5],

	["weddingring",7500],
	["presseformular",500],
	["taxischeinformular",500],
	["nothammer",250],
	["keks",2],
	["pizzabrot",3],
	["pizza",5],
	["permdriverformular",5000],
	["sos",150],
	["blaulicht",100],
	["augenbinde",50]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MX_F",0],
	["arifle_MXC_F",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
		//Gebraucht/Neuwagen
			["RDS_S1203_Civ_01",2],
			["cl3_s1203_blue",2],
			["cl3_volha_black",3],
			["cl3_volha_grey",3],		
			["RDS_Lada_Civ_01",4],
			["RDS_Lada_Civ_02",4],
			["RDS_Lada_Civ_03",4],
			["RDS_Lada_Civ_04",4],
			["Jonzie_Datsun_510",5],
			["Jonzie_Mini_Cooper",6],
			["Jonzie_Mini_Cooper_R_spec",25],
			["Jonzie_Corolla",7],
			["Jonzie_Ceed",8],
			["Jonzie_Datsun_Z432",9],
			["Jonzie_Galant",10],
			["A3L_PuntoRed",12],
			["A3L_PuntoBlack",12],
			["A3L_PuntoWhite",12],
			["A3L_PuntoGrey",12],
			["A3L_AMC",13],
			["A3L_AMXRed",13],
			["A3L_AMXWhite",13],
			["A3L_AMXBlue",13],
			["A3L_AMXGL",13],
			["D_Cobalt_Yellow",15],
			["A3L_Camaro",150],
			["A3L_RX7_Blue",150],
			["A3L_RX7_Red",150],
			["A3L_RX7_White",150],
			["A3L_RX7_Black",150],
			["Jonzie_VE",300],
			["Jonzie_Ute",300],
			["Jonzie_Quattroporte",400],

		//Vw
			["RDS_Golf4_Civ_01",10],
			["cl3_golf_mk2_white",150],
			["cl3_golf_mk2_purple",150],
			["cl3_golf_mk2_navy_blue",150],
			["cl3_golf_mk2_lime",150],
			["cl3_golf_mk2_light_yellow",150],
			["cl3_golf_mk2_light_blue",150],
			["cl3_golf_mk2_grey",150],
			["cl3_golf_mk2_gold",150],
			["cl3_golf_mk2_burgundy",150],
			["cl3_golf_mk2_black",150],
			["A3L_VolksWagenGolfGTired",175],
			["cl3_polo_gti_white",200],
			["cl3_polo_gti_purple",200],
			["cl3_polo_gti_navy_blue",200],
			["cl3_polo_gti_lime",200],
			["cl3_polo_gti_light_yellow",200],
			["cl3_polo_gti_light_blue",200],
			["cl3_polo_gti_grey",200],
			["cl3_polo_gti_gold",200],
			["cl3_polo_gti_burgundy",200],
			["cl3_polo_gti_black",200],
				
		//Honda
			["cl3_civic_vti_white",150],
			["cl3_civic_vti_purple",150],
			["cl3_civic_vti_navy_blue",150],
			["cl3_civic_vti_lime",150],
			["cl3_civic_vti_light_yellow",150],
			["cl3_civic_vti_light_blue",150],
			["cl3_civic_vti_grey",150],
			["cl3_civic_vti_gold",150],
			["cl3_civic_vti_burgundy",150],
			["cl3_civic_vti_black",150],
			
		//Renault
			["Mrshounka_megane_rs_2015_noir",250],
			["Mrshounka_megane_rs_2015_bleufonce",250],
			["Mrshounka_megane_rs_2015_rouge",250],
			["Mrshounka_megane_rs_2015_jaune",250],
			["Mrshounka_megane_rs_2015_rose",250],
			["Mrshounka_megane_rs_2015_grise",250],
			["Mrshounka_megane_rs_2015_violet",250],
			["Mrshounka_megane_rs_2015_orange",250],

		//Jeep
			["A3L_Jeep",75],
			["cl3_range_rover_white",100],
			["cl3_range_rover_purple",100],
			["cl3_range_rover_navy_blue",100],
			["cl3_range_rover_lime",100],
			["cl3_range_rover_light_yellow",100],
			["cl3_range_rover_light_blue",100],
			["cl3_range_rover_grey",100],
			["cl3_range_rover_gold",100],
			["cl3_range_rover_burgundy",100],
			["cl3_range_rover_black",100],
			["cl3_suv_black",125],
			["cl3_suv_taxi",150],
			["Jonzie_Escalade",200],
			["Mrshounka_hummer_civ_noir",250],
			["Mrshounka_hummer_civ_bleufonce",250],
			["Mrshounka_hummer_civ_rouge",250],
			["Mrshounka_hummer_civ_jaune",250],
			["Mrshounka_hummer_civ_rose",250],
			["Mrshounka_hummer_civ_grise",250],
			["Mrshounka_hummer_civ_violet",250],
			["Mrshounka_hummer_civ_orange",250],
			
		//Motorrad
			["cl3_enduro_yellow",75],
			["cl3_enduro_black",75],
			["cl3_enduro_blue",75],
			["cl3_enduro_aqua",75],
			["cl3_enduro_babypink",3750],
			["cl3_enduro_red",3750],
			["cl3_enduro_dark_green",3750],
			["cl3_chopper_blue",100],
			["cl3_chopper_green",100],
			["cl3_chopper_red",100],
			["cl3_xr_1000_yellow",150],
			["cl3_xr_1000_black",150],
			["cl3_xr_1000_babypink",150],
			["cl3_xr_1000_red",150],
			["cl3_xr_1000_lime",150],
			["cl3_xr_1000_flame",150],
		
		//Ford
			["Jonzie_Transit",125],
			["Jonzie_Raptor",125],
			["Jonzie_XB",130],
			["A3L_F350Black",140],
			["A3L_F350Blue",140],
			["A3L_F350Red",140],
			["A3L_F350White",140],
			["ivory_gt500",150],
			["A3L_CVWhite",150],
			["A3L_CVBlack",150],
			["A3L_CVGrey",150],
			["A3L_CVRed",150],
			["A3L_CVPink",150],
			["A3L_CVBlue",150],
			["A3L_Taurus",175],
			["A3L_TaurusBlack",175],
			["A3L_TaurusBlue",175],
			["A3L_TaurusRed",175],
			["A3L_TaurusWhite",175],
			["Mrshounka_mustang_mat",250],
			["Mrshounka_mustang_noir",250],
			["Mrshounka_mustang_mat_n",250],
			["Mrshounka_mustang_bleufonce",250],
			["Mrshounka_mustang_mat_b",250],
			["Mrshounka_mustang_rouge",250],
			["Mrshounka_mustang_jaune",250],
			["Mrshounka_mustang_rose",250],
			["Mrshounka_mustang_grise",250],
			["Mrshounka_mustang_violet",250],
			["Mrshounka_mustang_orange",250],

		//Opel
			["cl3_insignia_white",275],
			["cl3_insignia_purple",275],
			["cl3_insignia_navy_blue",275],
			["cl3_insignia_lime",275],
			["cl3_insignia_light_yellow",275],
			["cl3_insignia_light_blue",275],
			["cl3_insignia_grey",275],
			["cl3_insignia_gold",275],
			["cl3_insignia_burgundy",275],
			["cl3_insignia_black",275],
			
		//Dodge
			["A3L_GrandCaravan",150],
			["A3L_GrandCaravanBlk",150],
			["A3L_GrandCaravanBlue",150],
			["A3L_GrandCaravanGreen",150],
			["A3L_GrandCaravanRed",150],
			["A3L_GrandCaravanPurple",150],
			["A3L_Challenger",225],
			["A3L_ChallengerGreen",225],
			["A3L_ChallengerRed",225],
			["A3L_ChallengerWhite",225],
			["A3L_ChallengerBlack",225],
			["A3L_ChallengerBlue",225],
			["AM_2015C_White",250],
			["AM_2015C_Black",250],
			["AM_2015C_blue",250],
			["AM_2015C_Green",250],
			["AM_2015C_Red",250],
			["AM_2015C_Grey",250],
			["AM_2015C_Orange",250],
			["cl3_dodge_charger_f_white",300],
			["cl3_dodge_charger_f_purple",300],
			["cl3_dodge_charger_f_blue",300],
			["cl3_dodge_charger_f_lime",300],
			["cl3_dodge_charger_f_grey",300],
			["cl3_dodge_charger_f_black",300],
			["cl3_dodge_charger_f_darkgreen",300],
			["cl3_dodge_charger_f_darkred",300],
			["cl3_dodge_charger_f_orange",300],
			["Jonzie_Viper",400],		
			
		//Nissan
			["S_Skyline_Red",275],
			["S_Skyline_Blue",275],
			["S_Skyline_Black",275],
			["S_Skyline_Yellow",275],
			["S_Skyline_Purple",275],
			["S_Skyline_White",275],
			["Mrshounka_a3_gtr_civ_noir",350],
			["Mrshounka_a3_gtr_civ_bleu",350],
			["Mrshounka_a3_gtr_civ_orange",350],
			["Mrshounka_a3_gtr_civ_grau",350],
			["Mrshounka_a3_gtr_civ_gruen",350],
			["Mrshounka_a3_gtr_civ_violet",350],

		//Mercedes
			["cl3_e63_amg_white",400],
			["cl3_e63_amg_purple",400],
			["cl3_e63_amg_navy_blue",400],
			["cl3_e63_amg_lime",400],
			["cl3_e63_amg_light_yellow",400],
			["cl3_e63_amg_light_blue",400],
			["cl3_e63_amg_grey",400],
			["cl3_e63_amg_gold",400],
			["cl3_e63_amg_burgundy",400],
			["cl3_e63_amg_black",400],
			
		//Audi
			["SAL_AudiCivSilver",250],
			["shounka_a3_rs5_civ_noir",250],
			["shounka_a3_rs5_civ_bleufonce",250],
			["shounka_a3_rs5_civ_rouge",250],
			["shounka_a3_rs5_civ_jaune",250],
			["shounka_a3_rs5_civ_rose",250],
			["shounka_a3_rs5_civ_grise",250],
			["shounka_a3_rs5_civ_violet",250],
			["shounka_a3_rs5_civ_orange",250],
			["cl3_r8_spyder_white",600],
			["cl3_r8_spyder_purple",600],
			["cl3_r8_spyder_navy_blue",600],
			["cl3_r8_spyder_lime",600],
			["cl3_r8_spyder_light_yellow",600],
			["cl3_r8_spyder_light_blue",600],
			["cl3_r8_spyder_grey",600],
			["cl3_r8_spyder_gold",600],
			["cl3_r8_spyder_burgundy",600],
			["cl3_r8_spyder_black",600],
			["IVORY_R8",600],
			
		//BMW
			["DAR_M3CivBlack",350],
			["DAR_M3CivWhite",350],
			["DAR_M3CivGrey",350],
			["cl3_z4_2008_white",375],
			["cl3_z4_2008_purple",375],
			["cl3_z4_2008_navy_blue",375],
			["cl3_z4_2008_lime",375],
			["cl3_z4_2008_light_yellow",375],
			["cl3_z4_2008_light_blue",375],
			["cl3_z4_2008_grey",375],
			["cl3_z4_2008_burgundy",375],
			["cl3_z4_2008_black",375],
			["Mrshounka_bmwm1_civ_noir",400],
			["Mrshounka_bmwm1_civ_bleufonce",400],
			["Mrshounka_bmwm1_civ_rouge",400],
			["Mrshounka_bmwm1_civ_jaune",400],
			["Mrshounka_bmwm1_civ_rose",400],
			["Mrshounka_bmwm1_civ_grise",400],
			["Mrshounka_bmwm1_civ_violet",400],
			["Mrshounka_bmwm1_civ_orange",400],
			["Mrshounka_bmwm6_noir",500],
			["Mrshounka_bmwm6_bleufonce",500],
			["Mrshounka_bmwm6_rouge",500],
			["Mrshounka_bmwm6_jaune",500],
			["Mrshounka_bmwm6_rose",500],
			["Mrshounka_bmwm6_grise",500],
			["Mrshounka_bmwm6_violet",500],
			["Mrshounka_bmwm6_orange",500],
			["cl3_e60_m5_white",450],
			["cl3_e60_m5_purple",450],
			["cl3_e60_m5_navy_blue",450],
			["cl3_e60_m5_lime",450],
			["cl3_e60_m5_light_yellow",450],
			["cl3_e60_m5_light_blue",450],
			["cl3_e60_m5_grey",450],
			["cl3_e60_m5_gold",450],
			["cl3_e60_m5_burgundy",450],
			["cl3_e60_m5_black",450],
		
		//Subaru
			["Jonzie_STI",500],
			["ivory_wrx",500],
			
		//Aston Martin
			["S_Vantage_Red",500],
			["S_Vantage_Blue",500],
			["S_Vantage_Black",500],
			["S_Vantage_Yellow",500],
			["S_Vantage_LightBlue",500],
			["S_Vantage_Purple",500],
			["S_Vantage_White",500],
			["cl3_dbs_volante_white",600],
			["cl3_dbs_volante_purple",600],
			["cl3_dbs_volante_navy_blue",600],
			["cl3_dbs_volante_lime",600],
			["cl3_dbs_volante_light_yellow",600],
			["cl3_dbs_volante_light_blue",600],
			["cl3_dbs_volante_grey",600],
			["cl3_dbs_volante_gold",600],
			["cl3_dbs_volante_burgundy",600],
			["cl3_dbs_volante_black",600],
			
		//Porsche
			["S_PorscheRS_Black",600],
			["S_PorscheRS_White",600],
			["wirk_cayenne",700],
			["cl3_carrera_gt_white",750],
			["cl3_carrera_gt_purple",750],
			["cl3_carrera_gt_navy_blue",750],
			["cl3_carrera_gt_lime",750],
			["cl3_carrera_gt_light_blue",750],
			["cl3_carrera_gt_grey",750],
			["cl3_carrera_gt_gold",750],
			["cl3_carrera_gt_burgundy",750],
			["cl3_carrera_gt_black",750],
			["ALFR_GeK_Panamera",800],
			
		//Ferrari
			["cl3_458_white",750],
			["cl3_458_purple",750],
			["cl3_458_navy_blue",750],
			["cl3_458_lime",750],
			["cl3_458_light_yellow",750],
			["cl3_458_light_blue",750],
			["cl3_458_grey",750],
			["cl3_458_gold",750],
			["cl3_458_burgundy",750],
			["cl3_458_black",750],

		//Mclaren
			["S_McLarenP1_Black",675],
			["S_McLarenP1_Blue",675],
			["S_McLarenP1_Orange",675],
			["S_McLarenP1_White",675],
			["S_McLarenP1_Yellow",675],
			["S_McLarenP1_Silver",675],
			["ALFR_GeK_MF1",850],
			
		//Lambo
			["mrshounka_huracan_c_noir",650],
			["mrshounka_huracan_c_bleufonce",650],
			["mrshounka_huracan_c_rouge",650],
			["mrshounka_huracan_c_jaune",650],
			["mrshounka_huracan_c_rose",650],
			["mrshounka_huracan_c_grise",650],
			["mrshounka_huracan_c_violet",650],
			["mrshounka_huracan_c_orange",650],
			["ivory_lp560",700],
			["cl3_murcielago_white",750],
			["cl3_murcielago_purple",750],
			["cl3_murcielago_navy_blue",750],
			["cl3_murcielago_lime",750],
			["cl3_murcielago_light_yellow",750],
			["cl3_murcielago_light_blue",750],
			["cl3_murcielago_grey",750],
			["cl3_murcielago_gold",750],
			["cl3_murcielago_burgundy",750],
			["cl3_murcielago_black",750],
			["Mrshounka_veneno_c_noir",800],
			["Mrshounka_veneno_c_bleu",800],
			["Mrshounka_veneno_c_jaune",800],
			["Mrshounka_veneno_c_grau",800],
			["Mrshounka_veneno_c_rot",800],
			["Mrshounka_veneno_c_gruen",800],
			["Mrshounka_veneno_c_violet",800],
			["ivory_rev_black",850],
			["ivory_rev_blue",850],
			["ivory_rev_lime",850],
			["ivory_rev_pink",850],
			["ivory_rev_rot",850],
			["ivory_rev_turkis",850],
			["ivory_rev_orange",850],
			["ivory_rev_sport1",850],
			["ivory_rev_sport2",850],
			["ivory_rev_sport3",850],
			["ivory_rev_sport4",850],
			["cl3_reventon_white",900],
			["cl3_reventon_purple",900],
			["cl3_reventon_navy_blue",900],
			["cl3_reventon_lime",900],
			["cl3_reventon_light_yellow",900],
			["cl3_reventon_light_blue",900],
			["cl3_reventon_grey",900],
			["cl3_reventon_gold",900],
			["cl3_reventon_burgundy",900],
			["cl3_reventon_black",900],
			["cl3_lamborghini_gt1_white",1000],
			["cl3_lamborghini_gt1_purple",1000],
			["cl3_lamborghini_gt1_navy_blue",1000],
			["cl3_lamborghini_gt1_lime",1000],
			["cl3_lamborghini_gt1_light_yellow",1000],
			["cl3_lamborghini_gt1_light_blue",1000],
			["cl3_lamborghini_gt1_grey",1000],
			["cl3_lamborghini_gt1_gold",1000],
			["cl3_lamborghini_gt1_burgundy",1000],
			["cl3_lamborghini_gt1_black",1000],

		// Luxushändler
			["ivory_c",1100],
			["ivory_c_livery1",1100],
			["ivory_c_livery2",1100],
			["ivory_c_livery3",1100],
			["ivory_c_livery4",1100],
			["ivory_lfa",1150],
			["ivory_lfa_sport1",1150],
			["ivory_lfa_sport2",1150],
			["ivory_lfa_sport3",1150],
			["ivory_lfa_sport4",1150],
			["ivory_lfa_sport5",1150],
			["cl3_veyron_blk_wht",1250],
			["cl3_veyron_lblue_dblue",1250],
			["cl3_veyron_lblue_lblue",1250],
			["cl3_veyron_brn_blk",1250],
			["ALFR_GeK_Pagani_Zonda",1250],
			["Nhz_audia8limo",1250],
			["wirk_h3_limo",2000],
			
		//LkW
			["C_Van_01_box_F",175],
			["C_Van_01_transport_F",200],
			["Jonzie_Western",750],
			
		//Scania LKW
			["A3L_Dumptruck",750],
				
		//Renault LKW
			["shounka_a3_renaultmagnum_f",800],
				
		//Volvo LKW
			["ALFR_GeK_Volvo_FH16_2012",800],

		//Man LKW
			["Jonzie_Flat_Bed",750],
			["Jonzie_Box_Truck",750],
			["Jonzie_Log_Truck",800],
				
		//Mack LKW
			["cl3_mackr_blue",700],
			["Jonzie_Superliner",750],
			["cl3_mackr_flat_blue",750],
			["cl3_mackr_del_blue",800],
			
		//Bus
			["A3L_Bus",100],
			["A3L_SchoolBus",100],
			["RDS_Ikarus_Civ_01",125],
			["RDS_Ikarus_Civ_02",125],
			["CL3_bus_cl_blue",150],
			["CL3_bus_cl_green",150],
			["CL3_bus_cl_yellow",150],
			["CL3_bus_cl_purple",150],
			["CL3_bus_cl_grey",150],
			["CL3_bus_cl_black",150],			
			
		//Illegal
			["B_Heli_Light_01_F",600],
			["A3L_Atom",650],
			["cl3_arielatom_race_white",750],
			["cl3_arielatom_race_purple",750],
			["cl3_arielatom_race_navy_blue",750],
			["cl3_arielatom_race_lime",750],
			["cl3_arielatom_race_light_yellow",750],
			["cl3_arielatom_race_light_blue",750],
			["cl3_arielatom_race_grey",750],
			["cl3_arielatom_race_gold",750],
			["cl3_arielatom_race_burgundy",750],
			["cl3_arielatom_race_black",750],
			
		//Heli
			["ivory_b206",800],
			["ivory_b206_news",1700],
			["C_Heli_Light_01_civil_F",450],
			["O_Heli_Light_02_unarmed_F",900],
			["IVORY_BELL512",1000],
			["GNT_C185",750],
			["GNT_C185F",750],
			["IVORY_T6A_1",1000],
			["IVORY_CRJ200_1",1600],
			["IVORY_YAK42D_1",1600],
			
		//Boot
			["Cl3MOD_C_Rubberboat_civilian",15],
			["A3L_Jetski",25],
			["A3L_Jetski_yellow",25],
			["C_Boat_Civil_01_F",50],
			["A3L_SpeedYacht",100],
			["A3L_Ship",100],
			["B_SDV_01_F",125],
		
			["C_Boat_Civil_01_rescue_F",150],
			["B_Boat_Transport_01_F",37],
			["C_Boat_Civil_01_police_F",100],
			["ivory_b206_police",500],
			["EC635_Unarmed_BW",100],
			["EC635_SAR",100],
			["IVORY_BELL512_POLICE",925],
			["I_Heli_light_03_unarmed_F",500],
			["A3l_TaurusFPBLBCSO",125],
			["A3l_TaurusFPBLBPD",125],
			["A3L_TaurusFPBLBSP",125],
			["A3L_JailBus",175],
			["Mrshounka_rs_2015_g",135],
			["A3L_CVPIFPBLBPD",250],		
			["A3L_CVPIFPBLBCSO",250],
			["A3L_CVPIFPBLBFG",250],
			["A3L_CVPIFPBLBSM",250],
			["A3L_CVPIFPBLBHP",250],
			["A3L_EvoXFPBLBPD",350],
			["A3L_EvoXFPBLBSO",350],
			["A3L_EvoXFPBLBSP",350],
			["AM_09Tahoe_P_Sheriff",350],
			["AM_09Tahoe_P_LVPD",350],
			["AM_09Tahoe_U_T",350],
			["DAR_TahoePoliceDet",250],
			["DAR_SWATPolice",400],
			["cl3_xr_1000_police",150],
			["DAR_ExplorerPolice",350],
			["DAR_ExplorerPoliceStealth",350],
			["DAR_TahoePolice", 250],
			["charger_sh",400],
			["charger_st",400],
			["charger_lvpd",400],
			["charger_umb",400],
			["charger_umw",400],
			["shounka_a3_brinks_noir",350],
			["shounka_a3_suburbangign",350],
			["IVORY_REV",850],
			["C_Offroad_01_F",50],
			["A3L_CVLac",150],
			["cl3_enduro_yellow",750],
			["C_SUV_01_F",60],
			["A3l_evoxADAC",350],
			["shounka_a3_mantgs",350],
			["cl3_dodge_charger_f_yellow",300],
			["S_PorscheRS_Yellow",600],
			["cl3_carrera_gt_light_yellow",750],
			["EC635_ADAC",100],
			["IVORY_PRIUS",100],
			["Jonzie_Ambulance",125],
			["A3L_Laddertruck",200],
			["dar_tahoeems",300],
			["mercedes_atego_pompier_ingame",400],
			["A3L_CVPILBFD",250],
			["cl3_dodge_charger_emt",300],
			["charger_ems",400],
			["cl3_xr_1000_emt",150],
			["A3L_EvoXFPBLBMED",350],
			["ivory_b206_rescue",800],
			["IVORY_BELL512_RESCUE",1000],
			["EC635_Unarmed_CSAT",1000],
			["Jonzie_Highway",500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
		//Gebraucht/Neuwagen
			["RDS_S1203_Civ_01",75],
			["cl3_s1203_blue",75],
			["cl3_volha_black",150],
			["cl3_volha_grey",150],		
			["RDS_Lada_Civ_01",200],
			["RDS_Lada_Civ_02",200],
			["RDS_Lada_Civ_03",200],
			["RDS_Lada_Civ_04",200],
			["Jonzie_Datsun_510",250],
			["Jonzie_Mini_Cooper",300],
			["Jonzie_Mini_Cooper_R_spec",1250],
			["Jonzie_Corolla",350],
			["Jonzie_Ceed",400],
			["Jonzie_Datsun_Z432",450],
			["Jonzie_Galant",500],
			["A3L_PuntoRed",625],
			["A3L_PuntoBlack",625],
			["A3L_PuntoWhite",625],
			["A3L_PuntoGrey",625],
			["A3L_AMC",675],
			["A3L_AMXRed",675],
			["A3L_AMXWhite",675],
			["A3L_AMXBlue",675],
			["A3L_AMXGL",675],
			["D_Cobalt_Yellow",750],
			["A3L_Camaro",7500],
			["A3L_RX7_Blue",7500],
			["A3L_RX7_Red",7500],
			["A3L_RX7_White",7500],
			["A3L_RX7_Black",7500],
			["Jonzie_VE",15000],
			["Jonzie_Ute",15000],
			["Jonzie_Quattroporte",20000],

		//Vw
			["RDS_Golf4_Civ_01",500],
			["cl3_golf_mk2_white",7500],
			["cl3_golf_mk2_purple",7500],
			["cl3_golf_mk2_navy_blue",7500],
			["cl3_golf_mk2_lime",7500],
			["cl3_golf_mk2_light_yellow",7500],
			["cl3_golf_mk2_light_blue",7500],
			["cl3_golf_mk2_grey",7500],
			["cl3_golf_mk2_gold",7500],
			["cl3_golf_mk2_burgundy",7500],
			["cl3_golf_mk2_black",7500],
			["A3L_VolksWagenGolfGTired",8750],
			["cl3_polo_gti_white",10000],
			["cl3_polo_gti_purple",10000],
			["cl3_polo_gti_navy_blue",10000],
			["cl3_polo_gti_lime",10000],
			["cl3_polo_gti_light_yellow",10000],
			["cl3_polo_gti_light_blue",10000],
			["cl3_polo_gti_grey",10000],
			["cl3_polo_gti_gold",10000],
			["cl3_polo_gti_burgundy",10000],
			["cl3_polo_gti_black",10000],
				
		//Honda
			["cl3_civic_vti_white",7500],
			["cl3_civic_vti_purple",7500],
			["cl3_civic_vti_navy_blue",7500],
			["cl3_civic_vti_lime",7500],
			["cl3_civic_vti_light_yellow",7500],
			["cl3_civic_vti_light_blue",7500],
			["cl3_civic_vti_grey",7500],
			["cl3_civic_vti_gold",7500],
			["cl3_civic_vti_burgundy",7500],
			["cl3_civic_vti_black",7500],
			
		//Renault
			["Mrshounka_megane_rs_2015_noir",12500],
			["Mrshounka_megane_rs_2015_bleufonce",12500],
			["Mrshounka_megane_rs_2015_rouge",12500],
			["Mrshounka_megane_rs_2015_jaune",12500],
			["Mrshounka_megane_rs_2015_rose",12500],
			["Mrshounka_megane_rs_2015_grise",12500],
			["Mrshounka_megane_rs_2015_violet",12500],
			["Mrshounka_megane_rs_2015_orange",12500],

		//Jeep
			["A3L_Jeep",3750],
			["cl3_range_rover_white",5000],
			["cl3_range_rover_purple",5000],
			["cl3_range_rover_navy_blue",5000],
			["cl3_range_rover_lime",5000],
			["cl3_range_rover_light_yellow",5000],
			["cl3_range_rover_light_blue",5000],
			["cl3_range_rover_grey",5000],
			["cl3_range_rover_gold",5000],
			["cl3_range_rover_burgundy",5000],
			["cl3_range_rover_black",5000],
			["cl3_suv_black",6250],
			["cl3_suv_taxi",7500],
			["Jonzie_Escalade",10000],
			["Mrshounka_hummer_civ_noir",12500],
			["Mrshounka_hummer_civ_bleufonce",12500],
			["Mrshounka_hummer_civ_rouge",12500],
			["Mrshounka_hummer_civ_jaune",12500],
			["Mrshounka_hummer_civ_rose",12500],
			["Mrshounka_hummer_civ_grise",12500],
			["Mrshounka_hummer_civ_violet",12500],
			["Mrshounka_hummer_civ_orange",12500],
			
		//Motorrad
			["cl3_enduro_yellow",3750],
			["cl3_enduro_black",3750],
			["cl3_enduro_blue",3750],
			["cl3_enduro_aqua",3750],
			["cl3_enduro_babypink",3750],
			["cl3_enduro_red",3750],
			["cl3_enduro_dark_green",3750],
			["cl3_chopper_blue",5000],
			["cl3_chopper_green",5000],
			["cl3_chopper_red",5000],
			["cl3_xr_1000_yellow",7500],
			["cl3_xr_1000_black",7500],
			["cl3_xr_1000_babypink",7500],
			["cl3_xr_1000_red",7500],
			["cl3_xr_1000_lime",7500],
			["cl3_xr_1000_flame",7500],
		
		//Ford
			["Jonzie_Transit",6250],
			["Jonzie_Raptor",6250],
			["Jonzie_XB",6500],
			["A3L_F350Black",7000],
			["A3L_F350Blue",7000],
			["A3L_F350Red",7000],
			["A3L_F350White",7000],
			["ivory_gt500",7500],
			["A3L_CVWhite",7500],
			["A3L_CVBlack",7500],
			["A3L_CVGrey",7500],
			["A3L_CVRed",7500],
			["A3L_CVPink",7500],
			["A3L_CVBlue",7500],
			["A3L_Taurus",8750],
			["A3L_TaurusBlack",8750],
			["A3L_TaurusBlue",8750],
			["A3L_TaurusRed",8750],
			["A3L_TaurusWhite",8750],
			["Mrshounka_mustang_mat",12500],
			["Mrshounka_mustang_noir",12500],
			["Mrshounka_mustang_mat_n",12500],
			["Mrshounka_mustang_bleufonce",12500],
			["Mrshounka_mustang_mat_b",12500],
			["Mrshounka_mustang_rouge",12500],
			["Mrshounka_mustang_jaune",12500],
			["Mrshounka_mustang_rose",12500],
			["Mrshounka_mustang_grise",12500],
			["Mrshounka_mustang_violet",12500],
			["Mrshounka_mustang_orange",12500],

		//Opel
			["cl3_insignia_white",13750],
			["cl3_insignia_purple",13750],
			["cl3_insignia_navy_blue",13750],
			["cl3_insignia_lime",13750],
			["cl3_insignia_light_yellow",13750],
			["cl3_insignia_light_blue",13750],
			["cl3_insignia_grey",13750],
			["cl3_insignia_gold",13750],
			["cl3_insignia_burgundy",13750],
			["cl3_insignia_black",13750],
			
		//Dodge
			["A3L_GrandCaravan",7500],
			["A3L_GrandCaravanBlk",7500],
			["A3L_GrandCaravanBlue",7500],
			["A3L_GrandCaravanGreen",7500],
			["A3L_GrandCaravanRed",7500],
			["A3L_GrandCaravanPurple",7500],
			["A3L_Challenger",11250],
			["A3L_ChallengerGreen",11250],
			["A3L_ChallengerRed",11250],
			["A3L_ChallengerWhite",11250],
			["A3L_ChallengerBlack",11250],
			["A3L_ChallengerBlue",11250],
			["AM_2015C_White",12500],
			["AM_2015C_Black",12500],
			["AM_2015C_blue",12500],
			["AM_2015C_Green",12500],
			["AM_2015C_Red",12500],
			["AM_2015C_Grey",12500],
			["AM_2015C_Orange",12500],
			["cl3_dodge_charger_f_white",15000],
			["cl3_dodge_charger_f_purple",15000],
			["cl3_dodge_charger_f_blue",15000],
			["cl3_dodge_charger_f_lime",15000],
			["cl3_dodge_charger_f_grey",15000],
			["cl3_dodge_charger_f_black",15000],
			["cl3_dodge_charger_f_darkgreen",15000],
			["cl3_dodge_charger_f_darkred",15000],
			["cl3_dodge_charger_f_orange",15000],
			["Jonzie_Viper",20000],		
			
		//Nissan
			["S_Skyline_Red",13750],
			["S_Skyline_Blue",13750],
			["S_Skyline_Black",13750],
			["S_Skyline_Yellow",13750],
			["S_Skyline_Purple",13750],
			["S_Skyline_White",13750],
			["Mrshounka_a3_gtr_civ_noir",17500],
			["Mrshounka_a3_gtr_civ_bleu",17500],
			["Mrshounka_a3_gtr_civ_orange",17500],
			["Mrshounka_a3_gtr_civ_grau",17500],
			["Mrshounka_a3_gtr_civ_gruen",17500],
			["Mrshounka_a3_gtr_civ_violet",17500],

		//Mercedes
			["cl3_e63_amg_white",20000],
			["cl3_e63_amg_purple",20000],
			["cl3_e63_amg_navy_blue",20000],
			["cl3_e63_amg_lime",20000],
			["cl3_e63_amg_light_yellow",20000],
			["cl3_e63_amg_light_blue",20000],
			["cl3_e63_amg_grey",20000],
			["cl3_e63_amg_gold",20000],
			["cl3_e63_amg_burgundy",20000],
			["cl3_e63_amg_black",20000],
			
		//Audi
			["SAL_AudiCivSilver",12500],
			["shounka_a3_rs5_civ_noir",20000],
			["shounka_a3_rs5_civ_bleufonce",20000],
			["shounka_a3_rs5_civ_rouge",20000],
			["shounka_a3_rs5_civ_jaune",20000],
			["shounka_a3_rs5_civ_rose",20000],
			["shounka_a3_rs5_civ_grise",20000],
			["shounka_a3_rs5_civ_violet",20000],
			["shounka_a3_rs5_civ_orange",20000],
			["cl3_r8_spyder_white",30000],
			["cl3_r8_spyder_purple",30000],
			["cl3_r8_spyder_navy_blue",30000],
			["cl3_r8_spyder_lime",30000],
			["cl3_r8_spyder_light_yellow",30000],
			["cl3_r8_spyder_light_blue",30000],
			["cl3_r8_spyder_grey",30000],
			["cl3_r8_spyder_gold",30000],
			["cl3_r8_spyder_burgundy",30000],
			["cl3_r8_spyder_black",30000],
			["IVORY_R8",30000],
			
		//BMW
			["DAR_M3CivBlack",17500],
			["DAR_M3CivWhite",17500],
			["DAR_M3CivGrey",17500],
			["cl3_z4_2008_white",18750],
			["cl3_z4_2008_purple",18750],
			["cl3_z4_2008_navy_blue",18750],
			["cl3_z4_2008_lime",18750],
			["cl3_z4_2008_light_yellow",18750],
			["cl3_z4_2008_light_blue",18750],
			["cl3_z4_2008_grey",18750],
			["cl3_z4_2008_burgundy",18750],
			["cl3_z4_2008_black",18750],
			["Mrshounka_bmwm1_civ_noir",20000],
			["Mrshounka_bmwm1_civ_bleufonce",20000],
			["Mrshounka_bmwm1_civ_rouge",20000],
			["Mrshounka_bmwm1_civ_jaune",20000],
			["Mrshounka_bmwm1_civ_rose",20000],
			["Mrshounka_bmwm1_civ_grise",20000],
			["Mrshounka_bmwm1_civ_violet",20000],
			["Mrshounka_bmwm1_civ_orange",20000],
			["Mrshounka_bmwm6_noir",25000],
			["Mrshounka_bmwm6_bleufonce",25000],
			["Mrshounka_bmwm6_rouge",25000],
			["Mrshounka_bmwm6_jaune",25000],
			["Mrshounka_bmwm6_rose",25000],
			["Mrshounka_bmwm6_grise",25000],
			["Mrshounka_bmwm6_violet",25000],
			["Mrshounka_bmwm6_orange",25000],
			["cl3_e60_m5_white",22500],
			["cl3_e60_m5_purple",22500],
			["cl3_e60_m5_navy_blue",22500],
			["cl3_e60_m5_lime",22500],
			["cl3_e60_m5_light_yellow",22500],
			["cl3_e60_m5_light_blue",22500],
			["cl3_e60_m5_grey",22500],
			["cl3_e60_m5_gold",22500],
			["cl3_e60_m5_burgundy",22500],
			["cl3_e60_m5_black",22500],
		
		//Subaru
			["Jonzie_STI",25000],
			["ivory_wrx",25000],
			
		//Aston Martin
			["S_Vantage_Red",25000],
			["S_Vantage_Blue",25000],
			["S_Vantage_Black",25000],
			["S_Vantage_Yellow",25000],
			["S_Vantage_LightBlue",25000],
			["S_Vantage_Purple",25000],
			["S_Vantage_White",25000],
			["cl3_dbs_volante_white",30000],
			["cl3_dbs_volante_purple",30000],
			["cl3_dbs_volante_navy_blue",30000],
			["cl3_dbs_volante_lime",30000],
			["cl3_dbs_volante_light_yellow",30000],
			["cl3_dbs_volante_light_blue",30000],
			["cl3_dbs_volante_grey",30000],
			["cl3_dbs_volante_gold",30000],
			["cl3_dbs_volante_burgundy",30000],
			["cl3_dbs_volante_black",30000],
			
		//Porsche
			["S_PorscheRS_Black",30000],
			["S_PorscheRS_White",30000],
			["wirk_cayenne",35000],
			["cl3_carrera_gt_white",37500],
			["cl3_carrera_gt_purple",37500],
			["cl3_carrera_gt_navy_blue",37500],
			["cl3_carrera_gt_lime",37500],
			["cl3_carrera_gt_light_blue",37500],
			["cl3_carrera_gt_grey",37500],
			["cl3_carrera_gt_gold",37500],
			["cl3_carrera_gt_burgundy",37500],
			["cl3_carrera_gt_black",37500],
			["ALFR_GeK_Panamera",40000],
			
		//Ferrari
			["cl3_458_white",37500],
			["cl3_458_purple",37500],
			["cl3_458_navy_blue",37500],
			["cl3_458_lime",37500],
			["cl3_458_light_yellow",37500],
			["cl3_458_light_blue",37500],
			["cl3_458_grey",37500],
			["cl3_458_gold",37500],
			["cl3_458_burgundy",37500],
			["cl3_458_black",37500],

		//Mclaren
			["S_McLarenP1_Black",33750],
			["S_McLarenP1_Blue",33750],
			["S_McLarenP1_Orange",33750],
			["S_McLarenP1_White",33750],
			["S_McLarenP1_Yellow",33750],
			["S_McLarenP1_Silver",33750],
			["ALFR_GeK_MF1",42500],
			
		//Lambo
			["mrshounka_huracan_c_noir",32500],
			["mrshounka_huracan_c_bleufonce",32500],
			["mrshounka_huracan_c_rouge",32500],
			["mrshounka_huracan_c_jaune",32500],
			["mrshounka_huracan_c_rose",32500],
			["mrshounka_huracan_c_grise",32500],
			["mrshounka_huracan_c_violet",32500],
			["mrshounka_huracan_c_orange",32500],
			["ivory_lp560",35000],
			["cl3_murcielago_white",37500],
			["cl3_murcielago_purple",37500],
			["cl3_murcielago_navy_blue",37500],
			["cl3_murcielago_lime",37500],
			["cl3_murcielago_light_yellow",37500],
			["cl3_murcielago_light_blue",37500],
			["cl3_murcielago_grey",37500],
			["cl3_murcielago_gold",37500],
			["cl3_murcielago_burgundy",37500],
			["cl3_murcielago_black",37500],
			["Mrshounka_veneno_c_noir",40000],
			["Mrshounka_veneno_c_bleu",40000],
			["Mrshounka_veneno_c_jaune",40000],
			["Mrshounka_veneno_c_grau",40000],
			["Mrshounka_veneno_c_rot",40000],
			["Mrshounka_veneno_c_gruen",40000],
			["Mrshounka_veneno_c_violet",40000],
			["ivory_rev_black",42500],
			["ivory_rev_blue",42500],
			["ivory_rev_lime",42500],
			["ivory_rev_pink",42500],
			["ivory_rev_rot",42500],
			["ivory_rev_turkis",42500],
			["ivory_rev_orange",42500],
			["ivory_rev_sport1",42500],
			["ivory_rev_sport2",42500],
			["ivory_rev_sport3",42500],
			["ivory_rev_sport4",42500],
			["cl3_reventon_white",45000],
			["cl3_reventon_purple",45000],
			["cl3_reventon_navy_blue",45000],
			["cl3_reventon_lime",45000],
			["cl3_reventon_light_yellow",45000],
			["cl3_reventon_light_blue",45000],
			["cl3_reventon_grey",45000],
			["cl3_reventon_gold",45000],
			["cl3_reventon_burgundy",45000],
			["cl3_reventon_black",45000],
			["cl3_lamborghini_gt1_white",50000],
			["cl3_lamborghini_gt1_purple",50000],
			["cl3_lamborghini_gt1_navy_blue",50000],
			["cl3_lamborghini_gt1_lime",50000],
			["cl3_lamborghini_gt1_light_yellow",50000],
			["cl3_lamborghini_gt1_light_blue",50000],
			["cl3_lamborghini_gt1_grey",50000],
			["cl3_lamborghini_gt1_gold",50000],
			["cl3_lamborghini_gt1_burgundy",50000],
			["cl3_lamborghini_gt1_black",50000],

		// Luxushändler
			["ivory_c",55000],
			["ivory_c_livery1",55000],
			["ivory_c_livery2",55000],
			["ivory_c_livery3",55000],
			["ivory_c_livery4",55000],
			["ivory_lfa",57500],
			["ivory_lfa_sport1",57500],
			["ivory_lfa_sport2",57500],
			["ivory_lfa_sport3",57500],
			["ivory_lfa_sport4",57500],
			["ivory_lfa_sport5",57500],
			["cl3_veyron_blk_wht",62500],
			["cl3_veyron_lblue_dblue",62500],
			["cl3_veyron_lblue_lblue",62500],
			["cl3_veyron_brn_blk",62500],
			["ALFR_GeK_Pagani_Zonda",62500],
			["Nhz_audia8limo",62500],
			["wirk_h3_limo",100000],
			
		//LkW
			["C_Van_01_box_F",8750],
			["C_Van_01_transport_F",10000],
			["Jonzie_Western",37500],
			
		//Scania LKW
			["A3L_Dumptruck",37500],
				
		//Renault LKW
			["shounka_a3_renaultmagnum_f",40000],
				
		//Volvo LKW
			["ALFR_GeK_Volvo_FH16_2012",40000],

		//Man LKW
			["Jonzie_Flat_Bed",37500],
			["Jonzie_Box_Truck",37500],
			["Jonzie_Log_Truck",40000],
				
		//Mack LKW
			["cl3_mackr_blue",35000],
			["Jonzie_Superliner",37500],
			["cl3_mackr_flat_blue",37500],
			["cl3_mackr_del_blue",40000],
			
		//Bus
			["A3L_Bus",5000],
			["A3L_SchoolBus",5000],
			["RDS_Ikarus_Civ_01",6250],
			["RDS_Ikarus_Civ_02",6250],
			["CL3_bus_cl_blue",7500],
			["CL3_bus_cl_green",7500],
			["CL3_bus_cl_yellow",7500],
			["CL3_bus_cl_purple",7500],
			["CL3_bus_cl_grey",7500],
			["CL3_bus_cl_black",7500],			
			
		//Illegal
			["B_Heli_Light_01_F",30000],
			["A3L_Atom",32500],
			["cl3_arielatom_race_white",37500],
			["cl3_arielatom_race_purple",37500],
			["cl3_arielatom_race_navy_blue",37500],
			["cl3_arielatom_race_lime",37500],
			["cl3_arielatom_race_light_yellow",37500],
			["cl3_arielatom_race_light_blue",37500],
			["cl3_arielatom_race_grey",37500],
			["cl3_arielatom_race_gold",37500],
			["cl3_arielatom_race_burgundy",37500],
			["cl3_arielatom_race_black",37500],
			
		//Heli
			["ivory_b206",40000],
			["ivory_b206_news",85000],
			["C_Heli_Light_01_civil_F",22500],
			["O_Heli_Light_02_unarmed_F",45000],
			["IVORY_BELL512",50000],
			["GNT_C185",37500],
			["GNT_C185F",37500],
			["IVORY_T6A_1",50000],
			["IVORY_CRJ200_1",80000],
			["IVORY_YAK42D_1",100000],
			
		//Boot
			["Cl3MOD_C_Rubberboat_civilian",750],
			["A3L_Jetski",1250],
			["A3L_Jetski_yellow",1250],
			["C_Boat_Civil_01_F",2500],
			["A3L_SpeedYacht",5000],
			["A3L_Ship",5000],
			["B_SDV_01_F",6250],
			
			["C_Boat_Civil_01_rescue_F",7500],
			["B_Boat_Transport_01_F",1875],
			["C_Boat_Civil_01_police_F",5000],
			["ivory_b206_police",25000],
			["EC635_Unarmed_BW",5000],
			["EC635_SAR",5000],
			["IVORY_BELL512_POLICE",46250],
			["I_Heli_light_03_unarmed_F",25000],
			["A3l_TaurusFPBLBCSO",6250],
			["A3l_TaurusFPBLBPD",6250],
			["A3L_TaurusFPBLBSP",6250],
			["A3L_JailBus",8750],
			["Mrshounka_rs_2015_g",6750],
			["A3L_CVPIFPBLBPD",12500],		
			["A3L_CVPIFPBLBCSO",12500],
			["A3L_CVPIFPBLBFG",12500],
			["A3L_CVPIFPBLBSM",12500],
			["A3L_CVPIFPBLBHP",12500],
			["A3L_EvoXFPBLBPD",17500],
			["A3L_EvoXFPBLBSO",17500],
			["A3L_EvoXFPBLBSP",17500],
			["AM_09Tahoe_P_Sheriff",12500],
			["AM_09Tahoe_P_LVPD",12500],
			["AM_09Tahoe_U_T",12500],
			["DAR_TahoePoliceDet",12500],
			["DAR_SWATPolice",20000],
			["cl3_xr_1000_police",7500],
			["DAR_ExplorerPolice",17500],
			["DAR_ExplorerPoliceStealth",17500],
			["DAR_TahoePolice", 12500],
			["charger_sh",20000],
			["charger_st",20000],
			["charger_lvpd",20000],
			["charger_umb",20000],
			["charger_umw",20000],
			["shounka_a3_brinks_noir",17500],
			["shounka_a3_suburbangign",17500],
			["IVORY_REV",42500],
			["C_Offroad_01_F",2500],
			["A3L_CVLac",7500],
			["cl3_enduro_yellow",37500],
			["C_SUV_01_F",3000],
			["A3l_evoxADAC",17500],
			["shounka_a3_mantgs",17500],
			["cl3_dodge_charger_f_yellow",15000],
			["S_PorscheRS_Yellow",30000],
			["cl3_carrera_gt_light_yellow",37500],
			["EC635_ADAC",5000],
			["IVORY_PRIUS",5000],
			["Jonzie_Ambulance",6250],
			["A3L_Laddertruck",10000],
			["dar_tahoeems",15000],
			["mercedes_atego_pompier_ingame",20000],
			["A3L_CVPILBFD",12500],
			["cl3_dodge_charger_emt",15000],
			["charger_ems",20000],
			["cl3_xr_1000_emt",7500],
			["A3L_EvoXFPBLBMED",17500],
			["ivory_b206_rescue",40000],
			["IVORY_BELL512_RESCUE",50000],
			["EC635_Unarmed_CSAT",50000],
			["Jonzie_Highway",25000]
];
__CONST__(life_garage_sell,life_garage_sell);