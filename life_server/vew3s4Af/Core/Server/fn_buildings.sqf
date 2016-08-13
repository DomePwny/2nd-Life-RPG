if (isServer) then {
	_vehicle_0 = objNull;
	publicvariable "prisondoor";
	
	prisondoor = createVehicle ["Land_GatedoorA", [2848.3169,17.446217,3828.0173], [], 0, "CAN_COLLIDE"];
	_vehicle_0 = prisondoor;
	prisondoor setPos (getpos prisondoor);
	prisondoor allowDamage false;
	prisondoor enableSimulationGlobal false;
};