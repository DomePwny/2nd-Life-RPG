#include <macro.h>
/*
	
	
	Description:
	Pulls up the menu and creates the gang?
*/
private["_gangName","_length","_badChar","_chrByte","_allowed"];
disableSerialization;
if (playerside != east) exitWith {["Du bist nicht in der Mafia!", false] spawn domsg;};
_gangName = ctrlText (getControl(2520,2522));
_length = count (toArray(_gangName));
_chrByte = toArray (_gangName);
_allowed = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ ");
if(_length > 32) exitWith {[localize "STR_GNOTF_Over32", false] spawn domsg;};
_badChar = false;
{if(!(_x in _allowed)) exitWith {_badChar = true;};} foreach _chrByte;
if(_badChar) exitWith {[localize "STR_GNOTF_IncorrectChar", false] spawn domsg;};
if(cash_in_bank < (__GETC__(life_gangPrice))) exitWith {[format[(localize "STR_GNOTF_NotEnoughMoney"),[((__GETC__(life_gangPrice))-cash_in_bank)] call life_fnc_numberText], false] spawn domsg;};

[player,getPlayerUID player,_gangName] remoteExec ["TON_fnc_insertGang",(call life_fnc_HCC)];
[localize "STR_NOTF_SendingData", false] spawn domsg;
closeDialog 0;
life_action_gangInUse = true;