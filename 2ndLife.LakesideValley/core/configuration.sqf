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
life_gopro = false;
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
life_taxi = false;
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
SecondLife_version = "SecondLifeModVersion0001a";
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
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_medcanna",
	"life_inv_medmarijuana",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
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
	"life_inv_raxsrum"	
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
	["MDMAp",1250],
	["medmarijuana",655],
	["emerald",1020],
	["sapphire",1020],
	["ruby",1070],
	["methp",2300],
	["cokep",3000],
	["apple",1],
	["heroinp",2600],
	["salema",90],
	["ornate",90],
	["mackerel",65],
	["tuna",131],
	["mullet",65],
	["catshark",100],
	["marijuana",1100],
	["turtle",900],
	["rabbit",1],
	["oilp",1800],
	["water",1],
	["coffee",1],
	["bandage",1],
	["airkit",1],
	["tierope",50],
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
	["diamondc",2200],
	["iron_r",500],
	["copper_r",650],
	["salt_r",165],
	["glass",100],
	["fuelF",50],
	["wheat",25],
	["sunflower",50],
	["corn",90],
	["bean",80],
	["cotton",20],
	["olive",277],
	["opium",100],
	["pumpkin",110],
	["wheat seed",1],
	["sunflower seed",1],
	["corn seed",1],
	["bean seed",1],
	["cotton seed",1],
	["olive seed",1],
	["opium seed",15],
	["cannabis seed",15],
	["pumpkin seed",5],
	["Raw Meat",550],
	["raw chicken",70],
	["raw sheep meat",50],
	["raw rabbit",70],
	["spikeStrip",12],
	["cement",550],
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
	["Rax's Rum",1]
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
        ["turtle",700],
        ["water",1],
        ["turtlesoup",250],
        ["donuts",12],
        ["coffee",1],
        ["tbacon",7],
        ["lockpick",1500],
        ["pickaxe",120],
        ["redgull",12],
        ["fuelF",85],
        ["wheat",150],
        ["sunflower",160],
        ["corn",180],
        ["bean",80],
        ["cotton",50],
        ["olive",277],
        ["opium",400],
        ["cannabis",400],
        ["pumpkin",120],
        ["wheat seed",2],
        ["sunflower seed",2],
        ["corn seed",2],
        ["bean seed",2],
        ["cotton seed",2],
        ["olive seed",2],
        ["opium seed",25],
        ["cannabis seed",25],
        ["pumpkin seed",10],
        ["Raw Meat",580],
        ["raw chicken",80],
        ["raw sheep meat",60],
        ["raw rabbit",80],
        ["peach",6],
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
        ["Rax's Rum",5]
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
			//Medic Cars
			["ivory_wrx",0],
			["A3L_CVPILBFD",0],
			["DAR_TahoeEMS",0],
			["AM_Holden_EMS",0],
			["ivory_b206_rescue",0],
			["IVORY_BELL512_RESCUE",0],
			["ems_chopper",0],
			["ems_chopper2",0],
			["ems_orca",0],
			["ems_orca2",0],
			["O_Heli_Transport_04_medevac_F",0],
			["2ndLife_EMS_Boat",0],
			["A3L_Laddertruck",0],
			["Jonzie_Ambulance",0],
			["sndlife_taur_ems",0],
			["sndlife_evo_ems1",0],
			["sndlife_evo_ems2",0],
			["sndlife_evo_ems3",0],
			
			//Police Cars
			["DAR_ExplorerPolice",0],
			["charger_pd",0],
			["charger_pd_skinned",0],
			["A3L_SuburbanCSO",0],
			["DAR_ExplorerSheriff",0],
			["charger_sh",0],
			["charger_sh_skinned",0],			
			["charger_sert",0],
			["AM_Holden_UM",0],			
			["AM_Holden_SO",0],		
			["A3L_CVPIUC",0],
			["A3L_CVPIUCBlack",0],
			["A3L_CVPIUCBlue",0],
			["A3L_CVPIUCWhite",0],
			["A3L_CVPIUCPink",0],
			["A3L_CVPIUCRed",0],		
			["A3L_GrandCaravanUC",0],
			["A3L_GrandCaravanUCBlack",0],
			["DAR_TahoePoliceDet",0],
			["DAR_ExplorerPoliceStealth",0],
			["A3L_SuburbanUM",0],						
			["AM_Holden_Police",0],			
			["A3L_jailBus",0],		
  			["A3L_ChargerUC",0],
			["A3L_ChargerUCWhite",0],			
			["A3L_TaurusUC",0],
			["A3L_TaurusUCBlue",0],
			["A3L_TaurusUCGrey",0],
			["A3L_TaurusUCRed",0],
			["A3L_TaurusUCWhite",0],
			["ivory_rev_sheriff",0],
			["ivory_rev_police",0],
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
			["B_Heli_Light_01_F",0],
			["C_Heli_Light_01_civil_F",0],
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
			["A3L_Ship",200000],
			["A3L_Jetski",25000],
			["A3L_Jetski_yellow",0],
			
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
			["IVORY_T6A_1",0],
			["ivory_b206",0],
			["ivory_b206_news",0],
			["CUP_C_DC3_CIV",0],
			["CUP_C_C47_CIV",0],			
			["GNT_C185",0],
			["IVORY_CRJ200_1",0],
			["IVORY_ERJ135_1",0],
			["IVORY_YAK42D_1",0],
			
			//Civ Truck
			["A3L_F350Black",0],
			["A3L_F350Blue",0],
			["A3L_F350Red",0],
			["A3L_F350White",0],
			["Jonzie_Transit",0],
			["A3L_Bus",65000],
			["Jonzie_Flat_Bed",0],
			["Jonzie_Log_Truck",0],
			["Jonzie_Box_Truck",0],
			["Jonzie_Tanker_Truck",0],
			["Nhz_audia8limo",0],
			["wirk_h3_limo",0],
			["A3L_Towtruck",0],
			
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
			["ivory_m3",0],
			["ivory_m3_gts",0],
			["ivory_lfa",0],
			["ivory_lfa_sport1",0],
			["ivory_lfa_sport2",0],
			["ivory_lfa_sport3",0],
			["ivory_lfa_sport4",0],
			["ivory_lfa_sport5",0],
			["ivory_lp560",0],
			["ivory_c",0],
			["ivory_c_livery1",0],
			["ivory_c_livery2",0],
			["ivory_c_livery3",0],
			["ivory_c_livery4",0],
			["cl3_458_white",0],
			["cl3_458_purple",0],
			["cl3_458_navy_blue",0],
			["cl3_458_lime",0],
			["cl3_458_light_yellow",0],
			["cl3_458_light_blue",0],
			["cl3_458_grey",0],
			["cl3_458_gold",0],
			["cl3_458_burgundy",0],
			["cl3_458_black",0],
			["cl3_carrera_gt_white",0],
			["cl3_carrera_gt_purple",0],
			["cl3_carrera_gt_navy_blue",0],
			["cl3_carrera_gt_lime",0],
			["cl3_carrera_gt_light_blue",0],
			["cl3_carrera_gt_grey",0],
			["cl3_carrera_gt_gold",0],
			["cl3_carrera_gt_burgundy",0],
			["cl3_carrera_gt_black",0],
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
			["ivory_gt500",0],
			["ivory_isf",0],
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
			["cl3_veyron_blk_wht",0],
			["cl3_veyron_lblue_dblue",0],
			["cl3_veyron_lblue_lblue",0],
			["cl3_veyron_brn_blk",0],
			
			//Gebrauchtwagen
			["Jonzie_Mini_Cooper",0],
			["cl3_suv_taxi",0],
			["A3L_RegalBlack",0],
			["A3L_RegalBlue",0],
			["A3L_RegalOrange",0],
			["A3L_RegalRed",0],
			["A3L_RegalWhite",0],
			["A3L_JeepWhiteBlack",0],
			["A3L_JeepGreenBlack",0],
			["A3L_JeepRedTan",0],
			["A3L_JeepRedBlack",0],
			["A3L_JeepGrayBlack",0],
			["A3L_VolksWagenGolfGTired",0],
			["A3L_VolksWagenGolfGTiblack",0],
			["A3L_VolksWagenGolfGTiblue",0],
			["A3L_VolksWagenGolfGTiwhite",0],
			["S_Rangerover_Black",0],
			["S_Rangerover_Red",0],
			["S_Rangerover_Blue",0],
			["S_Rangerover_Green",0],
			["S_Rangerover_Purple",0],
			["S_Rangerover_Grey",0],
			["S_Rangerover_Orange",0],
			["S_Rangerover_White",0],
			["A3L_GrandCaravan",0],
			["A3L_GrandCaravanBlk",0],
			["A3L_GrandCaravanBlue",0],
			["A3L_GrandCaravanGreen",0],
			["A3L_GrandCaravanRed",0],
			["A3L_GrandCaravanPurple",0],
			["A3L_Challenger",0],
			["A3L_ChallengerGreen",0],
			["A3L_ChallengerRed",0],
			["A3L_ChallengerWhite",0],
			["A3L_ChallengerBlack",0],
			["A3L_ChallengerBlue",0],
			["A3L_FordKaBlue",0],
			["A3L_FordKaRed",0],
			["A3L_FordKaBlack",0],
			["A3L_FordKaWhite",0],
			["A3L_FordKaGrey",0],
			["A3L_CVWhite",0],
			["A3L_CVBlack",0],
			["A3L_CVGrey",0],
			["A3L_CVRed",0],
			["A3L_CVPink",0],
			["A3L_CVBlue",0],
			["A3L_Taurus",0],
			["A3L_TaurusBlack",0],
			["A3L_TaurusBlue",0],
			["A3L_TaurusRed",0],
			["A3L_TaurusWhite",0],
			["DAR_TahoeCivSilver",0],
			["DAR_TahoeCivBlue",0],
			["DAR_TahoeCivRed",0],
			["DAR_TahoeCivBlack",0],
			["A3L_SuburbanWhite",0],
			["A3L_SuburbanBlue",0],
			["A3L_SuburbanRed",0],
			["A3L_SuburbanBlack",0],
			["A3L_SuburbanGrey",0],
			["A3L_SuburbanOrange",0],
			["A3L_Cooper_concept_blue",0],
			["A3L_Cooper_concept_black",0],
			["A3L_Cooper_concept_red",0],
			["A3L_Cooper_concept_white",0],
			["A3L_RX7_Blue",0],
			["A3L_RX7_Red",0],
			["A3L_RX7_White",0],
			["A3L_RX7_Black",0],
			["A3L_AMC",0],
			["A3L_AMXRed",0],
			["A3L_AMXWhite",0],
			["A3L_AMXBlue",0],
			["A3L_AMXGL",0],
			["S_Skyline_Red",0],
			["S_Skyline_Blue",0],
			["S_Skyline_Black",0],
			["S_Skyline_Yellow",0],
			["S_Skyline_Purple",0],
			["S_Skyline_White",0],
			
			//Neuwagen
			["cl3_z4_2008_white",0],
			["cl3_z4_2008_purple",0],
			["cl3_z4_2008_navy_blue",0],
			["cl3_z4_2008_lime",0],
			["cl3_z4_2008_light_yellow",0],
			["cl3_z4_2008_light_blue",0],
			["cl3_z4_2008_grey",0],
			["cl3_z4_2008_burgundy",0],
			["cl3_z4_2008_black",0],
			["A3L_Charger",0],
			["A3L_ChargerBlack",0],
			["A3L_ChargerBlue",0],
			["A3L_ChargerWhite",0],
			["A3L_ChargerRed",0],
			["AM_2015C_Black",0],
			["AM_2015C_blue",0],
			["AM_2015C_white",0],
			["A3L_EvoXDarkGreen",0],
			["A3L_OffGreen",0],
			["A3L_EvoXOffYellow",0],
			["A3L_EvoXYellow",0],
			["A3L_EvoXPink",0],
			["A3L_EvoXPurple",0],
			["A3L_EvoXWhite",0],
			["A3L_EvoXBlack",0],
			["A3L_EvoXRed",0],
			["A3L_EvoXrally_green",0],
			["A3L_EvoXrally_white",0],
			["A3L_EvoXrally_red",0],
			["A3L_EvoXrally_blue",0],
			["ivory_supra",0],
			["ivory_supra_tuned",0],
			
			//Civ Air
			["Sab_af_An2",25000],
			["Sab_tk_An2",25000],
			["Sab_ca_An2",25000],
			["Sab_ana_An2",25000],
			["Sab_yel_An2",25000],
			["Sab_fd_An2",25000],
			["Sab_Sea2_An2",25000],
			["Sab_Sea4_An2",25000],
			["Sab_Amphi_An2",25000],
			["sab_camel",25000],
			["IVORY_T6A_1",25000],
			["C_Heli_Light_01_civil_F",2500],
			["ivory_b206",25000],
			["ivory_b206_news",25000],
			["CUP_C_DC3_CIV",25000],
			["CUP_C_C47_CIV",25000],			
			["GNT_C185",25000],
			["IVORY_CRJ200_1",25000],
			["IVORY_ERJ135_1",25000],
			["IVORY_YAK42D_1",25000],
			
			//Civ Ship
			["C_Rubberboat",0],
			["CUP_B_Zodiac_USMC",0],
			["C_Boat_Civil_01_F",0],
			["CUP_C_Fishing_Boat_Chernarus",0],
			["A3L_Ship",0],
			["A3L_Jetski",0],
			["A3L_Jetski_yellow",0],
			
			//Med Ship
			["2ndLife_EMS_Boat",0],
			
			//Med Air
			["ivory_b206_rescue",0],
			["IVORY_BELL512_RESCUE",0],
			["ems_chopper",0],
			["ems_chopper2",0],
			["ems_orca",0],
			["ems_orca2",0],
			["O_Heli_Transport_04_medevac_F", 0],
			
			//Cop Air
			["B_Heli_Light_01_F",0],
			["C_Heli_Light_01_civil_F",0],
			["melb_h6m",0],
			
			//Cop Ship
			["B_Boat_Transport_01_F",0],
			["C_Boat_Civil_01_police_F",0],
			["B_SDV_01_F",0]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
			//Medic Cars
			["A3L_CVPILBFD",11500],
			["DAR_TahoeEMS",11250],
			["AM_Holden_EMS",12500],
			["ivory_b206_rescue",32500],
			["IVORY_BELL512_RESCUE",42500],
			["ems_chopper",45000],
			["ems_chopper2",45000],
			["ems_orca",60000],
			["ems_orca2",60000],
			["O_Heli_Transport_04_medevac_F", 60000],
			["2ndLife_EMS_Boat",6250],
			["A3L_Laddertruck",40000],
			["Jonzie_Ambulance",12750],
			["sndlife_taur_ems",2250],
			["sndlife_evo_ems1",3250],
			["sndlife_evo_ems2",3250],
			["sndlife_evo_ems3",3250],
			
			//Police Cars
			["DAR_ExplorerPolice",20000],
			["A3L_SuburbanCSO",20000],
			["DAR_ExplorerSheriff",20000],
			["charger_sert",20000],
			["AM_Holden_UM",20000],			
			["AM_Holden_SO",20000],		
			["A3L_CVPIUC",10000],
			["A3L_CVPIUCBlack",10000],
			["A3L_CVPIUCBlue",10000],
			["A3L_CVPIUCWhite",10000],
			["A3L_CVPIUCPink",10000],
			["A3L_CVPIUCRed",10000],		
			["A3L_GrandCaravanUC",15000],
			["A3L_GrandCaravanUCBlack",15000],
			["DAR_TahoePoliceDet",15000],
			["A3L_SuburbanUM",20000],						
			["AM_Holden_Police",20000],			
			["A3L_jailBus",25000],		
  			["A3L_ChargerUC",35000],
			["A3L_ChargerUCWhite",35000],			
			["A3L_TaurusUC",15000],
			["A3L_TaurusUCBlue",15000],
			["A3L_TaurusUCGrey",15000],
			["A3L_TaurusUCRed",15000],
			["A3L_TaurusUCWhite",15000],
			["ivory_rev_sheriff",47500],
			["ivory_rev_police",47500],
			["ivory_rev_fbi",5000],
			["ivory_rev_fbi2",5000],
			["ivory_rev_fbi3",5000],
			["ivory_rev_fbi4",5000],
			["ivory_rev_fbi5",5000],
			["ivory_rev_fbi6",5000],
			["ivory_rev_fbi7",5000],
			["ivory_rev_fbi8",5000],
			["ivory_rev_fbi9",5000],
			["ivory_rev_fbi10",5000],
			["ivory_rev_fbi11",5000],
			["B_Heli_Light_01_F",22500],
			["C_Heli_Light_01_civil_F",22500],
			["melb_h6m",42500],
			["B_Heli_Light_01_F",22500],
			["C_Heli_Light_01_civil_F",22500],
			["B_Boat_Transport_01_F",1500],
			["C_Boat_Civil_01_police_F",10000],
			["B_SDV_01_F",50000],
			["sndlife_taur_pd",2250],
			["sndlife_taur_sf",2250],
			["sndlife_taur_ml",2250],
			["sndlife_cvpi_pd",2750],
			["sndlife_cvpi_sf",2750],
			["sndlife_cvpi_ml",2750],
			["sndlife_evo_pd",3250],
			["sndlife_evo_sf",3250],
			["sndlife_evo_ml",3250],
			
			//Motorräder
			["tcg_hrly",2500],
			["tcg_hrly_white",2500],	
			["tcg_hrly_red",2500],
			["tcg_hrly_metal",2500],
			["tcg_hrly_blue",2500],
			["tcg_hrly_limited",2500],
			["tcg_hrly_demon",2500],
			["tcg_hrly_coco",2500],
			["tcg_hrly_orig1",2500],
			["tcg_hrly_orig2",2500],
			["tcg_hrly_skeleton",2500],
			["tcg_hrly_gay",2500],
			["cl3_enduro_yellow",4000],
			["cl3_enduro_black",4000],
			["cl3_enduro_blue",4000],
			["cl3_enduro_aqua",4000],
			["cl3_enduro_babypink",4000],
			["cl3_enduro_red",4000],
			["cl3_enduro_dark_green",4000],
			["cl3_chopper_blue",2500],
			["cl3_chopper_green",2500],
			["cl3_chopper_red",2500],
			["cl3_xr_1000_yellow",7000],
			["cl3_xr_1000_black",7000],
			["cl3_xr_1000_babypink",7000],
			["cl3_xr_1000_red",7000],
			["cl3_xr_1000_lime",7000],
			["cl3_xr_1000_flame",7000],	

			//Civ Ship
			["C_Rubberboat",10000],
			["CUP_B_Zodiac_USMC",20000],
			["C_Boat_Civil_01_F",62500],
			["CUP_C_Fishing_Boat_Chernarus",75000],
			["A3L_Ship",200000],
			["A3L_Jetski",25000],
			["A3L_Jetski_yellow",25000],
			
			//Civ Truck
			["A3L_F350Black",3500],
			["A3L_F350Blue",3500],
			["A3L_F350Red",3500],
			["A3L_F350White",3500],
			["Jonzie_Transit",12500],
			["A3L_Bus",65000],
			["Jonzie_Flat_Bed",129500],
			["Jonzie_Log_Truck",129500],
			["Jonzie_Box_Truck",187500],
			["Jonzie_Tanker_Truck",187500],
			["Nhz_audia8limo",165000],
			["wirk_h3_limo",600000],
			["A3L_Towtruck",20000],
			
			//Sportwagen
			["cl3_murcielago_white",112500],
			["cl3_murcielago_purple",112500],
			["cl3_murcielago_navy_blue",112500],
			["cl3_murcielago_lime",112500],
			["cl3_murcielago_light_yellow",112500],
			["cl3_murcielago_light_blue",112500],
			["cl3_murcielago_grey",112500],
			["cl3_murcielago_gold",112500],
			["cl3_murcielago_burgundy",112500],
			["cl3_murcielago_black",112500],
			["cl3_lamborghini_gt1_white",131000],
			["cl3_lamborghini_gt1_purple",131000],
			["cl3_lamborghini_gt1_navy_blue",131000],
			["cl3_lamborghini_gt1_lime",131000],
			["cl3_lamborghini_gt1_light_yellow",131000],
			["cl3_lamborghini_gt1_light_blue",131000],
			["cl3_lamborghini_gt1_grey",131000],
			["cl3_lamborghini_gt1_gold",131000],
			["cl3_lamborghini_gt1_burgundy",131000],
			["cl3_lamborghini_gt1_black",131000],
			["ivory_rev_black",125000],
			["ivory_rev_blue",125000],
			["ivory_rev_lime",125000],
			["ivory_rev_pink",125000],
			["ivory_rev_rot",125000],
			["ivory_rev_turkis",125000],
			["ivory_rev_orange",125000],
			["ivory_rev_sport1",125000],
			["ivory_rev_sport2",125000],
			["ivory_rev_sport3",125000],
			["ivory_rev_sport4",125000],
			["IVORY_R8",92500],
			["IVORY_R8SPYDER",92500],
			["ivory_m3",62500],
			["ivory_m3_gts",77500],
			["ivory_lfa",162500],
			["ivory_lfa_sport1",162500],
			["ivory_lfa_sport2",162500],
			["ivory_lfa_sport3",162500],
			["ivory_lfa_sport4",162500],
			["ivory_lfa_sport5",162500],
			["ivory_lp560",172500],
			["ivory_c",55000],
			["ivory_c_livery1",55000],
			["ivory_c_livery2",55000],
			["ivory_c_livery3",55000],
			["ivory_c_livery4",55000],
			["cl3_458_white",116000],
			["cl3_458_purple",116000],
			["cl3_458_navy_blue",116000],
			["cl3_458_lime",116000],
			["cl3_458_light_yellow",116000],
			["cl3_458_light_blue",116000],
			["cl3_458_grey",116000],
			["cl3_458_gold",116000],
			["cl3_458_burgundy",116000],
			["cl3_458_black",116000],
			["cl3_carrera_gt_white",82000],
			["cl3_carrera_gt_purple",82000],
			["cl3_carrera_gt_navy_blue",82000],
			["cl3_carrera_gt_lime",82000],
			["cl3_carrera_gt_light_blue",82000],
			["cl3_carrera_gt_grey",82000],
			["cl3_carrera_gt_gold",82000],
			["cl3_carrera_gt_burgundy",82000],
			["cl3_carrera_gt_black",82000],
			["cl3_dbs_volante_white",96500],
			["cl3_dbs_volante_purple",96500],
			["cl3_dbs_volante_navy_blue",96500],
			["cl3_dbs_volante_lime",96500],
			["cl3_dbs_volante_light_yellow",96500],
			["cl3_dbs_volante_light_blue",96500],
			["cl3_dbs_volante_grey",96500],
			["cl3_dbs_volante_gold",96500],
			["cl3_dbs_volante_burgundy",96500],
			["cl3_dbs_volante_black",96500],
			["ivory_gt500",71500],
			["ivory_wrx",3000],
			["ivory_isf",86500],
			["cl3_e63_amg_white",60000],
			["cl3_e63_amg_purple",60000],
			["cl3_e63_amg_navy_blue",60000],
			["cl3_e63_amg_lime",60000],
			["cl3_e63_amg_light_yellow",60000],
			["cl3_e63_amg_light_blue",60000],
			["cl3_e63_amg_grey",60000],
			["cl3_e63_amg_gold",60000],
			["cl3_e63_amg_burgundy",60000],
			["cl3_e63_amg_black",60000],
			["cl3_e60_m5_white",73000],
			["cl3_e60_m5_purple",73000],
			["cl3_e60_m5_navy_blue",73000],
			["cl3_e60_m5_lime",73000],
			["cl3_e60_m5_light_yellow",73000],
			["cl3_e60_m5_light_blue",73000],
			["cl3_e60_m5_grey",73000],
			["cl3_e60_m5_gold",73000],
			["cl3_e60_m5_burgundy",73000],
			["cl3_e60_m5_black",73000],
			["cl3_veyron_blk_wht",562500],
			["cl3_veyron_lblue_dblue",562500],
			["cl3_veyron_lblue_lblue",562500],
			["cl3_veyron_brn_blk",562500],
			
			//Gebrauchtwagen
			["Jonzie_Mini_Cooper",800],
			["cl3_suv_taxi",1000],
			["A3L_RegalBlack",1200],
			["A3L_RegalBlue",1200],
			["A3L_RegalOrange",1200],
			["A3L_RegalRed",1200],
			["A3L_RegalWhite",1200],
			["A3L_VolksWagenGolfGTired",2600],
			["A3L_VolksWagenGolfGTiblack",2600],
			["A3L_VolksWagenGolfGTiblue",2600],
			["A3L_VolksWagenGolfGTiwhite",2600],
			["S_Rangerover_Black",3500],
			["S_Rangerover_Red",3500],
			["S_Rangerover_Blue",3500],
			["S_Rangerover_Green",3500],
			["S_Rangerover_Purple",3500],
			["S_Rangerover_Grey",3500],
			["S_Rangerover_Orange",3500],
			["S_Rangerover_White",3500],
			["A3L_GrandCaravan",3000],
			["A3L_GrandCaravanBlk",3000],
			["A3L_GrandCaravanBlue",3000],
			["A3L_GrandCaravanGreen",3000],
			["A3L_GrandCaravanRed",3000],
			["A3L_GrandCaravanPurple",3000],
			["A3L_Challenger",4500],
			["A3L_ChallengerGreen",4500],
			["A3L_ChallengerRed",4500],
			["A3L_ChallengerWhite",4500],
			["A3L_ChallengerBlack",4500],
			["A3L_ChallengerBlue",4500],
			["A3L_FordKaBlue",2000],
			["A3L_FordKaRed",2000],
			["A3L_FordKaBlack",2000],
			["A3L_FordKaWhite",2000],
			["A3L_FordKaGrey",2000],
			["A3L_CVWhite",3000],
			["A3L_CVBlack",3000],
			["A3L_CVGrey",3000],
			["A3L_CVRed",3000],
			["A3L_CVPink",3000],
			["A3L_CVBlue",3000],
			["A3L_Taurus",4000],
			["A3L_TaurusBlack",4000],
			["A3L_TaurusBlue",4000],
			["A3L_TaurusRed",4000],
			["A3L_TaurusWhite",4000],
			["DAR_TahoeCivSilver",4000],
			["DAR_TahoeCivBlue",4000],
			["DAR_TahoeCivRed",4000],
			["DAR_TahoeCivBlack",4000],
			["A3L_SuburbanWhite",9000],
			["A3L_SuburbanBlue",9000],
			["A3L_SuburbanRed",9000],
			["A3L_SuburbanBlack",9000],
			["A3L_SuburbanGrey",9000],
			["A3L_SuburbanOrange",9000],
			["A3L_Cooper_concept_blue",2500],
			["A3L_Cooper_concept_black",2500],
			["A3L_Cooper_concept_red",2500],
			["A3L_Cooper_concept_white",2500],
			["A3L_RX7_Blue",5000],
			["A3L_RX7_Red",5000],
			["A3L_RX7_White",5000],
			["A3L_RX7_Black",5000],
			["A3L_AMC",3000],
			["A3L_AMXRed",3000],
			["A3L_AMXWhite",3000],
			["A3L_AMXBlue",3000],
			["A3L_AMXGL",3500],
			["S_Skyline_Red",4500],
			["S_Skyline_Blue",4500],
			["S_Skyline_Black",4500],
			["S_Skyline_Yellow",4500],
			["S_Skyline_Purple",4500],
			["S_Skyline_White",4500],
			
			//Neuwagen
			["cl3_z4_2008_white",18750],
			["cl3_z4_2008_purple",18750],
			["cl3_z4_2008_navy_blue",18750],
			["cl3_z4_2008_lime",18750],
			["cl3_z4_2008_light_yellow",18750],
			["cl3_z4_2008_light_blue",18750],
			["cl3_z4_2008_grey",18750],
			["cl3_z4_2008_burgundy",18750],
			["cl3_z4_2008_black",18750],
			["A3L_Charger",5000],
			["A3L_ChargerBlack",5000],
			["A3L_ChargerBlue",5000],
			["A3L_ChargerWhite",5000],
			["A3L_ChargerRed",5000],
			["AM_2015C_Black",7000],
			["AM_2015C_blue",7000],
			["AM_2015C_white",7000],
			["A3L_EvoXDarkGreen",7500],
			["A3L_OffGreen",7500],
			["A3L_EvoXOffYellow",7500],
			["A3L_EvoXYellow",7500],
			["A3L_EvoXPink",7500],
			["A3L_EvoXPurple",7500],
			["A3L_EvoXWhite",7500],
			["A3L_EvoXBlack",7500],
			["A3L_EvoXRed",7500],
			["A3L_EvoXrally_green",8500],
			["A3L_EvoXrally_white",8500],
			["A3L_EvoXrally_red",8500],
			["A3L_EvoXrally_blue",8500],
			["ivory_supra",17100],
			["ivory_supra_tuned",37000],
			
			//Civ Air
			["Sab_af_An2",15000],
			["Sab_tk_An2",15000],
			["Sab_ca_An2",15000],
			["Sab_ana_An2",15000],
			["Sab_yel_An2",15000],
			["Sab_fd_An2",15000],
			["Sab_Sea2_An2",15000],
			["Sab_Sea4_An2",15000],
			["Sab_Amphi_An2",15000],
			["sab_camel",15000],
			["IVORY_T6A_1",15000],
			["C_Heli_Light_01_civil_F",17500],
			["ivory_b206",17500],
			["ivory_b206_news",20000],
			["CUP_C_DC3_CIV",40000],
			["CUP_C_C47_CIV",50000],			
			["GNT_C185",50000],
			["IVORY_CRJ200_1",50000],
			["IVORY_ERJ135_1",50000],
			["IVORY_YAK42D_1",50000],
			
			//Civ Ship
			["C_Rubberboat",1000],
			["CUP_B_Zodiac_USMC",2000],
			["C_Boat_Civil_01_F",6250],
			["CUP_C_Fishing_Boat_Chernarus",7500],
			["A3L_Ship",2000],
			["A3L_Jetski",2500],
			["A3L_Jetski_yellow",2500],
			
			//Med Ship
			["2ndLife_EMS_Boat",6250],
			
			//Med Air
			["ivory_b206_rescue",3250],
			["IVORY_BELL512_RESCUE",4250],
			["ems_chopper",4750],
			["ems_chopper2",4750],
			["ems_orca",6000],
			["ems_orca2",6000],
			["O_Heli_Transport_04_medevac_F", 6000],
			
			//Cop Air
			["B_Heli_Light_01_F",2250],
			["C_Heli_Light_01_civil_F",2250],
			["melb_h6m",400],
			
			//Cop Ship
			["B_Boat_Transport_01_F",150],
			["C_Boat_Civil_01_police_F",1000],
			["B_SDV_01_F",500]
];
__CONST__(life_garage_sell,life_garage_sell);
