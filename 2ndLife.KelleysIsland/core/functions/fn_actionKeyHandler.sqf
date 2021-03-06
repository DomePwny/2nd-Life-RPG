#include <macro.h>
/*
	File: fn_actionKeyHandler.sqf
	
	
	Description:
	Master action key handler, handles requests for picking up various items and
	interacting with other players (Cops = Cop Menu for unrestrain,escort,stop escort, arrest (if near cop hq), etc).
*/
private["_curTarget","_isWater", "_veh","_spikeStrips"];
if(vehicle player != player) exitWith {
	_units = [];
	{if(vehicle _x != _x && player distance _x < 20 && !(_x in crew (vehicle player)) && _x == (driver (vehicle _x))) then {_units pushBack _x};} forEach playableUnits;
	if(count _units > 0 && count life_racers == 0) then {
		_units call KBW_fnc_openDuelUI;
	};
}; 

_curTarget = cursorTarget;


if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.
if(life_interrupted) exitWith {life_interrupted = false;};


_isWater = surfaceIsWater (getPosASL player);
if(_isWater) then {
	private["_fish","_turtle","_handle","_turtles"];
	_turtles = [position player, ["Turtle_F"], 3.5] call life_fnc_nearestObjects;
	if (count _turtles > 0) then {
		_turtle = (nearestObjects[getPos player,["Turtle_F"],3.5]) select 0;
		if(!alive _turtle) then {
			_handle = [_turtle] spawn life_fnc_catchTurtle;
			waitUntil {scriptDone _handle};
		};
	};
};
	
_spikeStrips = [position player, ["CG_Spikes_Extended"], 3.5] call life_fnc_nearestObjects;
if (count _spikeStrips > 0) then {
	_spikeStrip = (nearestObjects[getPos player,["CG_Spikes_Extended"],5]) select 0;
	deletevehicle _spikeStrip;
	["You picked up some spike strips!", false] spawn domsg; 
	player additem "CG_Spikes_Collapsed";
};

if(isNull _curTarget) exitWith {
	if(playerSide in [civilian,east]) then {
		if ( life_inv_pickaxe > 0 ) then {
			[] spawn life_fnc_pickaxeUse;
		};
		
		if ( life_inv_pickaxe > 0) then {
		[] spawn life_fnc_gather;
		};
		
		if(playerSide in [civilian,east]) then {
		[] spawn life_fnc_friedhof;
		};
	};
};


if(_curTarget isKindOf "House_F" && {player distance _curTarget < 12}) exitWith {
	[_curTarget] call life_fnc_houseMenu;
};

if(dialog) exitWith {}; //Don't bother when a dialog is open.

if(vehicle player != player) exitWith {}; //He's in a vehicle, cancel!
life_action_inUse = true;

//Temp fail safe.
[] spawn {

	uiSleep 60;
	life_action_inUse = false;
};

if(!dialog && playerSide == independent && _curTarget isKindOf "Man") exitwith {
	if((_curTarget getVariable["dead",FALSE]) && "Second_Life_Defi_i" in magazines player) then {
		[_curTarget] call life_fnc_revivePlayer;
	} else {
		[_curTarget] call life_fnc_emsInteractionMenu;
	};
};

if((_curTarget getVariable["dead",FALSE]) && playerSide != independent && !dialog && _curTarget isKindOf "Man") exitwith {
	if(side _curTarget == independent || side _curTarget == west || side _curTarget == civilian || side _curTarget == east) then {
		if( life_inv_medkit > 0 ) then { 
			[_curTarget] call life_fnc_CPRPlayer;
		};
	};
};

if(!dialog && (playerSide in [civilian,east]) && _curTarget isKindOf "Man" && isPlayer _curtarget && !(_curTarget getVariable["dead",FALSE])) exitwith {
		[_curTarget] call life_fnc_civInteractionMenu;
};


