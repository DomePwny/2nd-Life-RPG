/*
	File: fn_repairTruck.sqf
	
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_upp","_ui","_progress","_pgText","_cP","_displayName"];
life_interrupted = false;
fishArray = ["Fish_1_i","Fish_2_i","Fish_3_i","Fish_4_i","Fish_5_i"];
if(fishArray in (items player)) then {_hasfish = true} else {_hasfish = false};
if !(_hasfish) exitWith {["Du hast keine Fische.",false] spawn doquickmsg};
if(player getVariable ["restrained",false] || player getVariable ["tied",false]) exitWith {["Du kannst den Fisch nicht verbundenen Armen ausweiden.", false] spawn domsg};
if(_hasfish) then
{
	_cP = 0;
	life_action_inUse = true;
	_displayName = "Fisch";
	_upp = format["Weide %1 aus",_displayName];
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition _cp;
	while{true} do
	{
		uiSleep 0.75;
		if(animationState player != "Acts_carFixingWheel") then {
			player playmovenow "Acts_carFixingWheel";  
			player disableAI "anim"; 
		};
		_cP = _cP + 0.05;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1 || deadPlayer || player != vehicle player || life_interrupted) exitWith {};
		if(player getVariable ["restrained",false] || player getVariable ["tied",false]) exitWith {["Du kannst den Fisch nicht verbundenen Armen ausweiden.", false] spawn domsg};
	};
	player switchmove "";
	life_action_inUse = false;
	5 cutText ["","PLAIN"];
	if(life_interrupted) exitWith {life_interrupted = false; [localize "STR_NOTF_ActionCancel", false] spawn domsg; life_action_inUse = false;};
	if(player != vehicle player) exitWith {[localize "STR_NOTF_RepairingInVehicle", false] spawn domsg;};
	["Der Fisch wurde ausgeweidet", false] spawn domsg;
};