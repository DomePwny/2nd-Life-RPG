if ((player distance prisondoor) < 10) then {

	/*private ["_cops"];*/
	if ((side player) == west) exitwith {prisondoor animate ['main_door', 0]; ["Prison enterence closed.",30,"red"] spawn domsg; };
	/*_cops = (west countSide playableUnits);
	if (_cops < 5) exitwith {["Es müssen mind. 5 Polizisten im Dienst sein!",30,"red"] spawn domsg;};*/

	if (prisondoor getVariable ["robbed", false]) exitwith {["A jailbreak took place already within the last 30 minutes.",30,"red"] spawn domsg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["You don't have a satchel charge.",30,"red"] spawn domsg;};
	[] call fnc_placec4;
};