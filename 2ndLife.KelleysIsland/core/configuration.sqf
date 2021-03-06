#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
player setVariable["playerHealth", 0, true];
myHealth = 0;
Fishing_Active = false;
shooting_death = false;
bite = false;
tryingCall = false;
phonesRinging = false;
life_quitRecently = false;
phoneDisabled = false;
myCallOwner = player;
myPhoneCall = 0;
damageChance = false;
dispatch = false;
trucking = false;
dispatch2 = false;
callInProgress = false;
noleftclick = false;
allowanims = true;
harvesting = false;
isdragging = false;
im_hunting = false;
progress_bj = false;
buy_off = false;
buying_virt_item = false;
buying_phys_item = false;
allow_sat = true;
phone_s_1 = false;
phone_s_2 = false;
phone_s_3 = false;
previewing_on = false;
has_job = false;
driver_test = false;
start_up = true;
checked_taxi = false;
message1_active = false;
message2_active = false;
message3_active = false;
message4_active = false;
message5_active = false;
message6_active = false;
raceDone = false;
life_rebelbadguyman = false;
life_query_time = time;
life_lastKnownPos = [0,0,0];
life_show_actions = false;
life_actions = [];
skip_all = false;
im_dead = false;
life_isdowned = false;
life_action_time = 0;
life_racing = false;
cheap_buffs = false;
life_crazy = 0;
life_cokeaddict = false;
message_active = 0;
target_licenses = "None";
usingvehicle = false;
target_houses = [];
life_cruise = false;
life_charged = false;
//life_gopro = false;
life_racers = [];
koil_antispam = 0;
life_newsJobs = false;
life_bankteller = false;
life_action_delay = time;
life_damagereturn = false;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_seatbelt = false;
life_seatwarn = false;
life_smoking = false;
life_bonging = false;
paid_recently = false;
life_siren_active = false;
life_clothing_filter = 0;
life_hungerpain = false;
life_antispamactive = false;
life_koil_race = 0;
life_koil_race2 = 0;
life_rip = 0;
life_ApplyAir = false;
prevent_loot = false;
life_nos_active = 2;
life_dontsell = 0;
life_clothing_uniform = -1;
life_koil_rally = 0;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_nos_count = 0;
life_impound_inuse = false;
life_action_inUse = false;
life_sickness = false; 
life_paintball = false;
life_spikestrip = ObjNull;
life_deathpos = 1;
//life_respawn_timer = 9; //Scaled in minutes
life_knockout = false;
life_rope = 1;
koil_life = 1;
life_stretcher = 1;
hacking = false;
life_std = 0;
life_maxweightdone = 0;
life_eattotal = 0;
life_bro = 0;
life_num = 0;
life_pizza = 0;
life_koil_parachute = 0;
life_applypressure = 0;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_spam_my_dick2 = 0;
life_spam_my_dick = 0;
life_married = "";
life_siren_on = 0;
koil_altcheck = false;
koildeb = 1;
koildebi = 1;
koildebii = 1;
koildebiii = 1;
koildebiiii = 1;
life_breakouton = 1;
life_nospampls = 0;
life_firing_range = false;
life_signedIn = false;
life_pickup_open = false;
life_injuries = ["diseaseon","bleedingon","woundedon","fractureon","unconciouson"];
life_carSalesman = false;
life_onTestDrive = false;
life_requestingTestDrive = false;
life_testDriveRequests = [];
maintenance_on = false;
totallogs = 0;
life_taxiMarker = [];
life_preview_3D_vehicle_cam = objNull;
life_preview_3D_vehicle_object = objNull;
life_preview_light = objNull;
life_pos_exist = false;
life_pos_attach = [];
prisonbreak = false;
SecondLife_version = "SecondLifeModVersion1012c";
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

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
life_battery = 75;
life_gift_recent = false;
life_charging = 2;
life_koil_hh = 2;
life_hunger = 100;
life_revivemoney = false;
life_intox = 0.00;
__CONST__(life_paycheck_period,10); //Ten Minutes
cash_in_hand = 0;
__CONST__(life_impound_car,835);
__CONST__(life_impound_boat,825);
__CONST__(life_impound_air,885);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		cash_in_bank = 25000; //Starting Bank Money
		life_paycheck = 500; //Paycheck Amount
	};
	case civilian: 
	{
		cash_in_bank = 15000; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
	case independent: {
		cash_in_bank = 50000;
		life_paycheck = 500;
	};
	case east: {
		cash_in_bank = 15000;
		life_paycheck = 400;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_medschere",
	"life_inv_nos",
	"life_inv_condom",
	"life_inv_medkit",
	"life_inv_genitalcreme",
	"life_inv_tabletten",
	"life_inv_antibiotika",
	"life_inv_cleankit",
	"life_inv_weddingring",
	"life_inv_bandage",
	"life_inv_airkit",
	"life_inv_tierope",
	"life_inv_stitches",
	"life_inv_splint",
	"life_inv_mobilephone",
	"life_inv_panicbutton",
	"life_inv_epipen",
	"life_inv_bec",
	"life_inv_MDMAu",
	"life_inv_MDMAp",
	"life_inv_methu",
	"life_inv_emerald",
	"life_inv_sapphire",
	"life_inv_ruby",
	"life_inv_methp",
	"life_inv_cokeu",
	"life_inv_cokep",
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
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_hackingtool",
	"life_inv_boltcutter",
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
	"life_inv_medcanna",
	"life_inv_medmarijuana",
	"life_inv_rawmeat",
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
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_zoobeer2",
	"life_inv_jackdaniels",
	"life_inv_vodka",
	"life_inv_jagerbomb",
	"life_inv_absinthe",
	"life_inv_redwine",
	"life_inv_whitewine",
	"life_inv_whiterussian",
	"life_inv_sexonthebeach",
	"life_inv_tequila",
	"life_inv_jackdanielsandcoke",
	"life_inv_rumrax",
	"life_inv_bombfish",
	"life_inv_meatfish",
	"life_inv_fish",
	"life_inv_meat",
	"life_inv_shank",
	"life_inv_wood"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_civ_MDMA","civ"],
	["license_maf_MDMA","maf"],
	["license_civ_meth","civ"],
	["license_maf_meth","maf"],
	["license_civ_coke","civ"],
	["license_maf_coke","maf"],
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_maf_driver","maf"],
	["license_civ_air","civ"],
	["license_maf_air","maf"],
	["license_civ_heroin","civ"],
	["license_maf_heroin","maf"],
	["license_civ_marijuana","civ"],
	["license_maf_marijuana","maf"],
	["license_civ_boat","civ"],
	["license_maf_boat","maf"],
	["license_civ_oil","civ"],
	["license_maf_oil","maf"],
	["license_civ_dive","civ"],
	["license_maf_dive","maf"],
	["license_civ_truck","civ"],
	["license_maf_truck","maf"],
	["license_civ_gun","civ"],
	["license_maf_gun","maf"],
	["license_civ_diamond","civ"],
	["license_maf_diamond","maf"],
	["license_civ_copper","civ"],
	["license_maf_copper","maf"],
	["license_civ_iron","civ"],
	["license_maf_iron","maf"],
	["license_civ_sand","civ"],
	["license_maf_sand","maf"],
	["license_civ_salt","civ"],
	["license_maf_salt","maf"],
	["license_civ_cement","civ"],
	["license_maf_cement","maf"],
	["license_med_air","med"],
	["license_med_medmarijuana","med"],
	["license_civ_home","civ"],
	["license_maf_home","maf"],
	["license_civ_rifle","civ"],
	["license_maf_rifle","maf"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",120],["heroinp",250],["cokeu",150],["cokep",350],["cannabis",250],["opium",250],["marijuana",300],["turtle",500],["hackingtool",1000],["blastingcharge",1000],["boltcutter",350],["methu",40],["methp",400],["cokeu",40],["cokep",500],["MDMAu",30],["emerald",1220],["sapphire",1520],["ruby",720],["MDMAp",360]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["medschere",60],
	["weddingring",80],
	["genitalcreme",1],
	["tabletten",1],
	["antibiotika",1],
	["bec",1],
	["medkit",5],
	["cleankit",1],
	["mobilephone",1],
	["panicbutton",1],
	["MDMAp",850],
	["medmarijuana",655],
	["emerald",1020],
	["sapphire",1020],
	["ruby",1070],
	["methp",1600],
	["cokep",2100],
	["apple",1],
	["heroinp",1400],
	["salema",90],
	["ornate",90],
	["mackerel",65],
	["tuna",131],
	["mullet",65],
	["catshark",100],
	["marijuana",1100],
	["turtle",1900],
	["rabbit",1],
	["oilp",1225],
	["water",1],
	["coffee",1],
	["bandage",1],
	["airkit",1],
	["tierope",1],
	["stitches",1],
	["splint",1],
	["epipen",1],
	["turtlesoup",90],
	["donuts",1],
	["tbacon",1],
	["lockpick",600],
	["pickaxe",5],
	["redgull",1],
	["peach",1],
	["diamondc",1465],
	["iron_r",500],
	["copper_r",650],
	["salt_r",265],
	["glass",200],
	["fuelF",50],
	["wheat",25],
	["sunflower",50],
	["corn",90],
	["bean",80],
	["cotton",20],
	["olive",277],
	["opium",100],
	["pumpkin",110],
	["spikeStrip",12],
	["cement",415],
	["goldbar",9500], 
	//Deo Additions
	["zoobeer",1], 
	["zoobeer2",1],
	["vodka",1],
	["jackdaniels",1],
	["jagerbomb",2],
	["absinthe",2],
	["redwine",2],
	["whitewine",2],
	["whiterussian",2],
	["sexonthebeach",2],
	["tequila",2],
	["jackdanielsandcoke",2],
	["condom",10],
	["nos",10],
	["BarGate",5],
	["RoadBlockConc",2],
	["RoadBlockWood",7],
	["RoadCone",1],
	["RoadConeStrip",2],
	["RoadConeB",1],
	["RoadConeStripB",5],
	["cigarette",1],
	["rumrax",1],
	["bombfish",1],
	["fish",350],
	["meat",450],
	["meatfish",755],
	["wood",550]
];
__CONST__(sell_array,sell_array);

buy_array =
[
		["medschere",120],
		["cleankit",100],
        ["medkit",1200],
		["genitalcreme",16],
		["tabletten",8],
		["antibiotika",12],
        ["condom",100],
        ["weddingring",10000],
        ["bandage",25],
		["medmarijuana",1200],
        ["airkit",5],
        ["nos",4500],
        ["tierope",1125],
        ["stitches",1],
        ["splint",1],
        ["epipen",1],
        ["marijuana",7500],
        ["methp",8800],
        ["MDMAp",8800],
        ["cokep",8800],
        ["apple",6],
        ["rabbit",7],
        ["bec",50],
        ["mobilephone",1],
        ["panicbutton",1],
        ["salema",129],
        ["ornate",119],
        ["mackerel",125],
        ["tuna",295],
        ["mullet",125],
        ["catshark",220],
        ["marijuana",155],
        ["water",1],
        ["turtlesoup",250],
        ["donuts",12],
        ["coffee",1],
        ["tbacon",7],
        ["lockpick",1500],
        ["pickaxe",120],
        ["redgull",12],
        ["fuelF",85],
        ["cannabis",400],
        ["spikeStrip",250],
        ["blastingcharge",15000],
        ["hackingtool",15000],
        ["boltcutter",2500],
        ["defusekit",250],
        ["storagesmall",7500],
        ["storagebig",15000],
        // Deo's Adds
        ["zoobeer",2],
        ["zoobeer2",2],
        ["vodka",12],
        ["jackdaniels",12],
        ["jagerbomb",22],
        ["absinthe",25],
        ["redwine",22],
        ["whitewine",35],
        ["whiterussian",32],
        ["sexonthebeach",32],
        ["tequila",32],
        ["jackdanielsandcoke",32],
        ["BarGate",50],
        ["RoadBlockConc",3000],
        ["RoadBlockWood",70],
        ["RoadCone",5],
        ["RoadConeStrip",25],
        ["RoadConeB",10],
        ["RoadConeStripB",50],
        ["cigarette",925],
        ["rumrax",5],
		["bombfish",500]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["Fish_1_i",70],
	["Fish_2_i",120],
	["Fish_3_i",160],
	["Fish_4_i",100],
	["Fish_5_i",45],
	["ItemGPS",1],
	["ToolKit",1]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
			// Mafia Cars
			["Urbanized_67Mustang_black",0],
			["Urbanized_67Mustang_white",0],
			["Urbanized_67Mustang_blue",0],
			["Urbanized_67Mustang_orange",0],
			["Urbanized_67Mustang_darkred",0],
			["Urbanized_427_black",0],
			["Urbanized_427_white",0],
			["Urbanized_427_blue",0],
			["Urbanized_427_pink",0],
			["Urbanized_427_yellow",0],
			["Urbanized_427_red",0],
			["Urbanized_427_orange",0],
			["Urbanized_G65_black",0],
			["Urbanized_G65_white",0],
			["Urbanized_G65_blue",0],
			["Urbanized_G65_purple",0],
			["Urbanized_G65_pink",0],
			["Urbanized_G65_orange",0],
			["Urbanized_G65_yellow",0],
			["Urbanized_G65_lime",0],
			["Urbanized_GranTurismo_black",0],
			["Urbanized_GranTurismo_white",0],
			["Urbanized_GranTurismo_blue",0],
			["Urbanized_GranTurismo_purple",0],
			["Urbanized_GranTurismo_orange",0],
			["Urbanized_GranTurismo_darkred",0],
			["Urbanized_GranTurismo_hotpink",0],
			["Urbanized_GranTurismo_yellow",0],
			["Urbanized_GranTurismo_lime",0],
			["Urbanized_LaFerrari_Black_S",0],
			["Urbanized_LaFerrari_Blue_S",0],
			["Urbanized_LaFerrari_Lime_S",0],
			//Medic Cars
			["DAR_TahoeEMS",0],
			["ivory_b206_rescue",0],
			["IVORY_BELL512_RESCUE",0],
			["ems_chopper",0],
			["ems_chopper2",0],
			["ems_orca",0],
			["ems_orca2",0],
			["O_Heli_Transport_04_medevac_F",0],
			["2ndLife_EMS_Boat",0],
			["Jonzie_Ambulance",0],
			
			//Police Cars
			["ivory_isf_slicktop",0],
			["ivory_m3_slicktop",0],
			["ivory_rs4_slicktop",0],
			["ivory_wrx_slicktop",0],
			["ivory_evox_slicktop",0],
			["ivory_isf_marked",0],
			["ivory_m3_marked",0],
			["ivory_rs4_marked",0],
			["ivory_wrx_marked",0],
			["ivory_evox_marked",0],
			["ivory_isf_unmarked",0],
			["ivory_m3_unmarked",0],
			["ivory_rs4_unmarked",0],
			["ivory_wrx_unmarked",0],
			["ivory_evox_unmarked",0],
			["Urbanized_67Mustang_UC1",0],
			["Urbanized_67Mustang_UC2",0],
			["Urbanized_67Mustang_UC3",0],
			["Urbanized_CTSV_UC1",0],
			["Urbanized_CTSV_UC2",0],
			["Urbanized_CTSV_UC3",0],
			["Urbanized_G65_UC1",0],
			["Urbanized_G65_UC3",0],			
			["ivory_rev_sheriff",0],
			["ivory_rev_police",0],
			["Urbanized_LP700_P",0],
			["ivory_rev_fbi",0],
			["ivory_rev_fbi2",0],
			["ivory_rev_fbi3",0],
			["ivory_rev_fbi4",0],
			["ivory_rev_fbi5",0],
			["ivory_rev_fbi6",0],
			["ivory_rev_fbi7",0],
			["ivory_rev_fbi8",0],
			["ivory_rev_fbi9",0],
			["ivory_rev_fbi10",0],
			["ivory_rev_fbi11",0],
			["B_Heli_Light_01_F",0],
			["C_Heli_Light_01_civil_F",0],
			["melb_h6m",0],
			["B_Boat_Transport_01_F",0],
			["C_Boat_Civil_01_police_F",0],
			["B_SDV_01_F",0],
			
			//Motorräder
			["tcg_hrly",0],
			["tcg_hrly_white",0],	
			["tcg_hrly_red",0],
			["tcg_hrly_metal",0],
			["tcg_hrly_blue",0],
			["tcg_hrly_limited",0],
			["tcg_hrly_demon",0],
			["tcg_hrly_coco",0],
			["tcg_hrly_orig1",0],
			["tcg_hrly_orig2",0],
			["tcg_hrly_skeleton",0],
			["tcg_hrly_gay",0],
			["cl3_enduro_yellow",0],
			["cl3_enduro_black",0],
			["cl3_enduro_blue",0],
			["cl3_enduro_aqua",0],
			["cl3_enduro_babypink",0],
			["cl3_enduro_red",0],
			["cl3_enduro_dark_green",0],
			["cl3_chopper_blue",0],
			["cl3_chopper_green",0],
			["cl3_chopper_red",0],
			["cl3_xr_1000_yellow",0],
			["cl3_xr_1000_black",0],
			["cl3_xr_1000_babypink",0],
			["cl3_xr_1000_red",0],
			["cl3_xr_1000_lime",0],
			["cl3_xr_1000_flame",0],	

			//Civ Ship
			["C_Rubberboat",0],
			["CUP_B_Zodiac_USMC",0],
			["C_Boat_Civil_01_F",0],
			["CUP_C_Fishing_Boat_Chernarus",0],
			
			//Civ Truck
			["Jonzie_Transit",0],
			["Jonzie_Flat_Bed",0],
			["ADM_Ford_F100",0],
			["Jonzie_Log_Truck",0],
			["Jonzie_Box_Truck",0],
			["Jonzie_Tanker_Truck",0],
			["Nhz_audia8limo",0],
			["wirk_h3_limo",0],
			["Jonzie_Log_Truck",0],
						
			//Sportwagen
			["cl3_murcielago_white",0],
			["cl3_murcielago_purple",0],
			["cl3_murcielago_navy_blue",0],
			["cl3_murcielago_lime",0],
			["cl3_murcielago_light_yellow",0],
			["cl3_murcielago_light_blue",0],
			["cl3_murcielago_grey",0],
			["cl3_murcielago_gold",0],
			["cl3_murcielago_burgundy",0],
			["cl3_murcielago_black",0],
			["cl3_lamborghini_gt1_white",0],
			["cl3_lamborghini_gt1_purple",0],
			["cl3_lamborghini_gt1_navy_blue",0],
			["cl3_lamborghini_gt1_lime",0],
			["cl3_lamborghini_gt1_light_yellow",0],
			["cl3_lamborghini_gt1_light_blue",0],
			["cl3_lamborghini_gt1_grey",0],
			["cl3_lamborghini_gt1_gold",0],
			["cl3_lamborghini_gt1_burgundy",0],
			["cl3_lamborghini_gt1_black",0],
			["ivory_rev_black",0],
			["ivory_rev_blue",0],
			["ivory_rev_lime",0],
			["ivory_rev_pink",0],
			["ivory_rev_rot",0],
			["ivory_rev_turkis",0],
			["ivory_rev_orange",0],
			["ivory_rev_sport1",0],
			["ivory_rev_sport2",0],
			["ivory_rev_sport3",0],
			["ivory_rev_sport4",0],
			["IVORY_R8",0],
			["IVORY_R8SPYDER",0],
			["Urbanized_458Ferrari_black",0],
			["Urbanized_458Ferrari_white",0],
			["Urbanized_458Ferrari_blue",0],
			["Urbanized_458Ferrari_pink",0],
			["Urbanized_458Ferrari_orange",0],
			["Urbanized_458Ferrari_darkred",0],
			["Urbanized_458Ferrari_yellow",0],
			["cl3_carrera_gt_white",0],
			["cl3_carrera_gt_purple",0],
			["cl3_carrera_gt_navy_blue",0],
			["cl3_carrera_gt_lime",0],
			["cl3_carrera_gt_light_blue",0],
			["cl3_carrera_gt_grey",0],
			["cl3_carrera_gt_gold",0],
			["cl3_carrera_gt_burgundy",0],
			["cl3_carrera_gt_black",0],
			["ivory_rs4",0],
			["ivory_rs4_taxi",0],
			["cl3_dbs_volante_white",0],
			["cl3_dbs_volante_purple",0],
			["cl3_dbs_volante_navy_blue",0],
			["cl3_dbs_volante_lime",0],
			["cl3_dbs_volante_light_yellow",0],
			["cl3_dbs_volante_light_blue",0],
			["cl3_dbs_volante_grey",0],
			["cl3_dbs_volante_gold",0],
			["cl3_dbs_volante_burgundy",0],
			["cl3_dbs_volante_black",0],
			["cl3_e63_amg_white",0],
			["cl3_e63_amg_purple",0],
			["cl3_e63_amg_navy_blue",0],
			["cl3_e63_amg_lime",0],
			["cl3_e63_amg_light_yellow",0],
			["cl3_e63_amg_light_blue",0],
			["cl3_e63_amg_grey",0],
			["cl3_e63_amg_gold",0],
			["cl3_e63_amg_burgundy",0],
			["cl3_e63_amg_black",0],
			["cl3_e60_m5_white",0],
			["cl3_e60_m5_purple",0],
			["cl3_e60_m5_navy_blue",0],
			["cl3_e60_m5_lime",0],
			["cl3_e60_m5_light_yellow",0],
			["cl3_e60_m5_light_blue",0],
			["cl3_e60_m5_grey",0],
			["cl3_e60_m5_gold",0],
			["cl3_e60_m5_burgundy",0],
			["cl3_e60_m5_black",0],
			["ivory_r34_tuned",0],
			["ivory_m3_gts",0],
			["ivory_elise_tuned",0],
			["ivory_wrx_tuned",0],
			["ivory_evox_tuned",0],
			["ivory_lfa",0],
			["ivory_c",0],
			["ivory_lp560",0],
			["ivory_f1",0],
			["ivory_supra_topsecret",0],
			["ivory_f1_tuned",0],
			["Urbanized_LaFerrari_black",0],
			["Urbanized_LaFerrari_white",0],
			["Urbanized_LaFerrari_blue",0],
			["Urbanized_LaFerrari_purple",0],
			["Urbanized_LaFerrari_pink",0],
			["Urbanized_LaFerrari_orange",0],
			["Urbanized_LaFerrari_darkred",0],
			["Urbanized_LaFerrari_hotpink",0],
			["Urbanized_LaFerrari_yellow",0],
			["Urbanized_LaFerrari_lime",0],
			["Urbanized_LP700_black",0],
			["Urbanized_LP700_white",0],
			["Urbanized_LP700_blue",0],
			["Urbanized_LP700_purple",0],
			["Urbanized_LP700_pink",0],
			["Urbanized_LP700_orange",0],
			["Urbanized_LP700_yellow",0],
			["Urbanized_LP700_lime",0],
			["ivory_veyron",0],
			
			//Gebrauchtwagen
			["Jonzie_Mini_Cooper",0],
			["cl3_suv_taxi",0],
			["ivory_190e",0],
			["ivory_190e_taxi",0],
			["ivory_e36",0],
			["ivory_r34",0],
			["ivory_isf",0],
			["S_Rangerover_Black",0],
			["S_Rangerover_Red",0],
			["S_Rangerover_Blue",0],
			["S_Rangerover_Green",0],
			["S_Rangerover_Purple",0],
			["S_Rangerover_Grey",0],
			["S_Rangerover_Orange",0],
			["S_Rangerover_White",0],
			["DAR_TahoeCivSilver",0],
			["DAR_TahoeCivBlue",0],
			["DAR_TahoeCivRed",0],
			["DAR_TahoeCivBlack",0],
			
			//Neuwagen
			["ivory_gti",0],
			["ivory_evox",0],
			["ivory_supra",0],
			["ivory_wrx",0],
			["Urbanized_CTSV_black",0],
			["Urbanized_CTSV_white",0],
			["Urbanized_CTSV_blue",0],
			["Urbanized_CTSV_purple",0],
			["Urbanized_CTSV_pink",0],
			["Urbanized_CTSV_orange",0],
			["Urbanized_CTSV_yellow",0],
			["Urbanized_CTSV_lime",0],
			["Urbanized_CTSV_chrome",0],
			["cl3_z4_2008_white",0],
			["cl3_z4_2008_purple",0],
			["cl3_z4_2008_navy_blue",0],
			["cl3_z4_2008_lime",0],
			["cl3_z4_2008_light_yellow",0],
			["cl3_z4_2008_light_blue",0],
			["cl3_z4_2008_grey",0],
			["cl3_z4_2008_burgundy",0],
			["cl3_z4_2008_black",0],
			["ivory_elise",0],
			//Civ Air
			["Sab_af_An2",0],
			["Sab_tk_An2",0],
			["Sab_ca_An2",0],
			["Sab_ana_An2",0],
			["Sab_yel_An2",0],
			["Sab_fd_An2",0],
			["Sab_Sea2_An2",0],
			["Sab_Sea4_An2",0],
			["Sab_Amphi_An2",0],
			["sab_camel",0],
			["ivory_b206",0],
			["ivory_b206_news",0]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
			//Mafia Cars
			["Urbanized_67Mustang_black",1000],
			["Urbanized_67Mustang_white",1000],
			["Urbanized_67Mustang_blue",1000],
			["Urbanized_67Mustang_orange",1000],
			["Urbanized_67Mustang_darkred",1000],
			["Urbanized_427_black",1000],
			["Urbanized_427_white",1000],
			["Urbanized_427_blue",1000],
			["Urbanized_427_pink",1000],
			["Urbanized_427_yellow",1000],
			["Urbanized_427_red",1000],
			["Urbanized_427_orange",1000],
			["Urbanized_G65_black",1000],
			["Urbanized_G65_white",1000],
			["Urbanized_G65_blue",1000],
			["Urbanized_G65_purple",1000],
			["Urbanized_G65_pink",1000],
			["Urbanized_G65_orange",1000],
			["Urbanized_G65_yellow",1000],
			["Urbanized_G65_lime",1000],
			["Urbanized_GranTurismo_black",1000],
			["Urbanized_GranTurismo_white",1000],
			["Urbanized_GranTurismo_blue",1000],
			["Urbanized_GranTurismo_purple",1000],
			["Urbanized_GranTurismo_orange",1000],
			["Urbanized_GranTurismo_darkred",1000],
			["Urbanized_GranTurismo_hotpink",1000],
			["Urbanized_GranTurismo_yellow",1000],
			["Urbanized_GranTurismo_lime",1000],
			["Urbanized_LaFerrari_Black_S",1000],
			["Urbanized_LaFerrari_Blue_S",1000],
			["Urbanized_LaFerrari_Lime_S",1000],
			//Medic Cars
			["DAR_TahoeEMS",1000],
			["ivory_b206_rescue",1000],
			["IVORY_BELL512_RESCUE",1000],
			["ems_chopper",1000],
			["ems_chopper2",1000],
			["ems_orca",1000],
			["ems_orca2",1000],
			["O_Heli_Transport_04_medevac_F", 1000],
			["2ndLife_EMS_Boat",1000],
			["Jonzie_Ambulance",1000],
			
			//Police Cars
			["ivory_isf_slicktop",1000],
			["ivory_m3_slicktop",1000],
			["ivory_rs4_slicktop",1000],
			["ivory_wrx_slicktop",1000],
			["ivory_evox_slicktop",1000],
			["ivory_isf_marked",1000],
			["ivory_m3_marked",1000],
			["ivory_rs4_marked",1000],
			["ivory_wrx_marked",1000],
			["ivory_evox_marked",1000],
			["ivory_isf_unmarked",1000],
			["ivory_m3_unmarked",1000],
			["ivory_rs4_unmarked",1000],
			["ivory_wrx_unmarked",1000],
			["ivory_evox_unmarked",1000],
			["Urbanized_67Mustang_UC1",1000],
			["Urbanized_67Mustang_UC2",1000],
			["Urbanized_67Mustang_UC3",1000],
			["Urbanized_CTSV_UC1",1000],
			["Urbanized_CTSV_UC2",1000],
			["Urbanized_CTSV_UC3",1000],
			["Urbanized_G65_UC1",1000],
			["Urbanized_G65_UC3",1000],
			["ivory_rev_sheriff",1000],
			["ivory_rev_police",1000],
			["Urbanized_LP700_P",1000],
			["ivory_rev_fbi",1000],
			["ivory_rev_fbi2",1000],
			["ivory_rev_fbi3",1000],
			["ivory_rev_fbi4",1000],
			["ivory_rev_fbi5",1000],
			["ivory_rev_fbi6",1000],
			["ivory_rev_fbi7",1000],
			["ivory_rev_fbi8",1000],
			["ivory_rev_fbi9",1000],
			["ivory_rev_fbi10",1000],
			["ivory_rev_fbi11",1000],
			["B_Heli_Light_01_F",1000],
			["C_Heli_Light_01_civil_F",1000],
			["melb_h6m",1000],
			["B_Boat_Transport_01_F",1000],
			["C_Boat_Civil_01_police_F",1000],
			["B_SDV_01_F",1000],
			
			//Motorräder
			["tcg_hrly",1000],
			["tcg_hrly_white",1000],	
			["tcg_hrly_red",1000],
			["tcg_hrly_metal",1000],
			["tcg_hrly_blue",1000],
			["tcg_hrly_limited",1000],
			["tcg_hrly_demon",1000],
			["tcg_hrly_coco",1000],
			["tcg_hrly_orig1",1000],
			["tcg_hrly_orig2",1000],
			["tcg_hrly_skeleton",1000],
			["tcg_hrly_gay",1000],
			["cl3_enduro_yellow",1000],
			["cl3_enduro_black",1000],
			["cl3_enduro_blue",1000],
			["cl3_enduro_aqua",1000],
			["cl3_enduro_babypink",1000],
			["cl3_enduro_red",1000],
			["cl3_enduro_dark_green",1000],
			["cl3_chopper_blue",1000],
			["cl3_chopper_green",1000],
			["cl3_chopper_red",1000],
			["cl3_xr_1000_yellow",1000],
			["cl3_xr_1000_black",1000],
			["cl3_xr_1000_babypink",1000],
			["cl3_xr_1000_red",1000],
			["cl3_xr_1000_lime",1000],
			["cl3_xr_1000_flame",1000],	

			//Civ Ship
			["C_Rubberboat",1000],
			["CUP_B_Zodiac_USMC",1000],
			["C_Boat_Civil_01_F",1000],
			["CUP_C_Fishing_Boat_Chernarus",1000],
			
			//Civ Truck
			["Jonzie_Transit",1000],
			["ADM_Ford_F100",1000],
			["Jonzie_Flat_Bed",1000],
			["Jonzie_Box_Truck",1000],
			["Jonzie_Tanker_Truck",1000],
			["Nhz_audia8limo",1000],
			["wirk_h3_limo",1000],
			["Jonzie_Log_Truck",1000],
					
			//Sportwagen
			["cl3_murcielago_white",1000],
			["cl3_murcielago_purple",1000],
			["cl3_murcielago_navy_blue",1000],
			["cl3_murcielago_lime",1000],
			["cl3_murcielago_light_yellow",1000],
			["cl3_murcielago_light_blue",1000],
			["cl3_murcielago_grey",1000],
			["cl3_murcielago_gold",1000],
			["cl3_murcielago_burgundy",1000],
			["cl3_murcielago_black",1000],
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
			["ivory_rev_black",1000],
			["ivory_rev_blue",1000],
			["ivory_rev_lime",1000],
			["ivory_rev_pink",1000],
			["ivory_rev_rot",1000],
			["ivory_rev_turkis",1000],
			["ivory_rev_orange",1000],
			["ivory_rev_sport1",1000],
			["ivory_rev_sport2",1000],
			["ivory_rev_sport3",1000],
			["ivory_rev_sport4",1000],
			["IVORY_R8",1000],
			["IVORY_R8SPYDER",1000],
			["Urbanized_458Ferrari_black",1000],
			["Urbanized_458Ferrari_white",1000],
			["Urbanized_458Ferrari_blue",1000],
			["Urbanized_458Ferrari_pink",1000],
			["Urbanized_458Ferrari_orange",1000],
			["Urbanized_458Ferrari_darkred",1000],
			["Urbanized_458Ferrari_yellow",1000],
			["cl3_carrera_gt_white",1000],
			["cl3_carrera_gt_purple",1000],
			["cl3_carrera_gt_navy_blue",1000],
			["cl3_carrera_gt_lime",1000],
			["cl3_carrera_gt_light_blue",1000],
			["cl3_carrera_gt_grey",1000],
			["cl3_carrera_gt_gold",1000],
			["cl3_carrera_gt_burgundy",1000],
			["cl3_carrera_gt_black",1000],
			["ivory_rs4",1000],
			["ivory_rs4_taxi",1000],
			["cl3_dbs_volante_white",1000],
			["cl3_dbs_volante_purple",1000],
			["cl3_dbs_volante_navy_blue",1000],
			["cl3_dbs_volante_lime",1000],
			["cl3_dbs_volante_light_yellow",1000],
			["cl3_dbs_volante_light_blue",1000],
			["cl3_dbs_volante_grey",1000],
			["cl3_dbs_volante_gold",1000],
			["cl3_dbs_volante_burgundy",1000],
			["cl3_dbs_volante_black",1000],
			["cl3_e63_amg_white",1000],
			["cl3_e63_amg_purple",1000],
			["cl3_e63_amg_navy_blue",1000],
			["cl3_e63_amg_lime",1000],
			["cl3_e63_amg_light_yellow",1000],
			["cl3_e63_amg_light_blue",1000],
			["cl3_e63_amg_grey",1000],
			["cl3_e63_amg_gold",1000],
			["cl3_e63_amg_burgundy",1000],
			["cl3_e63_amg_black",1000],
			["cl3_e60_m5_white",1000],
			["cl3_e60_m5_purple",1000],
			["cl3_e60_m5_navy_blue",1000],
			["cl3_e60_m5_lime",1000],
			["cl3_e60_m5_light_yellow",1000],
			["cl3_e60_m5_light_blue",1000],
			["cl3_e60_m5_grey",1000],
			["cl3_e60_m5_gold",1000],
			["cl3_e60_m5_burgundy",1000],
			["cl3_e60_m5_black",1000],
			["ivory_r34_tuned",1000],
			["ivory_m3_gts",1000],
			["ivory_elise_tuned",1000],
			["ivory_wrx_tuned",1000],
			["ivory_evox_tuned",1000],
			["ivory_lfa",1000],
			["ivory_c",1000],
			["ivory_lp560",1000],
			["ivory_f1",1000],
			["ivory_supra_topsecret",1000],
			["ivory_f1_tuned",1000],
			["Urbanized_LaFerrari_black",1000],
			["Urbanized_LaFerrari_white",1000],
			["Urbanized_LaFerrari_blue",1000],
			["Urbanized_LaFerrari_purple",1000],
			["Urbanized_LaFerrari_pink",1000],
			["Urbanized_LaFerrari_orange",1000],
			["Urbanized_LaFerrari_darkred",1000],
			["Urbanized_LaFerrari_hotpink",1000],
			["Urbanized_LaFerrari_yellow",1000],
			["Urbanized_LaFerrari_lime",1000],
			["Urbanized_LP700_black",1000],
			["Urbanized_LP700_white",1000],
			["Urbanized_LP700_blue",1000],
			["Urbanized_LP700_purple",1000],
			["Urbanized_LP700_pink",1000],
			["Urbanized_LP700_orange",1000],
			["Urbanized_LP700_yellow",1000],
			["Urbanized_LP700_lime",1000],
			["ivory_veyron",1000],
			
			//Gebrauchtwagen
			["Jonzie_Mini_Cooper",800],
			["cl3_suv_taxi",1000],
			["ivory_190e",1000],
			["ivory_190e_taxi",1000],
			["ivory_e36",1000],
			["ivory_r34",1000],
			["ivory_isf",1000],
			["S_Rangerover_Black",1000],
			["S_Rangerover_Red",1000],
			["S_Rangerover_Blue",1000],
			["S_Rangerover_Green",1000],
			["S_Rangerover_Purple",1000],
			["S_Rangerover_Grey",1000],
			["S_Rangerover_Orange",1000],
			["S_Rangerover_White",1000],
			["DAR_TahoeCivSilver",1000],
			["DAR_TahoeCivBlue",1000],
			["DAR_TahoeCivRed",1000],
			["DAR_TahoeCivBlack",1000],
			
			//Neuwagen
			["ivory_gti",1000],
			["ivory_evox",1000],
			["ivory_supra",1000],
			["ivory_wrx",1000],
			["Urbanized_CTSV_black",1000],
			["Urbanized_CTSV_white",1000],
			["Urbanized_CTSV_blue",1000],
			["Urbanized_CTSV_purple",1000],
			["Urbanized_CTSV_pink",1000],
			["Urbanized_CTSV_orange",1000],
			["Urbanized_CTSV_yellow",1000],
			["Urbanized_CTSV_lime",1000],
			["Urbanized_CTSV_chrome",1000],
			["cl3_z4_2008_white",1000],
			["cl3_z4_2008_purple",1000],
			["cl3_z4_2008_navy_blue",1000],
			["cl3_z4_2008_lime",1000],
			["cl3_z4_2008_light_yellow",1000],
			["cl3_z4_2008_light_blue",1000],
			["cl3_z4_2008_grey",1000],
			["cl3_z4_2008_burgundy",1000],
			["cl3_z4_2008_black",1000],
			["ivory_elise",1000],
			
			//Civ Air
			["Sab_af_An2",1000],
			["Sab_tk_An2",1000],
			["Sab_ca_An2",1000],
			["Sab_ana_An2",1000],
			["Sab_yel_An2",1000],
			["Sab_fd_An2",1000],
			["Sab_Sea2_An2",1000],
			["Sab_Sea4_An2",1000],
			["Sab_Amphi_An2",1000],
			["sab_camel",1000],
			["ivory_b206",1000],
			["ivory_b206_news",1000]
];
__CONST__(life_garage_sell,life_garage_sell);
