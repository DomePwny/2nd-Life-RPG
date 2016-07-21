/*
	File: fn_hh.sqf
	The Haunted House
*/

if (life_koil_hh == 1) exitwith {};

["Du fühlst dich unangenehm. Du glaubst an Geister!", false] spawn domsg;
life_koil_hh = 1;
uiSleep 1;
fnc_turnObject = {
        _object = _this select 0;  
        _dir = ((getPos player select 0) - (getPos _object select 0)) atan2 ((getPos player select 1) - (getPos _object select 1));
        _object setDir _dir;
};
playsound "scarryshiet";
_inc = 1;
while { life_koil_hh == 1 } do {
	uiSleep 30;
	_inc = _inc + 1;
	_mychance = round(random 100); 
	if(_mychance > 40) then {

	_mysound = round(random 8);

	if(_mysound == 1) then {
		playSound3D ["secondlife_client\sounds\Iwillkillyou.ogg", player, false, getPosASL player, 5, 1, 45];
	};

	if(_mysound == 2) then {
		playSound3D ["cg_sndimg\sounds\hhscreams.ogg", player, false, getPosASL player, 22, 1, 45];
	};

	if(_mysound == 3) then {
		playSound3D ["cg_sndimg\sounds\hhicanseeyou.ogg", player, false, getPosASL player, 5, 1, 45];
	};

	if(_mysound == 4) then {
		playSound3D ["cg_sndimg\sounds\hhgrowl.ogg", player, false, getPosASL player, 15, 1, 45];
	};

	if(_mysound == 5) then {
		playSound3D ["cg_sndimg\sounds\hhecho.ogg", player, false, getPosASL player, 5, 1, 45];
	};

	if(_mysound == 6) then {
		playSound3D ["cg_sndimg\sounds\hhdie.ogg", player, false, getPosASL player, 25, 1, 45];
	};

	if(_mysound == 7) then {
		playSound3D ["cg_sndimg\sounds\hhclank.ogg", player, false, getPosASL player, 15, 1, 45];
	};
	if(_mysound == 8) then {
		playSound3D ["secondlife_client\sounds\Poltergeist.ogg", player, false, getPosASL player, 15, 1, 45];
	};

		_angel1 = "A3L_Zombie" createVehicleLocal (player modelToWorld [0,10,0]);
		[_angel1] call fnc_turnObject;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		deleteVehicle _angel1;

		_angel1 = "A3L_Zombie" createVehicleLocal (player modelToWorld [0,4,0]);
		[_angel1] call fnc_turnObject;	

		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.2;
		deleteVehicle _angel1;

		_angel1 = "A3L_Zombie" createVehicleLocal (player modelToWorld [0,1,0]);
		[_angel1] call fnc_turnObject;	

		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		deleteVehicle _angel1;

		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		
		//Zweiter Zombie
		
		_angel2 = "A3L_Secret" createVehicleLocal (player modelToWorld [0,10,5]);
		[_angel2] call fnc_turnObject;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		deleteVehicle _angel2;

		_angel2 = "A3L_Secret" createVehicleLocal (player modelToWorld [0,4,5]);
		[_angel2] call fnc_turnObject;	

		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.2;
		deleteVehicle _angel2;

		_angel2 = "A3L_Secret" createVehicleLocal (player modelToWorld [0,1,5]);
		[_angel2] call fnc_turnObject;	

		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		deleteVehicle _angel2;

		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		
		//Dritter Zombie
		
		_angel3 = "A3L_Spookymummy" createVehicleLocal (player modelToWorld [5,10,0]);
		[_angel3] call fnc_turnObject;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		deleteVehicle _angel3;

		_angel3 = "A3L_Spookymummy" createVehicleLocal (player modelToWorld [5,4,0]);
		[_angel3] call fnc_turnObject;	

		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.2;
		deleteVehicle _angel3;

		_angel3 = "A3L_Spookymummy" createVehicleLocal (player modelToWorld [5,1,0]);
		[_angel2] call fnc_turnObject;	

		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		deleteVehicle _angel3;

		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.4,1,-0.1], [1,1,1,3], [-0.8,0,-1,5]];
		"colorCorrections" ppEffectCommit 1;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.2, -1, 0.2, 0.15, 2, false];
		"filmGrain" ppEffectCommit 1;
		uiSleep 0.3;
		"colorCorrections" ppEffectEnable false;
		"filmGrain" ppEffectEnable false;

	};
	if(_inc > 15) exitwith {life_koil_hh = 2;};
	uiSleep 1;
};
uiSleep 1;

life_koil_hh = 2;
playsound "";
["Du fühlst dich wieder normal. War wohl ein Alptraum.", false] spawn domsg;