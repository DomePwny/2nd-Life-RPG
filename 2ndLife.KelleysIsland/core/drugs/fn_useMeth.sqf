/*
	File: fn_useCoke.sqf
	@Deo	
	Description:
	Use Coke Effect
*/

#include <macro.h>
 
closeDialog 0;
sleep 0.5;
drugs_used = true;
["Du fühlst dich großartig!", false] spawn domsg;
life_crazy = life_crazy + 1000;
life_rip = 1;
sleep 1;
drugs_used = false;

player setAnimSpeedCoef 1.3;

while {!drugs_used} do {
	sleep 5;
	life_crazy = life_crazy - 5;

	_chance = round (random 100);
	if(_chance < 1) then {
		["Du hattest eine Herzattacke. Dieses Meth ist sehr stark.", false] spawn domsg;
		[] spawn life_fnc_forceRagdoll;
	};

	if(getAnimSpeedCoef player < 1.2) then { player setAnimSpeedCoef 1.2; };
	if(life_crazy == 30) then { ["Dein Metheffekt läuft ab in 30 Sekunden.", false] spawn domsg; };
	if(life_crazy == 0) exitwith { ["Dein Metheffekt ist abgelaufen.", false] spawn domsg; };
};


player setAnimSpeedCoef 0.9;
