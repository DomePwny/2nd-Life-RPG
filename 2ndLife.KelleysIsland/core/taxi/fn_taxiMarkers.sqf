/*
	File: fn_adacMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks downed players on the map when it's open.
*/
private["_markers"];
_markers = [];
sleep 0.25;
if(visibleMap) then {
	{
			_marker = createMarkerLocal [format["%1_taxi_marker",_x select 0],getPos (_x select 0)];
			_marker setMarkerColorLocal "ColorYellow";
			_marker setMarkerTypeLocal "hd_warning";
			_marker setMarkerTextLocal format["%1 ruft ein Taxi",_x select 0];
			_markers pushBack _marker;
	} foreach life_taxiMarker;

	waitUntil {!visibleMap};
	{deleteMarkerLocal _x;} foreach _markers;
};