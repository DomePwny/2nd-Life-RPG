/*
File: taxi payments
*/
if(life_taxi) exitWith {["Du bist bereits Taxi fahrer.", false] spawn domsg;};
if(has_job) exitwith { ["Du hast bereits ein Job! Drücke Shift + 4 to quit!", false] spawn domsg;};

has_job = true;
life_taxi = true;

["Du bekommst deinen Lohn nur, wenn du im Taxi sitzt.", false] spawn domsg;

_fkit = 12;
_payment = 0;

while{_fkit > 0 && life_taxi} do {
	uisleep 300;
	_fkit = _fkit - 1;

	if(vehicle player != player) then
	{
		if(driver (vehicle player) == player && typeOf (vehicle player) == "cl3_suv_taxi") then {
			["bank","add", 250] call life_fnc_handleCash;
			["Dein Lohn von 250$ wurde überwiesen", false] spawn domsg; 
		};	
	};

	if(_fkit == 5) then {
		["Deine Anstellung endet in 5 Minuten.", false] spawn domsg;
	};

};
life_taxi = false;
["Deine Anstellung ist beendet!", false] spawn domsg;
has_job = false;