/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]};

doofi_b4r5 = doofi_b4r5 + _cash;
titleText[format[localize "STR_Civ_Robbed",[_cash] call life_fnc_numberText],"PLAIN"];