/*
	File: vehicle_check.sqf
	Author: Paradox
	
	Description: Checkt die Fahrzeuge und deren Krafstoffe
*/
private ["_vehicle"];
_vehicle = nearestObjects[getPos player, ["Landvehicle"],3];

if(count _vehicle == 0) exitwith { hint "Kein Fahrzeug gefunden"};
if(count _vehicle > 1 ) exitwith { hint "Es wurde mehr als ein Fahrzeug gefunden! Bitte entferne das zweite...";};
if ((_vehicle select 0) iskindof "Air") exitwith { hint "Ein Hubschrauber kann nicht an einer normalen Tankstelle betankt werden"};

switch(true)do
{
	case ((_vehicle select 0) iskindof "Jonzie_Transit"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "ADM_Ford_F100"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Flat_Bed"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Log_Truck"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Box_Truck"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Tanker_Truck"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Nhz_audia8limo"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "wirk_h3_limo"): {call life_fnc_diesel};
	default {call life_fnc_super};
	};

