/*
	File: fn_vibration.sqf
	Author: Marcel "VariatoX" Koch
	Server: lakeside-reallife.de

	Description:
	Vibration an-/ausschalten

*/

if(isNull player) exitWith {};
if(lrl_noAction) exitWith {};
if(player getVariable "restrained") exitWith {};

if(lrl_vibratooor) then {
	lrl_vibratooor = false;
	hintSilent "Handy auf LAUT";
} else {
	lrl_vibratooor = true;
	hintSilent "Handy auf VIBRATION";
};