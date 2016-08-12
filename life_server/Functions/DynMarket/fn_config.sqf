/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 04;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 03;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = true; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Your prices have been updated!",
	"The new prices are being calculated by the server..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████

DYNMARKET_Items_Groups =
[
	["Legal",
		[
			["glass",-1,110,525],
			["cotton",-1,10,88],
			["raw_meat",-1,200,310]
		],
		0.5
	],
	["Illegal", 
		[
			["heroinp",-1,200,710],
			["MDMAp",-1,325,852]
		],
		0.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        = 
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
	["raw_meat",550],
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
        ["cannabis",400],
        ["pumpkin",120],
        ["raw_meat",580],
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

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
