/*
	File: fn_medicRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the medics that someone has requested emergency and prompts them
	if they want to take the request or not.
*/
private["_caller","_callerName","_vehicle"];
if((playerside == civilian) && (player getVariable "taxi_driver")) then {
	_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	_callerName = [_this,1,"Unknown Player",[""]] call BIS_fnc_param;
	if(isNull _caller) exitWith {}; //Bad data
	if(typeOf(vehicle player) != "cl3_suv_taxi") exitwith {["Du hast einen Funkspruch verpasst!"] spawn domsg;};
	
	_alreadyInList= false;
	{
		if(_x select 0 == _caller)then{
			_alreadyInList = true;
		};
	}foreach life_taxiMarker;
	if(_alreadyInList) exitWith {};
	life_taxiMarker set [count life_taxiMarker,[_caller,_callerName]];
	
	playSound "ringing";
	["Jemand hat ein Taxi gerufen! Schau auf deine Karte."] spawn domsg;
	
	_vehicle = vehicle player;
	
	waitUntil{count crew _vehicle > 1};
	{
	_passenger = crew _vehicle;
	life_taxiMarker deleteAt (life_taxiMarker find _x);
	} foreach _passenger;
};
