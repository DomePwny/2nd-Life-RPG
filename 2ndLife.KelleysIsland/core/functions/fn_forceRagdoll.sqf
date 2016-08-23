if (vehicle player != player || godMode) exitWith {};
private ["_rag"];
godMode = true;
player allowdamage false;
_rag = ""Land_Can_V3_F"" createVehicleLocal [0,0,0];
_rag setMass 1e10;
_rag attachTo [player, [0,0,0], "Spine3"];
_rag setVelocity [0,0,8];
detach _rag;
0 = _rag spawn {
	deleteVehicle _this;
	uisleep 1;
	godMode = false;
	player allowdamage true;
};