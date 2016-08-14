/*
	File: fn_dpFinish.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Finishes the DP Mission and calculates the money earned based
	on distance between A->B
*/
private["_dis","_price"];
params[
	["_dp",ObjNull,[ObjNull]]
];
life_delivery_in_progress = false;
life_dp_point = nil;
_dis = round((getPos life_dp_start) distance (getPos _dp));
_price = round(2.8 * _dis / 20);

["DeliverySucceeded",[format[(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
doofi_b4r5 = doofi_b4r5 + _price;