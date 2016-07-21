/*
	File: fn_searchAction.sqf
	
	
	Description:
	Starts the searching process.
*/
params [["_unit", objNull, [objNull]]];
if(isNull _unit) exitWith { ["You appear to not be looking at anyone to search..", false] spawn domsg; };

player switchMove "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";
[player,"amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon"] remoteExecCall ["life_fnc_animSync"];

[player] remoteExecCall ["life_fnc_searchPerson",_unit];
