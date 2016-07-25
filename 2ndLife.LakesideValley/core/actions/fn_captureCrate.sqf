//if in progress EXIT
_civs = (civilian countSide playableUnits);
if(_civs < 20) exitwith {["Nicht genug Zivilisten da! (20)", false] spawn domsg;};

if(rebelshipment getVariable["progress",FALSE]) exitwith {["Wurde bereits beschlagnahmt!",false] spawn domsg;};

//start progress
rebelshipment setvariable ["progress", true, true];

//start server side checks incase of disconnect etc
["dochecks", player] remoteExec ["TON_fnc_doRebel",2];

_success = false;

 
_calcT = 0;
_startpos = getpos player;

//Starting Messages

["Die Polizei raidet gerade den Südlichen Rebellenstützpunkt. (20 Minuten)", false] remoteExec ["domsg",-2]; 
["dgang", false] remoteExec ["fnc_dispatch",west];

//Client side checks
while {true} do {
	if(player distance _startpos > 15 || deadPlayer) exitwith { _success = false;};
	_calcT = _calcT + 1;
	if(_calcT > 1200) exitwith { _success = true; ["Einnahme beendet!", false] spawn domsg;  };
	if(_calcT == 120 || _calcT == 180 || _calcT == 240 || _calcT == 300 || _calcT == 360 || _calcT == 420 || _calcT == 480 || _calcT == 540 ) then {
		["Die Polizei raidet den Südlichen Rebellenstützpunkt.", false] remoteExec ["domsg",-2]; 

	};
	if(_calcT == 60) then {
		["Die Polizei raidet den Südlichen Rebellenstützpunkt in einer Minute.", false] remoteExec ["domsg",-2]; 
	};

	uisleep 1;
	hintSilent parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast bereits %1 sekunden gebraucht. <br/> Gebraucht wird insgesamt 1200 sekunden.",_calcT];
};

//Client side checks have finished - turn off progress.
rebelshipment setvariable ["progress", nil, true];
deletemarker "rebelShipment";

//Set final variables and server side functions for resets.
if(_success) then {
	rebelshipment setvariable ["finished", true, true];
	rebelshipment setvariable ["notCaptured", true, true];
	["Die Polizei hat die Rebellenwaffen und das Geld beschlagnahmt!", false] remoteExec ["domsg",-2]; 
	["Der Rebellenladen ist für 30 Minuten gesperrt!", false] remoteExec ["domsg",-2]; 
	["cash","add",25000] remoteExecCall ["life_fnc_handlecash",west];
	["finishRebel", player] remoteExec ["TON_fnc_finishRebel",2];	
} else {
	["Der Versuch die Rebellenwaffen zu beschlagnahmen ist gescheitert!", false] remoteExec ["domsg",-2]; 
	["Alle Zivilisten bekommen 4000$.", false] remoteExec ["domsg",-2]; 
	["cash","add",4000] remoteExecCall ["life_fnc_handlecash",civilian];
};