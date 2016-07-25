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
			["apple",-1,10,50],
			["peach",-1,30,100]
		],
		0.5
	],
	["Illegal", 
		[
			/*["peach",1,30,100]*/
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
