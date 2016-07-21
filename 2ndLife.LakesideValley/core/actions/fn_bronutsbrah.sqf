
_item = param [0,false,[false]];

_complete = false;
_price = 1250;




if(_item) then {

	

} else {

	if(cash_in_hand < _price) exitWith { ["Nicht genug Geld, du brauchst 1250$ für den leckeren Donut!", false] spawn domsg;  _complete = true; };

	["cash","take",_price] call life_fnc_handleCash;
};

if(_complete) exitWith {};

["Dieser Donut war voll mit Zucker! Du kannst für 90 minuten besser zielen.", false] spawn domsg;

life_bro = 0;
uiSleep 1;
life_bro = 5400;
player setUnitRecoilCoefficient 1.8;
while{life_bro > 0} do {
	life_bro = life_bro - 1;
	uiSleep 1;
};
["Die Zuckerüberdosis hat nachgelassen.", false] spawn domsg;
player setUnitRecoilCoefficient 2.8;