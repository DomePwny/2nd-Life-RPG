if (isServer) then {	
	_vehicle_0 = objNull;
	prisondoor = createVehicle ["Land_GatedoorA", [2856.6,4520.56,0], [], 0, "CAN_COLLIDE"];
	publicvariable "prisondoor";
	_vehicle_0 = prisondoor;
	prisondoor setPos [2856.6,4520.56,0];
	prisondoor setdir 269.84;
	prisondoor allowDamage false;
	prisondoor enableSimulationGlobal false;
	
	_vehicle_1 = objNull;
	Jail = createVehicle ["Land_MainSection", [2837.72,3834.81,0], [], 0, "CAN_COLLIDE"];
	publicvariable "Jail";
	_vehicle_1 = Jail;
	Jail setPos [2837.72,3834.81,0];
	Jail allowDamage false;
	Jail enableSimulationGlobal false;
};