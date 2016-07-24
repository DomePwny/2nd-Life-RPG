#include <macro.h>
/*
	
	
	Description:
	Pulls Up the life_create_gang_diag
*/
if (playerside != east) exitwith {hint "Du bist nicht in der Mafia!"};
if (playerside == east ) then {
	createDialog "life_create_gang_diag";
};