_price = 250;
if(cash_in_hand < _price) exitWith {
	["Du brauchst 250$ um die Nutte zu bezahlen!", false] spawn domsg;
};


_chance = round (random 100);

if(life_std == 0) then {
	if(_chance > 70) then {
		player setVariable ["diseaseon",5,true];
		["Du fühlst dich schlecht! Suche ein Doktor auf!", false] spawn domsg;
		player setfatigue 1;
	};	
};

["Du fühlst dich großartig nach dem Sex - Du kannst mit deiner Waffe für 90 Minuten besser umgehen!", false] spawn domsg;
life_num = 0;
uiSleep 1;
life_num = 5400;
player setCustomAimCoef 0.35;
player setAnimSpeedCoef 1.1;
player enableFatigue false;
while{life_num > 0} do {
	life_num = life_num - 1;
	uiSleep 1;
	if(deadPlayer) exitWith {
		life_num = 0;
	};
};
player enableFatigue true;
["Deine großartigkeit von dem Sex hat nachgelassen!", false] spawn domsg;
player setAnimSpeedCoef 1;
player setCustomAimCoef 1;