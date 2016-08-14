/*
	File: fn_knockoutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Knocks out the target.
*/
private["_target","_knockouts"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if(life_knockout) exitWith {};
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 4) exitWith {};
life_knockout = true;
if((currentWeapon player == primaryWeapon player)) then {
	[[player,"CL3_anim_WeaponHit"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	sleep 1;
} else {
	_knockouts = ["CL3_anim_Punch1","CL3_anim_Punch2","CL3_anim_Punch3","CL3_anim_Punch4"] call BIS_fnc_selectRandom;
	[[player,_knockouts],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
};
playSound3D [KF_CHICKEN + "sounds\knockout.ogg",_target,false,getPosASL _target,1.35,1,30];
sleep 0.08;

/*[[_target,profileName],"life_fnc_knockedOut",_target,false] spawn life_fnc_MP;*/

[_target,profileName] remoteExec ["life_fnc_knockedOut",_target];

sleep 6;
life_knockout = false;