/*
    File: fn_sellLicense.sqf
	
    Description:
    Called when selling a license. May need to be revised.
*/
private["_type"];
_type = _this select 3;

_price = [_type] call life_fnc_licensePrice;
_price = _price * 0.9;
_license = [_type,0] call life_fnc_licenseType;

doofi_b4r5 = doofi_b4r5 + _price;
titleText[format[localize "STR_NOTF_ChopSoldCar", _license select 1,[_price] call life_fnc_numberText],"PLAIN"];
missionNamespace setVariable[(_license select 0),false];