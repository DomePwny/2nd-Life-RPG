/*
	Kommunikationsgeräte entfernen (Spieler - lokal)
*/

params [
	["_unit",ObjNull,[ObjNull]]
];
if(isNull _unit) exitWith {};
if(!alive _unit) exitWith {};

player setVariable ["tf_unable_to_use_radio", true];

private ["_items"];

_items = [];
{_items pushBack _x} forEach assignedItems player;
{player unlinkItem _x} forEach _items;

sleep 1;

// DISABLED - Client Crash...
/*sleep (0.5 + random(5));

{
	_pos = _unit modelToWorld[1,1,0];
	_pos = [_pos select 0, _pos select 1, 0];
	_item = _x createVehicle _pos;
	[_item] remoteExec ["life_fnc_simDisable",0,true];
} forEach _items;*/

hint "Dir wurden deine Kommunikationsgeräte entfernt.";


player setVariable ["tf_unable_to_use_radio", false];