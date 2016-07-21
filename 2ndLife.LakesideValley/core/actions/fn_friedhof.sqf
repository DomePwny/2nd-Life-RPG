/*
	File: fn_friedhof.sqf
	Author: 2ndLife RPG 
	
	Description:
	Aktiviert Friedhof Effekt
*/
closeDialog 0;
private["_resourceZones","_zone"];
_resourceZones = ["HH_1"];
_zone = "";
_exit = false;
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;
if(_zone == "HH_1") exitWith {[] spawn life_fnc_hh};
if(vehicle player != player) exitWith {};
