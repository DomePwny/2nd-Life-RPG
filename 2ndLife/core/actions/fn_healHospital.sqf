/*
	File: fn_healHospital.sqf
	
	
	Description:
	Doesn't matter, will be revised later.
*/
_meds = (independent countSide playableUnits);
if(_meds > 1) exitwith { hint "Es sind Mediziner im Dienst!"; };
if(cash_in_hand < 10) exitWith {[format[localize "STR_NOTF_HS_NoCash",10], false] spawn domsg;};
[localize "STR_NOTF_HS_Healing", false] spawn domsg;
uiSleep 8;
if(player distance (_this select 0) > 5) exitWith {[localize "STR_NOTF_HS_ToFar", false] spawn domsg;};
[localize "STR_NOTF_HS_Healed", false] spawn domsg;
["Set",0] call fnc_doHealth;

_price = 10;


	["cash","take",_price] call life_fnc_handleCash;

{
	if(player getVariable [_x, 1] != 1) then
	{
		player setVariable [_x, 1, true];
	};
} foreach life_injuries;

player forceWalk false;
player setVariable["severeInjuries", nil, true];