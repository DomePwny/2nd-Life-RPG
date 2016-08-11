/*
	File: fn_virt_sell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sell a virtual item to the store / shop
*/
private["_type","_index","_price","_var","_amount","_name"];
if((lbCurSel 2402) == -1) exitWith {};
_type = lbData[2402,(lbCurSel 2402)];
_index = [_type,sell_array] call TON_fnc_index;
if(_index == -1) exitWith {};
_index2 = [_type,DYNMARKET_prices] call TON_fnc_index;
_price = 0.0;
if(_index2==-1) then {_price = (sell_array select _index) select 1;} else {_price = (DYNMARKET_prices select _index2) select 1;};
_var = [_type,0] call life_fnc_varHandle;

_amount = ctrlText 2405;
if(!([_amount] call TON_fnc_isnumber)) exitWith {[localize "STR_Shop_Virt_NoNum", false] spawn domsg;};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {[localize "STR_Shop_Virt_NotEnough", false] spawn domsg;};

_price = (_price * _amount);
_name = [_var] call life_fnc_vartostr;
if(([false,_type,_amount] call life_fnc_handleInv)) then
{
	[format[localize "STR_Shop_Virt_SellItem",_amount,_name,[_price] call life_fnc_numberText], false] spawn domsg;
	["cash","add",_price] call life_fnc_handleCash;
	DYNAMICMARKET_boughtItems pushBack [_type,_amount];
	[] call life_fnc_virt_update;
};

if(life_shop_type == "heroin") then
{
	private["_array","_ind","_val"];
	_array = life_shop_npc getVariable["sellers",[]];
	_ind = [getPlayerUID player,_array] call fnc_index;
	if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		life_shop_npc setVariable["sellers",_array,true];
	}
		else
	{
		_array pushBack [getPlayerUID player,profileName,_price];
		life_shop_npc setVariable["sellers",_array,true];
	};
	_chance = round (random 1000);
	if(_chance < 80) then {
		[1,"911 DISPATCH: Es sind Drogen im Umlauf."] remoteExecCall ["life_fnc_broadcast", west];
		["ddrugs", false] remoteExec ["fnc_dispatch",west];
		sleep 60;
};

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;