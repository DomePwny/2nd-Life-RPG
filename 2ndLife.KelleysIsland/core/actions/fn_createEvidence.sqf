/*
File: create evidence
*/
private["_curTarget","_suspect","_victim","_crime"];
_suspect = param [0,ObjNull,[ObjNull]];
_victim = param [1,ObjNull,[ObjNull]];
_crime = param [2];

_chance = round (random 1000);
if(headgear _suspect IN HatList || goggles _suspect IN GoggleList) then {
	_chance = round (random 1000);
	if(_chance < 200) exitWith {["Deine Maske hat es verhindert Beweise zu hinterlassen!",false] spawn domsg;};
};

_vehicle = createVehicle ["Land_Suitcase_F", (player), [], 0, "NONE"];

if(_crime == "187") then {
	_vehicle setVariable ["evidence", [_suspect, _victim, "187"], true];
};
if(_crime == "211") then {
	_vehicle setVariable ["evidence", [_suspect, _victim, "211"], true];
};
if(_crime == "487") then {
	_vehicle setVariable ["evidence", [_suspect, _victim, "487"], true];
};
if(_crime == "334") then {
	_vehicle setVariable ["evidence", [_suspect, _victim, "334"], true];
};
_vehicle enablesimulation false;
_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, (getPos _vehicle select 2) + 0.5];

_obj = "Land_ClutterCutter_small_F" createVehicle (getPos _vehicle);
_obj setPos (getPos _vehicle);
_vehicle attachTo [_obj,[0,0,0]];

uiSleep 1200;
deletevehicle _obj;
deletevehicle _vehicle;