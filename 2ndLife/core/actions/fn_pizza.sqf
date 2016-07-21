/*
Search Words: 
pizza
*/

_item = param [0,false,[false]];
_complete = false;
_price = 750;


if(_item) then {



} else {

	if(cash_in_hand < _price) exitWith { ["PIZZA Dude: Du hast nicht genug, diese Pizza kostet 750$!", false] spawn domsg; _complete = true; };

	["cash","take",_price] call life_fnc_handleCash;

	
};

if(_complete) exitWith {};

["Add","Food",100] spawn fnc_sustain;

life_pizza = 0;
uiSleep 1.5;
life_pizza = 5400;

["Lecker Pizza, du heilst dich nun über Zeit. (90 Minuten)", false] spawn domsg;

while {life_pizza > 0} do {

	uiSleep 7;
	life_pizza = life_pizza - 7;
	if(!im_hurt) then {
		["Add",0.05] call fnc_doHealth;
	};
};


["Pizzaeffekt ist abgelaufen, du heilst dich nicht mehr über Zeit.", false] spawn domsg;

life_pizza = 0;