/*
	File: fn_downed.sqf
	
	
	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]], ["_dist", 0, [0]]];

//50% chance of failure
_chance = round (random 100); 
if(_chance < 30) exitwith {
 	["Remove",0.05] call fnc_doHealth;
};

if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_isdowned = false;};

_sleeptime = 40 - _dist;
//exit if distance over 50m
if(_sleeptime < 1) exitwith {};
_sleeptime = _sleeptime + 6;

if(life_crazy > 0) then {
	_sleeptime = _sleeptime * 0.2;
};

if(life_rebelbadguyman) then {
	_sleeptime = _sleeptime * 0.5;
};

if(_shooter isKindOf "Man" && !deadPlayer) then
{
	if(!life_isdowned) then
	{
		_message = "Gummgigeschoss Treffer";
		hint parsetext format["%1 <br/> Downtime: %2",_message,_sleeptime];
		life_isdowned = true;
		[] spawn life_fnc_forceRagdoll;
		_curWep = currentWeapon player;
		_curMags = magazines player;
		_attach = if(primaryWeapon player != "") then {primaryWeaponItems _unit} else {[]};
		{player removeMagazine _x} foreach _curMags;
		player removeWeapon _curWep;
		player addWeapon _curWep;
		if(count _attach != 0 && primaryWeapon _unit != "") then
		{
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _attach;
		};
		if(count _curMags != 0) then
		{
			{player addMagazine _x;} foreach _curMags;
		};
		[player,"grunt"] spawn life_fnc_nearestSound;
		disableUserInput true;
		[player,"deadstate"] remoteExecCall ["life_fnc_animSync"];
	};
} else {
	_unit allowDamage true;
	life_isdowned = false;
};