#include macro.h

/*
	File: fn_initCiv.sqf
	
	
	Description:
	Initializes the civilian.
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;

private["_spawnPos"];


if(life_is_arrested) then
{
	jail_money_init = false;
	[false,false,life_arrestMinutes,life_arrestReason] call life_fnc_jailSetup;
} else {
	jail_money_init = true;


	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};


if(side player == civilian) then {
	[] spawn fnc_resetCallSpawn;
	[] call fnc_checkphone;
};

player setUnitRecoilCoefficient 2.8;
player addRating 9999999;
if((__GETC__(life_mafialevel) == 1) && (__GETC__(life_adminlevel) == 0)) then {
	disableUserInput true;
	titleText ["***DU BIST ALS MAFIA GEWHITELISTET***","BLACK_IN"];
	hint "***DU BIST ALS MAFIA GEWHITELISTET***"; 
	systemChat "***DU BIST ALS MAFIA GEWHITELISTET***";
	sleep 5;
	disableUserInput false;sleep 0.5;
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 10;
};