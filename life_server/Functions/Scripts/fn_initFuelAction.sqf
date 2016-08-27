/*
	File: init_fuel_action.sqf
	Author: Paradox
	Description: AddActions an alle 28 Tanken hinzufügen
*/
sleep 2;

fuel_stations = [];

fuel_station1 = nearestObjects[getMarkerPos "fuelshop_1", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station1;

fuel_station2 = nearestObjects[getMarkerPos "fuelshop_2", ["Land_FuelStation_Feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station2;

fuel_station3 = nearestObjects[getMarkerPos "fuelshop_3", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station3;

fuel_station4 = nearestObjects[getMarkerPos "fuelshop_4", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station4;

fuel_station5 = nearestObjects[getMarkerPos "fuelshop_5", ["Land_FuelStation_Feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station5;

fuel_station6 = nearestObjects[getMarkerPos "fuelshop_6", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station6;

fuel_station7 = nearestObjects[getMarkerPos "fuelshop_7", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station7;