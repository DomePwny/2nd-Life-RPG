/*
	File: fn_wantedAdd.sqf
	
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = param [0,"",[""]];
_name = param [1,"",[""]];
_type = _this select 2;
if(_uid == "" OR _name == "") exitWith {}; 

if(typeName _type == "STRING") then {
	switch(_type) do
	{
		case "187": {_type = ["Mörder",8500]};
		case "901A": {_type = ["Failure of Parole",4500]};
		case "901": {_type = ["Gefängnis Ausbruch",4500]};
		case "215": {_type = ["Attempted Auto Theft",2000]};
		case "213": {_type = ["Use of illegal explosives",10000]};
		case "212": {_type = ["Raub",5000]};
		case "211": {_type = ["Ladendiebstahl",1000]};
		case "207": {_type = ["Geißelnahme",3500]};
		case "207A": {_type = ["Versuchte Geißelnahme",2000]};
		case "487": {_type = ["Grand Theft",1500]};
		case "481": {_type = ["Drogenbesitz",1000]};
		case "482": {_type = ["Intent to distribute",5000]};
		case "483": {_type = ["Drogenverkauf",9500]};
		case "459": {_type = ["Burglary",6500]};
		case "501": {_type = ["- 15 km/h innerorts",100]};
		case "502": {_type = ["15 - 30 km/h innerorts",210]};
		case "503": {_type = ["30 km/h + innerorts",1000]};
		case "504": {_type = ["20 km/h ausserorts",150]};
		case "505": {_type = ["20 - 40 km/h ausserorts",350]};
		case "506": {_type = ["40 km/h + ausserorts",1000]};
		default {_type = [];};
	};
};
if(count _type == 0) exitWith {}; 


_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};