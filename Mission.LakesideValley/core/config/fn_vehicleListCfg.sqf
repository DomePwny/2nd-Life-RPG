#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	//Gebraucht/Neuwagen
	case "fahrzeug":
	{
		_return = [
			["RDS_S1203_Civ_01",150],
			["cl3_s1203_blue",150],
			["cl3_volha_black",300],
			["cl3_volha_grey",300],		
			["RDS_Lada_Civ_01",400],
			["RDS_Lada_Civ_02",400],
			["RDS_Lada_Civ_03",400],
			["RDS_Lada_Civ_04",400],
			["Jonzie_Datsun_510",500],
			["Jonzie_Mini_Cooper",600],
			["Jonzie_Mini_Cooper_R_spec",2500],
			["Jonzie_Corolla",700],
			["Jonzie_Ceed",800],
			["Jonzie_Datsun_Z432",900],
			["Jonzie_Galant",1000],
			["A3L_PuntoRed",1250],
			["A3L_PuntoBlack",1250],
			["A3L_PuntoWhite",1250],
			["A3L_PuntoGrey",1250],
			["A3L_AMC",1350],
			["A3L_AMXRed",1350],
			["A3L_AMXWhite",1350],
			["A3L_AMXBlue",1350],
			["A3L_AMXGL",1350],
			["D_Cobalt_Yellow",1500],
			["A3L_Camaro",15000],
			["A3L_RX7_Blue",15000],
			["A3L_RX7_Red",15000],
			["A3L_RX7_White",15000],
			["A3L_RX7_Black",15000],
			["Jonzie_VE",30000],
			["Jonzie_Ute",30000],
			["Jonzie_Quattroporte",40000]
		];
	};
	
	//Vw
	case "vw":
	{
		_return = [
			["RDS_Golf4_Civ_01",1000],
			["cl3_golf_mk2_white",15000],
			["cl3_golf_mk2_purple",15000],
			["cl3_golf_mk2_navy_blue",15000],
			["cl3_golf_mk2_lime",15000],
			["cl3_golf_mk2_light_yellow",15000],
			["cl3_golf_mk2_light_blue",15000],
			["cl3_golf_mk2_grey",15000],
			["cl3_golf_mk2_gold",15000],
			["cl3_golf_mk2_burgundy",15000],
			["cl3_golf_mk2_black",15000],
			["A3L_VolksWagenGolfGTired",17500],
			["cl3_polo_gti_white",20000],
			["cl3_polo_gti_purple",20000],
			["cl3_polo_gti_navy_blue",20000],
			["cl3_polo_gti_lime",20000],
			["cl3_polo_gti_light_yellow",20000],
			["cl3_polo_gti_light_blue",20000],
			["cl3_polo_gti_grey",20000],
			["cl3_polo_gti_gold",20000],
			["cl3_polo_gti_burgundy",20000],
			["cl3_polo_gti_black",20000]
		];
	};
	
	//Honda
	case "honda":
	{
		_return = [
			["cl3_civic_vti_white",15000],
			["cl3_civic_vti_purple",15000],
			["cl3_civic_vti_navy_blue",15000],
			["cl3_civic_vti_lime",15000],
			["cl3_civic_vti_light_yellow",15000],
			["cl3_civic_vti_light_blue",15000],
			["cl3_civic_vti_grey",15000],
			["cl3_civic_vti_gold",15000],
			["cl3_civic_vti_burgundy",15000],
			["cl3_civic_vti_black",15000]
		];
	};
	
	//Renault
	case "renault":
	{
		_return = [
			["Mrshounka_megane_rs_2015_noir",25000],
			["Mrshounka_megane_rs_2015_bleufonce",25000],
			["Mrshounka_megane_rs_2015_rouge",25000],
			["Mrshounka_megane_rs_2015_jaune",25000],
			["Mrshounka_megane_rs_2015_rose",25000],
			["Mrshounka_megane_rs_2015_grise",25000],
			["Mrshounka_megane_rs_2015_violet",25000],
			["Mrshounka_megane_rs_2015_orange",25000]
		];
	};
	
	//Jeep
	case "jeep":
	{
		_return = [
			["A3L_Jeep",7500],
			["cl3_range_rover_white",10000],
			["cl3_range_rover_purple",10000],
			["cl3_range_rover_navy_blue",10000],
			["cl3_range_rover_lime",10000],
			["cl3_range_rover_light_yellow",10000],
			["cl3_range_rover_light_blue",10000],
			["cl3_range_rover_grey",10000],
			["cl3_range_rover_gold",10000],
			["cl3_range_rover_burgundy",10000],
			["cl3_range_rover_black",10000],
			["cl3_suv_black",12500],
			["cl3_suv_taxi",15000],
			["Jonzie_Escalade",20000],
			["Mrshounka_hummer_civ_noir",25000],
			["Mrshounka_hummer_civ_bleufonce",25000],
			["Mrshounka_hummer_civ_rouge",25000],
			["Mrshounka_hummer_civ_jaune",25000],
			["Mrshounka_hummer_civ_rose",25000],
			["Mrshounka_hummer_civ_grise",25000],
			["Mrshounka_hummer_civ_violet",25000],
			["Mrshounka_hummer_civ_orange",25000]	
		];
	};
	
	//Motorrad
	case "motorrad":
	{
		_return = [
			["cl3_enduro_yellow",7500],
			["cl3_enduro_black",7500],
			["cl3_enduro_blue",7500],
			["cl3_enduro_aqua",7500],
			["cl3_enduro_babypink",7500],
			["cl3_enduro_red",7500],
			["cl3_enduro_dark_green",7500],
			["cl3_chopper_blue",10000],
			["cl3_chopper_green",10000],
			["cl3_chopper_red",10000],
			["cl3_xr_1000_yellow",15000],
			["cl3_xr_1000_black",15000],
			["cl3_xr_1000_babypink",15000],
			["cl3_xr_1000_red",15000],
			["cl3_xr_1000_lime",15000],
			["cl3_xr_1000_flame",15000]	
		];
	};
	
	//Ford
	case "ford":
	{
		_return = [
			["Jonzie_Transit",12500],
			["Jonzie_Raptor",12500],
			["Jonzie_XB",13000],
			["A3L_F350Black",14000],
			["A3L_F350Blue",14000],
			["A3L_F350Red",14000],
			["A3L_F350White",14000],
			["ivory_gt500",15000],
			["A3L_CVWhite",15000],
			["A3L_CVBlack",15000],
			["A3L_CVGrey",15000],
			["A3L_CVRed",15000],
			["A3L_CVPink",15000],
			["A3L_CVBlue",15000],
			["A3L_Taurus",17500],
			["A3L_TaurusBlack",17500],
			["A3L_TaurusBlue",17500],
			["A3L_TaurusRed",17500],
			["A3L_TaurusWhite",17500],
			["Mrshounka_mustang_mat",25000],
			["Mrshounka_mustang_noir",25000],
			["Mrshounka_mustang_mat_n",25000],
			["Mrshounka_mustang_bleufonce",25000],
			["Mrshounka_mustang_mat_b",25000],
			["Mrshounka_mustang_rouge",25000],
			["Mrshounka_mustang_jaune",25000],
			["Mrshounka_mustang_rose",25000],
			["Mrshounka_mustang_grise",25000],
			["Mrshounka_mustang_violet",25000],
			["Mrshounka_mustang_orange",25000]
		];
	};
	
	//Opel
	case "opel":
	{
		_return = [
			["cl3_insignia_white",27500],
			["cl3_insignia_purple",27500],
			["cl3_insignia_navy_blue",27500],
			["cl3_insignia_lime",27500],
			["cl3_insignia_light_yellow",27500],
			["cl3_insignia_light_blue",27500],
			["cl3_insignia_grey",27500],
			["cl3_insignia_gold",27500],
			["cl3_insignia_burgundy",27500],
			["cl3_insignia_black",27500]	
		];
	};
	
	//Dodge
	case "dodge":
	{
		_return = [
			["A3L_GrandCaravan",15000],
			["A3L_GrandCaravanBlk",15000],
			["A3L_GrandCaravanBlue",15000],
			["A3L_GrandCaravanGreen",15000],
			["A3L_GrandCaravanRed",15000],
			["A3L_GrandCaravanPurple",15000],
			["A3L_Challenger",22500],
			["A3L_ChallengerGreen",22500],
			["A3L_ChallengerRed",22500],
			["A3L_ChallengerWhite",22500],
			["A3L_ChallengerBlack",22500],
			["A3L_ChallengerBlue",22500],
			//["A3L_ChargerWhite",35000],
			//["A3L_ChargerRed",35000],
			//["A3L_ChargerBlack",35000],
			//["A3L_ChargerBlue",35000],
			//["A3L_ChargerGrey",35000],
			["AM_2015C_White",25000],
			["AM_2015C_Black",25000],
			["AM_2015C_blue",25000],
			["AM_2015C_Green",25000],
			["AM_2015C_Red",25000],
			["AM_2015C_Grey",25000],
			["AM_2015C_Orange",25000],
			["cl3_dodge_charger_f_white",30000],
			["cl3_dodge_charger_f_purple",30000],
			["cl3_dodge_charger_f_blue",30000],
			["cl3_dodge_charger_f_lime",30000],
			["cl3_dodge_charger_f_grey",30000],
			["cl3_dodge_charger_f_black",30000],
			["cl3_dodge_charger_f_darkgreen",30000],
			["cl3_dodge_charger_f_darkred",30000],
			["cl3_dodge_charger_f_orange",30000],
			["Jonzie_Viper",40000]	
		];
	};
	
	//Nissan
	case "nissan":
	{
		_return = [
			["S_Skyline_Red",27500],
			["S_Skyline_Blue",27500],
			["S_Skyline_Black",27500],
			["S_Skyline_Yellow",27500],
			["S_Skyline_Purple",27500],
			["S_Skyline_White",27500],
			["Mrshounka_a3_gtr_civ_noir",35000],
			["Mrshounka_a3_gtr_civ_bleu",35000],
			["Mrshounka_a3_gtr_civ_orange",35000],
			["Mrshounka_a3_gtr_civ_grau",35000],
			["Mrshounka_a3_gtr_civ_gruen",35000],
			["Mrshounka_a3_gtr_civ_violet",35000]
		];
	};
	
	//Mercedes
	case "mercedes":
	{
		_return = [
			["cl3_e63_amg_white",40000],
			["cl3_e63_amg_purple",40000],
			["cl3_e63_amg_navy_blue",40000],
			["cl3_e63_amg_lime",40000],
			["cl3_e63_amg_light_yellow",40000],
			["cl3_e63_amg_light_blue",40000],
			["cl3_e63_amg_grey",40000],
			["cl3_e63_amg_gold",40000],
			["cl3_e63_amg_burgundy",40000],
			["cl3_e63_amg_black",40000]
		];
	};
	
	//Audi
	case "audi":
	{
		_return = [
			["SAL_AudiCivSilver",25000],
			["shounka_a3_rs5_civ_noir",40000],
			["shounka_a3_rs5_civ_bleufonce",40000],
			["shounka_a3_rs5_civ_rouge",40000],
			["shounka_a3_rs5_civ_jaune",40000],
			["shounka_a3_rs5_civ_rose",40000],
			["shounka_a3_rs5_civ_grise",40000],
			["shounka_a3_rs5_civ_violet",40000],
			["shounka_a3_rs5_civ_orange",40000],
			["cl3_r8_spyder_white",60000],
			["cl3_r8_spyder_purple",60000],
			["cl3_r8_spyder_navy_blue",60000],
			["cl3_r8_spyder_lime",60000],
			["cl3_r8_spyder_light_yellow",60000],
			["cl3_r8_spyder_light_blue",60000],
			["cl3_r8_spyder_grey",60000],
			["cl3_r8_spyder_gold",60000],
			["cl3_r8_spyder_burgundy",60000],
			["cl3_r8_spyder_black",60000],
			["IVORY_R8",60000]
		];
	};
	
	//BMW
	case "bmw":
	{
		_return = [
			["DAR_M3CivBlack",35000],
			["DAR_M3CivWhite",35000],
			["DAR_M3CivGrey",35000],
			["cl3_z4_2008_white",37500],
			["cl3_z4_2008_purple",37500],
			["cl3_z4_2008_navy_blue",37500],
			["cl3_z4_2008_lime",37500],
			["cl3_z4_2008_light_yellow",37500],
			["cl3_z4_2008_light_blue",37500],
			["cl3_z4_2008_grey",37500],
			["cl3_z4_2008_burgundy",37500],
			["cl3_z4_2008_black",37500],
			["Mrshounka_bmwm1_civ_noir",40000],
			["Mrshounka_bmwm1_civ_bleufonce",40000],
			["Mrshounka_bmwm1_civ_rouge",40000],
			["Mrshounka_bmwm1_civ_jaune",40000],
			["Mrshounka_bmwm1_civ_rose",40000],
			["Mrshounka_bmwm1_civ_grise",40000],
			["Mrshounka_bmwm1_civ_violet",40000],
			["Mrshounka_bmwm1_civ_orange",40000],
			["Mrshounka_bmwm6_noir",50000],
			["Mrshounka_bmwm6_bleufonce",50000],
			["Mrshounka_bmwm6_rouge",50000],
			["Mrshounka_bmwm6_jaune",50000],
			["Mrshounka_bmwm6_rose",50000],
			["Mrshounka_bmwm6_grise",50000],
			["Mrshounka_bmwm6_violet",50000],
			["Mrshounka_bmwm6_orange",50000],
			["cl3_e60_m5_white",45000],
			["cl3_e60_m5_purple",45000],
			["cl3_e60_m5_navy_blue",45000],
			["cl3_e60_m5_lime",45000],
			["cl3_e60_m5_light_yellow",45000],
			["cl3_e60_m5_light_blue",45000],
			["cl3_e60_m5_grey",45000],
			["cl3_e60_m5_gold",45000],
			["cl3_e60_m5_burgundy",45000],
			["cl3_e60_m5_black",45000]
		];
	};
	
	//Subaru
	case "subaru":
	{
		_return = [
			["Jonzie_STI",50000],
			["ivory_wrx",50000]
		];
	};
	
	//Aston Martin
	case "astonmartin":
	{
		_return = [
			["S_Vantage_Red",50000],
			["S_Vantage_Blue",50000],
			["S_Vantage_Black",50000],
			["S_Vantage_Yellow",50000],
			["S_Vantage_LightBlue",50000],
			["S_Vantage_Purple",50000],
			["S_Vantage_White",50000],
			["cl3_dbs_volante_white",60000],
			["cl3_dbs_volante_purple",60000],
			["cl3_dbs_volante_navy_blue",60000],
			["cl3_dbs_volante_lime",60000],
			["cl3_dbs_volante_light_yellow",60000],
			["cl3_dbs_volante_light_blue",60000],
			["cl3_dbs_volante_grey",60000],
			["cl3_dbs_volante_gold",60000],
			["cl3_dbs_volante_burgundy",60000],
			["cl3_dbs_volante_black",60000]
		];
	};
	
	//Porsche
	case "porsche":
	{
		_return = [
			["S_PorscheRS_Black",60000],
			["S_PorscheRS_White",60000],
			["wirk_cayenne",70000],
			["cl3_carrera_gt_white",75000],
			["cl3_carrera_gt_purple",75000],
			["cl3_carrera_gt_navy_blue",75000],
			["cl3_carrera_gt_lime",75000],
			["cl3_carrera_gt_light_blue",75000],
			["cl3_carrera_gt_grey",75000],
			["cl3_carrera_gt_gold",75000],
			["cl3_carrera_gt_burgundy",75000],
			["cl3_carrera_gt_black",75000],
			["ALFR_GeK_Panamera",80000]
		];
	};
	
	//Ferrari
	case "ferrari":
	{
		_return = [
			["cl3_458_white",75000],
			["cl3_458_purple",75000],
			["cl3_458_navy_blue",75000],
			["cl3_458_lime",75000],
			["cl3_458_light_yellow",75000],
			["cl3_458_light_blue",75000],
			["cl3_458_grey",75000],
			["cl3_458_gold",75000],
			["cl3_458_burgundy",75000],
			["cl3_458_black",75000]
		];
	};
	
	//Mclaren
	case "mclaren":
	{
		_return = [
			["S_McLarenP1_Black",67500],
			["S_McLarenP1_Blue",67500],
			["S_McLarenP1_Orange",67500],
			["S_McLarenP1_White",67500],
			["S_McLarenP1_Yellow",67500],
			["S_McLarenP1_Silver",67500]
//			["ALFR_GeK_MF1",85000]
		];
	};
	
	//Lambo
	case "lambo":
	{
		_return = [
			["mrshounka_huracan_c_noir",65000],
			["mrshounka_huracan_c_bleufonce",65000],
			["mrshounka_huracan_c_rouge",65000],
			["mrshounka_huracan_c_jaune",65000],
			["mrshounka_huracan_c_rose",65000],
			["mrshounka_huracan_c_grise",65000],
			["mrshounka_huracan_c_violet",65000],
			["mrshounka_huracan_c_orange",65000],
			["ivory_lp560",70000],
			["cl3_murcielago_white",75000],
			["cl3_murcielago_purple",75000],
			["cl3_murcielago_navy_blue",75000],
			["cl3_murcielago_lime",75000],
			["cl3_murcielago_light_yellow",75000],
			["cl3_murcielago_light_blue",75000],
			["cl3_murcielago_grey",75000],
			["cl3_murcielago_gold",75000],
			["cl3_murcielago_burgundy",75000],
			["cl3_murcielago_black",75000],
			["Mrshounka_veneno_c_noir",80000],
			["Mrshounka_veneno_c_bleu",80000],
			["Mrshounka_veneno_c_jaune",80000],
			["Mrshounka_veneno_c_grau",80000],
			["Mrshounka_veneno_c_rot",80000],
			["Mrshounka_veneno_c_gruen",80000],
			["Mrshounka_veneno_c_violet",80000],
			["ivory_rev_black",85000],
			["ivory_rev_blue",85000],
			["ivory_rev_lime",85000],
			["ivory_rev_pink",85000],
			["ivory_rev_rot",85000],
			["ivory_rev_turkis",85000],
			["ivory_rev_orange",85000],
			["ivory_rev_sport1",85000],
			["ivory_rev_sport2",85000],
			["ivory_rev_sport3",85000],
			["ivory_rev_sport4",85000],
			["cl3_reventon_white",90000],
			["cl3_reventon_purple",90000],
			["cl3_reventon_navy_blue",90000],
			["cl3_reventon_lime",90000],
			["cl3_reventon_light_yellow",90000],
			["cl3_reventon_light_blue",90000],
			["cl3_reventon_grey",90000],
			["cl3_reventon_gold",90000],
			["cl3_reventon_burgundy",90000],
			["cl3_reventon_black",90000],
			["cl3_lamborghini_gt1_white",100000],
			["cl3_lamborghini_gt1_purple",100000],
			["cl3_lamborghini_gt1_navy_blue",100000],
			["cl3_lamborghini_gt1_lime",100000],
			["cl3_lamborghini_gt1_light_yellow",100000],
			["cl3_lamborghini_gt1_light_blue",100000],
			["cl3_lamborghini_gt1_grey",100000],
			["cl3_lamborghini_gt1_gold",100000],
			["cl3_lamborghini_gt1_burgundy",100000],
			["cl3_lamborghini_gt1_black",100000]
		];
	};
	
	//Luxushändler
	case "luxus":
	{
		_return = [
			["ivory_c",110000],
			["ivory_c_livery1",110000],
			["ivory_c_livery2",110000],
			["ivory_c_livery3",110000],
			["ivory_c_livery4",110000],
			["ivory_lfa",115000],
			["ivory_lfa_sport1",115000],
			["ivory_lfa_sport2",115000],
			["ivory_lfa_sport3",115000],
			["ivory_lfa_sport4",115000],
			["ivory_lfa_sport5",115000],
			["cl3_veyron_blk_wht",125000],
			["cl3_veyron_lblue_dblue",125000],
			["cl3_veyron_lblue_lblue",125000],
			["cl3_veyron_brn_blk",125000],
			["ALFR_GeK_Pagani_Zonda",125000],
			["Nhz_audia8limo",125000],
			["wirk_h3_limo",200000]
		];
	};
	
	//LkW
	case "lkw":
	{
		_return = [
			["C_Van_01_box_F",17500],
			["C_Van_01_transport_F",20000]
	//		["Jonzie_Western",75000]	fps bug
		];
	};
	
	//Scania LKW
	case "scanialkw":
	{
		_return = [
			["A3L_Dumptruck",75000]
		];
	};
	
	//Renault LKW
	case "renaultlkw":
	{
		_return = [
			["shounka_a3_renaultmagnum_f",80000]
		];
	};
	
	//Volvo LKW
	case "volvolkw":
	{
		_return = [
			["ALFR_GeK_Volvo_FH16_2012",80000]
		];
	};
	
	//Man LKW
	case "manlkw":
	{
		_return = [
			["Jonzie_Flat_Bed",75000],
			["Jonzie_Box_Truck",75000],
			["Jonzie_Log_Truck",80000]
		];
	};
	
	//Mack LKW
	case "macklkw":
	{
		_return = [
			["cl3_mackr_blue",70000],
		//	["Jonzie_Superliner",75000],
			["cl3_mackr_flat_blue",75000],
			["cl3_mackr_del_blue",80000]
		];
	};
	
	//Bus
	case "bus":
	{
		_return = [
			["A3L_Bus",10000],
			["A3L_SchoolBus",10000],
			["RDS_Ikarus_Civ_01",12500],
			["RDS_Ikarus_Civ_02",12500],
			["CL3_bus_cl_blue",15000],
			["CL3_bus_cl_green",15000],
			["CL3_bus_cl_yellow",15000],
			["CL3_bus_cl_purple",15000],
			["CL3_bus_cl_grey",15000],
			["CL3_bus_cl_black",15000]
		];
	};
	
	//Illegal
	case "reb_car":
	{
		_return =
		[
			["B_Heli_Light_01_F",60000],
			["A3L_Atom",65000],
			["cl3_arielatom_race_white",75000],
			["cl3_arielatom_race_purple",75000],
			["cl3_arielatom_race_navy_blue",75000],
			["cl3_arielatom_race_lime",75000],
			["cl3_arielatom_race_light_yellow",75000],
			["cl3_arielatom_race_light_blue",75000],
			["cl3_arielatom_race_grey",75000],
			["cl3_arielatom_race_gold",75000],
			["cl3_arielatom_race_burgundy",75000],
			["cl3_arielatom_race_black",75000]
		];
	};
	
	//Heli
	case "civ_air":
	{
		_return =
		[
			["ivory_b206",80000],
			["ivory_b206_news",85000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",90000],
			["IVORY_BELL512",100000],
			["GNT_C185",75000],
			["GNT_C185F",75000],
			["IVORY_T6A_1",100000],
			["IVORY_CRJ200_1",160000],
			["IVORY_YAK42D_1",200000]
		];
	};
	
	//Boot
	case "civ_ship":
	{
		_return =
		[
			["Cl3MOD_C_Rubberboat_civilian",1500],
			["A3L_Jetski",2500],
			["A3L_Jetski_yellow",2500],
			["C_Boat_Civil_01_F",5000],
			["A3L_SpeedYacht",10000],
			["A3L_Ship",10000],
			["B_SDV_01_F",12500]
		];
	};

	//Kart
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Fuel_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000]
		];
	};
	
	case "med_shop":
	{
		
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return pushBack ["IVORY_PRIUS",10000];
			_return pushBack ["Jonzie_Ambulance",12500];
			_return pushBack ["A3L_GMC_Van_Coroner",12500];
		};
		
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack ["A3L_Laddertruck",20000];
			_return pushBack ["dar_tahoeems",30000];
			_return pushBack ["mercedes_atego_pompier_ingame",40000];
		};
		
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return pushBack ["A3L_CVPILBFD", 25000];
			_return pushBack ["cl3_dodge_charger_emt",30000];
			//_return pushBack ["charger_ems", 40000];
			//_return pushBack ["AM_2015C_EMS",40000];
		};
		
		if(__GETC__(life_mediclevel) > 4) then
		{
			_return pushBack ["cl3_xr_1000_emt",15000];
			_return pushBack ["A3L_EvoXFPBLBMED",35000];
		};
	};
	
	case "med_air_hs": 
	{
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return pushBack ["B_Heli_Light_01_F",60000];
		};
		
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack ["ivory_b206_rescue",80000];
			_return pushBack ["IVORY_BELL512_RESCUE",100000];
		};
		
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return pushBack ["EC635_Unarmed_CSAT",100000];
		};
	};
	
	case "adac_veh":
	{
		if(playerSide != east) exitWith {hint "Du bist kein LAC-Mitarbeiter!"};
		if(__GETC__(life_adaclevel) == 0) exitWith {hint "Du bist kein LAC-Mitarbeiter!"};
		if(__GETC__(life_adaclevel) >= 9) exitWith {hint "Du bist in der Justiz tätig, nicht im LAC!"};

		if(__GETC__(life_adaclevel) > 0) then {
			_return pushBack ["C_Offroad_01_F",10000];
			_return pushBack ["A3L_CVLac",25000];
		};

		if(__GETC__(life_adaclevel) > 1) then {
			_return pushBack ["cl3_enduro_yellow",7500];
			_return pushBack ["C_SUV_01_F",15000];
		};

		if(__GETC__(life_adaclevel) > 2) then {
			_return pushBack ["A3l_evoxADAC",35000];
			_return pushBack ["B_Heli_Light_01_F",60000];
			_return pushBack ["shounka_a3_mantgs",35000];
		};

		if(__GETC__(life_adaclevel) > 3) then {
			_return pushBack ["EC635_ADAC",10000];
			_return pushBack ["Mrshounka_hummer_civ_jaune",25000];
		};

		if(__GETC__(life_adaclevel) > 5) then {
			_return pushBack ["cl3_dodge_charger_f_yellow",30000];
		};

		if(__GETC__(life_adaclevel) > 6) then {
			_return pushBack ["S_PorscheRS_Yellow",60000];
			_return pushBack ["cl3_carrera_gt_light_yellow",75000];
		};
	};
	
	case "justiz_kfz":
	{
		if(playerSide != east) exitWith {hint "Du bist keine Justiz!"};
		if(__GETC__(life_adaclevel) < 10) exitWith { hint "Du bist nicht in der Justiz tätig." };
		if(__GETC__(life_adaclevel) == 10) then //Staatsanwalt Auto
		{
			_return pushBack ["A3L_CVBlack",15000];
			_return pushBack ["A3L_CVBlue",15000];
			_return pushBack ["A3L_TaurusBlack",17500];
			_return pushBack ["A3L_TaurusBlue",17500];
			_return pushBack ["shounka_a3_rs5_civ_noir",40000];
			_return pushBack ["cl3_e63_amg_black",40000];
			_return pushBack ["cl3_e60_m5_black",45000];
			_return pushBack ["Mrshounka_bmwm6_noir",50000];
			_return pushBack ["wirk_cayenne",70000];
			_return pushBack ["ivory_c",110000];
		};

		if(__GETC__(life_adaclevel) == 11) then //Richter Auto
		{
			_return pushBack ["A3L_CVBlack",15000];
			_return pushBack ["A3L_CVBlue",15000];
			_return pushBack ["A3L_TaurusBlack",17500];
			_return pushBack ["A3L_TaurusBlue",17500];
			_return pushBack ["cl3_z4_2008_black",37500];
			_return pushBack ["shounka_a3_rs5_civ_noir",40000];
			_return pushBack ["cl3_e63_amg_black",40000];
			_return pushBack ["cl3_e60_m5_black",45000];
			_return pushBack ["Mrshounka_bmwm6_noir",50000];
			_return pushBack ["wirk_cayenne",70000];
			_return pushBack ["ivory_c",110000];
			_return pushBack ["Nhz_audia8limo",125000];
		};
	};
	
	case "cop_car":
	{
		if(playerSide != west) exitWith {hint "Du bist kein Cop!"};
		if(__GETC__(life_coplevel) > 0) then
		{
			_return pushBack ["A3l_TaurusFPBLBCSO",12500];
			_return pushBack ["A3l_TaurusFPBLBPD",12500];
			_return pushBack ["A3L_TaurusFPBLBSP",12500];
			_return pushBack ["A3L_JailBus",17500];
			_return pushBack ["Mrshounka_rs_2015_g",20000];
		};
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["A3L_CVPIFPBLBPD",25000];
			_return pushBack ["A3L_CVPIFPBLBCSO",25000];
			_return pushBack ["A3L_CVPIFPBLBFG",25000];
			_return pushBack ["A3L_CVPIFPBLBSM",25000];
			_return pushBack ["A3L_CVPIFPBLBHP",25000];
			_return pushBack ["cl3_xr_1000_police",15000];
		};
			
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["A3L_EvoXFPBLBPD",35000];
			_return pushBack ["A3L_EvoXFPBLBSO",35000];
			_return pushBack ["A3L_EvoXFPBLBSP",35000];
			_return pushBack ["DAR_TahoePolice",25000];
			_return pushBack ["DAR_TahoePoliceDet",25000];
			_return pushBack ["DAR_ExplorerPolice",35000];
			//_return pushBack ["AM_09Tahoe_P_LVPD",25000];
			//_return pushBack ["AM_09Tahoe_P_Sheriff",25000];
			//_return pushBack ["AM_09Tahoe_U_T",25000];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			//_return pushBack ["charger_sh",40000];
			//_return pushBack ["charger_st",40000];
			//_return pushBack ["charger_lvpd",40000];
			//_return pushBack ["charger_umb",40000];
			//_return pushBack ["charger_umw",40000];
			//_return pushBack ["AM_2015C_LVPD",40000];
			//_return pushBack ["AM_2015C_SHERIFF",40000];
			//_return pushBack ["AM_2015C_STATE",40000];
			//_return pushBack ["A3L_Charger_SERTOfficial",40000];
			//_return pushBack ["A3L_Charger_Patrol",40000];
			//_return pushBack ["A3L_Charger_DTU",40000];
			//_return pushBack ["A3L_ChargerUC_White_New",40000];
			//_return pushBack ["A3L_ChargerUC_Blue_New",40000];
			//_return pushBack ["A3L_ChargerUC_Black_New",40000];
			_return pushBack ["DAR_SWATPolice",40000];
			_return pushBack ["DAR_ExplorerPoliceStealth",35000];
			_return pushBack ["shounka_a3_brinks_noir",35000];
			_return pushBack ["shounka_a3_suburbangign",35000];
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{	
			_return pushBack ["IVORY_REV",85000];
		};
	};
	
	case "fbi_cars":
	{
		if(playerSide != west) exitWith {hint "Keine Berechtigung."};
		if(__GETC__(life_donator) < 4) exitWith {hint "Du bist kein FBI-Agent!"};
		_return =
		[
		//Gebraucht/Neuwagen
			["RDS_S1203_Civ_01",150],
			["cl3_s1203_blue",150],
			["cl3_volha_black",300],
			["cl3_volha_grey",300],		
			["RDS_Lada_Civ_01",400],
			["RDS_Lada_Civ_02",400],
			["RDS_Lada_Civ_03",400],
			["RDS_Lada_Civ_04",400],
			["Jonzie_Datsun_510",500],
			["Jonzie_Mini_Cooper",600],
			["Jonzie_Mini_Cooper_R_spec",2500],
			["Jonzie_Corolla",700],
			["Jonzie_Ceed",800],
			["Jonzie_Datsun_Z432",900],
			["Jonzie_Galant",1000],
			["A3L_PuntoRed",1250],
			["A3L_PuntoBlack",1250],
			["A3L_PuntoWhite",1250],
			["A3L_PuntoGrey",1250],
			["A3L_AMC",1350],
			["A3L_AMXRed",1350],
			["A3L_AMXWhite",1350],
			["A3L_AMXBlue",1350],
			["A3L_AMXGL",1350],
			["D_Cobalt_Yellow",1500],
			["A3L_Camaro",15000],
			["A3L_RX7_Blue",15000],
			["A3L_RX7_Red",15000],
			["A3L_RX7_White",15000],
			["A3L_RX7_Black",15000],
			["Jonzie_VE",30000],
			["Jonzie_Ute",30000],
			["Jonzie_Quattroporte",40000],

		//Vw
			["RDS_Golf4_Civ_01",1000],
			["cl3_golf_mk2_white",15000],
			["cl3_golf_mk2_purple",15000],
			["cl3_golf_mk2_navy_blue",15000],
			["cl3_golf_mk2_lime",15000],
			["cl3_golf_mk2_light_yellow",15000],
			["cl3_golf_mk2_light_blue",15000],
			["cl3_golf_mk2_grey",15000],
			["cl3_golf_mk2_gold",15000],
			["cl3_golf_mk2_burgundy",15000],
			["cl3_golf_mk2_black",15000],
			["A3L_VolksWagenGolfGTired",17500],
			["cl3_polo_gti_white",20000],
			["cl3_polo_gti_purple",20000],
			["cl3_polo_gti_navy_blue",20000],
			["cl3_polo_gti_lime",20000],
			["cl3_polo_gti_light_yellow",20000],
			["cl3_polo_gti_light_blue",20000],
			["cl3_polo_gti_grey",20000],
			["cl3_polo_gti_gold",20000],
			["cl3_polo_gti_burgundy",20000],
			["cl3_polo_gti_black",20000],
				
		//Honda
			["cl3_civic_vti_white",15000],
			["cl3_civic_vti_purple",15000],
			["cl3_civic_vti_navy_blue",15000],
			["cl3_civic_vti_lime",15000],
			["cl3_civic_vti_light_yellow",15000],
			["cl3_civic_vti_light_blue",15000],
			["cl3_civic_vti_grey",15000],
			["cl3_civic_vti_gold",15000],
			["cl3_civic_vti_burgundy",15000],
			["cl3_civic_vti_black",15000],
			
		//Renault
			["Mrshounka_megane_rs_2015_noir",25000],
			["Mrshounka_megane_rs_2015_bleufonce",25000],
			["Mrshounka_megane_rs_2015_rouge",25000],
			["Mrshounka_megane_rs_2015_jaune",25000],
			["Mrshounka_megane_rs_2015_rose",25000],
			["Mrshounka_megane_rs_2015_grise",25000],
			["Mrshounka_megane_rs_2015_violet",25000],
			["Mrshounka_megane_rs_2015_orange",25000],

		//Jeep
			["A3L_Jeep",7500],
			["cl3_range_rover_white",10000],
			["cl3_range_rover_purple",10000],
			["cl3_range_rover_navy_blue",10000],
			["cl3_range_rover_lime",10000],
			["cl3_range_rover_light_yellow",10000],
			["cl3_range_rover_light_blue",10000],
			["cl3_range_rover_grey",10000],
			["cl3_range_rover_gold",10000],
			["cl3_range_rover_burgundy",10000],
			["cl3_range_rover_black",10000],
			["cl3_suv_black",12500],
			["cl3_suv_taxi",15000],
			["Jonzie_Escalade",20000],
			["Mrshounka_hummer_civ_noir",25000],
			["Mrshounka_hummer_civ_bleufonce",25000],
			["Mrshounka_hummer_civ_rouge",25000],
			["Mrshounka_hummer_civ_jaune",25000],
			["Mrshounka_hummer_civ_rose",25000],
			["Mrshounka_hummer_civ_grise",25000],
			["Mrshounka_hummer_civ_violet",25000],
			["Mrshounka_hummer_civ_orange",25000],
			
		//Motorrad
			["cl3_enduro_yellow",7500],
			["cl3_enduro_black",7500],
			["cl3_enduro_blue",7500],
			["cl3_enduro_aqua",7500],
			["cl3_enduro_babypink",7500],
			["cl3_enduro_red",7500],
			["cl3_enduro_dark_green",7500],
			["cl3_chopper_blue",10000],
			["cl3_chopper_green",10000],
			["cl3_chopper_red",10000],
			["cl3_xr_1000_yellow",15000],
			["cl3_xr_1000_black",15000],
			["cl3_xr_1000_babypink",15000],
			["cl3_xr_1000_red",15000],
			["cl3_xr_1000_lime",15000],
			["cl3_xr_1000_flame",15000],
		
		//Ford
			["Jonzie_Transit",12500],
			["Jonzie_Raptor",12500],
			["Jonzie_XB",13000],
			["A3L_F350Black",14000],
			["A3L_F350Blue",14000],
			["A3L_F350Red",14000],
			["A3L_F350White",14000],
			["ivory_gt500",15000],
			["A3L_CVWhite",15000],
			["A3L_CVBlack",15000],
			["A3L_CVGrey",15000],
			["A3L_CVRed",15000],
			["A3L_CVPink",15000],
			["A3L_CVBlue",15000],
			["A3L_Taurus",17500],
			["A3L_TaurusBlack",17500],
			["A3L_TaurusBlue",17500],
			["A3L_TaurusRed",17500],
			["A3L_TaurusWhite",17500],
			["Mrshounka_mustang_mat",25000],
			["Mrshounka_mustang_noir",25000],
			["Mrshounka_mustang_mat_n",25000],
			["Mrshounka_mustang_bleufonce",25000],
			["Mrshounka_mustang_mat_b",25000],
			["Mrshounka_mustang_rouge",25000],
			["Mrshounka_mustang_jaune",25000],
			["Mrshounka_mustang_rose",25000],
			["Mrshounka_mustang_grise",25000],
			["Mrshounka_mustang_violet",25000],
			["Mrshounka_mustang_orange",25000],

		//Opel
			["cl3_insignia_white",27500],
			["cl3_insignia_purple",27500],
			["cl3_insignia_navy_blue",27500],
			["cl3_insignia_lime",27500],
			["cl3_insignia_light_yellow",27500],
			["cl3_insignia_light_blue",27500],
			["cl3_insignia_grey",27500],
			["cl3_insignia_gold",27500],
			["cl3_insignia_burgundy",27500],
			["cl3_insignia_black",27500],
			
		//Dodge
			["A3L_GrandCaravan",15000],
			["A3L_GrandCaravanBlk",15000],
			["A3L_GrandCaravanBlue",15000],
			["A3L_GrandCaravanGreen",15000],
			["A3L_GrandCaravanRed",15000],
			["A3L_GrandCaravanPurple",15000],
			["A3L_Challenger",22500],
			["A3L_ChallengerGreen",22500],
			["A3L_ChallengerRed",22500],
			["A3L_ChallengerWhite",22500],
			["A3L_ChallengerBlack",22500],
			["A3L_ChallengerBlue",22500],
			//["A3L_ChargerWhite",35000],
			//["A3L_ChargerRed",35000],
			//["A3L_ChargerBlack",35000],
			//["A3L_ChargerBlue",35000],
			//["A3L_ChargerGrey",35000],
			["AM_2015C_White",25000],
			["AM_2015C_Black",25000],
			["AM_2015C_blue",25000],
			["AM_2015C_Green",25000],
			["AM_2015C_Red",25000],
			["AM_2015C_Grey",25000],
			["AM_2015C_Orange",25000],
			["cl3_dodge_charger_f_white",30000],
			["cl3_dodge_charger_f_purple",30000],
			["cl3_dodge_charger_f_blue",30000],
			["cl3_dodge_charger_f_lime",30000],
			["cl3_dodge_charger_f_grey",30000],
			["cl3_dodge_charger_f_black",30000],
			["cl3_dodge_charger_f_darkgreen",30000],
			["cl3_dodge_charger_f_darkred",30000],
			["cl3_dodge_charger_f_orange",30000],
			["Jonzie_Viper",40000],		
			
		//Nissan
			["S_Skyline_Red",27500],
			["S_Skyline_Blue",27500],
			["S_Skyline_Black",27500],
			["S_Skyline_Yellow",27500],
			["S_Skyline_Purple",27500],
			["S_Skyline_White",27500],
			["Mrshounka_a3_gtr_civ_noir",35000],
			["Mrshounka_a3_gtr_civ_bleu",35000],
			["Mrshounka_a3_gtr_civ_orange",35000],
			["Mrshounka_a3_gtr_civ_grau",35000],
			["Mrshounka_a3_gtr_civ_gruen",35000],
			["Mrshounka_a3_gtr_civ_violet",35000],

		//Mercedes
			["cl3_e63_amg_white",40000],
			["cl3_e63_amg_purple",40000],
			["cl3_e63_amg_navy_blue",40000],
			["cl3_e63_amg_lime",40000],
			["cl3_e63_amg_light_yellow",40000],
			["cl3_e63_amg_light_blue",40000],
			["cl3_e63_amg_grey",40000],
			["cl3_e63_amg_gold",40000],
			["cl3_e63_amg_burgundy",40000],
			["cl3_e63_amg_black",40000],
			
		//Audi
			["SAL_AudiCivSilver",25000],
			["shounka_a3_rs5_civ_noir",40000],
			["shounka_a3_rs5_civ_bleufonce",40000],
			["shounka_a3_rs5_civ_rouge",40000],
			["shounka_a3_rs5_civ_jaune",40000],
			["shounka_a3_rs5_civ_rose",40000],
			["shounka_a3_rs5_civ_grise",40000],
			["shounka_a3_rs5_civ_violet",40000],
			["shounka_a3_rs5_civ_orange",40000],
			["cl3_r8_spyder_white",60000],
			["cl3_r8_spyder_purple",60000],
			["cl3_r8_spyder_navy_blue",60000],
			["cl3_r8_spyder_lime",60000],
			["cl3_r8_spyder_light_yellow",60000],
			["cl3_r8_spyder_light_blue",60000],
			["cl3_r8_spyder_grey",60000],
			["cl3_r8_spyder_gold",60000],
			["cl3_r8_spyder_burgundy",60000],
			["cl3_r8_spyder_black",60000],
			["IVORY_R8",60000],
			
		//BMW
			["DAR_M3CivBlack",35000],
			["DAR_M3CivWhite",35000],
			["DAR_M3CivGrey",35000],
			["cl3_z4_2008_white",37500],
			["cl3_z4_2008_purple",37500],
			["cl3_z4_2008_navy_blue",37500],
			["cl3_z4_2008_lime",37500],
			["cl3_z4_2008_light_yellow",37500],
			["cl3_z4_2008_light_blue",37500],
			["cl3_z4_2008_grey",37500],
			["cl3_z4_2008_burgundy",37500],
			["cl3_z4_2008_black",37500],
			["Mrshounka_bmwm1_civ_noir",40000],
			["Mrshounka_bmwm1_civ_bleufonce",40000],
			["Mrshounka_bmwm1_civ_rouge",40000],
			["Mrshounka_bmwm1_civ_jaune",40000],
			["Mrshounka_bmwm1_civ_rose",40000],
			["Mrshounka_bmwm1_civ_grise",40000],
			["Mrshounka_bmwm1_civ_violet",40000],
			["Mrshounka_bmwm1_civ_orange",40000],
			["Mrshounka_bmwm6_noir",50000],
			["Mrshounka_bmwm6_bleufonce",50000],
			["Mrshounka_bmwm6_rouge",50000],
			["Mrshounka_bmwm6_jaune",50000],
			["Mrshounka_bmwm6_rose",50000],
			["Mrshounka_bmwm6_grise",50000],
			["Mrshounka_bmwm6_violet",50000],
			["Mrshounka_bmwm6_orange",50000],
			["cl3_e60_m5_white",45000],
			["cl3_e60_m5_purple",45000],
			["cl3_e60_m5_navy_blue",45000],
			["cl3_e60_m5_lime",45000],
			["cl3_e60_m5_light_yellow",45000],
			["cl3_e60_m5_light_blue",45000],
			["cl3_e60_m5_grey",45000],
			["cl3_e60_m5_gold",45000],
			["cl3_e60_m5_burgundy",45000],
			["cl3_e60_m5_black",45000],
		
		//Subaru
			["Jonzie_STI",50000],
			["ivory_wrx",50000],
			
		//Aston Martin
			["S_Vantage_Red",50000],
			["S_Vantage_Blue",50000],
			["S_Vantage_Black",50000],
			["S_Vantage_Yellow",50000],
			["S_Vantage_LightBlue",50000],
			["S_Vantage_Purple",50000],
			["S_Vantage_White",50000],
			["cl3_dbs_volante_white",60000],
			["cl3_dbs_volante_purple",60000],
			["cl3_dbs_volante_navy_blue",60000],
			["cl3_dbs_volante_lime",60000],
			["cl3_dbs_volante_light_yellow",60000],
			["cl3_dbs_volante_light_blue",60000],
			["cl3_dbs_volante_grey",60000],
			["cl3_dbs_volante_gold",60000],
			["cl3_dbs_volante_burgundy",60000],
			["cl3_dbs_volante_black",60000],
			
		//Porsche
			["S_PorscheRS_Black",60000],
			["S_PorscheRS_White",60000],
			["wirk_cayenne",70000],
			["cl3_carrera_gt_white",75000],
			["cl3_carrera_gt_purple",75000],
			["cl3_carrera_gt_navy_blue",75000],
			["cl3_carrera_gt_lime",75000],
			["cl3_carrera_gt_light_blue",75000],
			["cl3_carrera_gt_grey",75000],
			["cl3_carrera_gt_gold",75000],
			["cl3_carrera_gt_burgundy",75000],
			["cl3_carrera_gt_black",75000],
			["ALFR_GeK_Panamera",80000],
			
		//Ferrari
			["cl3_458_white",75000],
			["cl3_458_purple",75000],
			["cl3_458_navy_blue",75000],
			["cl3_458_lime",75000],
			["cl3_458_light_yellow",75000],
			["cl3_458_light_blue",75000],
			["cl3_458_grey",75000],
			["cl3_458_gold",75000],
			["cl3_458_burgundy",75000],
			["cl3_458_black",75000],

		//Mclaren
			["S_McLarenP1_Black",67500],
			["S_McLarenP1_Blue",67500],
			["S_McLarenP1_Orange",67500],
			["S_McLarenP1_White",67500],
			["S_McLarenP1_Yellow",67500],
			["S_McLarenP1_Silver",67500],
//			["ALFR_GeK_MF1",85000],
			
		//Lambo
			["mrshounka_huracan_c_noir",65000],
			["mrshounka_huracan_c_bleufonce",65000],
			["mrshounka_huracan_c_rouge",65000],
			["mrshounka_huracan_c_jaune",65000],
			["mrshounka_huracan_c_rose",65000],
			["mrshounka_huracan_c_grise",65000],
			["mrshounka_huracan_c_violet",65000],
			["mrshounka_huracan_c_orange",65000],
			["ivory_lp560",70000],
			["cl3_murcielago_white",75000],
			["cl3_murcielago_purple",75000],
			["cl3_murcielago_navy_blue",75000],
			["cl3_murcielago_lime",75000],
			["cl3_murcielago_light_yellow",75000],
			["cl3_murcielago_light_blue",75000],
			["cl3_murcielago_grey",75000],
			["cl3_murcielago_gold",75000],
			["cl3_murcielago_burgundy",75000],
			["cl3_murcielago_black",75000],
			["Mrshounka_veneno_c_noir",80000],
			["Mrshounka_veneno_c_bleu",80000],
			["Mrshounka_veneno_c_jaune",80000],
			["Mrshounka_veneno_c_grau",80000],
			["Mrshounka_veneno_c_rot",80000],
			["Mrshounka_veneno_c_gruen",80000],
			["Mrshounka_veneno_c_violet",80000],
			["ivory_rev_black",85000],
			["ivory_rev_blue",85000],
			["ivory_rev_lime",85000],
			["ivory_rev_pink",85000],
			["ivory_rev_rot",85000],
			["ivory_rev_turkis",85000],
			["ivory_rev_orange",85000],
			["ivory_rev_sport1",85000],
			["ivory_rev_sport2",85000],
			["ivory_rev_sport3",85000],
			["ivory_rev_sport4",85000],
			["cl3_reventon_white",90000],
			["cl3_reventon_purple",90000],
			["cl3_reventon_navy_blue",90000],
			["cl3_reventon_lime",90000],
			["cl3_reventon_light_yellow",90000],
			["cl3_reventon_light_blue",90000],
			["cl3_reventon_grey",90000],
			["cl3_reventon_gold",90000],
			["cl3_reventon_burgundy",90000],
			["cl3_reventon_black",90000],
			["cl3_lamborghini_gt1_white",100000],
			["cl3_lamborghini_gt1_purple",100000],
			["cl3_lamborghini_gt1_navy_blue",100000],
			["cl3_lamborghini_gt1_lime",100000],
			["cl3_lamborghini_gt1_light_yellow",100000],
			["cl3_lamborghini_gt1_light_blue",100000],
			["cl3_lamborghini_gt1_grey",100000],
			["cl3_lamborghini_gt1_gold",100000],
			["cl3_lamborghini_gt1_burgundy",100000],
			["cl3_lamborghini_gt1_black",100000],

		// Luxushändler
			["ivory_c",110000],
			["ivory_c_livery1",110000],
			["ivory_c_livery2",110000],
			["ivory_c_livery3",110000],
			["ivory_c_livery4",110000],
			["ivory_lfa",115000],
			["ivory_lfa_sport1",115000],
			["ivory_lfa_sport2",115000],
			["ivory_lfa_sport3",115000],
			["ivory_lfa_sport4",115000],
			["ivory_lfa_sport5",115000],
			["cl3_veyron_blk_wht",125000],
			["cl3_veyron_lblue_dblue",125000],
			["cl3_veyron_lblue_lblue",125000],
			["cl3_veyron_brn_blk",125000],
			["ALFR_GeK_Pagani_Zonda",125000],
			["Nhz_audia8limo",125000],
			["wirk_h3_limo",200000],
			
		//LkW
			["C_Van_01_box_F",17500],
			["C_Van_01_transport_F",20000],
	//		["Jonzie_Western",75000],	FPS bug...
			
		//Scania LKW
			["A3L_Dumptruck",75000],
				
		//Renault LKW
			["shounka_a3_renaultmagnum_f",80000],
				
		//Volvo LKW
			["ALFR_GeK_Volvo_FH16_2012",80000],

		//Man LKW
			["Jonzie_Flat_Bed",75000],
			["Jonzie_Box_Truck",75000],
			["Jonzie_Log_Truck",80000],
				
		//Mack LKW
			["cl3_mackr_blue",70000],
	//		["Jonzie_Superliner",75000],
			["cl3_mackr_flat_blue",75000],
			["cl3_mackr_del_blue",80000],
			
		//Bus
			["A3L_Bus",10000],
			["A3L_SchoolBus",10000],
			["RDS_Ikarus_Civ_01",12500],
			["RDS_Ikarus_Civ_02",12500],
			["CL3_bus_cl_blue",15000],
			["CL3_bus_cl_green",15000],
			["CL3_bus_cl_yellow",15000],
			["CL3_bus_cl_purple",15000],
			["CL3_bus_cl_grey",15000],
			["CL3_bus_cl_black",15000],			
			
		//Illegal
			["A3L_Atom",65000],
			["cl3_arielatom_race_white",75000],
			["cl3_arielatom_race_purple",75000],
			["cl3_arielatom_race_navy_blue",75000],
			["cl3_arielatom_race_lime",75000],
			["cl3_arielatom_race_light_yellow",75000],
			["cl3_arielatom_race_light_blue",75000],
			["cl3_arielatom_race_grey",75000],
			["cl3_arielatom_race_gold",75000],
			["cl3_arielatom_race_burgundy",75000],
			["cl3_arielatom_race_black",75000]
		];
	};
	

	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",80000],
			["B_Heli_Light_01_F",60000],
			["EC635_Unarmed_BW",100000],
			["EC635_SAR",100000],
			["IVORY_BELL512_POLICE",92500],
			["I_Heli_light_03_unarmed_F",50000]
		];
	};
	
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",80000],
			["B_Heli_Light_01_F",60000],
			["EC635_Unarmed_BW",100000],
			["EC635_SAR",100000],
			["IVORY_BELL512_POLICE",92500],
			["I_Heli_light_03_unarmed_F",50000]
		];
	};
	
	case "med_ship":
	{
		_return =
		[
			["C_Boat_Civil_01_rescue_F",15000]
		];
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3750],
			["C_Boat_Civil_01_police_F",10000],
			["B_SDV_01_F",50000]
		];
	};
};

_return;