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
	
	playSound "ringing";
	["Jemand hat ein Taxi gerufen! Schau auf deine Karte."] spawn domsg;
};
