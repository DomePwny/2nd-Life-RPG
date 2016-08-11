/*
Search Words: 
RechargeStand
Recharge Stand
*/
_myposy = getPos player;

["Lade Batterie", false] spawn domsg;

if(life_charging == 1) exitwith { 
["Lade bereits auf...", false] spawn domsg;
};
life_charging = 1;
while {life_charging == 1} do {
	uiSleep 0.2;
	if(life_battery > 99) exitwith { 
	life_charging = 2;
	["Du kannst nicht mehr aufladen hier...", false] spawn domsg;
	};
	if( player distance _myposy > 1 ) exitwith { 
			["Du hast dich zu weit entfernt", false] spawn domsg;
			life_charging = 2;
	};
	["Add",2] call fnc_battery;
};
