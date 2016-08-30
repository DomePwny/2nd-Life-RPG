/*
	fn_carSalesman.sqf
*/

if(has_job) exitwith { ["Du hast bereits eine Arbeitsstelle! Drücke Shift + 4 um zu kündigen!", false] spawn domsg;};
if(side player != civilian) exitwith {
	["Nur für Zivilisten!", false] spawn domsg;
};
if(life_carSalesman) exitWith {
	["Du bist bereits Autoverkäufer!", false] spawn domsg; 
};
if(uniform player find "TRYK_SUITS" isEqualTo -1) exitwith {
	["Du brauchst einen Anzug um als Autoverkäufer zu arbeiten.", false] spawn domsg; 
};

has_job = true;
life_carSalesman = true;
carSalesmanList pushBack player;
publicVariable "carSalesmanList";
player setVariable["Salesman", true, true];
["Du wirst extra bezahlt in der Umgebung des Autohauses ebenfalls erhälst du 10% provision für verkaufte Autos!", false] spawn domsg; 

_fkit = 45;
while{_fkit > 0 && life_carSalesman && !deadPlayer} do {
	uiSleep 60;

	if(player distance showRoom < 35 || (!isNull objectParent player && life_onTestDrive)) then {
		if(uniform player find "TRYK_SUITS" != -1) then {
			["bank","add", 120] call life_fnc_handleCash;
			["Du wurdest für 120$ bezahlt.", false] spawn domsg; 
		};
	};
	if(player distance showRoom > 35 && !life_onTestDrive) exitwith {
		["Zu weit vom Autohaus entfernt, du wurdest gefeuert!", false] spawn domsg;
		has_job = fase;
		life_carSalesman = false;
	};
	_fkit = _fkit - 1;
	if(_fkit == 5) then {
		["Deine bezahlungen stoppen in 5 Minuten!", false] spawn domsg; 
	};
};

has_job = false;
life_carSalesman = false;
carSalesmanList deleteAt (carSalesmanList find player);
publicVariable "carSalesmanList";
player setVariable["Salesman", nil, true];
["Du wurdest gefeuert!", false] spawn domsg; 
