/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_restrainer","_player","_autoUnRstCD"];
_restrainer = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
_autoUnRstCD = false;
if(isNull _restrainer) exitWith {};

titleText[format[localize "STR_Cop_Retrained",_restrainer getVariable["realname",name _restrainer]],"PLAIN"];

playSound3D [KF_CHICKEN + "sounds\cuff.ogg",_player,false,getposASL _player,1.5,1,25];
	
while {player getVariable "restrained"} do
{

	disableSerialization;

	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};
	
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "restrained") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["restrained",false,true];
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		detach _player;
	};
	
	if(!alive _restrainer) then {
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		detach player;

	//Auto-Unrestrain nach 5 min
		if(!lrl_unrestrainTimerBool && !_autoUnRstCD) then {
			if(lrl_unrestrainTimerBool) exitWith {}; //Obrige Abfrage wird ignoriert... wieso das?!?!
			if(_autoUnRstCD) exitWith {};
			
			_autoUnRstCD = true;
			
			[] spawn {
				sleep (5 * 60);
				lrl_unrestrainTimerBool = true;
			};
		};
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {
			player action["eject",vehicle player]; 
			player action["GetOut",vehicle player];	//Fix für Pilotensitz
		};
	};
	
	if(lrl_unrestrainTimerBool) then {
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		player setVariable ["restrained",false,true];
	};
};

if(alive player) then
{
	player switchMove "";
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	detach player;
};