/*
	File: fn_copShowLicense.sqf
	Author:
	
	Description:
	Show cop license to target player

*/

private ["_target", "_message","_id","_pkw","_lkw"];

_target = cursorTarget;

if(isNull _target) exitWith {};
if(!(_target isKindOf "Man")) exitWith {};
if(!(alive _target)) exitWith {};

if(playerSide == west) then
{
	_id = "<img image='idcards\Cop\AusweisCop.paa' size='8'/>";
	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/>", name player];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};

if(playerSide == independent) then
{
	_id = "<img image='idcards\Medic\AusweisMedic.paa' size='8'/>";
	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/>", name player];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};

if(playerSide == civilian) then
{
	
	_id = "<img image='idcards\AusweisCiv.paa' size='8'/>";
	_pkw = if(license_civ_driver) then {"<img image='idcards\AusweisCar.paa' size='6'/>";} else {"<br/>"}; 
	_lkw = if(license_civ_truck) then {"<img image='idcards\AusweisTruck.paa' size='6'/>";} else {"<br/>"};

	_message = format["<t size='1.25'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>",name player,_id,_pkw,_lkw];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};
