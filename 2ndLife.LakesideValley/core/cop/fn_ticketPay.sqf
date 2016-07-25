/*
	File: fn_ticketPay.sqf
	
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(cash_in_hand < life_ticket_val) exitWith
{
	if(cash_in_bank < life_ticket_val) exitWith 
	{
		[localize "STR_Cop_Ticket_NotEnough", false] spawn domsg;
		closeDialog 0;
	};
	[format[(localize "STR_Cop_Ticket_Paid"),[life_ticket_val] call life_fnc_numberText], false] spawn domsg;
	["bank","take",life_ticket_val] call life_fnc_handleCash; 
	life_ticket_paid = true;
	[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];	
	closeDialog 0;
	[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];
};

[format[(localize "STR_Cop_Ticket_Paid"),[life_ticket_val] call life_fnc_numberText], false] spawn domsg;
["cash","take",life_ticket_val] call life_fnc_handleCash; 
life_ticket_paid = true;
[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];
closeDialog 0;
[format[localize "STR_Cop_Ticket_PaidNOTF_2",profileName],false] spawn domsg;
[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];