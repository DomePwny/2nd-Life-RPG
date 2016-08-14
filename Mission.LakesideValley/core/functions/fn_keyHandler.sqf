/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
#include <macro.h>

private ["_coplevel","_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh",
"_locked","_interactionKey","_mapKey","_interruptionKeys","_player","_copPlayer"];

_player = player;
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_veh = vehicle player;
_cursorT = cursorTarget;

_copPlayer = if(playerSide == west) then {true} else {false};
//_medPlayer = if(playerSide == independent) then {true} else {false};
//_ipdPlayer = if(playerSide == east) then {true} else {false};

_coplevel = if(__GETC__(life_donator) >= 2) then {true} else {false};	// Donator Level abhängig! 2-3 = State, 4-5 = FBI

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0}; //46 war 219
_mapKey = actionKeys "ShowMap" select 0;

_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Dachtaste ' ^° ' und Tactical View und Commander Modus deaktivieren!
if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode") || _code in (actionKeys "TacticalView"))) then {
	_handled = true;
};


//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "SitDown") || _code in (actionKeys "Gear") || _code in (actionKeys "Throw") || _code in (actionKeys "salute") || _code in (actionKeys "ReloadMagazine")) 
&& {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if((!life_action_inUse) && (!delay_pickaxe)) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMapMarker;}};
			case east: {if(!visibleMap) then {[] spawn life_fnc_adacMarker;}};
		};
	};

	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};

	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if((!life_action_inUse) && (!delay_pickaxe)) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};

	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !lrl_knockedOut && !life_knockout && !life_istazed && !isNull _cursorT && _cursorT isKindOf "Man" && (isPlayer _cursorT) && alive _cursorT && _cursorT distance player < 3 && !(_cursorT getVariable "Escorting") && !(_cursorT getVariable "restrained") && speed _cursorT < 1 && !(player getVariable ["restrained", false])) then
		{
			[] call life_fnc_restrainAction;
		};
		
		//Rebellfesseln
		if(_shift && playerSide == civilian && (license_civ_rebel) && !lrl_knockedOut && !life_knockout && !life_istazed && !isNull _cursorT && _cursorT isKindOf "Man" && (isPlayer _cursorT) && alive _cursorT && _cursorT distance player < 3 && !(_cursorT getVariable "Escorting") && !(_cursorT getVariable "restrained") && speed _cursorT < 1 && !(player getVariable ["restrained", false]) && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "") then
		{
			[] call life_fnc_restrainAction;
		};
	};

	//C Key
    case 15:
    {    
		if((vehicle player == player) && !_alt && !_ctrlKey && playerside == civilian && !life_action_inUse && !lrl_knockedOut && !life_knockout && !life_istazed && !delay_pickaxe) then {
			if(!dialog) then {
				[] call life_fnc_Farmmenu;
			};
		};
    };
	
	//Niederschlagen
	case 34:
	{
		if(_shift && playerSide in [civilian, west] && !isNull _cursorT && _cursorT isKindOf "Man" && isPlayer _cursorT && alive _cursorT && _cursorT distance player <= 1.9 && _speed < 15) then
		{
			if((animationState _cursorT) != "static_dead" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !(player getVariable["restrained",false]) && !lrl_knockedOut && !life_knockout && !life_istazed) then
			{
				[_cursorT] spawn life_fnc_knockoutAction;
			};
			_handled = true;
		};
	};

