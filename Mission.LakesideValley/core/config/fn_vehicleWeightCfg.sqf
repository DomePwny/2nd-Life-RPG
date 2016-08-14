/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	//Gebraucht/Neuwagen
	case "RDS_S1203_Civ_01": {20};
	case "cl3_s1203_blue": {20};
	case "cl3_volha_black": {20};
	case "cl3_volha_grey": {20};
	case "RDS_Lada_Civ_01": {20};
	case "RDS_Lada_Civ_02": {20};
	case "RDS_Lada_Civ_03": {20};
	case "RDS_Lada_Civ_04": {20};
	case "Jonzie_Datsun_510": {30};
	case "Jonzie_Mini_Cooper": {30};
	case "Jonzie_Mini_Cooper_R_spec": {30};
	case "Jonzie_Corolla": {30};
	case "Jonzie_Ceed": {30};
	case "Jonzie_Datsun_Z432": {30};
	case "Jonzie_Galant": {30};
	case "A3L_PuntoRed": {35};
	case "A3L_PuntoBlack": {35};
	case "A3L_PuntoWhite": {35};
	case "A3L_PuntoGrey": {35};
	case "A3L_AMC": {35};
	case "A3L_AMXRed": {35};
	case "A3L_AMXWhite": {35};
	case "A3L_AMXBlue": {35};
	case "A3L_AMXGL": {35};
	case "D_Cobalt_Yellow": {40};
	case "A3L_Camaro": {40};
	case "A3L_RX7_Blue": {40};
	case "A3L_RX7_Red": {40};
	case "A3L_RX7_White": {40};
	case "A3L_RX7_Black": {40};
	case "Jonzie_VE": {45};
	case "Jonzie_Ute": {45};
	case "Jonzie_Quattroporte": {45};
	
	//Vw
	case "RDS_Golf4_Civ_01": {40};
	case "cl3_golf_mk2_white": {45};
	case "cl3_golf_mk2_purple": {45};
	case "cl3_golf_mk2_navy_blue": {45};
	case "cl3_golf_mk2_lime": {45};
	case "cl3_golf_mk2_light_yellow": {45};
	case "cl3_golf_mk2_light_blue": {45};
	case "cl3_golf_mk2_grey": {45};
	case "cl3_golf_mk2_gold": {45};
	case "cl3_golf_mk2_burgundy": {45};
	case "cl3_golf_mk2_black": {45};
	case "A3L_VolksWagenGolfGTired": {50};
	case "cl3_polo_gti_white": {50};
	case "cl3_polo_gti_purple": {50};
	case "cl3_polo_gti_navy_blue": {50};
	case "cl3_polo_gti_lime": {50};
	case "cl3_polo_gti_light_yellow": {50};
	case "cl3_polo_gti_light_blue": {50};
	case "cl3_polo_gti_grey": {50};
	case "cl3_polo_gti_gold": {50};
	case "cl3_polo_gti_burgundy": {50};
	case "cl3_polo_gti_black": {50};
	
	//Honda
	case "cl3_civic_vti_white": {45};
	case "cl3_civic_vti_purple": {45};
	case "cl3_civic_vti_navy_blue": {45};
	case "cl3_civic_vti_lime": {45};
	case "cl3_civic_vti_light_yellow": {45};
	case "cl3_civic_vti_light_blue": {45};
	case "cl3_civic_vti_grey": {45};
	case "cl3_civic_vti_gold": {45};
	case "cl3_civic_vti_burgundy": {45};
	case "cl3_civic_vti_black": {45};
	
	//Renault
	case "Mrshounka_megane_rs_2015_noir": {40};
	case "Mrshounka_megane_rs_2015_bleufonce": {40};
	case "Mrshounka_megane_rs_2015_rouge": {40};
	case "Mrshounka_megane_rs_2015_jaune": {40};
	case "Mrshounka_megane_rs_2015_rose": {40};
	case "Mrshounka_megane_rs_2015_grise": {40};
	case "Mrshounka_megane_rs_2015_violet": {40};
	case "Mrshounka_megane_rs_2015_orange": {40};
	
	//Jeep
	case "A3L_Jeep": {50};
	case "cl3_range_rover_white": {50};
	case "cl3_range_rover_purple": {50};
	case "cl3_range_rover_navy_blue": {50};
	case "cl3_range_rover_lime": {50};
	case "cl3_range_rover_light_yellow": {50};
	case "cl3_range_rover_light_blue": {50};
	case "cl3_range_rover_grey": {50};
	case "cl3_range_rover_gold": {50};
	case "cl3_range_rover_burgundy": {50};
	case "cl3_range_rover_black": {50};
	case "cl3_suv_black": {50};
	case "cl3_suv_taxi": {50};
	case "Jonzie_Escalade": {55};
	case "Mrshounka_hummer_civ_noir": {65};
	case "Mrshounka_hummer_civ_bleufonce": {65};
	case "Mrshounka_hummer_civ_rouge": {65};
	case "Mrshounka_hummer_civ_jaune": {65};
	case "Mrshounka_hummer_civ_rose": {65};
	case "Mrshounka_hummer_civ_grise": {65};
	case "Mrshounka_hummer_civ_violet": {65};
	case "Mrshounka_hummer_civ_orange": {65};
	
	//Motorrad
	case "cl3_enduro_yellow": {1};
	case "cl3_enduro_black": {5};
	case "cl3_enduro_blue": {5};
	case "cl3_enduro_aqua": {5};
	case "cl3_enduro_babypink": {5};
	case "cl3_enduro_red": {5};
	case "cl3_enduro_dark_green": {5};
	case "cl3_chopper_blue": {10};
	case "cl3_chopper_green": {10};
	case "cl3_chopper_red": {10};
	case "cl3_xr_1000_yellow": {15};
	case "cl3_xr_1000_black": {15};
	case "cl3_xr_1000_babypink": {15};
	case "cl3_xr_1000_red": {15};
	case "cl3_xr_1000_lime": {15};
	case "cl3_xr_1000_flame": {15};
	
	//Ford
	case "Jonzie_Transit": {90};
	case "Jonzie_Raptor": {60};
	case "Jonzie_XB": {35};
	case "A3L_F350Black": {65};
	case "A3L_F350Blue": {65};
	case "A3L_F350Red": {65};
	case "A3L_F350White": {65};
	case "ivory_gt500": {40};
	case "A3L_CVWhite": {45};
	case "A3L_CVBlack": {45};
	case "A3L_CVGrey": {45};
	case "A3L_CVRed": {45};
	case "A3L_CVPink": {45};
	case "A3L_CVBlue": {45};
	case "A3L_Taurus": {50};
	case "A3L_TaurusBlack": {50};
	case "A3L_TaurusBlue": {50};
	case "A3L_TaurusRed": {50};
	case "A3L_TaurusWhite": {50};
	case "Mrshounka_mustang_mat": {60};
	case "Mrshounka_mustang_noir": {60};
	case "Mrshounka_mustang_mat_n": {60};
	case "Mrshounka_mustang_bleufonce": {60};
	case "Mrshounka_mustang_mat_b": {60};
	case "Mrshounka_mustang_rouge": {60};
	case "Mrshounka_mustang_jaune": {60};
	case "Mrshounka_mustang_rose": {60};
	case "Mrshounka_mustang_grise": {60};
	case "Mrshounka_mustang_violet": {60};
	case "Mrshounka_mustang_orange": {60};
	
	//Opel
	case "cl3_insignia_white": {50};
	case "cl3_insignia_purple": {50};
	case "cl3_insignia_navy_blue": {50};
	case "cl3_insignia_lime": {50};
	case "cl3_insignia_light_yellow": {50};
	case "cl3_insignia_light_blue": {50};
	case "cl3_insignia_grey": {50};
	case "cl3_insignia_gold": {50};
	case "cl3_insignia_burgundy": {50};
	case "cl3_insignia_black": {50};
	
	//Dodge
	case "A3L_GrandCaravan": {70};
	case "A3L_GrandCaravanBlk": {70};
	case "A3L_GrandCaravanBlue": {70};
	case "A3L_GrandCaravanGreen": {70};
	case "A3L_GrandCaravanRed": {70};
	case "A3L_GrandCaravanPurple": {70};
	case "A3L_Challenger": {55};
	case "A3L_ChallengerGreen": {55};
	case "A3L_ChallengerRed": {55};
	case "A3L_ChallengerWhite": {55};
	case "A3L_ChallengerBlack": {55};
	case "A3L_ChallengerBlue": {55};
	case "AM_2015C_White": {60};
	case "AM_2015C_Black": {60};
	case "AM_2015C_blue": {60};
	case "AM_2015C_Green": {60};
	case "AM_2015C_Red": {60};
	case "AM_2015C_Grey": {60};
	case "AM_2015C_Orange": {60};
	case "cl3_dodge_charger_f_white": {60};
	case "cl3_dodge_charger_f_purple": {60};
	case "cl3_dodge_charger_f_blue": {60};
	case "cl3_dodge_charger_f_lime": {60};
	case "cl3_dodge_charger_f_grey": {60};
	case "cl3_dodge_charger_f_black": {60};
	case "cl3_dodge_charger_f_darkgreen": {60};
	case "cl3_dodge_charger_f_darkred": {60};
	case "cl3_dodge_charger_f_orange": {60};
	case "Jonzie_Viper": {55};
	
	//Nissan
	case "S_Skyline_Red": {50};
	case "S_Skyline_Blue": {50};
	case "S_Skyline_Black": {50};
	case "S_Skyline_Yellow": {50};
	case "S_Skyline_Purple": {50};
	case "S_Skyline_White": {50};
	case "Mrshounka_a3_gtr_civ_noir": {60};
	case "Mrshounka_a3_gtr_civ_bleu": {60};
	case "Mrshounka_a3_gtr_civ_orange": {60};
	case "Mrshounka_a3_gtr_civ_grau": {60};
	case "Mrshounka_a3_gtr_civ_gruen": {60};
	case "Mrshounka_a3_gtr_civ_violet": {60};
	
	//Mercedes
	case "cl3_e63_amg_white": {55};
	case "cl3_e63_amg_purple": {55};
	case "cl3_e63_amg_navy_blue": {55};
	case "cl3_e63_amg_lime": {55};
	case "cl3_e63_amg_light_yellow": {55};
	case "cl3_e63_amg_light_blue": {55};
	case "cl3_e63_amg_grey": {55};
	case "cl3_e63_amg_gold": {55};
	case "cl3_e63_amg_burgundy": {55};
	case "cl3_e63_amg_black": {55};
	
	//Audi
	case "SAL_AudiCivSilver": {50};
	case "shounka_a3_rs5_civ_noir": {55};
	case "shounka_a3_rs5_civ_bleufonce": {55};
	case "shounka_a3_rs5_civ_rouge": {55};
	case "shounka_a3_rs5_civ_jaune": {55};
	case "shounka_a3_rs5_civ_rose": {55};
	case "shounka_a3_rs5_civ_grise": {55};
	case "shounka_a3_rs5_civ_violet": {55};
	case "shounka_a3_rs5_civ_orange": {55};
	case "cl3_r8_spyder_white": {45};
	case "cl3_r8_spyder_purple": {45};
	case "cl3_r8_spyder_navy_blue": {45};
	case "cl3_r8_spyder_lime": {45};
	case "cl3_r8_spyder_light_yellow": {45};
	case "cl3_r8_spyder_light_blue": {45};
	case "cl3_r8_spyder_grey": {45};
	case "cl3_r8_spyder_gold": {45};
	case "cl3_r8_spyder_burgundy": {45};
	case "cl3_r8_spyder_black": {45};
	case "IVORY_R8": {45};
	
	//BMW
	case "DAR_M3CivBlack": {40};
	case "DAR_M3CivWhite": {40};
	case "DAR_M3CivGrey": {40};
	case "cl3_z4_2008_white": {45};
	case "cl3_z4_2008_purple": {45};
	case "cl3_z4_2008_navy_blue": {45};
	case "cl3_z4_2008_lime": {45};
	case "cl3_z4_2008_light_yellow": {45};
	case "cl3_z4_2008_light_blue": {45};
	case "cl3_z4_2008_grey": {45};
	case "cl3_z4_2008_burgundy": {45};
	case "cl3_z4_2008_black": {45};
	case "Mrshounka_bmwm1_civ_noir": {55};
	case "Mrshounka_bmwm1_civ_bleufonce": {55};
	case "Mrshounka_bmwm1_civ_rouge": {55};
	case "Mrshounka_bmwm1_civ_jaune": {55};
	case "Mrshounka_bmwm1_civ_rose": {55};
	case "Mrshounka_bmwm1_civ_grise": {55};
	case "Mrshounka_bmwm1_civ_violet": {55};
	case "Mrshounka_bmwm1_civ_orange": {55};
	case "Mrshounka_bmwm6_noir": {55};
	case "Mrshounka_bmwm6_bleufonce": {55};
	case "Mrshounka_bmwm6_rouge": {55};
	case "Mrshounka_bmwm6_jaune": {55};
	case "Mrshounka_bmwm6_rose": {55};
	case "Mrshounka_bmwm6_grise": {55};
	case "Mrshounka_bmwm6_violet": {55};
	case "Mrshounka_bmwm6_orange": {55};
	case "cl3_e60_m5_white": {50};
	case "cl3_e60_m5_purple": {50};
	case "cl3_e60_m5_navy_blue": {50};
	case "cl3_e60_m5_lime": {50};
	case "cl3_e60_m5_light_yellow": {50};
	case "cl3_e60_m5_light_blue": {50};
	case "cl3_e60_m5_grey": {50};
	case "cl3_e60_m5_gold": {50};
	case "cl3_e60_m5_burgundy": {50};
	case "cl3_e60_m5_black": {50};
	
	//Subaru
	case "Jonzie_STI": {45};
	case "ivory_wrx": {45};
	
	//Aston Martin
	case "S_Vantage_Red": {35};
	case "S_Vantage_Blue": {35};
	case "S_Vantage_Black": {35};
	case "S_Vantage_Yellow": {35};
	case "S_Vantage_LightBlue": {35};
	case "S_Vantage_Purple": {35};
	case "S_Vantage_White": {35};
	case "cl3_dbs_volante_white": {40};
	case "cl3_dbs_volante_purple": {40};
	case "cl3_dbs_volante_navy_blue": {40};
	case "cl3_dbs_volante_lime": {40};
	case "cl3_dbs_volante_light_yellow": {40};
	case "cl3_dbs_volante_light_blue": {40};
	case "cl3_dbs_volante_grey": {v};
	case "cl3_dbs_volante_gold": {40};
	case "cl3_dbs_volante_burgundy": {40};
	case "cl3_dbs_volante_black": {40};
	
	//Porsche
	case "S_PorscheRS_Black": {30};
	case "S_PorscheRS_White": {30};
	case "wirk_cayenne": {65};
	case "cl3_carrera_gt_white": {35};
	case "cl3_carrera_gt_purple": {35};
	case "cl3_carrera_gt_navy_blue": {35};
	case "cl3_carrera_gt_lime": {35};
	case "cl3_carrera_gt_light_blue": {35};
	case "cl3_carrera_gt_grey": {35};
	case "cl3_carrera_gt_gold": {35};
	case "cl3_carrera_gt_burgundy": {35};
	case "cl3_carrera_gt_black": {35};
	case "ALFR_GeK_Panamera": {40};
	
	//Ferrari
	case "cl3_458_white": {35};
	case "cl3_458_purple": {35};
	case "cl3_458_navy_blue": {35};
	case "cl3_458_lime": {35};
	case "cl3_458_light_yellow": {35};
	case "cl3_458_light_blue": {35};
	case "cl3_458_grey": {35};
	case "cl3_458_gold": {35};
	case "cl3_458_burgundy": {35};
	case "cl3_458_black": {35};
	
	//Mclaren
	case "S_McLarenP1_Black": {35};
	case "S_McLarenP1_Blue": {35};
	case "S_McLarenP1_Orange": {35};
	case "S_McLarenP1_White": {35};
	case "S_McLarenP1_Yellow": {35};
	case "S_McLarenP1_Silver": {35};
	case "ALFR_GeK_MF1": {40};
	
	//Lambo
	case "mrshounka_huracan_c_noir": {30};
	case "mrshounka_huracan_c_bleufonce": {30};
	case "mrshounka_huracan_c_rouge": {30};
	case "mrshounka_huracan_c_jaune": {30};
	case "mrshounka_huracan_c_rose": {30};
	case "mrshounka_huracan_c_grise": {30};
	case "mrshounka_huracan_c_violet": {30};
	case "mrshounka_huracan_c_orange": {30};
	case "ivory_lp560": {35};
	case "cl3_murcielago_white": {35};
	case "cl3_murcielago_purple": {35};
	case "cl3_murcielago_navy_blue": {35};
	case "cl3_murcielago_lime": {35};
	case "cl3_murcielago_light_yellow": {35};
	case "cl3_murcielago_light_blue": {35};
	case "cl3_murcielago_grey": {35};
	case "cl3_murcielago_gold": {35};
	case "cl3_murcielago_burgundy": {35};
	case "cl3_murcielago_black": {35};
	case "Mrshounka_veneno_c_noir": {40};
	case "Mrshounka_veneno_c_bleu": {40};
	case "Mrshounka_veneno_c_jaune": {40};
	case "Mrshounka_veneno_c_grau": {40};
	case "Mrshounka_veneno_c_rot": {40};
	case "Mrshounka_veneno_c_gruen": {40};
	case "Mrshounka_veneno_c_violet": {40};
	case "ivory_rev_black": {45};
	case "ivory_rev_blue": {45};
	case "ivory_rev_lime": {45};
	case "ivory_rev_pink": {45};
	case "ivory_rev_rot": {45};
	case "ivory_rev_turkis": {45};
	case "ivory_rev_orange": {45};
	case "ivory_rev_sport1": {45};
	case "ivory_rev_sport2": {45};
	case "ivory_rev_sport3": {45};
	case "ivory_rev_sport4": {45};
	case "cl3_reventon_white": {45};
	case "cl3_reventon_purple": {45};
	case "cl3_reventon_navy_blue": {45};
	case "cl3_reventon_lime": {45};
	case "cl3_reventon_light_yellow": {45};
	case "cl3_reventon_light_blue": {45};
	case "cl3_reventon_grey": {45};
	case "cl3_reventon_gold": {45};
	case "cl3_reventon_burgundy": {45};
	case "cl3_reventon_black": {45};
	case "cl3_lamborghini_gt1_white": {40};
	case "cl3_lamborghini_gt1_purple": {40};
	case "cl3_lamborghini_gt1_navy_blue": {40};
	case "cl3_lamborghini_gt1_lime": {40};
	case "cl3_lamborghini_gt1_light_yellow": {40};
	case "cl3_lamborghini_gt1_light_blue": {40};
	case "cl3_lamborghini_gt1_grey": {40};
	case "cl3_lamborghini_gt1_gold": {40};
	case "cl3_lamborghini_gt1_burgundy": {40};
	case "cl3_lamborghini_gt1_black": {40};
	
	// Luxushändler
	case "ivory_c": {35};
	case "ivory_c_livery1": {35};
	case "ivory_c_livery2": {35};
	case "ivory_c_livery3": {35};
	case "ivory_c_livery4": {35};
	case "ivory_lfa": {35};
	case "ivory_lfa_sport1": {35};
	case "ivory_lfa_sport2": {35};
	case "ivory_lfa_sport3": {35};
	case "ivory_lfa_sport4": {35};
	case "ivory_lfa_sport5": {35};
	case "cl3_veyron_blk_wht": {35};
	case "cl3_veyron_lblue_dblue": {35};
	case "cl3_veyron_lblue_lblue": {35};
	case "cl3_veyron_brn_blk": {35};
	case "ALFR_GeK_Pagani_Zonda": {35};
	case "Nhz_audia8limo": {40};
	case "wirk_h3_limo": {50};
	
	//LkW
	case "C_Van_01_box_F": {150};
	case "C_Van_01_transport_F": {175};
