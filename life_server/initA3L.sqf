A3L_fnc_Zep6EvEd = [];

A3L_fnc_serverexec = [
"\Core\Network\fn_sendFunctions.sqf",
"\Core\Server\fn_buildings.sqf",
"\Core\Server\fn_buildings2.sqf",
"\Core\Network\fn_sounds.sqf"
];

A3L_fnc_PVList = [
"\Core\fn_messagesystem.sqf",
"\Core\fn_tablet.sqf",
"\Core\Network\fn_sounds.sqf",
"\Core\Functions\bank.sqf",
"\Core\Functions\message.sqf"
];

{
private ["_compiled","_preprocess"];
	_preprocess = preprocessFile (format ["\life_server\vew3s4Af%1",_x]);
	_compiled = compile _preprocess;
	[] spawn _compiled;
} foreach A3L_fnc_serverexec;

{
	private ["_compiled","_preprocess"];
	_preprocess = preprocessFile (format ["\life_server\vew3s4Af%1",_x]);
	_compiled = compile _preprocess;
	A3L_fnc_Zep6EvEd pushBack _compiled;
} foreach A3L_fnc_PVList;

A3L_fnc_Zep6EvEd = A3L_fnc_Zep6EvEd + [{A3L_fnc_dreDeta8 = true; A3L_fnc_Zep6EvEd = Nil;}];

publicVariable "A3L_fnc_Zep6EvEd";
publicVariable "A3L_CurrentVersion";
A3L_fnc_serverexec = Nil;
A3L_fnc_Zep6EvEd = Nil;
