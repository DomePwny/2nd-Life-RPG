/*
	File: fn_adacMarker.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks cops on the map for other cops. Only initializes when the actual map is open.
*/
private["_markers","_taxi"];
_markers = [];
_taxi = [];

sleep 0.5;
if(visibleMap) then {
	{if((side _x == civilian) && (player getVariable "taxi_driver") then {_taxi pushBack _x;})} foreach playableUnits;
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorYellow";
		_marker setMarkerTypeLocal "plp_mark_civ_taxi";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_markers pushBack [_marker,_x];
	} foreach _taxi;
		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
			
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 2;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_taxi = [];
}; 