/*
	File: fn_licensePrice.sqf
	
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = param [0,"",[""]];
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "MDMA": {15500};
	case "MDMAMAF": {15500};
	case "meth": {15500};
	case "methMAF": {15500};
	case "coke": {15500};
	case "cokeMAF": {15500};
	case "driver": {300};
	case "driverMAF": {300};	//Drivers License cost
	case "boat": {1500}; //Boating license cost
	case "boatMAF": {1500}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "pilotMAF": {25000}; //Pilot/air license cost
	case "gun": {25000}; //Firearm/gun license cost
	case "gunMAF": {25000}; //Firearm/gun license cost
	case "dive": {400}; //Diving license cost
	case "diveMAF": {400}; //Diving license cost
	case "oil": {1000}; //Oil processing license cost
	case "oilMAF": {1000}; //Oil processing license cost
	case "cair": {1500}; //Cop Pilot License cost
	case "swat": {3500}; //Swat License cost
	case "cg": {800}; //Coast guard license cost
	case "heroin": {4500}; //Heroin processing license cost
	case "heroinMAF": {4500}; //Heroin processing license cost
	case "marijuana": {2250}; //Marijuana processing license cost
	case "marijuanaMAF": {2250}; //Marijuana processing license cost
	case "medmarijuana": {150}; //Medical Marijuana processing license cost
	case "truck": {8000}; //Truck license cost
	case "truckMAF": {8000}; //Truck license cost
	case "diamond": {3500};
	case "diamondMAF": {3500};
	case "salt": {1200};
	case "saltMAF": {1200};
	case "cocaine": {15000};
	case "cocaineMAF": {15000};
	case "sand": {1450};
	case "sandMAF": {1450};
	case "iron": {950};
	case "ironMAF": {950};
	case "copper": {800};
	case "copperMAF": {800};
	case "cement": {650};
	case "cementMAF": {650};
	case "mair": {1500};
	case "home": {125500};
	case "homeMAF": {125500};
	
	case "rifle": {2000};
	case "rifleMAF": {2000};
};