/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	N/A
*/
private["_adacOnline","_vehicle"];
if(life_adac_request) exitWith {hint "Du kannst den ADAC nur alle 5 Minuten rufen";};
_adacOnline = {_x != player && {side _x == civilian} && {alive _x} && life_adac} count playableUnits > 0; //Check if medics (indep) are in the room.
if(!_adacOnline) exitWith {hint "Es ist kein ADAC online";};
_vehicle = cursorTarget;

[[_vehicle,name player],"life_fnc_adacRequest",civilian,FALSE] spawn life_fnc_MP;
_vehicle setVariable["pName",name player,true];
_vehicle setVariable ["adac_called",true,true];
["Du hast den Adac gerufen!", false] spawn domsg;

[] spawn 
{
	life_adac_request = true;
	sleep (5 * 60);
	life_adac_request = false;
};