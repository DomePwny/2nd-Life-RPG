/*
	File: fn_medicRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the medics that someone has requested emergency and prompts them
	if they want to take the request or not.
*/
private["_caller","_callerName"];
if((playerside == civilian) && (player getVariable "taxi_driver")) then {
	_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	_callerName = [_this,1,"Unknown Player",[""]] call BIS_fnc_param;
	postest = [_this,2] call BIS_fnc_param;
	_markername = [_this,3] call BIS_fnc_param;
	if(isNull _caller) exitWith {}; //Bad data
	["Fahrgast",postest,_markername] spawn fnc_draw3d;
	playSound "ringing";
	["Jemand hat ein Taxi gerufen! Schau auf deine Karte."] spawn domsg;
};