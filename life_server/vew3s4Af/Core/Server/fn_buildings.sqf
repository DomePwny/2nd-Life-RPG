if (isServer) then {	
	_vehicle_0 = objNull;
	prisondoor = createVehicle ["Land_GatedoorA", [2837.72,3834.81,0], [], 0, "CAN_COLLIDE"];
	publicvariable "prisondoor";
	_vehicle_0 = prisondoor;
	prisondoor setPos [2837.72,3834.81,0];
	prisondoor allowDamage false;
	prisondoor enableSimulationGlobal false;
};