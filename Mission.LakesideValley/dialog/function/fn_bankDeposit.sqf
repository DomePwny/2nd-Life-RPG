/*
	File: fn_bankDeposit.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out.
*/
private["_value"];
_value = parseNumber(ctrlText 2702);

//Series of stupid checks
if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 1) exitWith {hint "Du kannst nicht weniger als $0 abheben."};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_value > doofi_b4r5) exitWith {hint localize "STR_ATM_NotEnoughCash"};

doofi_b4r5 = doofi_b4r5 - _value;
man_ey_b4nK = man_ey_b4nK + _value;

hint format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
