params [["_mode", "", [""]], ["_unit", objNull, [objNull]]];
//can add other take over points here later

deletemarker "rebelShipment";
_rebelshipment = createMarker ["rebelShipment", rebelshipment];
_rebelshipment setMarkerShape "RECTANGLE";
_rebelshipment setMarkerColor "ColorGreen";
_rebelshipment setMarkerSize [350,350];
uisleep 2400;
rebelshipment setvariable ["notCaptured", nil, true];
["Die Rebllen erhielten eine Waffenlieferung.", false] remoteExec ["domsg",civilian]; 
uisleep 3000;
rebelshipment setvariable ["progress", nil, true];
rebelshipment setvariable ["finished", nil, true];
["Der Rebellenstützpunkt kann wieder angegriffen werden.", false] remoteExec ["domsg",-2]; 
deletemarker "rebelShipment";

