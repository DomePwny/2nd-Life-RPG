/*
	File: fn_pickaxeUse.sqf
	
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
if(harvesting) exitwith {};
harvesting = true;

switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = 2;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 4;};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 5;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 2;};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 2;};
	case (player distance (getMarkerPos "cotton_1") < 50): {_mine = "cotton"; _val = 2;};
	case (player distance (getMarkerPos "wheat_1") < 40): {_mine = "wheat"; _val = 2;};
	case (player distance (getMarkerPos "corn_1") < 40): {_mine = "corn"; _val = 3;};
	default {_mine = "";};
};



//Mine check
if(_mine == "") exitWith {harvesting = false;};

if ( life_inv_pickaxe < 1 ) exitwith { ["Du brauchst eine Spitzhacke!", false] spawn domsg; harvesting = false; };

player playactionnow "CL3_anim_GatheringIn1";
sleep 1.818;
player playactionnow "Cl3_anim_Gathering1";
sleep 4.761;

_chance = (floor random 4);
if(_chance > 2) exitwith { ["Der versuch ist fehlgeschlagen!", false] spawn doquickmsg; harvesting = false;harvesting = false; };


if(vehicle player != player) exitWith {[localize "STR_ISTR_Pick_MineVeh", false] spawn doquickmsg; harvesting = false;};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {[localize "STR_NOTF_InvFull", false] spawn doquickmsg; harvesting = false;};

if(speed player >= 1) exitWith {["Aufsammeln abgebrochen!", false] spawn domsg; _exit = true};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	[format[localize "STR_ISTR_Pick_Success",_itemName,_diff], false] spawn doquickmsg;
};

harvesting = false;