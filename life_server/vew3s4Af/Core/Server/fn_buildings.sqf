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
	Jail = createVehicle ["Land_MainSection", [2862.72,4602.42,0], [], 0, "CAN_COLLIDE"];
	publicvariable "Jail";
	_vehicle_1 = Jail;
	Jail setPos [2862.72,4602.42,0];
	Jail setdir 270;
	Jail allowDamage false;
	Jail enableSimulationGlobal false;
	
	_vehicle_2 = ["Land_LampStreet_F","Land_LampDecor_F","Land_LampHalogen_F","Land_LampShabby_F"];
	publicvariable "Lamps";
	_vehicle_2 = Lamps
	Lamps allowDamage false;
	Lamps enableSimulationGlobal true;
};