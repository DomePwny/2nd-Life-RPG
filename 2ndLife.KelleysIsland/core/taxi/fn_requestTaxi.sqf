/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	N/A
*/
private["_taxiOnline"];
if(life_taxi) exitwith {["Du bist selber Taxifahrer!", false] spawn domsg;};
if(checked_taxi) exitWith {["Du kannst nur alle 5 Minuten ein Taxi rufen.", false] spawn domsg;};
_taxiOnline = {_x != player && {side _x == civilian} && {alive _x} && life_taxi} count playableUnits > 0; //Check if medics (indep) are in the room.
if(!_adacOnline) exitWith {["Es ist kein Taxi verfügbar", false] spawn domsg;};

[[name player],"life_fnc_taxiRequest",civilian,FALSE] spawn life_fnc_MP;
["Du hast ein Taxi gerufen!", false] spawn domsg;

[] spawn 
{
	checked_taxi = true;
	sleep (5 * 60);
	checked_taxi = false;
};