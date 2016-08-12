/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/
_mode = _this select 0;
_itemArray = param [1,[]];
_txt1 = DYNMARKET_UserNotification_Text select 0;
_txt2 = DYNMARKET_UserNotification_Text select 1;
if (isNil "DYNAMICMARKET_boughtItems") then {DYNAMICMARKET_boughtItems=[];};

switch (_mode) do {
	case 0:
	{
		[DYNAMICMARKET_boughtItems] remoteExecCall ["TON_fnc_getUpdate", (call life_fnc_HCC)];
		if (DYNMARKET_UserNotification) then {
			[_txt2, false] spawn domsg;
		};
		DYNAMICMARKET_boughtItems = [];
	};
	case 1:
	{
		_needToUpdate = false;
		if (!isNil "DYNMARKET_prices") then {DYNMARKET_pricesOld = DYNMARKET_prices;} else {_needToUpdate=true;};
		sell_array = _itemArray;
		DYNMARKET_prices = _itemArray;
		if (DYNMARKET_UserNotification) then {
			[_txt1, false] spawn domsg;
		};
		if (_needToUpdate) then {DYNMARKET_pricesOld = DYNMARKET_prices;};
	};
};