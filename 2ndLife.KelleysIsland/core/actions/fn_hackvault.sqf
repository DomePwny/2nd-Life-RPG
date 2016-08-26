/*
hackvault

cgbankvault is the variable name
*/

private ["_cops"];

_cops = (west countSide playableUnits);
if(_cops < 12) exitWith { ["Es müssen 12 Polizisten im Dienst sein!", false] spawn domsg; };

_storename = "hi";



if(life_inv_hackingtool == 0) exitwith {
	["Du brauchst etwas um den Tresor zu hacken...", false] spawn domsg;	
};


if (cgbankvault getVariable ["robbed", false]) exitwith {["Die Bank wurde erst ausgeraubt...",30,"red"] spawn domsg;};
if (cgbankvault getVariable ["hacking", false]) exitwith {["Die Bank wird gerade gehackt...",30,"red"] spawn domsg;};
if (cgbankvault animationPhase "d_l_Anim" == 1) exitwith {["Die Bank scheint offen zu sein...",30,"red"] spawn domsg;};

if (life_inv_hackingtool > 0 && !hacking && cgbankvault animationPhase "d_l_Anim" == 0 ) then {
	 ["dbank", false] remoteExec ["fnc_dispatch",west];

	["Du hast dein Hacktool angebracht, warte 5 Minuten. Du kannst dich bewegen, vergiss nicht man könnte dich hören.", false] spawn domsg;
	cgbankvault say "bankAlarm";
	cgbankvault setVariable["hacking", true, true];

	_veh = "Land_MobilePhone_smart_F" createvehicle (getpos player);
	_veh attachto [player, [-.02,-.006,-0.02], "RightHandMiddle1"];
	_veh setVectorDirAndUp [[-0.01,0.01,0],[-0.01,0.01,0]];
	_veh setpos (getpos _veh);

	_num = 300; 
	while {_num > 0} do {
		if ( _num == 300 || _num == 240 || _num == 180 || _num == 120 || _num == 60 ) then {


			playSound3D ["cg_sndimg\sounds\starthack.ogg", player, false, getPosASL player, 1, 1, 225];

			[1,format["911 DISPATCH: KELLEYS ISLAND HAUPTBANK WIRD AUSGERAUBT!",_storename]] remoteExecCall ["life_fnc_broadcast", west];
			[1,format["911 EMERGENCY: MENSCHENLEBEN KÖNNTEN BEI DER BANK IN GEFAHR SEIN!",_storename]] remoteExecCall ["life_fnc_broadcast", independent];
		};
		if(deadPlayer) exitwith {
		};
		_num = _num - 1;
		uiSleep 1;
	};
	detach _veh;
	deletevehicle _veh;

	if(deadPlayer) then {
		cgbankvault setVariable["hacking", nil, true];
		hacking = false;
	};

	if(!deadPlayer) then {
		cgbankvault setvariable ["robbed", true, true];
		cgbankvault animate ["d_l_Anim",1];
		cgbankvault setVariable["hacking", nil, true];
		playSound3D ["cg_sndimg\sounds\endhack.ogg", player, false, getPosASL player, 1, 1, 225];
		[] call fnc_cgbankresettimer;
	};
};



