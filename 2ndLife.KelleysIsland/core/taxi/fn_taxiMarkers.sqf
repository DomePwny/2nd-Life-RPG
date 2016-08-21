/*
	File: fn_adacMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks downed players on the map when it's open.
*/
private["_markers"];
_markers = [];
sleep 0.25;
if(visibleMap && (player getVariable "taxi_driver")) then {
	{
			_marker = createMarkerLocal [format["%1_taxi_marker",name _x],getPos _x];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTypeLocal "plp_mark_civ_taxi";
			_marker setMarkerTextLocal format["%1 ruft ein Taxi",name _x];
			_markers pushBack _marker;
	} foreach life_taxiMarker;

	waitUntil {!visibleMap};
	{deleteMarkerLocal _x;} foreach _markers;
};