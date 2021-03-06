/*
	File: fn_itemWeight.sqf
	
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = param [0,"",[""]];
if(_item == "") exitWith {};

switch (_item) do
{
	case "emerald": {4};
	case "sapphire": {4};
	case "ruby": {4};
	case "nos": {10};
	case "medcanna": {4};
	case "medmarijuana": {3};
	case "tierope": {10};
	case "cleankit": {1};
	case "airkit": {0.1};
	case "bandage": {0.1};
	case "tabletten": {0.1};
	case "antibiotika": {0.1};
	case "genitalcreme": {0.1};
	case "stitches": {0.1};
	case "condom": {0.5};
	case "splint": {2};
	case "epipen": {1};
	case "medkit": {1};
	case "mobilephone": {1};
	case "panicbutton": {1};
	case "bec": {2};
	case "methu": {6};
	case "methp": {4};
	case "cokeu": {6};
	case "cokep": {4};
	case "MDMAu": {5};
	case "MDMAp": {4};
	case "oilu": {6};
	case "oilp": {5};
	case "heroinu": {6};
	case "heroinp": {4};
	case "marijuana": {2};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {3};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {4};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {1};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {0.5};
	case "diamond": {7};
	case "diamondc": {5};
	case "spikeStrip": {5};
	case "rock": {4};
	case "cement": {2};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "hackingtool": {15};
	case "boltcutter": {15};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "wheat": {1};
	case "sunflower": {2};
	case "corn": {2};
	case "bean": {1};
	case "cotton": {1};
	case "olive": {1};
	case "opium": {2};
	case "cannabis": {5};
	case "pumpkin": {2};
	case "wheat seed": {0.5};
	case "sunflower seed": {0.5};
	case "corn seed": {0.5};
	case "bean seed": {0.5};
	case "cotton seed": {0.5};
	case "olive seed": {0.5};
	case "opium seed": {0.5};
	case "cannabis seed": {0.5};
	case "pumpkin seed": {0.5};
	case "Raw Meat": {2};
	case "raw chicken": {2.5};
	case "raw sheep meat": {2};
	case "raw rabbit": {2.5};
	case "cigarette": {10};
	case "RoadConeStripB": {5};
	case "RoadConeB": {2};
	case "RoadConeStrip": {5};
	case "RoadCone": {2};
	case "RoadBlockWood": {5};
	case "RoadBlockConc": {5};
	case "RoadBlockRebel": {26};
	case "BarGate": {23};
	case "rumrax" : {1};
	case "zoobeer": {1}; // Duff Beer
	case "zoobeer2": {1}; // Duff Beer
	case "vodka": {1};
	case "jackdaniels": {1};
	case "vodka": {1};
	case "jagerbomb": {1};
	case "absinthe": {1};
	case "redwine": {1};
	case "whitewine": {1};
	case "whiterussian": {1};
	case "sexonthebeach": {1};
	case "tequila": {1};
	case "jackdanielsandcoke": {1};
	case "bombfish": {5};
	case "meatfish": {1};
	case "fish": {2};
	case "meat": {1};
	case "wood": {2};

	default {1};
};
