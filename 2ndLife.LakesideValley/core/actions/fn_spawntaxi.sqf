/*
File: taxi payments
*/
if(life_taxi) exitWith {["Du bist bereits Taxi fahrer.", false] spawn domsg;};

if(has_job) exitwith { ["Du hast bereits ein Job! Drücke Shift + 4 to quit!", false] spawn domsg;};

has_job = true;

life_taxi = true;
["Du wirst extra bezahlt für das fahren deines SUV Taxi's.", false] spawn domsg;

_fkit = 45;
_payment = 0;

while{_fkit > 0 && life_taxi} do {
	uisleep 60;
	_fkit = _fkit - 1;

	if(vehicle player != player) then
		{
		if(driver (vehicle player) == player && typeOf (vehicle player) == "cl3_suv_taxi") then {
			["bank","add", 250] call life_fnc_handleCash;
			["Deine bezahlung ist 250$", false] spawn domsg; 
		};	
	};

	if(_fkit == 1) then {
		["Your taxi timer stops in 1 minute.", false] spawn domsg;
	};

};
life_taxi = false;
["Deine Taxi arbeit ist beendet!", false] spawn domsg;
["Gehe zum nächsten Taxistand und melde dich neu an!", false] spawn domsg;
has_job = false;