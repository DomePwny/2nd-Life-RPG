#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})

life_loopExit = false;
life_server_isReady = false;
life_chopShopInUse = false;
publicVariable "life_server_isReady";


[] spawn
{
	while {true} do {
		_cops = (west countSide playableUnits);
		_meds = (independent countSide playableUnits);
 		if(_cops > 5 || _meds > 1) then { 
 			_chance = round (random 85);
			if(_chance == 1) then {
				remoteExec ["fnc_weed_fire", -2];
			};
			if(_chance == 2) then {
				remoteExec ["fnc_union_fire", -2];
			};
			if(_chance == 3) then {
				remoteExec ["fnc_prison_fire", -2];
			};
			if(_chance == 4) then {
				remoteExec ["fnc_darthmouth_fire", -2];
			};
			if(_chance == 5) then {
				remoteExec ["fnc_saegewerk_fire", -2];
			};
			if(_chance == 6) then {
				remoteExec ["fnc_korn_fire", -2];
			};
			if(_chance == 7) then {
				remoteExec ["fnc_wolle_fire", -2];
			};
		};
		uisleep 300;
	};
};



[] execVM "\life_server\functions.sqf";

if(isNil {uiNamespace getVariable "life_sql_id"}) then
{
	"extDB2" callExtension "9:ADD_DATABASE:LIFE";

	_life_sql_id = str(round(random(999999)));
	life_sql_id = compileFinal _life_sql_id;
	"extDB2" callExtension format["9:ADD_DATABASE_PROTOCOL:LIFE:SQL_RAW_v2:%1:ADD_QUOTES",_life_sql_id];
	"extDB2" callExtension "9:LOCK";

	uiNamespace setVariable ["life_sql_id", _life_sql_id];
}
else
{
	life_sql_id = uiNamespace getVariable "life_sql_id";
	__CONST__(life_sql_id,life_sql_id);
};

[] call DB_fnc_serverTime;
["CALL resetLifeVehicles",1] call DB_fnc_asyncCall;
["CALL deleteDeadVehicles",1] call DB_fnc_asyncCall;
["CALL deleteOldHouses",1] call DB_fnc_asyncCall;

life_adminlevel = 0;
life_medicLevel = 0;
life_coplevel = 0;
life_mafialevel = 0;

life_radio_west = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_civ = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_indep = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_east = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];

serv_sv_use = [];
publicVariable "serv_sv_use";

addMissionEventHandler ["HandleDisconnect",{_this call TON_fnc_clientDisconnect; false;}];

life_gang_list = [];
publicVariable "life_gang_list";
life_wanted_list = [];
client_session_list = [];
life_lastChopperFlagged = ["",0];

[] execFSM "\life_server\cleanup.fsm";

{
	if(!isPlayer _x) then {
		_npc = _x;
		{
			if(_x != "") then {
				_npc removeWeapon _x;
			};
		} foreach [primaryWeapon _npc,secondaryWeapon _npc,handgunWeapon _npc];
	};
} foreach allUnits;

[] call TON_fnc_initHouses;

life_server_isReady = true;
publicVariable "life_server_isReady";
// cruise control
//[] execVM "\life_server\mods\mod_cruiseControl.sqf";

pb_spieler = [];
pb_spielstatus = 0;
pb_maxspieler = 10;
execVM "\life_server\Functions\paintball\arena_paintball.sqf";

if (isServer) then {
	racemachine setVariable["start",false,true];
	racemachine2 setVariable["start",false,true];
};

[] spawn {
	_counter = 0;
	while {true} do {
		if(_counter > 30) exitWith {
			call TON_fnc_loops;
		};
		if(!isNil "hc_1" && {!isNil "life_HC_isActive"} && {life_HC_isActive}) exitWith {
			[] remoteExecCall ["TON_fnc_loops",hc_1];
		};
		_counter = _counter + 1;
		sleep 1;
	};
};

//hi, lets clean animals left over.
fnc_cleananimals = {

//used animals
_huntarray = ["Sheep_random_F","Cock_random_F","Hen_random_F","Goat_random_F"];
_civScumLords = ["C_man_polo_1_F","C_man_polo_2_F","C_man_polo_6_F","C_man_polo_4_F","C_man_polo_3_F","C_man_polo_5_F","C_man_1_2_F","C_man_1_3_F"];
//check if players are around if so, exit.
_checkPlayer = (getmarkerpos "hunting_area") nearEntities [_civScumLords, 200];
if(count _checkPlayer > 0) exitwith {};
_animalsFound = (getmarkerpos "hunting_area") nearEntities [_huntarray, 350];

//delete if no players are around
	{		
		deletevehicle _x;
	} forEach _animalsFound;	

};

[fnc_cleananimals, 600] execFSM "\life_server\call.fsm";