//	case 46:
//	{
//		if(!_alt && !_ctrlKey && _shift) then
//		{
//			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !lrl_knockedOut && !life_knockout && !life_istazed ) then
//			{
//				if (player getVariable ["surrender", false]) then
//				{
//					player setVariable ["surrender", false, true];
//				} else {
//					[] spawn life_fnc_surrender;
//				};
//			};
//		};
//	};	
	
	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			} else {
				if((_cursorT isKindOf "Car" OR _cursorT isKindOf "Air" OR _cursorT isKindOf "Ship" OR _cursorT isKindOf "A3L_Tahoe_Base" OR _cursorT isKindOf "Motorcycle" OR _cursorT isKindOf "House_F") && player distance _cursorT < 5 && vehicle player == player && alive _cursorT) then {
					if(!life_istazed && !life_knockout && !lrl_knockedOut && !(player getVariable "restrained")) then {
						if((count (player nearObjects["Man",4]) <= 1)) then {
							if(_cursorT in life_vehicles OR {!(_cursorT getVariable ["locked",true])}) then {
								[_cursorT] call life_fnc_openInventory;
							};
						} else {
							hint "Du kannst nicht auf den Kofferraum zugreifen, während eine Person bei dir im Umkreis (7 Meter) ist!";
						};
					};
				};
			};
		};
	};
	
	//L Key?
	case 38:{
		if(!_alt && !_ctrlKey && _veh == player) exitWith {true; [] call life_fnc_radar;};
		
		if(_veh != player)then{
			if(_shift && !_ctrlKey && side player == west)exitWith{		
				true;	// direct returns because its an exitWith
				if((driver _veh) == player)then{				
					if!(isNil{_veh getVariable "xcar"})then{	
						[_veh] spawn life_fnc_EinsatzLicht;				
					}else{
						if(life_inv_blaulicht != 0 )then{
							[false,"blaulicht",1] call life_fnc_handleInv;	
							_veh setVariable["xcar",["BL_car",false,nil],true];
						};
					};							
				};												
			};
			if(_ctrlKey && !_shift && side player == west)exitWith{	
				true;		
				if((driver _veh) == player)then{
					if!(isNil {_veh getVariable "xcar"})then{
						private["_xcar"];
						_xcar =_veh getVariable "xcar";		
						if!(isNil{_xcar select 2})then{					
							if(_xcar select 0 == "BL_car") then {								
								[true,"blaulicht",1] call life_fnc_handleInv;		
								_veh setVariable["xcar",nil,true];
							}else{
								_veh setVariable["xcar",[_xcar select 0,false,nil],true];
							};														
							{
								if(typeOf _x == "Land_Camping_Light_off_F")then{
									detach _x;
									deleteVehicle _x;
								};
							} forEach attachedObjects _veh;
						};
					};
				};
			};
		};
	};
	
	// ENDE
	case 207: {
		if(_ctrlKey && !_shift) then {
			if((call(life_adminlevel) == 3) && (playerSide in [civilian,west])) then {
				if(vehicle player != player && !life_umbrellus_active && ((driver vehicle player) == player)) then {
					[] spawn {
					life_umbrellus_active = true;
						sleep 14;
						systemChat "Sirene kann deaktiviert werden.";
					life_umbrellus_active = false;
					};
					_veh = vehicle player;
					if(isNil {_veh getVariable "umbrellus"}) then {_veh setVariable["umbrellus",false,true];};
					
					if((_veh getVariable "umbrellus")) then {
						titleText ["= Admin-Sirene 1 AUS =","PLAIN"];
						_veh setVariable["umbrellus",false,true];
					} else {
						titleText ["= Admin-Sirene 1 AN =","PLAIN"];
						_veh setVariable["umbrellus",true,true];
						[[_veh],"life_fnc_umbrellus",nil,true] spawn life_fnc_MP;
					};
				};
			};
		};
		
		if(_ctrlKey && _shift) then {
			if((call(life_adminlevel) == 3) && (playerSide in [civilian,west])) then {
				if(vehicle player != player && !life_umbrellus2_active && ((driver vehicle player) == player)) then {
					[] spawn {
					life_umbrellus2_active = true;
						sleep 14;
						systemChat "Sirene kann deaktiviert werden.";
					life_umbrellus2_active = false;
					};
					_veh = vehicle player;
					if(isNil {_veh getVariable "umbrellus2"}) then {_veh setVariable["umbrellus2",false,true];};
					
					if((_veh getVariable "umbrellus2")) then {
						titleText ["= Admin-Sirene 2 AUS =","PLAIN"];
						_veh setVariable["umbrellus2",false,true];
					} else {
						titleText ["= Admin-Sirene 2 AN =","PLAIN"];
						_veh setVariable["umbrellus2",true,true];
						[[_veh],"life_fnc_umbrellus2",nil,true] spawn life_fnc_MP;
					};
				};
			};
		};
		
		/*if(!_shift && !_alt && !_ctrlKey) then {
			[] call life_fnc_earplugs;
		};*/
	};
	
	// F
	case 33: {
		if(_copPlayer && _coplevel &&_ctrlKey) then {				// ***** Polizei Sirene (FBI UND STATEPOLICE) *******
			if(vehicle player != player && !life_siren_active &&((driver vehicle player) == player)) then {
				[] spawn {
					life_siren_active = true;
					sleep 6.547;
					life_siren_active = false;
				};
					_veh = vehicle player;
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					
					if((_veh getVariable "siren")) then {
						titleText ["= Wail-Sirene AUS =","PLAIN"];
						_veh setVariable["siren",false,true];
					} else {
						titleText ["= Wail-Sirene AN =","PLAIN"];
						_veh setVariable["siren",true,true];
						[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
					};
			};
		};
	};
		
/*		
		if(_medPlayer && _ctrlKey) then {				// ***** Medic Sirene *******
			if(vehicle player != player && !life_medSiren_active &&((driver vehicle player) == player)) then {
				[] spawn {
					life_medSiren_active = true;
					sleep 4.1;
					life_medSiren_active = false;
				};
					_veh = vehicle player;
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					
					if((_veh getVariable "siren")) then {
						titleText ["= Einsatz-Sirene AUS =","PLAIN"];
						_veh setVariable["siren",false,true];
					} else {
						titleText ["= Einsatz-Sirene AN =","PLAIN"];
						_veh setVariable["siren",true,true];
						[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
					};
			};
		};
	
		if(_ipdPlayer && _ctrlKey) then {				// ***** IPD Sirene *******
			if(vehicle player != player && !life_ipdSiren_active &&((driver vehicle player) == player)) then {
				[] spawn {
					life_ipdSiren_active = true;
					sleep 3.2;
					life_ipdSiren_active = false;
				};
					_veh = vehicle player;
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					
					if((_veh getVariable "siren")) then {
						titleText ["= Einsatz-Sirene AUS =","PLAIN"];
						_veh setVariable["siren",false,true];
					} else {
						titleText ["= Einsatz-Sirene AN =","PLAIN"];
						_veh setVariable["siren",true,true];
						[[_veh],"life_fnc_adacSiren",nil,true] spawn life_fnc_MP;
					};
			};
		};
		*/

	//Z - Spieler Menü
	case 21: {
		if(!_alt && !_ctrlKey && !dialog && !life_istazed) then {
			[] call life_fnc_p_openMenu;
		};
	};
	/*{
		//if(!_alt && _ctrlKey && !dialog && !(player getVariable["restrained",false]) && !(player getVariable["restrainedziv",false])) then
		/*if(!_alt && !dialog && !(player getVariable["restrained",false]) && !(player getVariable["restrainedziv",false])) then
		{
			createdialog "playerSettings";
		};*/
		/*if(!_alt && !_ctrlKey && !dialog && !(player getVariable["restrained",false]) && !(player getVariable["restrainedziv",false])) then
		{
			//[] call fnc_opentablet;
			[] call life_fnc_p_openMenu;
		};
	};*/

	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = _cursorT;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						[[player,"CarUnlocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						[[player,"CarLocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					};
				};
			};
		};
	};
	
	case 79:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained") && (vehicle player == player) && !(player getVariable "isblinded")) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};
	
	//Numpad 5
	case 76:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained") && (vehicle player == player) && !(player getVariable "isblinded") && !life_knockout && !life_istazed && !lrl_knockedOut) then
		{
			[[player,"cl3_dubstepdance"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
		};
	};
	
	//Numpad 6
	case 77:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained") && (vehicle player == player) && !(player getVariable "isblinded") && !life_knockout && !life_istazed && !lrl_knockedOut) then
		{
			[[player,"cl3_dubsteppop"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
		};
	};
	
	case 80:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained") && (vehicle player == player) && !(player getVariable "isblinded") && !life_knockout && !life_istazed && !lrl_knockedOut) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
	};

	case 81:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained") && (vehicle player == player) && !(player getVariable "isblinded") && !life_knockout && !life_istazed && !lrl_knockedOut) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
	};

	case 75:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained") && (vehicle player == player) && !(player getVariable "isblinded") && !life_knockout && !life_istazed && !lrl_knockedOut) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};
	
	case 62:
	{
		if (_alt) then
		{
			diag_log format ["SERVER_INFO | %1 (%2) verwendete ALT+F4",_player getVariable["realname",name _player],getPlayerUID _player];
			[[0,format["%1 verwendet ALT+F4",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			[] spawn life_fnc_commandSpam;
			if(!alive player) then {
				[[1,format[":: SERVER INFO :: %1 verwendet ALT+F4 während er tot ist - !GEAR_SAFE! (Screenshot machen und dem Support melden)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			};
			if(player getVariable "restrained") then {
				[[1,format[":: SERVER INFO :: %1 verwendet ALT+F4 während er gefesselt ist - !COMBAT_LOG! (Screenshot machen und dem Support melden)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			};
			[] call SOCK_fnc_updateRequest;
		};
	};
	
	case 15:	// ALT + TAB
	{
		if (_alt) then
		{
			[] call SOCK_fnc_updateRequest;
		};
	};
	
	case 211:
	{
		if (_alt && _ctrlKey) then
		{
			diag_log format ["SERVER INFO: %1 verwendet CTRL + ALT + DEL",_player getVariable["realname",name _player]];
			[[0,format["SERVER INFO: %1 verwendet CTRL + ALT + DEL",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			[] spawn life_fnc_commandSpam;
			[] call SOCK_fnc_updateRequest;
		};
	};
	
	case 1:
    {
		if( _ctrlKey )  then {
			diag_log format ["SERVER INFO: %1 verwendet CTRL + ESC",_player getVariable["realname",name _player]];
			[] call SOCK_fnc_updateRequest;
		};
	};
};

_handled;
