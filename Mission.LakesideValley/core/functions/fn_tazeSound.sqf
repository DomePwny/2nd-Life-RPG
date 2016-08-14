/*
	File: fn_tazeSound.sqf
*/
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};
if(!life_istazed) exitWith {};

playSound3D [KF_CHICKEN + "sounds\tazer.ogg",_source,false,getposASL _source,2,1,25];