//If target is a player then check if we can use the cop menu.
if(isPlayer _curTarget && _curTarget isKindOf "Man") then {
	if(_curTarget distance player < 5 && !dialog && playerSide == west) then {
		[_curTarget] call life_fnc_copInteractionMenu;
	};
} else {
	//OK, it wasn't a player so what is it?
	private["_isVehicle","_miscItems","_money","_animals"];
	_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
	_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F","Land_Sleeping_bag_blue_folded_F","Land_Screwdriver_V1_F","Land_ButaneCanister_F","Land_Antibiotic_F","Land_VitaminBottle_F","Land_DisinfectantSpray_F","Land_MobilePhone_smart_F","Land_Bandage_F","Land_Pillow_grey_F","plp_bo_BottleBitters","plp_bo_BottleBitters","Land_SatellitePhone_F","Land_Battery_F","Land_Defibrillator_F"];
	_animals = [position player, ["Sheep_random_F","Goat_random_F","Hen_random_F","Cock_random_F","Rabbit_F"], 3.5] call life_fnc_nearestObjects;
	_money = "cg_money_stack_1";
	
	//It's a vehicle! open the vehicle interaction key!
	if(_isVehicle) then {
		if(!dialog) then {
			if(player distance _curTarget < ((boundingBox _curTarget select 1) select 0) + 2) then {
				[_curTarget] call life_fnc_vInteractionMenu;
			};
		};
	} else {
		//Is it a animal type?
		if (count _animals > 0) then {
			_animal = _animals select 0;
			if (!alive _animal) then {
				_chance = round (random 100);
				if(_chance > 60 && !license_civ_rifle) then {
					["dnopermit", false] remoteExec ["fnc_dispatch",west];	
				};	
				[_animal] call life_fnc_gutAnimal;
			};
		} else {
			//OK, it wasn't a vehicle so let's see what else it could be?
			if((typeOf _curTarget) in _miscItems) then {
				//OK, it was a misc item (food,water,etc).

				if ((typeOf _curTarget) == "Land_Sleeping_bag_blue_folded_F") then {
					private ["_var"];
					_var = _curTarget getVariable "pickup";
					if (isNil "_var") exitwith {};
					if (_var) then {
						
							life_num = 0;
							{
							  detach _x;
							} forEach attachedObjects player;

						if (side player == west) then {
								_veh = _this select 0;

								["Bring this suitcase to the PD for a reward!",30,"blue"] spawn domsg;
								_curTarget setVariable ["pickup",false,true];
								_curTarget attachto [player, [0.1,-0.18,0], "rfemur"];
								_curTarget setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
								_curTarget setpos (getpos _veh);

								_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_curTarget];
								
								[_curTarget,_id] spawn {
									_id = _this select 1;
									_suitcaseDeleted = false;
									while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
										if ((!(isNull objectParent player)) && (!(_suitcaseDeleted))) then 
										{
											player removeAction _id;
											detach _veh;
											deleteVehicle _veh;
											_suitcaseDeleted = true;
										};
										
										if ((_suitcaseDeleted) && (isNull objectParent player)) then {
											_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);
											{_veh disableCollisionWith _x} foreach playableUnits;
											_veh setVariable ["pickup",false,true];
											_veh attachto [player, [0.1,-0.18,0], "rfemur"];
											_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
											_veh setpos (getpos _veh);
											_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_veh];
											_suitcaseDeleted = false;
										};
									
										if((life_istazed) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((life_interrupted) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((player getVariable["restrained",false]) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if (!(!deadPlayer)) exitwith {detach _veh;};
										
										uiSleep 0.1;
									};
									
									detach _veh;
									_veh setVariable ["pickup",true,true];
									player removeAction _id;
								};						
						};
						
						if (side player == civilian || side player == east) then {
								["Bring this suitcase to a trader to get the cash!",30,"blue"] spawn domsg;
								_curTarget setVariable ["pickup",false,true];
								_curTarget attachto [player, [0.1,-0.18,0], "rfemur"];
								_curTarget setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
								_curTarget setpos (getpos _veh);
								_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_curTarget];
								
								[_curTarget,_id] spawn {
									_veh = _this select 0;
									_id = _this select 1;
									_suitcaseDeleted = false;
									while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
										if ((!(isNull objectParent player)) && (!(_suitcaseDeleted))) then 
										{
											player removeAction _id;
											detach _veh;
											deleteVehicle _veh;
											_suitcaseDeleted = true;
										};
										
										if ((_suitcaseDeleted) && (isNull objectParent player)) then {
											_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);
											{_veh disableCollisionWith _x} foreach playableUnits;
											_veh setVariable ["pickup",false,true];
											_veh attachto [player, [0.1,-0.18,0], "rfemur"];
											_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
											_veh setpos (getpos _veh);
										_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_veh];
										_suitcaseDeleted = false;
										};
										
										if((life_istazed) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((life_interrupted) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((player getVariable["restrained",false]) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if (!(!deadPlayer)) exitwith {detach _veh;};
										uiSleep 0.1;
									};
									
									detach _veh;
									_veh setVariable ["pickup",true,true];
									player removeAction _id;
								};
						};
					};
				};
				
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_pickupItem;
				waitUntil {scriptDone _handle};
			} else {
				//It wasn't a misc item so is it money?
				if((typeOf _curTarget) == _money && {!(_curTarget getVariable["inUse",false])}) then {
					private["_handle"];
					_curTarget setVariable["inUse",TRUE,TRUE];
					_handle = [_curTarget] spawn life_fnc_pickupMoney;
					waitUntil {scriptDone _handle};
				};
			};
		};
	};
};