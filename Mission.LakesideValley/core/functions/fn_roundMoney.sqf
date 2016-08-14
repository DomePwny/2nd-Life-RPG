/*
	File: fn_roundMoney.sqf
	Author: Marcel "VariatoX" Koch
	Server: lakeside-reallife.de

	Description:
	Rundet das Geld auf.

*/

private ["_money_old","_money_new"];

_money_old = doofi_b4r5; //Never work with global vars... god dammit!

if(_money_old >= 10) exitWith {};

_money_new = round(_money_old);
doofi_b4r5 = _money_new;