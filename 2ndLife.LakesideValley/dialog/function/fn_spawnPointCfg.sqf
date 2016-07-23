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
			["cop_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_3","Los D","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_4","Airbase","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Lakeside Knast","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{

		if(playerside == civilian) then {
			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los D","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Crist","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
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
		if((playerside == east) && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
				["reb_spawn_1","Mafia Stadt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Mafia Posten","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(!(playerside == east) && (rebelshipment getVariable["progress",FALSE]) || (playerside == east) && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["civ_spawn_4","Los D","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Old Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
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
