//if in progress EXIT
_mafs = (east countSide playableUnits);
if(_mafs < 12) exitwith {["Es sind nicht genug Mafia Leute da! (12)", false] spawn domsg;};

if(rebelshipment getVariable["progress",FALSE]) exitwith {["Wurde bereits beschlagnahmt!",false] spawn domsg;};

//start progress
rebelshipment setvariable ["progress", true, true];

//start server side checks incase of disconnect etc
["dochecks", player] remoteExec ["TON_fnc_doRebel",2];

_success = false;

 
_calcT = 0;
_startpos = getpos player;

//Starting Messages

["Die Polizei raidet gerade den Mafia Bunker (20 Minuten).", false] remoteExec ["domsg",east];
["Alle verfügbaren Einsatzkräfte zum Mafia Bunker (20 Minuten).", false] remoteExec ["domsg",west];  
["dgang", false] remoteExec ["fnc_dispatch",west];

//Client side checks
while {true} do {
	if(player distance _startpos > 15 || deadPlayer) exitwith { _success = false;};
	_calcT = _calcT + 1;
	if(_calcT > 1200) exitwith { _success = true; ["Einnahme beendet!", false] spawn domsg;  };
	if(_calcT == 60 || _calcT == 120 || _calcT == 180 || _calcT == 240 || _calcT == 300 || _calcT == 360 || _calcT == 420 || _calcT == 480 || _calcT == 540 ) then {
		["Die Polizei raidet den Mafia Bunker.", false] remoteExec ["domsg",east];
		["Saubere Arbeit Kollegen. Seid weiterhin vorsichtig!", false] remoteExec ["domsg",west];		

	};
	if(_calcT == 900 || _calcT == 960 || _calcT == 1020) then {
		["Die Polizei ist kurz davor die Waffen und das Geld zu beschlagnahmen.", false] remoteExec ["domsg",east];
		["Weiter so Kollegen ihr habt es fast geschafft. Seid weiterhin vorsichtig!", false] remoteExec ["domsg",west]; 		
	};
	if(_calcT == 1080) then {
		["Der Mafia bleibt nur noch 120 Sekunden Zeit die Polizei davon abzuhalten die Waffen und das Geld zu beschlagnahmen.", false] remoteExec ["domsg",east];
		["Es sind nur noch 120 Sekunden übrig. Bleibt wachsam!", false] remoteExec ["domsg",west]; 		
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
	["Die Polizei hat die Waffen und das Geld beschlagnahmt!", false] remoteExec ["domsg",east]; 
	["Der Mafialaden ist für 30 Minuten gesperrt!", false] remoteExec ["doquickmsg",east];
	["Gute Arbeit Polizisten, ihr habt die Waffen und das Geld beschlagnahmt. (Belohnung 25000$ für jeden Polizisten).", false] remoteExec ["domsg",west]; 
	["bank","add",25000] remoteExecCall ["life_fnc_handlecash",west];
	["finishRebel", player] remoteExec ["TON_fnc_finishRebel",2];	
} else {
	["Der Versuch die Waffen und das Geld zu beschlagnahmen ist gescheitert! (Belohnung 8000$ für jeden Mafiosi).", false] remoteExec ["domsg",east]; 
	["bank","add",8000] remoteExecCall ["life_fnc_handlecash",east];
};