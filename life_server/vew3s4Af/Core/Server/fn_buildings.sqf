if (isServer) then {

	prisondoor = createVehicle ["Land_GatedoorA", [2848.3169,17.446217,3828.0173], [], 0, "CAN_COLLIDE"];
	publicvariable "prisondoor";
	_vehicle_0 = prisondoor;
	prisondoor setPos [2848.3169,17.446217,3828.0173];
	prisondoor allowDamage false;
	prisondoor enableSimulationGlobal false;
};