/*
	File: fn_copShowLicense.sqf
	Author:
	
	Description:
	Show cop license to target player

*/

private ["_target", "_message","_rank","_rankSpec","_coplevel","_mediclevel","_id","_pkw","_lkw","_trank"];

_target = cursorTarget;

if(isNull _target) exitWith {};
if(!(_target isKindOf "Man")) exitWith {};
if(!(alive _target)) exitWith {};

if(playerSide == west) then
{
	_coplevel = call life_coplevel;
	
	switch (_coplevel) do
	{
		case 1: { _rank = "<img image='images\idcards\cop\1.jpg' size='8.5'/>";};
		case 2: { _rank = "<img image='images\idcards\cop\2.jpg' size='8.5'/>";};
		case 3: { _rank = "<img image='images\idcards\cop\3.jpg' size='8.5'/>";};
		case 4: { _rank = "<img image='images\idcards\cop\4.jpg' size='8.5'/>";};
		case 5: { _rank = "<img image='images\idcards\cop\5.jpg' size='8.5'/>";};
		case 6: { _rank = "<img image='images\idcards\cop\6.jpg' size='8.5'/>";};
		case 7: { _rank = "<img image='images\idcards\cop\7.jpg' size='8.5'/>";};
		case 8: { _rank = "<img image='images\idcards\cop\8.jpg' size='8.5'/>";};
		case 9: { _rank = "<img image='images\idcards\cop\9.jpg' size='8.5'/>";};
		case 10: { _rank = "<img image='images\idcards\cop\10.jpg' size='8.5'/>";};
		case 11: { _rank = "<img image='images\idcards\cop\11.jpg' size='8.5'/>";};
		case 12: { _rank = "<img image='images\idcards\cop\12.jpg' size='8.5'/>";};
	};
	_message = format["<t size='1.25'>%1</t><br/><br/>%2<br/><br/>%3", name player, _rank];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};

if(playerSide == independent) then
{
	_mediclevel = call life_mediclevel;
	
	switch (_mediclevel) do
	{
		case 1: { _rank = "<img image='images\idcards\med\1.jpg' size='8.5'/>"; _trank = "Praktikant"};
		case 2: { _rank = "<img image='images\idcards\med\2.jpg' size='8.5'/>"; _trank = "Sanitäter"};
		case 3: { _rank = "<img image='images\idcards\med\3.jpg' size='8.5'/>"; _trank = "Rettungsassist."};
		case 4: { _rank = "<img image='images\idcards\med\4.jpg' size='8.5'/>"; _trank = "Notarzt"};
		case 5: { _rank = "<img image='images\idcards\med\5.jpg' size='8.5'/>"; _trank = "Oberarzt"};
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#ff0000'>%3</t>", name player, _rank, _trank];
	
//	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};

if(playerSide == civilian) then
{
	
	_id = "<img image='images\idcards\civ\id_card.paa' size='8'/>";
	_pkw = if(license_civ_driver) then {"<img image='images\idcards\civ\id_pkw.paa' size='8'/>";} else {"<br/>"}; 
	_lkw = if(license_civ_truck) then {"<img image='images\idcards\civ\id_lkw.paa' size='8'/>";} else {"<br/>"};
	_fish = if(getPlayerUID player == "76561198136538321") then {"<img image='images\idcards\cop\spec\our_dieter_kinder_ficker_lel.jpg' size='3.5'/>";} else {"<br/>"};
	
	_message = format["<t size='1.25'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>%5<br/>",name player,_id,_pkw,_lkw,_presse,_fish];
	[_message] remoteExec ["life_fnc_copLicenseShown",_target];
};
