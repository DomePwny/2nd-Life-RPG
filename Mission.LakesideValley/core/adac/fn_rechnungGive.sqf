/*
	File: fn_rechnungGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/

private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint localize "STR_Cop_TicketNil"};
if(isNull life_ticket_unit) exitWith {hint localize "STR_Cop_TicketExist"};

_val = ctrlText 8752;

if(!([_val] call TON_fnc_isnumber)) exitWith {hint localize "STR_Cop_TicketNum"};
if((parseNumber _val) > 200000) exitWith {hint "Die Rechnung darf nicht mehr als $200.000 betragen!"};

[[0,format["%1 hat %3 eine Rechnung von $%2 ausgestellt.",profileName,[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_rechnungPrompt",life_ticket_unit,false] spawn life_fnc_MP;

[[player, "CL3_anim_Ticket"], "life_fnc_animSync", nil, false] spawn life_fnc_MP;

closeDialog 0;