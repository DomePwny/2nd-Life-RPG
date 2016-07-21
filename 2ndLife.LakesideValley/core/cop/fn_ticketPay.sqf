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
		hint localize "STR_Cop_Ticket_NotEnough";
		closeDialog 0;
	};
	hint format[localize "STR_Cop_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
	["bank","take",life_ticket_val] call life_fnc_handleCash; 
	life_ticket_paid = true;
	[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];	
	closeDialog 0;
	[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];
};

hint format[localize "STR_Cop_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
["cash","take",life_ticket_val] call life_fnc_handleCash; 
life_ticket_paid = true;
[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];
closeDialog 0;
[format[localize "STR_Cop_Ticket_PaidNOTF_2",profileName],false] spawn domsg;
[life_ticket_val,player,life_ticket_cop] remoteExecCall ["life_fnc_ticketPaid",life_ticket_cop];