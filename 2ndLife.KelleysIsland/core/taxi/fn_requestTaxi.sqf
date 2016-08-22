private["_taxiOnline","_msg","_id"];
_taxiOnline = {_x != player && {side _x == civilian} && {alive _x} && {_x getVariable "taxi_driver"}} count playableUnits > 0; //Check if medics (indep) are in the room.
if(!_taxiOnline) exitWith {["Es ist kein Taxi verfügbar.", false] spawn domsg;};
if (player getvariable["taxi_driver", true]) exitWith {["Du bist selber Taxifahrer!", false] spawn domsg;};
_msg = "Hey ich benötige ein Taxi. Danke!";
_id = str round(random 99999);
[player, name player, _msg, _id] remoteExec ["life_fnc_taxiRequest", civilian, false];
[player,
[("Dein Taxi Auftrag: " + _id)],
[((name player) + ": " + _msg + "<br/><br/><executeClose expression='[(""Dein Taxi Auftrag: "" + " + str _id + "),""SUCCEEDED"",true] call BIS_fnc_taskSetState;[(""Taxi Auftrag: "" + " + str _id + "),""SUCCEEDED"",true] call BIS_fnc_taskSetState;[(""Dein Taxi Auftrag: "" + " + str _id + "),[(""Dein Taxi Auftrag: "" + " + str _id + " + "" ist abgeschlossen!""),(""Dein Taxi Auftrag: "" + " + str _id + "),(""Dein Taxi Auftrag: "" + " + str _id + ")]] call bis_fnc_tasksetdescription;[(""Taxi Auftrag: "" + " + str _id + "),[(""Taxi Auftrag: "" + " + str _id + " + "" ist abgeschlossen!""),(""Taxi Auftrag: "" + " + str _id + "),(""Taxi Auftrag: "" + " + str _id + ")]] call bis_fnc_tasksetdescription'>Auftrag abschließen</executeClose>"),("Dein Taxi Auftrag: " + _id),("Dein Taxi Auftrag: " + _id)],
player,
1,
1,
true,
"taxi"] call BIS_fnc_taskCreate;