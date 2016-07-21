/*
	File: fn_buyLicense.sqf
	
	
	Description:
	Called when purchasing a license. May need to be revised.
*/
private["_type"];
_type = _this select 3;

_price = [_type] call life_fnc_licensePrice;
_license = [_type,0] call life_fnc_licenseType;

if(cash_in_hand < _price) exitWith {[format["Du hast keine %1$ für die %2",[_price] call life_fnc_numberText,_license select 1], false] spawn domsg;};

["cash","take",_price] call life_fnc_handleCash;

[format["Du hast eine %1 für %2$ gekauft.", _license select 1,[_price] call life_fnc_numberText], false] spawn domsg;
missionNamespace setVariable[(_license select 0),true];
[2] call SOCK_fnc_updatePartial;