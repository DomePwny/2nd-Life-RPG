fnc_playsound = {
_source = _this select 0;
_sound = _this select 1;
_location = getpos _source;
if (!isServer) then {
		_thelogic = "logic" createvehiclelocal _location;
		_thelogic say3D (_this select 1);
		[_source,_thelogic] spawn fnc_stopsound;
	};
};

fnc_stopsound = {
	_source = _this select 0;
	_thelogic = _this select 1;
	_lockpicking = _source getVariable ["lockpicking", false];
	if (_lockpicking) exitwith {
		uiSleep 3;
		[_source,_thelogic] spawn fnc_stopsound;
	};
	deletevehicle _thelogic;
};

A3L_fnc_AlarmHint = {
if (isDedicated) exitwith {};
	if (side player == west) then {
		["911 Automatic Dispatch: Die Bank in Lakeside wird ausgeraubt!",false] spawn domsg;
	};
};

A3L_fnc_AlarmPHint = {
if (isDedicated) exitwith {};
	if (side player isEqualTo west) then {
		["dbe", false] remoteExec ["fnc_dispatch",west];
		["911 Automatic Dispatch: Gefängnis Ausbruch, alle verfügbaren Einheiten eintreffen!",false] spawn domsg;
	};
};

A3L_Fnc_BankAlarm = {
	params ["_timer", "_object"];
	if (prisondoor getVariable ["robbed", false]) exitwith {};
	prisondoor setVariable ["robbed", true, true];
	[_timer,prisondoor] remoteExec ["A3L_Fnc_PlayAlarm"]; 
};

A3L_Fnc_PlayAlarm = {
	params ["_timer", "_object"];
	/*if (isServer) exitwith {
		uisleep _timer;
		_veh = createVehicle ["SLB2k11_bomb", [2838.06,3841.68,0.52143909], [], 0, "CAN_COLLIDE"]; 
		_veh setpos [2838.06,3841.68,0.52143909];
		deletevehicle _veh;
		"R_60mm_HE" createvehicle [2838.06,3841.68,-1];
	};*/
	if (_timer == 0) exitWith { ["Du musst eine Zeit eingeben! Du willst dich ja nicht selbst umbringen.",false] spawn domsg; };
	
	while {_timer > 0} do {
		prisondoor say "c4_buttons";
		_veh = createVehicle ["SLB2k11_bomb", [2838.06,3841.68,0.52143909], [], 0, "CAN_COLLIDE"]; 
		_veh setpos [2838.06,3841.68,0.52143909];
		uiSleep 1;
		_timer = _timer - 1;
		deletevehicle _veh;
	};
	if (!isDedicated) then {
		[] remoteExecCall ["A3L_fnc_AlarmPHint"];	
		prisondoor say "PrisonAlarm" ;
		prisondoor animate ['main_door', 12];
		prisonbreak = true;
		publicvariable "prisonbreak";
		"R_60mm_HE" createvehicle [2838.06,3841.68,-1];
		prisondoor say "Explode" ;
		uiSleep 1600;
		prisondoor setVariable ["robbed", nil, true];
		prisonbreak = false;
		publicvariable "prisonbreak";
	};

};
