/*
	File: fn_repairTruck.sqf
	
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
closeDialog 0;

private["_doors","_cells","_upp","_ui","_progress","_pgText","_cP","_veh"];

life_interrupted = false;
if(vehicle player != player) exitWith {};
if(playerside in [west,independent]) exitWith {["Dein Ernst?!?", false] spawn domsg};
if(player getVariable ["restrained",false] || player getVariable ["tied",false]) exitWith {["Du kannst nicht mit verbundenen Armen hacken.", false] spawn domsg};
if(player distance (getMarkerPos "Terminal") > 3) exitWith {["Hier kannst du nicht hacken.", false] spawn domsg};
if !(prisonbreak) exitWith {["Das Tor zum Gefängnis muss zuerst aufgesprengt werden.", false] spawn domsg};

life_action_inUse = true;
_upp = "Terminal wird gehackt";
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition _cp;

_veh = createVehicle ["Land_Secondlife_Laptop",[5186.4,2033.45,1.55], [], 0, "CAN_COLLIDE"];
_veh setDir 272.5;

["Second_Life_Laptop"] spawn fnc_removeitem;

playSound "hackingjail";

while{true} do
{
	uiSleep 3;
	if(animationState player != "CL3_anim_codecrackerATM") then {
		player playmovenow "CL3_anim_codecrackerATM";  
		player disableAI "anim";
	};
	if (player distance (getMarkerPos "Terminal") > 3) exitwith {life_interrupted = true};
	_cP = _cP + 0.01;
	if(_cP == 0.3) then {playSound "hackingjail";};
	if(_cP == 0.6) then {playSound "hackingjail";};
	if(_cP == 0.9) then {playSound "hackingjail";};
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1 || deadPlayer || player != vehicle player || life_interrupted) exitWith {};
	if(player getVariable ["restrained",false] || player getVariable ["tied",false]) exitWith {["Du kannst nicht mit verbundenen Armen hacken.", false] spawn domsg};
};
player switchmove "";
life_action_inUse = false;
5 cutText ["","PLAIN"];
deleteVehicle _veh;
if(life_interrupted) exitWith {life_interrupted = false; [localize "STR_NOTF_ActionCancel", false] spawn domsg; life_action_inUse = false;};

_doors = ['S1','S2','S3','S4','S5','S6','S7','door1','door2','door3','door4','door5','door6','door7','door8','door9','door10','door11','door12','door13','door14']; 
{ 
 jail animate [_x,1]; 
} foreach _doors;

_cells = ['A1','A2','A3','A4','A5','A6','A7','A8','A9','A10','A11','A12','B1','B2','B3','B4','B5','B6','B7','B8','B9','B10','B11','B12','C1','C2','C3','C4','C5','C6','C7','C8','C9','C10','C11','C12','D1','D2','D3','D4','D5','D6','D7','D8','D9','D10','D11','D12'];
{
jail animate [_x,-1];
} foreach _cells;

