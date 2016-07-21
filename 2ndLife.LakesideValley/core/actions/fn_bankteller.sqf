/*
File: bank teller payments
*/

if(has_job) exitwith { ["Du hast bereits eine Arbeitstelle, drücke Shift + 4 um zu kündigen!", false] spawn domsg;};

if(side player != civilian) exitwith {
	["Nur für Zivilisten!", false] spawn domsg;
};
if(life_bankteller) exitWith {
["Du bist bereits Bänker/in", false] spawn domsg; 
};
if(uniform player find "KAEL_SUITS" isEqualTo -1) exitwith {
	["Du brauchst einen Anzug um als Bänker zu arbeiten!", false] spawn domsg; 
};

has_job = true;
life_bankteller = true;


["Du wirst extra bezahlt in der nähe von der Bank, du bist nun ein mobiler Bankautomat!", false] spawn domsg; 

_fkit = 45;
player setVariable["ATM_MAN", true, true];
while{_fkit > 0 && life_bankteller } do {
	uiSleep 60;

	if(isNull objectParent player && (player distance (getMarkerPos "bank_signup")) < 21) then {
		if(Uniform player == "KAEL_SUITS_BR_F12") then
		{
			["bank","add", 195] call life_fnc_handleCash;
			["Du wurdest für 195$ bezahlt!", false] spawn domsg; 
		};
	};
	if((player distance (getMarkerPos "fed_reserve")) > 30) exitwith {

	};
	_fkit = _fkit - 1;
	if(_fkit == 5) then {
		["Deine bezahlung stoppt in 5 minuten..", false] spawn domsg; 
	};
};
life_bankteller = false;
player setVariable["ATM_MAN", nil, true];


["Du wurdest gefeuert!", false] spawn domsg; 

has_job = false;