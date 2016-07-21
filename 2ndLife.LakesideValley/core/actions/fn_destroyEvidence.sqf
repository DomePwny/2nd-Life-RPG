/*
File: destroy evidence
*/
private["_curtarget","_unit"];

_curTarget = cursorTarget;

["Zerstöre Beweise...", false] spawn domsg;
titleFadeOut 3;
uiSleep 3;
["Das zerstören dauert 60 Sekunden!",false] spawn domsg;
titleFadeOut 60;
_cme = 1;
_myposy = getPos player;

while {true} do {
	life_action_inUse = true;
	uiSleep 1;
	if( player distance _myposy > 5 ) exitwith { 
		["Zu weit bewegt! Beweise nicht zerstört.", false] spawn domsg;
		life_action_inUse = false;
	};
	if(deadPlayer) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	_cme = _cme + 1;
	uisleep 1;
	hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>Zerstöre:</t><br/>%1 Sekunden.",_cme];
	if(_cme > 60) exitwith {
	life_action_inUse = false;
		deleteVehicle _curTarget;
		["Du hast die Beweise zerstört", false] spawn domsg;
	};
};
life_action_inUse = false;
