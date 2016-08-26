if ((player distance prisondoor) < 10) then {

	private ["_cops"];
	_cops = (west countSide playableUnits);
	if (_cops < 5) exitwith {["Es müssen mind. 5 Polizisten im Dienst sein!",30,"red"] spawn domsg;};

	if (prisondoor getVariable ["robbed", false]) exitwith {["Es wurde vor kurzem ein Ausbruch getätigt.",30,"red"] spawn domsg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["Du besitzt keine Bombe!",30,"red"] spawn domsg;};
	[] call fnc_placec4;
};