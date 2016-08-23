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
 	["Remove",0.0085] call fnc_doHealth;
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
		_message = "Gummigeschoss Treffer";
		hint parsetext format["%1 <br/> Downtime: %2 Sekunden",_message,_sleeptime];
		life_isdowned = true;
		[_unit] spawn life_fnc_forceRagdoll;
		_curWep = currentWeapon player;
		_attach = if(primaryWeapon player != "") then {primaryWeaponItems _unit} else {[]};
		player removeWeapon _curWep;
		player addWeapon _curWep;
		if(count _attach != 0 && primaryWeapon _unit != "") then
		{
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _attach;
		};
		[player,"grunt"] spawn life_fnc_nearestSound;
		disableUserInput true;
		_sleeptime spawn {
			_sleeptime = _this;
			uiSleep _sleeptime;
			life_isdowned = false;
			disableUserInput false;
			sleep 1;
			if(!(player getVariable ["escorting", false])) then {
				detach player;
			};
			sleep 1;
			[player,""] remoteExecCall ["life_fnc_animSync"];
		};
	};
} else {
	_unit allowDamage true;
	life_isdowned = false;
};