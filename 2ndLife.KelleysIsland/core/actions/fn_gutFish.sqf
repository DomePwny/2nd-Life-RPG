/*
	File: fn_processAction.sqf
	
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_upp","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = param [0,ObjNull,[ObjNull]];
_type = param [3,"",[""]];
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "fish": {["fish","meatfish","Zerlege Fisch"];};
	case "meat": {["rawmeat","meatfish","Schneide Fleisch"];};
	default {[];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_upp = _itemInfo select 2;

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);
_weight = ([_oldItem] call life_fnc_itemWeight) * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_cP = 0.01;

_progress progressSetPosition _cp;
life_is_processing = true;

_delay = (1/150)*_weight;

while{true} do
{
	uiSleep _delay;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {};
};
	
if(player distance _vendor > 10) exitWith {[localize "STR_Process_Stay", false] spawn domsg; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
[format[localize "STR_Process_Processed",_oldVal,_itemName], false] spawn domsg;
life_is_processing = false;