//License Test Ground Vehicles


["Du startest ein Führerscheintest.. Fahre nicht über 50 Km/h - Anschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
["Du startest ein Führerscheintest.. Fahre nicht über 50 Km/h - Anschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
["Du startest ein Führerscheintest.. Fahre nicht über 50 Km/h - Anschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
beginpos = getpos player;
_totaltest = 4;
myvehicletesticle = createVehicle ["Jonzie_Mini_Cooper", (getmarkerpos "t_test_3"), [], 0, "NONE"];
sleep 1;
player action ["getInDriver", myvehicletesticle];	
totalres = 0;
while{_totaltest > 0} do {
	while{true} do {
		_chance = round (random 19);
		_marker = format["t_test_%1", _chance];
		postest = getmarkerpos _marker;
		if(player distance postest < 500) exitwith {};
		sleep 1;
	};
	["Schau dich um für den Checkpoint!",false] spawn domsg;
	["Driving Test",postest] spawn fnc_draw3d;
	_timer = 0;
	anwser = "Error";
	_shitcunt = 0;
	while{true} do {
		if(!life_seatbelt) exitwith { answer = "Kein Gurt!"; };
		if(player distance postest < 15) exitwith { answer = "Checkpoint erreicht!"; totalres = totalres + 1; };
		if(speed player >= 55) exitwith { answer = "Geschwindigkeit überschritten!"; (vehicle player) setVelocity [0, 0, 0]; };
		if(_timer > 120) exitwith { answer = "Zu langsam"; };
		_timer = _timer + 1;
		uisleep 1;
		hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Bisher gebraucht %1 sekunden.",_timer];
	};
	playSound "racebeep1";
	[format["%1",answer],false] spawn domsg;
	marker_on = false;
	sleep 3;
	_totaltest = _totaltest - 1;
};

if(totalres > 1) then {
	endresult = "Bestanden: Du kannst nun den LKW/PKW Führerschein erwerben!"; 
	driver_test = true;
} else { 
	endresult = "Durchgefallen: Ich kenne kein zweiten der so schlecht fährt! Schäm dich!"; 
};

[endresult,false] spawn domsg;
(vehicle player) setVelocity [0, 0, 0];
sleep 0.05;
player action ["Eject", vehicle player];
deletevehicle myvehicletesticle;
marker_on = false;
if(life_istazed) exitWith {};
if(life_interrupted) exitWith {};
if((player getVariable["restrained",false])) exitWith {};
player setpos beginpos;

