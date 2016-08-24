/*
File: taxi payments
*/
if(player getVariable "taxi_driver") exitWith {["Du bist bereits Taxi fahrer.", false] spawn domsg;};
if(has_job) exitwith { ["Du hast bereits ein Job! Drücke Shift + 4 to quit!", false] spawn domsg;};

has_job = true;
player setVariable["taxi_driver", true, true];

["Du bekommst deinen Lohn nur, wenn du in einem Taxi sitzt.", false] spawn domsg;

_fkit = 12;

while{_fkit > 0 && (player getVariable "taxi_driver") && has_job} do {
	if(vehicle player != player) then {
		if(driver (vehicle player) == player && typeOf (vehicle player) in ["ivory_rs4_taxi","cl3_suv_taxi","ivory_190e_taxi"]) then {
			["bank","add", 250] call life_fnc_handleCash;
			["Dein Lohn von 250$ wurde überwiesen", false] spawn domsg; 
		};	
	};
	
	sleep 300;
	_fkit = _fkit - 1;

	if(_fkit == 1) then {
		["Deine Anstellung endet in 5 Minuten.", false] spawn domsg;
	};

};

player setVariable["taxi_driver", false, true];
["Deine Anstellung ist beendet!", false] spawn domsg;
has_job = false;