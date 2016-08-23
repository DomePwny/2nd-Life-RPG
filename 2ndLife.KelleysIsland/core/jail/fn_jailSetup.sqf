/*
	fn_jailSetup.sqf
*/

_minutes = parseNumber life_arrestMinutes;
life_bail_amount = _minutes * 425;

_hours = floor (_minutes/60);
_minutes = _minutes % 60;

player setVariable ["restrained2", nil, true];
player setVariable ["restrained", nil, true];
player setVariable ["Escorting", nil, true];
player setVariable ["transporting", nil, true];	

if(jail_money_init && _hours > 1) then {
	_lossMoney = _hours - 1;
	_lossTotal = cash_in_bank;
	_lossTotal = _lossTotal * 0.9;
	["You have been docked 10% of your funds for a 10 year sentence.", false] spawn domsg; 
};

life_is_arrested = true;
player setVariable["life_is_arrested", true, true];
life_battery = 0;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
	
if(life_bail_amount  > 1) then {
	_lowsecjaillocations = [
	[2858.66,4595.61,3.643],
	[2855.91,4595.61,3.643],
	[2852.86,4595.61,3.643],
	[2850.19,4595.61,3.643],
	[2846.38,4595.61,3.643],
	[2844.64,4595.61,3.643],
	[2841.79,4595.61,3.643],
	[2838.86,4595.61,3.643],
	[2836.22,4595.61,3.643],
	[2833.48,4595.61,3.643],
	[2830.61,4595.61,3.643],
	[2827.71,4595.61,3.643],
	[2858.66,4595.61,0.00143814],
	[2855.91,4595.61,0.00143814],
	[2852.86,4595.61,0.00143814],
	[2850.19,4595.61,0.00143814],
	[2846.38,4595.61,0.00143814],
	[2844.64,4595.61,0.00143814],
	[2841.79,4595.61,0.00143814],
	[2838.86,4595.61,0.00143814],
	[2836.22,4595.61,0.00143814],
	[2833.48,4595.61,0.00143814],
	[2830.61,4595.61,0.00143814],
	[2827.71,4595.61,0.00143814],
	[2858.52,4607.94,0.00143814],
	[2855.64,4607.94,0.00143814],
	[2852.79,4607.94,0.00143814],
	[2850.10,4607.94,0.00143814],
	[2847.10,4607.94,0.00143814],
	[2844.47,4607.94,0.00143814],
	[2841.67,4607.94,0.00143814],
	[2838.90,4607.94,0.00143814],
	[2836.02,4607.94,0.00143814],
	[2833.24,4607.94,0.00143814],
	[2830.41,4607.94,0.00143814],
	[2827.60,4607.94,0.00143814],
	[2852.79,4607.94,3.643],
	[2850.10,4607.94,3.643],
	[2847.10,4607.94,3.643],
	[2844.47,4607.94,3.643],
	[2841.67,4607.94,3.643],
	[2838.90,4607.94,3.643],
	[2836.02,4607.94,3.643],
	[2833.24,4607.94,3.643],
	[2830.41,4607.94,3.643],
	[2827.60,4607.94,3.643]
	];
	_randomer = floor random (count _lowsecjaillocations);
	_jailpos = _lowsecjaillocations select _randomer;
	player setPos _jailpos;
	["You have been sent to County Jail.", false] spawn domsg;
};

uiSleep 2;
[player,"cellclose"] spawn life_fnc_nearestSound;

if((player distance (getMarkerPos "jail_marker")) > 40 && life_bail_amount > 1) then
{
	_jaillocations = [
	[2858.66,4595.61,3.643],
	[2855.91,4595.61,3.643],
	[2852.86,4595.61,3.643],
	[2850.19,4595.61,3.643],
	[2846.38,4595.61,3.643],
	[2844.64,4595.61,3.643],
	[2841.79,4595.61,3.643],
	[2838.86,4595.61,3.643],
	[2836.22,4595.61,3.643],
	[2833.48,4595.61,3.643],
	[2830.61,4595.61,3.643],
	[2827.71,4595.61,3.643],
	[2858.66,4595.61,0.00143814],
	[2855.91,4595.61,0.00143814],
	[2852.86,4595.61,0.00143814],
	[2850.19,4595.61,0.00143814],
	[2846.38,4595.61,0.00143814],
	[2844.64,4595.61,0.00143814],
	[2841.79,4595.61,0.00143814],
	[2838.86,4595.61,0.00143814],
	[2836.22,4595.61,0.00143814],
	[2833.48,4595.61,0.00143814],
	[2830.61,4595.61,0.00143814],
	[2827.71,4595.61,0.00143814],
	[2858.52,4607.94,0.00143814],
	[2855.64,4607.94,0.00143814],
	[2852.79,4607.94,0.00143814],
	[2850.10,4607.94,0.00143814],
	[2847.10,4607.94,0.00143814],
	[2844.47,4607.94,0.00143814],
	[2841.67,4607.94,0.00143814],
	[2838.90,4607.94,0.00143814],
	[2836.02,4607.94,0.00143814],
	[2833.24,4607.94,0.00143814],
	[2830.41,4607.94,0.00143814],
	[2827.60,4607.94,0.00143814],
	[2852.79,4607.94,3.643],
	[2850.10,4607.94,3.643],
	[2847.10,4607.94,3.643],
	[2844.47,4607.94,3.643],
	[2841.67,4607.94,3.643],
	[2838.90,4607.94,3.643],
	[2836.02,4607.94,3.643],
	[2833.24,4607.94,3.643],
	[2830.41,4607.94,3.643],
	[2827.60,4607.94,3.643]
	];
	_randomer = floor random (count _jaillocations);
	_jailpos = _jaillocations select _randomer;
	player setPos _jailpos;
};

("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"]; //show
	
_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#ffffff' align='center' size='0.9'>%1</t>",life_arrestReason];
((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;

[0,_minutes,_hours,0] spawn life_fnc_jailTimer;
cutText ["","BLACK IN"];
if(life_firstSpawn) then {
	life_firstSpawn = false;
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
	(findDisplay 46) displayAddEventHandler ["MouseZchanged", "_this spawn life_fnc_enableActions"];
	[] execVM "core\init_survival.sqf";
	[] call life_fnc_hudSetup;
	player setVariable ["loaded", true, true];
};