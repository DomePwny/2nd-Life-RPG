private ["_panicButton","_marker","_text"];

_panicButton = _this select 0;

if(isNull player OR !alive player) exitWith {};
if(playerSide != west) exitWith {["Du bist kein Polizist!", false] spawn domsg;};
if(life_istazed) exitWith {};
if(player getVariable "restrained") exitWith {["Du bist gefesselt!", false] spawn domsg;};
if(!([false, _panicButton ,1] call life_fnc_handleInv)) exitWith {};

sleep (1 + random(5));

[1,format["911 NOTRUF: KNOPF WURDE VON %1 GEDRÜCKT!",name player]] remoteExecCall ["life_fnc_broadcast", west];
[player,"panicbutton"] spawn life_fnc_nearestSound;
["dpanic", false] remoteExec ["fnc_dispatch",west];

if(player getVariable "sos") exitWith {};

[] spawn {
	_uid = getPlayerUID player;_text = (player getVariable ["realname",name player]);
	_marker = createMarker [_uid, position player ];
	_marker setMarkerShape "ICON";
	_marker setMarkerType "mil_end";
	_marker setMarkerColor "ColorOPFOR";
	_marker setMarkerText _text;
	sleep 30;
	deleteMarker _marker;
};