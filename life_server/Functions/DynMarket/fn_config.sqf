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
	["medschere"],
	["weddingring"],
	["genitalcreme"],
	["tabletten"],
	["antibiotika"],
	["bec"],
	["medkit"],
	["cleankit"],
	["mobilephone"],
	["panicbutton"],
	["MDMAp"],
	["medmarijuana"],
	["emerald"],
	["sapphire"],
	["ruby"],
	["methp"],
	["cokep"],
	["apple"],
	["heroinp"],
	["salema"],
	["ornate"],
	["mackerel"],
	["tuna"],
	["mullet"],
	["catshark"],
	["marijuana"],
	["turtle"],
	["rabbit"],
	["oilp"],
	["water"],
	["coffee"],
	["bandage"],
	["airkit"],
	["tierope"],
	["stitches"],
	["splint"],
	["epipen"],
	["turtlesoup"],
	["donuts"],
	["tbacon"],
	["lockpick"],
	["pickaxe"],
	["redgull"],
	["peach"],
	["diamondc"],
	["iron_r"],
	["copper_r"],
	["salt_r"],
	["glass"],
	["fuelF"],
	["wheat"],
	["sunflower"],
	["corn"],
	["bean"],
	["cotton"],
	["olive"],
	["opium"],
	["pumpkin"],
	["raw_meat"],
	["spikeStrip"],
	["cement"],
	["goldbar"], 
	["zoobeer"], 
	["zoobeer2"],
	["vodka"],
	["jackdaniels"],
	["jagerbomb"],
	["absinthe"],
	["redwine"],
	["whitewine"],
	["whiterussian"],
	["sexonthebeach"],
	["tequila"],
	["jackdanielsandcoke"],
	["condom"],
	["nos"],
	["BarGate"],
	["RoadBlockConc"],
	["RoadBlockWood"],
	["RoadCone"],
	["RoadConeStrip"],
	["RoadConeB"],
	["RoadConeStripB"],
	["cigarette"],
	["Rax's Rum"]
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
