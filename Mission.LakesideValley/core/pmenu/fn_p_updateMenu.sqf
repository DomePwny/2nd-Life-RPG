#include <macro.h>
/*
	File: fn_p_updateMenu.sqf
	Author: Arma 3 Life (A3L)
	
	Description:
	Updates the player menu (Virtual Interaction Menu)
*/
private["_dialog","_inv","_lic","_licenses","_near","_near_units","_mstatus","_shrt","_side","_icon"];
disableSerialization;

if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
};

_side = switch(playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"}; case east:{"Adac"};};

_dialog = findDisplay 2001;
_inv = _dialog displayCtrl 2005;
_lic = _dialog displayCtrl 2014;
_near = _dialog displayCtrl 2022;
_near_i = _dialog displayCtrl 2023;
_mstatus = _dialog displayCtrl 2015;
_mstatus2 = _dialog displayCtrl 2030;
_struct = "";
lbClear _inv;
lbClear _near;
lbClear _near_i;
//Near players
_near_units = [];
{ if(player distance _x < 3 && uniform _x != "U_VirtualMan_F") then {_near_units pushBack _x};} foreach playableUnits;
{
	if(!isNull _x && alive _x && player distance _x < 3 && _x != player && uniform _x != "U_VirtualMan_F") then
	{
		_near lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near lbSetData [(lbSize _near)-1,str(_x)];
		_near_i lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near_i lbSetData [(lbSize _near)-1,str(_x)];
	};
} foreach _near_units;

_mstatus ctrlSetStructuredText parseText format["<t size='1.2px'>$%1</t>",[man_ey_b4nK] call life_fnc_numberText];
_mstatus2 ctrlSetStructuredText parseText format["<t size='1.2'>$%1</t>",[doofi_b4r5] call life_fnc_numberText];
ctrlSetText[2009,format["Gewicht: %1 / %2", life_carryWeight, life_maxWeight]];
{
	_str = [_x] call life_fnc_varToStr;
	_shrt = [_x,1] call life_fnc_varHandle;
	//#1
	//_icon = [_x] call life_fnc_itemIcon;
	_val = missionNameSpace getVariable _x;
	if(_val > 0) then
	{
		_inv lbAdd format["%1x - %2",_val,_str];
		_inv lbSetData [(lbSize _inv)-1,_shrt];
		//#1
		//_inv lbSetPicture [(lbSize _inv)-1,_icon];
	};
} foreach life_inv_items;

{
	if((_x select 1) == _side) then
	{
		_str = [_x select 0] call life_fnc_varToStr;
		_val = missionNamespace getVariable (_x select 0);
		if(_val) then
		{
			_struct = _struct + format["%1<br/>",_str];
		};
	};
} foreach life_licenses;

if(_struct == "") then
{
	_struct = "Keine Lizenzen";
};

_lic ctrlSetStructuredText parseText format["
<t size='0.8px'>
%1
</t>
",_struct];
