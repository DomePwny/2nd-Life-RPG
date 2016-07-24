#include <macro.h>
/*
	
	
	Description:
	Pulls Up the life_create_gang_diag
*/
if (playerside != east) exitwith {hint "Du bist nicht in der Mafia!"};
if (!isNil player getVariable "gang_id") exitwith {["Du bist schon in einer Gang",5,"red"] spawn domsg;};
if (playerside == east ) then {
	createDialog "life_create_gang_diag";
};