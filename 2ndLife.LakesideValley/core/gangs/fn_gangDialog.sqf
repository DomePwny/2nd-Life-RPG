#include <macro.h>
/*
	
	
	Description:
	Pulls Up the life_create_gang_diag
*/
if (playerside != east) exitwith {hint "Du bist nicht in der Mafia!"};
if((player getVariable["gang_name",false])) exitWith {hint "Du bist bereits in einer Gang, verlasse die Gang um eine neue zu erstelllen."};
if (playerside == east ) then {
	createDialog "life_create_gang_diag";
};