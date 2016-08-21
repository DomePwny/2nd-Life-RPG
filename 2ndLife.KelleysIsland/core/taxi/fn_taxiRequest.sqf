if !(player getvariable["taxi_driver", false]) exitWith {};
//if (typeOf(vehicle player) != "cl3_suv_taxi") exitwith {["Du hast einen Funkspruch verpasst!"] spawn domsg;}; Sinnfrei da sonst die Leute auf ein Taxi warten und keiner kommt
params["_unit","_from","_msg","_id"];
[player,
[("Taxi Auftrag: " + _id)],
[(_from + ": " + _msg + "<br/><br/><executeClose expression='[(""Dein Taxi Auftrag: "" + " + str _id + "),""CANCELED"",true] call BIS_fnc_taskSetState;[(""Taxi Auftrag: "" + " + str _id + "),""CANCELED"",true] call BIS_fnc_taskSetState;[(""Dein Taxi Auftrag: "" + " + str _id + "),[(""Dein Taxi Auftrag: "" + " + str _id + " + "" ist abgelehnt!""),(""Dein Taxi Auftrag: "" + " + str _id + "),(""Dein Taxi Auftrag: "" + " + str _id + ")]] call bis_fnc_tasksetdescription;[(""Taxi Auftrag: "" + " + str _id + "),[(""Taxi Auftrag: "" + " + str _id + " + "" ist abgelehnt!""),(""Taxi Auftrag: "" + " + str _id + "),(""Taxi Auftrag: "" + " + str _id + ")]] call bis_fnc_tasksetdescription'>Auftrag ablehen</executeClose>"),("Taxi Auftrag: " + _id),("Taxi Auftrag: " + _id)],
_unit,
0,
1,
true,
"taxi"] call BIS_fnc_taskCreate;