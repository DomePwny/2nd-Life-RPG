/*
	File: fn_spawnPointCfg.sqf
	
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = param [0,civilian,[civilian]];

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case civilian:
	{

		if(playerside == civilian) then {
			_return = [
				["civ_spawn_1","Union City","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Keine Ahnung","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};

	};
	
	case east:
	{
		if(!(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["reb_spawn_1","Mafia Stadt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Mafia Posten","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if((rebelshipment getVariable["progress",FALSE]) || (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["civ_spawn_1","Union City","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
	};
	
	case independent: {
		_return = [
			["medic_spawn_2","Lakeside","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","Lakeside S&R","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],			
			["medic_spawn_3","Los D","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1","Morrison Town","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;