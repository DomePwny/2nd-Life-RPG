/*
	Rob stolen by Koil
*/

params [["_shop", objNull, [objNull]], ["_robber", objNull, [objNull]], "_action", "", ["_timer", 480], "_funds", "_dist", ["_success", false]];



if(!life_canrob) exitWith { hint "Du kannst nach dem aufwachen 10 Minuten kein Raub begehen!"; }; 
_cops = (west countSide playableUnits);
if(_cops < 4) exitWith { hint "Es müssen mehr Polizisten im Dienst sein. (4+)"; }; 

if(vehicle player != _robber) exitWith { hint "Wirklich? Aus dem Fahrzeug? Vergiss es!"; }; 
if(playerside !(civilian || east)) exitWith { hint "Du willst nicht korrupt sein mein Freund!"; };
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
				hint "Verdammt du brauchst ein Arzt!";
				uiSleep _factor;
				_action = _shop addAction["Rob",life_fnc_robStore];
		};
		if (_dist >= 6) exitwith {
				life_canrob = true;
			deleteMarker myStoreMarker;
			hint "Danke das du mich gehen lässt!";
			uiSleep _factor;
			_action = _shop addAction["Rob",life_fnc_robStore];
		};
		if (currentWeapon _robber == "" || currentWeapon player == "Binocular" || currentWeapon player == "Rangefinder") exitwith {
				life_canrob = true;
			deleteMarker myStoreMarker;
			hint "Ohne Waffe? Mach das du Land gewinnst!";
			uiSleep _factor;
			_action = _shop addAction["Rob",life_fnc_robStore];
		};
		if(_payment > 60) then { ["cash","add",350] call life_fnc_handleCash; _payment = 0; ["Du hast 350$ gestohlen!", false] spawn domsg;  };
		if(_timer < 1) exitWith { deleteMarker myStoreMarker; _success = true; };
	};
	if(!_success) exitWith { deleteMarker myStoreMarker; life_canrob = true; };
	life_canrob = true;
	["cash","add",_funds] call life_fnc_handleCash; 
	hint format["Du hast %1$ gestohlen.",_funds];
	_reason = "211";
	[_robber,_robber,_reason] spawn life_fnc_createEvidence;
	[1,format["LAKESIDE NEWS: Ein Überfall war im Gange und es wurden %2$ erbeutet.", _shop, [_funds] call life_fnc_numberText]] remoteExecCall ["life_fnc_broadcast", civilian];
	_funds = 0;
	life_use_atm = false;
	uiSleep 180;
	life_use_atm = true;
	uiSleep _factor;
	_action = _shop addAction["Rob",life_fnc_robStore];
};