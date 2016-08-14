/*
	File: fn_unrestrain.sqf
*/

params[["_unit",ObjNull,[ObjNull]]];
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];

playSound3D [KF_CHICKEN + "sounds\uncuff.ogg",_unit,false,getposASL _unit,0.8,1,20];

//[[0,format[localize "STR_NOTF_Unrestrain",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;