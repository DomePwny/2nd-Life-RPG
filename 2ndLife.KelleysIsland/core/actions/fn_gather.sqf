/*
	File: fn_gather.sqf
	Author: Arma 3 Life 
	
	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["weed_field","coke_zone","meth_zone","MDMA_zone","SHANK_zone"];
_zone = "";
_gather = "";
_val = 1;
_exit = false;
_toasters = false;
{
	if(player distance (getMarkerPos _x) < 15) exitWith {_zone = _x;};
} foreach _resourceZones;
/*if(_zone == "HH_1") exitWith {[] spawn life_fnc_hh};*/
if(life_spam_my_dick == 1) exitWith {};
if(vehicle player != player) exitWith {};
life_spam_my_dick = 1;

//Get the resource that will be gathered from the zone name...
if(!isNil "_this" && {count _this != 0}) then {
	if ( life_inv_pickaxe > 0 ) then {
		_gather = _this select 0;
		_val = _this select 1;

		player playactionnow "CL3_anim_GatheringIn1";
		sleep 1.818;
		player playactionnow "Cl3_anim_Gathering1";
		sleep 4.761;

		_toasters = true;
	} else {
		_exit = true;
		["Du brauchst eine Spitzhacke!", false] spawn domsg;
	};
} else {
	if(_zone == "") exitWith {_exit = true;};
	switch(true) do {
		case (_zone in ["coke_zone"]): {_gather = "cokeu"; _val = 1;};
		case (_zone in ["meth_zone"]): {_gather = "methu"; _val = 1;};
		case (_zone in ["MDMA_zone"]): {_gather = "MDMAu"; _val = 1;};
		case (_zone in ["weed_field"]): {_gather = "cannabis"; _val = 1;};
		case (_zone in ["SHANK_zone"]): {_gather = "shank"; _val = 1;}; // Gefängnisausbruch Item
		default {""};
	};
};
if(_exit) exitWith {life_spam_my_dick = 0;};
_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {["Dein Inventar ist voll!", false] spawn domsg; life_action_gathering = false; life_spam_my_dick = 0;};
if(!_toasters) then {
	for "_i" from 0 to 2 do
	{
		if(speed player >= 1) exitWith {["Aufsammeln abgebrochen!", false] spawn domsg; _exit = true};
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		uiSleep 2.5;
	};
};
if(_exit) exitWith {life_spam_my_dick = 0};
if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	[format[localize "STR_NOTF_Gather_Success",_itemName,_diff], false] spawn domsg;
};

life_spam_my_dick = 0;