//	case "Jonzie_Western": {200};
	
	//Scania LKW
	case "A3L_Dumptruck": {325};
	
	//Renault LKW
	case "shounka_a3_renaultmagnum_f": {350};
	
	//Volvo LKW
	case "ALFR_GeK_Volvo_FH16_2012": {350};
	
	//Man LKW
	case "Jonzie_Flat_Bed": {300};
	case "Jonzie_Log_Truck": {325};
	case "Jonzie_Box_Truck": {350};
	
	
	//Mack LKW
	case "cl3_mackr_blue": {225};
	case "Jonzie_Superliner": {200};
	case "cl3_mackr_flat_blue": {300};
	case "cl3_mackr_del_blue": {350};
	
	//Bus
	case "A3L_Bus": {40};
	case "A3L_SchoolBus": {40};
	case "RDS_Ikarus_Civ_01": {45};
	case "RDS_Ikarus_Civ_02": {45};
	case "CL3_bus_cl_blue": {50};
	case "CL3_bus_cl_green": {50};
	case "CL3_bus_cl_yellow": {50};
	case "CL3_bus_cl_purple": {50};
	case "CL3_bus_cl_grey": {50};
	case "CL3_bus_cl_black": {50};
	
	//Illegal
	//case "B_Heli_Light_01_F": {10};
	case "A3L_Atom": {35};
	case "cl3_arielatom_race_white": {35};
	case "cl3_arielatom_race_purple": {35};
	case "cl3_arielatom_race_navy_blue": {35};
	case "cl3_arielatom_race_lime": {35};
	case "cl3_arielatom_race_light_yellow": {35};
	case "cl3_arielatom_race_light_blue": {35};
	case "cl3_arielatom_race_grey": {35};
	case "cl3_arielatom_race_gold": {35};
	case "cl3_arielatom_race_burgundy": {35};
	case "cl3_arielatom_race_black": {35};
	
	
	
	//Boot
	case "Cl3MOD_C_Rubberboat_civilian": {20};
	case "A3L_Jetski": {20};
	case "A3L_Jetski_yellow": {20};
	case "C_Boat_Civil_01_F": {35};
	case "A3L_SpeedYacht": {50};
	case "A3L_Ship": {50};
	case "B_SDV_01_F": {50};
	
	//Kart
	case "C_Kart_01_Blu_F": {15};
	case "C_Kart_01_Fuel_F": {15};
	case "C_Kart_01_Red_F": {15};
	case "C_Kart_01_Vrana_F": {15};
	
	
	case "C_Boat_Civil_01_rescue_F": {20};
	case "B_Boat_Transport_01_F": {20};
	case "C_Boat_Civil_01_police_F": {20};
	/*case "ivory_b206_police": {10};
	case "EC635_Unarmed_BW": {10};
	case "EC635_SAR": {10};
	case "IVORY_BELL512_POLICE": {10};
	case "I_Heli_light_03_unarmed_F": {10};
	/*case "ivory_b206": {10};
	case "ivory_b206_news": {10};
	case "C_Heli_Light_01_civil_F": {10};
	case "O_Heli_Light_02_unarmed_F": {10};
	case "IVORY_BELL512": {10};
	case "GNT_C185": {10};
	case "GNT_C185F": {10};
	case "IVORY_T6A_1": {10};
	case "IVORY_CRJ200_1": {10};
	case "IVORY_YAK42D_1": {10};
	
	
	
	
	
	*/
	case "A3l_TaurusFPBLBCSO": {55};
	case "A3l_TaurusFPBLBPD": {55};
	case "A3L_TaurusFPBLBSP": {55};
	case "A3L_JailBus": {25};
	case "Mrshounka_rs_2015_g": {40};
	case "A3L_CVPIFPBLBPD": {50};
	case "A3L_CVPIFPBLBCSO": {50};
	case "A3L_CVPIFPBLBFG": {50};
	case "A3L_CVPIFPBLBSM": {50};
	case "A3L_CVPIFPBLBHP": {50};
	case "A3L_EvoXFPBLBPD": {65};
	case "A3L_EvoXFPBLBSO": {65};
	case "A3L_EvoXFPBLBSP": {65};
	case "DAR_TahoePoliceDet": {65};
	case "AM_09Tahoe_P_Sheriff": {75};
	case "AM_09Tahoe_P_LVPD": {75};
	case "AM_09Tahoe_U_T": {75};
	case "DAR_SWATPolice": {70};
	case "cl3_xr_1000_police": {10};
	case "DAR_ExplorerPolice": {65};
	case "DAR_ExplorerPoliceStealth": {65};
	case "DAR_TahoePolice": {65};
	case "charger_sh": {65};
	case "charger_st": {65};
	case "charger_lvpd": {65};
	case "charger_umb": {65};
	case "charger_umw": {65};
	case "shounka_a3_brinks_noir": {90};
	case "shounka_a3_suburbangign": {65};
	case "IVORY_REV": {25};
	case "C_Offroad_01_F": {50};
	case "A3L_CVLac": {50};
	case "cl3_enduro_yellow": {10};
	case "C_SUV_01_F": {50};
	case "A3l_evoxADAC": {65};
	case "shounka_a3_mantgs": {75};
	case "cl3_dodge_charger_f_yellow": {65};
	case "S_PorscheRS_Yellow": {40};
	case "cl3_carrera_gt_light_yellow": {40};
	case "EC635_ADAC": {25};
	case "IVORY_PRIUS": {25};
	case "Jonzie_Ambulance": {25};
	case "A3L_Laddertruck": {25};
	case "dar_tahoeems": {25};
	case "mercedes_atego_pompier_ingame": {70};
	case "A3L_CVPILBFD": {50};
	case "cl3_dodge_charger_emt": {50};
	case "charger_ems": {50};
	case "cl3_xr_1000_emt": {10};
	case "A3L_EvoXFPBLBMED": {65};
	case "ivory_b206_rescue": {25};
	case "IVORY_BELL512_RESCUE": {25};
	case "EC635_Unarmed_CSAT": {25};
	case "B_supplyCrate_F": {500};
	case "Box_IND_Grenades_F": {250};
	default {-1};
};