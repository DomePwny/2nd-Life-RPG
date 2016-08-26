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
	case "MDMA": {25125};
	case "MDMAMAF": {25125};
	case "meth": {23750};
	case "methMAF": {23750};
	case "coke": {22500};
	case "cokeMAF": {22500};
	case "driver": {500};
	case "driverMAF": {500};	//Drivers License cost
	case "boat": {1750}; //Boating license cost
	case "boatMAF": {1750}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "pilotMAF": {25000}; //Pilot/air license cost
	case "gun": {27500}; //Firearm/gun license cost
	case "gunMAF": {32500}; //Firearm/gun license cost
	case "dive": {1000}; //Diving license cost
	case "diveMAF": {1000}; //Diving license cost
	case "oil": {3000}; //Oil processing license cost
	case "oilMAF": {3000}; //Oil processing license cost
	case "cair": {2000}; //Cop Pilot License cost
	case "swat": {3500}; //Swat License cost
	case "cg": {1125}; //Coast guard license cost
	case "heroin": {19800}; //Heroin processing license cost
	case "heroinMAF": {19800}; //Heroin processing license cost
	case "marijuana": {21750}; //Marijuana processing license cost
	case "marijuanaMAF": {21750}; //Marijuana processing license cost
	case "medmarijuana": {500}; //Medical Marijuana processing license cost
	case "truck": {11585}; //Truck license cost
	case "truckMAF": {11585}; //Truck license cost
	case "diamond": {5980};
	case "diamondMAF": {5980};
	case "salt": {3125};
	case "saltMAF": {3125};
	case "cocaine": {17175};
	case "cocaineMAF": {17175};
	case "sand": {2845};
	case "sandMAF": {2845};
	case "iron": {1655};
	case "ironMAF": {1655};
	case "copper": {800};
	case "copperMAF": {800};
	case "cement": {899};
	case "cementMAF": {899};
	case "mair": {1000};
	case "home": {185725};
	case "homeMAF": {185725};
	
	case "rifle": {3560};
	case "rifleMAF": {3560};
};