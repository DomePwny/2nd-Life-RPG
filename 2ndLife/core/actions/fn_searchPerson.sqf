/*
	File: fn_robPerson.sqf
	
	
	Description:
	Getting tired of adding descriptions...
*/
private["_policeSearch"];
_policeSearch = param [0,ObjNull,[ObjNull]];
if(isNull _policeSearch) exitWith {}; //No one to return it to?

[] spawn fnc_searched;