_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_index = -1;
if((count life_taxiMarker) > 2) then {
	//diag_log format["Zu viele Fahrzeuge"];
	//	["AdacMessage",[format["%1 braucht keine LAC Hilfe, bitte schaut per GPS nach"]] call BIS_fnc_showNotification;
	life_taxiMarker  = [];
}else{
	{
		_index = _index +1;
			if(_x select 0 == _caller)then{
				life_taxiMarker set [_index,objNull];
				life_taxiMarker = life_taxiMarker - [objNull];
			};
	}foreach life_taxiMarker;
};