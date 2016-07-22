/*
	File: vehicle_check.sqf
	Author: Paradox
	
	Description: Checkt die Fahrzeuge und deren Krafstoffe
*/
private ["_vehicle"];
_vehicle = nearestObjects[getPos player, ["Landvehicle"],5];

if(count _vehicle == 0) exitwith { hint "Kein Fahrzeug gefunden"};
if(count _vehicle > 1 ) exitwith { hint "Es wurde mehr als ein Fahrzeug gefunden! Bitte entferne das zweite...";};
if ((_vehicle select 0) iskindof "Air") exitwith { hint "Ein Hubschrauber kann nicht an einer normalen Tankstelle betankt werden"};

switch(true)do
{
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "A3L_F350Black"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "A3L_F350Blue"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "A3L_F350Red"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "A3L_F350White"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Transit"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "A3L_Bus"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Flat_Bed"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Log_Truck"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Box_Truck"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Jonzie_Tanker_Truck"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "Nhz_audia8limo"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "wirk_h3_limo"): {call life_fnc_diesel};
	default {hint "Dein Fahrzeug kann nicht gefunden werden, melde das dringend einem Admin. Tanke nun Super mit einem Tank von 50 Litern."; call life_fnc_super; diag_log format["FUEL SCRIPT: MISSING VEHICLE %1",(_vehicle select 0)];}
	};

