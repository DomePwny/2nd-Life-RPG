/*
	File: fn_lockpick.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for lock-picking.
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance"];
_curTarget = cursorTarget;
life_interrupted = false;

if(life_action_inUse) exitWith {};

if(isNull _curTarget) exitWith {}; //Bad type

_distance = ((boundingBox _curTarget select 1) select 0) + 2;

if(player distance _curTarget > _distance) exitWith {}; //Too far

_isVehicle = if((_curTarget isKindOf "LandVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air") OR (_curTarget isKindOf "Motorcycle") OR (_curTarget isKindOf "A3L_Tahoe_Base")) then {true} else {false};

if(_isVehicle && _curTarget in life_vehicles) exitWith {hint localize "STR_ISTR_Lock_AlreadyHave"};

//More error checks
if(!_isVehicle && !isPlayer _curTarget) exitWith {};
if(!_isVehicle && !(_curTarget getVariable["restrained",false])) exitWith {};

_title = format[localize "STR_ISTR_Lock_Process",if(!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];

life_action_inUse = true; //Lock out other actions

//Setup the progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

player setVariable ["lockpicking",true,true];

if(_isVehicle) then {[_curTarget,"autoknacker"] call life_fnc_globalSound;};

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.26;
	
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed OR life_knockout) exitWith {
		[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player setVariable ["lockpicking",false,true];
		life_action_inUse = false;
	}; //Tazed
	
	if(player != vehicle player) exitWith {
		titleText [localize "STR_NOTF_ActionInVehicle","PLAIN"];
		[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player setVariable ["lockpicking",false,true];
		life_action_inUse = false;
	};
	
	if(life_interrupted) exitWith  {
		[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player setVariable ["lockpicking",false,true];
		life_action_inUse = false;
	};
	
	if((player getVariable["restrained",false])) exitWith  {
		[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player setVariable ["lockpicking",false,true];
		life_action_inUse = false;
	};
	
	if(player distance _curTarget > _distance) exitWith {_badDistance = true; player setVariable ["lockpicking",false,true]; life_action_inUse = false;};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
[[player,""],"life_fnc_animSync",nil,false] spawn life_fnc_MP;

//Error checks
if(!alive player OR life_istazed OR life_knockout) exitWith {player setVariable ["lockpicking",false,true];life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;player setVariable ["lockpicking",false,true];};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; life_action_inUse = false;player setVariable ["lockpicking",false,true];};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;player setVariable ["lockpicking",false,true];};
if(player != vehicle player) exitWith {titleText [localize "STR_NOTF_ActionInVehicle","PLAIN"]; life_action_inUse = false;player setVariable ["lockpicking",false,true];};
if(!([false,"lockpick",1] call life_fnc_handleInv)) exitWith {life_action_inUse = false;player setVariable ["lockpicking",false,true];};

life_action_inUse = false;

if(!_isVehicle) then {
	_curTarget setVariable["restrained",false,true];
	_curTarget setVariable["Escorting",false,true];
	_curTarget setVariable["transporting",false,true];
	hint "Handschellen erfolgreich geknackt und entfesselt!";
} else {
	_dice = random(100);
	if (playerside in [west,east,independent]) then {_dice = 1;};
	if(_dice < 25) then {
		[[_curTarget,0],"life_fnc_lockVehicle",_curTarget,false] spawn life_fnc_MP;
//		["Du hast das Fahrzeug aufgebrochen.",5,"green"] call A3L_Fnc_Msg
		[[_curTarget,"locked",false,true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
		titleText["= Du hast das Fahrzeug erfolgreich aufgebrochen =","PLAIN"];
	} else {
//		[[0,format[localize "STR_ISTR_Lock_FailedNOTF",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
//		["Du konntest das Fahrzeug nicht aufbrechen.",5,"red"] call A3L_Fnc_Msg;
		titleText[localize "STR_ISTR_Lock_Failed","PLAIN"];
	};
};
player setVariable ["lockpicking",false,true];

life_action_inUse = false;