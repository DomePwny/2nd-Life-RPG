/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	N/A
*/
private["_taxiOnline"];
if(player getVariable "taxi_driver") exitwith {["Du bist selber Taxifahrer!", false] spawn domsg;};
if(checked_taxi) exitWith {["Du kannst nur alle 5 Minuten ein Taxi rufen.", false] spawn domsg;};
_taxiOnline = {_x != player && {side _x == civilian} && {alive _x} && {_x getVariable "taxi_driver"}} count playableUnits > 0; //Check if medics (indep) are in the room.
if(!_taxiOnline) exitWith {["Es ist kein Taxi verfügbar.", false] spawn domsg;};

[player, name player] remoteExec ["life_fnc_taxiRequest",civilian];
["Du hast ein Taxi gerufen!", false] spawn domsg;

[] spawn 
{
	checked_taxi = true;
	sleep (5 * 60);
	checked_taxi = false;
};
