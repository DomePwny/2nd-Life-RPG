/*
	File: fn_restrainAction.sqf
	
	
	Description:
	Retrains the target.
*/
private["_unit"];
_sit = param [0,false,[false]];
life_antispamactive = true;
//Temp fail safe.
[] spawn {
	uiSleep 0.5;
	life_antispamactive = false;
};

_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable ["restrained", false])) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_myposy = getPos player;

_degrees = getDir player; 
_degreesu = getDir _unit;
_totald = _degrees - _degreesu;

if(_totald >= -120 && _totald < 1 || _totald <= 120 && _totald > -1 || _totald >= 250 || _totald <= -250 ) then {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	[player,"handcuff"] spawn life_fnc_nearestSound;	
	_unit setVariable["restrained",true,true];
	if(_sit) then {_unit setVariable["restrained2",true,true]};
	[player] remoteExecCall ["life_fnc_restrain",_unit];
} else {
	["You must be behind your target to restrain them.", false] spawn domsg;	
};