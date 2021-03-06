/*
	File: fn_vehicleWeightCfg.sqf
	
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = param [0,"",[""]];

switch (_className) do
{
	// Boats
	case "2ndLife_EMS_Boat": {50};
	
	case "Jonzie_Transit": {150};
	case "ADM_Ford_F100": {150};
	case "Jonzie_Flat_Bed": {200};
	case "Jonzie_Log_Truck": {0};
	case "Jonzie_Box_Truck": {300};
	case "Jonzie_Tanker_Truck": {300};

	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "CUP_C_Fishing_Boat_Chernarus": {150};
	case "CUP_B_Zodiac_USMC": {45};
	case "B_Heli_Light_01_F": {0};
	case "I_Heli_Transport_02_F": {0};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "B_supplyCrate_F": {700};
	case "Sab_af_An2": {0};
	case "Sab_tk_An2": {0};
	case "Sab_ca_An2": {0};
	case "Sab_ana_An2": {0};
	case "Sab_yel_An2": {0};
	case "Sab_fd_An2": {0};
	case "Sab_Sea2_An2": {0};
	case "Sab_Sea4_An2": {0};
	case "Sab_Amphi_An2": {0};
	case "sab_camel": {0};
	case "C_Heli_Light_01_civil_F": {0};
	case "ivory_b206": {0};
	case "ivory_b206_news": {0};
	default {35};
};
