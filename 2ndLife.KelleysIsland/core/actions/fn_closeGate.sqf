/*
	File: fn_repairTruck.sqf
	
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP"];
_veh = cursorTarget;
life_interrupted = false;
if(isNull _veh) exitwith {};
if(player getVariable ["restrained",false] || player getVariable ["tied",false]) exitWith {["Du kannst das Fahrzeug nicht mit verbundenen Arme reparieren.", false] spawn domsg};

_cP = 0;

if("ToolKit" in (items player)) then
{
	life_action_inUse = true;
	_upp = "Tor versiegeln";
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition _cp;

	//playSound3D ["cg_sndimg\sounds\repair.ogg", player, false, getPosASL player, 1, 1, 125];

	while{true} do
	{
		uiSleep 1.85;
		if(animationState player != "Acts_carFixingWheel") then {
			player playmovenow "Acts_carFixingWheel";  
			player disableAI "anim"; 
		};
		if (player distance _veh > 4) exitwith {life_interrupted = true};
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1 || deadPlayer || player != vehicle player || life_interrupted) exitWith {};
		if(player getVariable ["restrained",false] || player getVariable ["tied",false]) exitWith {["You cannot repair a vehicle with your hands behind your back.", false] spawn domsg};
	};
	player switchmove "";
	life_action_inUse = false;
	5 cutText ["","PLAIN"];
	if(life_interrupted) exitWith {life_interrupted = false; [localize "STR_NOTF_ActionCancel", false] spawn domsg; life_action_inUse = false;};
	if(player != vehicle player) exitWith {["Das funktioniert nicht, solange du im Fahrzeug bist.", false] spawn domsg;};
	prisondoor animate ['main_door', 0];
	prisonbreak = false;
	["Das Tor wurde versiegelt!", false] spawn domsg;
	_chance = round (random 1000);
	if(_chance < 300) then 
	{
		player removeItem "ToolKit";
		["Dein Reparaturkasten ist aufgebraucht, kauf dir einen neuen!", false] spawn domsg;
	};
} else {
	["Du brauchst einen Werkzeugkasten zum Reparieren!", false] spawn domsg;
};