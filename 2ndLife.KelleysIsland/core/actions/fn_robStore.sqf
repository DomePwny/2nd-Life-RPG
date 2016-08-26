/*
	Rob stolen by Koil
*/

params [["_shop", objNull, [objNull]], ["_robber", objNull, [objNull]], "_action", "", ["_timer", 480], "_funds", "_dist", ["_success", false]];

if(!life_canrob) exitWith {["Innerhalb der ersten 10 Minuten nach dem aufwachen kannst du keinen Raub begehen", false] spawn doquickmsg}; 
_cops = (west countSide playableUnits);
/*if(_cops < 4) exitWith {["Es müssen mind. 4 Polizisten im Dienst sein.", false] spawn doquickmsg};*/

if(vehicle player != _robber) exitWith {["Wirklich? Aus dem Fahrzeug? Vergiss es!", false] spawn doquickmsg;}; 
if(playerside in [west,independent]) exitWith {["Du willst nicht korrupt sein mein Freund!", false] spawn doquickmsg;};
_factor = player distance (getmarkerpos "cop_spawn_1");

_payment = 0;
_timer = _factor / 8;
_timer = round (_timer);
_funds = _factor * 0.8; 
_dist = _robber distance _shop;
_cops = (west countSide playableUnits);

if (!(_robber getVariable["dead",FALSE]) && {currentWeapon _robber != "" && currentWeapon player != "Binocular" && currentWeapon player != "Rangefinder"} && {_funds > 0}) then {

	[1,"911 DISPATCH: Ein/e Geschäft/Person wird gerade ausgeraubt - der Standort wurde markiert!"] remoteExecCall ["life_fnc_broadcast", west];
	
	hint format ["Robbing the Store! Wait %1 sec.",_timer];
	myStoreMarker = createMarker [format["%1",player], position player];
	myStoreMarker setMarkerType "Mil_dot";
	myStoreMarker setMarkerText "!!Überfall!!";
	myStoreMarker setMarkerColor "ColorRed";
	life_canrob = false;
	_shop removeAction _action;

	while {true} do {
		hintsilent format ["%1 Sekunden dauert es noch!",_timer];
		uiSleep 1;
		_timer = _timer - 1;
		_payment = _payment + 1;
		_dist = _robber distance _shop;
		if ((_robber getVariable["dead",FALSE])) exitwith {
				life_canrob = true;
				deleteMarker myStoreMarker;
				["Verdammt du brauchst ein Arzt!", false] spawn domsg;
				uiSleep _factor;
				_action = _shop addAction["Rob",life_fnc_robStore,0,false,false,"",'playerSide in [east,civilian]'];
		};
		if (_dist >= 6) exitwith {
				life_canrob = true;
			deleteMarker myStoreMarker;
			["Danke das du mich gehen lässt!", false] spawn domsg;
			uiSleep _factor;
			_action = _shop addAction["Rob",life_fnc_robStore,0,false,false,"",'playerSide in [east,civilian]'];
		};
		if (currentWeapon _robber == "" || currentWeapon player == "Binocular" || currentWeapon player == "Rangefinder") exitwith {
				life_canrob = true;
			deleteMarker myStoreMarker;
			["Ohne Waffe? Mach das du Land gewinnst!", false] spawn domsg;
			uiSleep _factor;
			_action = _shop addAction["Rob",life_fnc_robStore,0,false,false,"",'playerSide in [east,civilian]'];
		};
		if(_payment > 60) then { ["cash","add",350] call life_fnc_handleCash; _payment = 0; ["Du hast 350$ gestohlen!", false] spawn domsg;  };
		if(_timer < 1) exitWith { deleteMarker myStoreMarker; _success = true; };
	};
	if(!_success) exitWith { deleteMarker myStoreMarker; life_canrob = true; };
	life_canrob = true;
	["cash","add",_funds] call life_fnc_handleCash; 
	[format["Du hast %1$ gestohlen.",_funds], false] spawn domsg;
	_reason = "211";
	[_robber,_robber,_reason] spawn life_fnc_createEvidence;
	[1,format["NEWS: Ein Überfall war im Gange und es wurden %2$ erbeutet.", _shop, [_funds] call life_fnc_numberText]] remoteExecCall ["life_fnc_broadcast", civilian];
	_funds = 0;
	life_use_atm = false;
	uiSleep 180;
	life_use_atm = true;
	uiSleep _factor;
	_action = _shop addAction["Rob",life_fnc_robStore,0,false,false,"",'playerSide in [east,civilian]'];
};