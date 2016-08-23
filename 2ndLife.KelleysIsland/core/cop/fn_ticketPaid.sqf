/*
	
	
	Description:
	Verifies that the ticket was paid.
*/

params [["_value", 5, [0]], ["_unit", ObjNull, [ObjNull]], ["_cop", ObjNull, [ObjNull]]];

if(isNull _unit OR {_unit != life_ticket_unit}) exitWith {}; //NO
if(isNull _cop OR {_cop != player}) exitWith {}; //Double NO

_value = round(_value * .5);
[format["You were paid $%1 for your work.",_value], false] spawn domsg;
["bank","add", _value] call life_fnc_handleCash;
