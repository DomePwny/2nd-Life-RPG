#include <macro.h>
/*
	File: fn_vehicleShopLBChange.sqf
	
	
	Description:
	Called when a new selection is made in the list box and
	displays various bits of information about the vehicle.
*/
disableSerialization;
private["_control","_index","_className","_basePrice","_vehicleInfo","_colorArray","_ctrl"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_className = _control lbData _index;
_vIndex = _control lbValue _index;
_vehicleList = [life_veh_shop select 0] call life_fnc_vehicleListCfg; _basePrice = (_vehicleList select _vIndex) select 1;
_baseprice = _baseprice / 10;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

[_className] call life_fnc_vehicleShop3DPreview;
ctrlShow [2330,true];
(getControl(2300,2303)) ctrlSetStructuredText parseText format[
(localize "STR_Shop_Veh_UI_Ownership")+ " <t color='#8cff9b'>$%1</t><br/>" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %2 km/h<br/>" +(localize "STR_Shop_Veh_UI_HPower")+ " %3<br/>" +(localize "STR_Shop_Veh_UI_PSeats")+ " %4<br/>" +(localize "STR_Shop_Veh_UI_Trunk")+ " %5<br/>" +(localize "STR_Shop_Veh_UI_Fuel")+ " %6<br/>" +(localize "STR_Shop_Veh_UI_Armor")+ " %7",
[_basePrice] call life_fnc_numberText,
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
_vehicleInfo select 12,
_vehicleInfo select 9
];

_ctrl = getControl(2300,2304);
lbClear _ctrl;
_colorArray = [_className] call life_fnc_vehicleColorCfg;

for "_i" from 0 to count(_colorArray)-1 do {
	if((_colorArray select _i) select 1 == (life_veh_shop select 2)) then {
		_temp = [_className,_i] call life_fnc_vehicleColorStr;
		_ctrl lbAdd format["%1",_temp];
		_ctrl lbSetValue [(lbSize _ctrl)-1,_i];
	};
};


lbSetCurSel[2304,0];
if((lbSize _ctrl)-1 != -1) then {
	ctrlShow[2304,true];
} else {
	ctrlShow[2304,false];
};
true;