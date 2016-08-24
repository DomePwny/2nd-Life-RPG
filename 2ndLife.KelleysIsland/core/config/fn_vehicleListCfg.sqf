#include <macro.h>
/*
	File:
	
	VEHICLES ARE 10% of WHAT THEY ARE IN HERE.
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = param [0,"",[""]];
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "sport_wagen":
	{
		_return = 
		[
			["cl3_e63_amg_white",1200000],
			["cl3_e63_amg_purple",1200000],
			["cl3_e63_amg_navy_blue",1200000],
			["cl3_e63_amg_lime",1200000],
			["cl3_e63_amg_light_yellow",1200000],
			["cl3_e63_amg_light_blue",1200000],
			["cl3_e63_amg_grey",1200000],
			["cl3_e63_amg_gold",1200000],
			["cl3_e63_amg_burgundy",1200000],
			["cl3_e63_amg_black",1200000],
			["cl3_e60_m5_white",1460000],
			["cl3_e60_m5_purple",1460000],
			["cl3_e60_m5_navy_blue",1460000],
			["cl3_e60_m5_lime",1460000],
			["cl3_e60_m5_light_yellow",1460000],
			["cl3_e60_m5_light_blue",1460000],
			["cl3_e60_m5_grey",1460000],
			["cl3_e60_m5_gold",1460000],
			["cl3_e60_m5_burgundy",1460000],
			["cl3_e60_m5_black",1460000],
			["cl3_carrera_gt_white",1640000],
			["cl3_carrera_gt_purple",1640000],
			["cl3_carrera_gt_navy_blue",1640000],
			["cl3_carrera_gt_lime",1640000],
			["cl3_carrera_gt_light_blue",1640000],
			["cl3_carrera_gt_grey",1640000],
			["cl3_carrera_gt_gold",1640000],
			["cl3_carrera_gt_burgundy",1640000],
			["cl3_carrera_gt_black",1640000],
			["ivory_rs4",1680000],
			["ivory_rs4_taxi",1680000],
			["IVORY_R8",1850000],
			["IVORY_R8SPYDER",1850000],
			["cl3_dbs_volante_white",1930000],
			["cl3_dbs_volante_purple",1930000],
			["cl3_dbs_volante_navy_blue",1930000],
			["cl3_dbs_volante_lime",1930000],
			["cl3_dbs_volante_light_yellow",1930000],
			["cl3_dbs_volante_light_blue",1930000],
			["cl3_dbs_volante_grey",1930000],
			["cl3_dbs_volante_gold",1930000],
			["cl3_dbs_volante_burgundy",1930000],
			["cl3_dbs_volante_black",1930000],
			["cl3_murcielago_white",2250000],
			["cl3_murcielago_purple",2250000],
			["cl3_murcielago_navy_blue",2250000],
			["cl3_murcielago_lime",2250000],
			["cl3_murcielago_light_yellow",2250000],
			["cl3_murcielago_light_blue",2250000],
			["cl3_murcielago_grey",2250000],
			["cl3_murcielago_gold",2250000],
			["cl3_murcielago_burgundy",2250000],
			["cl3_murcielago_black",2250000],
			["cl3_458_white",2320000],
			["cl3_458_purple",2320000],
			["cl3_458_navy_blue",2320000],
			["cl3_458_lime",2320000],
			["cl3_458_light_yellow",2320000],
			["cl3_458_light_blue",2320000],
			["cl3_458_grey",2320000],
			["cl3_458_gold",2320000],
			["cl3_458_burgundy",2320000],
			["cl3_458_black",2320000],
			["ivory_rev_black",2500000],
			["ivory_rev_blue",2500000],
			["ivory_rev_lime",2500000],
			["ivory_rev_pink",2500000],
			["ivory_rev_rot",2500000],
			["ivory_rev_turkis",2500000],
			["ivory_rev_orange",2500000],
			["ivory_rev_sport1",2500000],
			["ivory_rev_sport2",2500000],
			["ivory_rev_sport3",2500000],
			["ivory_rev_sport4",2500000],
			["cl3_lamborghini_gt1_white",2620000],
			["cl3_lamborghini_gt1_purple",2620000],
			["cl3_lamborghini_gt1_navy_blue",2620000],
			["cl3_lamborghini_gt1_lime",2620000],
			["cl3_lamborghini_gt1_light_yellow",2620000],
			["cl3_lamborghini_gt1_light_blue",2620000],
			["cl3_lamborghini_gt1_grey",2620000],
			["cl3_lamborghini_gt1_gold",2620000],
			["cl3_lamborghini_gt1_burgundy",2620000],
			["cl3_lamborghini_gt1_black",2620000],
			["ivory_r34_tuned",2640000],
			["ivory_m3_gts",2780000],
			["ivory_elise_tuned",3185000],
			["ivory_wrx_tuned",3200000],
			["ivory_evox_tuned",3225000],
			["ivory_lfa",3250000],
			["ivory_c",3370000],
			["ivory_lp560",3450000],
			["ivory_f1",3550000],
			["ivory_supra_topsecret",7550000],
			["ivory_f1_tuned",8550000],
			["ivory_veyron",11250000]
		];
	};
	case "showroom_car":
	{
		_return = 
		[
			["Jonzie_Quattroporte",150000],
			["Jonzie_30CSL",30000],
			["Jonzie_Viper",45000],
			["Jonzie_Datsun_Z432",50000],
			["Jonzie_STI",73000],
			["Jonzie_Escalade",40000],
			["Jonzie_Datsun_510",20000],
			["Jonzie_Ceed",7500],
			["Jonzie_Raptor",40000],
			["Jonzie_Galant",5000],
			["Jonzie_Corolla",3500],
			["Jonzie_Mini_Cooper",1000],
			["Jonzie_Mini_Cooper_R_spec",5000],
			["Jonzie_XB",30000],
			["Jonzie_VE",30000],
			["Jonzie_Ute",30000]
		];
	};	
	case "med_shop":
	{
		if(__GETC__(life_mediclevel) == 1) then
		{
			_return pushBack ["Jonzie_Ambulance",25500];
		};
		if(__GETC__(life_mediclevel) == 2) then
		{
			_return pushBack ["Jonzie_Ambulance",25500];
		};
		if(__GETC__(life_mediclevel) == 3) then
		{
			_return pushBack ["Jonzie_Ambulance",25500];
		};
		if(__GETC__(life_mediclevel) == 4) then
		{
			_return pushBack ["Jonzie_Ambulance",25500];
		};
		if(__GETC__(life_mediclevel) == 5) then
		{
			_return pushBack ["Jonzie_Ambulance",25500];
			_return pushBack ["DAR_TahoeEMS",22500];
		};
	};
	case "med_air_hs": {
		_return = 
		[
			["ivory_b206_rescue",650000],
			["IVORY_BELL512_RESCUE",850000],
			["ems_chopper",90000],
			["ems_chopper2",90000],
			["ems_orca",120000],
			["ems_orca2",120000],
			["O_Heli_Transport_04_medevac_F", 120000]
		];
	};
	case "neu_wagen":
	{
		_return = 
		[	
			["ivory_gti",284000],
			["ivory_evox",314000],
			["ivory_supra",342000],
			["ivory_wrx",358000],
			["cl3_z4_2008_white",375000],
			["cl3_z4_2008_purple",375000],
			["cl3_z4_2008_navy_blue",375000],
			["cl3_z4_2008_lime",375000],
			["cl3_z4_2008_light_yellow",375000],
			["cl3_z4_2008_light_blue",375000],
			["cl3_z4_2008_grey",375000],
			["cl3_z4_2008_burgundy",375000],
			["cl3_z4_2008_black",375000],
			["ivory_elise",383000]
		];
	};

	case "civ_car":
	{
		_return =
		[
			// Gebrauchtwagen
			["Jonzie_Mini_Cooper",16000],
			["cl3_suv_taxi",20000],
			["ivory_190e",20000],
			["ivory_190e_taxi",20000],
			["ivory_e36",42000],
			["ivory_r34",54000],
			["ivory_isf",67500],
			["S_Rangerover_Black",70000],
			["S_Rangerover_Red",70000],
			["S_Rangerover_Blue",70000],
			["S_Rangerover_Green",70000],
			["S_Rangerover_Purple",70000],
			["S_Rangerover_Grey",70000],
			["S_Rangerover_Orange",70000],
			["S_Rangerover_White",70000],
			["DAR_TahoeCivSilver",80000],
			["DAR_TahoeCivBlue",80000],
			["DAR_TahoeCivRed",80000],
			["DAR_TahoeCivBlack",80000]
		];
	};
	case "civ_motorbike":
	{
		_return =
		[
			//Motorräder
			["tcg_hrly",50000],
			["tcg_hrly_white",50000],	
			["tcg_hrly_red",50000],
			["tcg_hrly_metal",50000],
			["tcg_hrly_blue",50000],
			["tcg_hrly_limited",50000],
			["tcg_hrly_demon",50000],
			["tcg_hrly_coco",50000],
			["tcg_hrly_orig1",50000],
			["tcg_hrly_orig2",50000],
			["tcg_hrly_skeleton",50000],
			["tcg_hrly_gay",50000],
			["cl3_chopper_blue",50000],
			["cl3_chopper_green",50000],
			["cl3_chopper_red",50000],
			["cl3_enduro_yellow",80000],
			["cl3_enduro_black",80000],
			["cl3_enduro_blue",80000],
			["cl3_enduro_aqua",80000],
			["cl3_enduro_babypink",80000],
			["cl3_enduro_red",80000],
			["cl3_enduro_dark_green",80000],
			["cl3_xr_1000_yellow",140000],
			["cl3_xr_1000_black",140000],
			["cl3_xr_1000_babypink",140000],
			["cl3_xr_1000_red",140000],
			["cl3_xr_1000_lime",140000],
			["cl3_xr_1000_flame",140000]	
		];
	};


	case "civ_truck":
	{
		_return =
		[
			["Jonzie_Log_Truck",200000],
			["Jonzie_Transit",250000],
			["Jonzie_Flat_Bed",2590000],
			["Jonzie_Box_Truck",3750000],
			["Jonzie_Tanker_Truck",3750000],
			["Nhz_audia8limo",3300000],
			["wirk_h3_limo",12000000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Heli_Light_01_F",700000],
			["O_Heli_Light_02_unarmed_F",2500000]
		];

	};
	case "cop_car":
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_return pushBack ["ivory_isf_slicktop",25000];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_return pushBack ["ivory_isf_slicktop",25000];
			_return pushBack ["ivory_m3_slicktop",47000];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_return pushBack ["ivory_isf_slicktop",25000];
			_return pushBack ["ivory_m3_slicktop",47000];
			_return pushBack ["ivory_rs4_slicktop",63000];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_return pushBack ["ivory_isf_slicktop",25000];
			_return pushBack ["ivory_m3_slicktop",47000];
			_return pushBack ["ivory_rs4_slicktop",63000];
			_return pushBack ["ivory_wrx_slicktop",67000];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_return pushBack ["ivory_isf_slicktop",25000];
			_return pushBack ["ivory_m3_slicktop",47000];
			_return pushBack ["ivory_rs4_slicktop",63000];
			_return pushBack ["ivory_wrx_slicktop",67000];
			_return pushBack ["ivory_evox_slicktop",76500];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["ivory_isf_slicktop",25000];
			_return pushBack ["ivory_m3_slicktop",47000];
			_return pushBack ["ivory_rs4_slicktop",63000];
			_return pushBack ["ivory_wrx_slicktop",67000];
			_return pushBack ["ivory_evox_slicktop",76500];
			_return pushBack ["ivory_rev_police",95000];
			_return pushBack ["ivory_rev_sheriff",95000];
		};
	};
	case "fbi_car":
	{
		_return =
		[	
			["ivory_isf_unmarked",75000],
			["ivory_m3_unmarked",75000],
			["ivory_rs4_unmarked",75000],
			["ivory_wrx_unmarked",75000],
			["ivory_evox_unmarked",75000],
			["ivory_rev_fbi",75000],
			["ivory_rev_fbi2",75000],
			["ivory_rev_fbi3",75000],
			["ivory_rev_fbi4",75000],
			["ivory_rev_fbi5",75000],
			["ivory_rev_fbi6",75000],
			["ivory_rev_fbi7",75000],
			["ivory_rev_fbi8",75000],
			["ivory_rev_fbi9",75000],
			["ivory_rev_fbi10",75000],
			["ivory_rev_fbi11",75000]
		];
	};
	case "civ_air":
	{
		_return =
		[
			
			["Sab_af_An2",300000],
			["Sab_tk_An2",300000],
			["Sab_ca_An2",300000],
			["Sab_ana_An2",300000],
			["Sab_yel_An2",300000],
			["Sab_fd_An2",300000],

			["Sab_Sea2_An2",300000],
			["Sab_Sea4_An2",300000],
			["Sab_Amphi_An2",300000],

			["sab_camel",300000],

			["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",350000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["CUP_C_DC3_CIV",800000],
			["CUP_C_C47_CIV",1000000],			
			["GNT_C185",1000000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[			
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["melb_h6m",85000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000]
		];
	};
	case "med_ship":
	{
		_return = 
		[
			["2ndLife_EMS_Boat",12500]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",20000],
			["CUP_B_Zodiac_USMC",40000],
			["C_Boat_Civil_01_F",125000],
			["CUP_C_Fishing_Boat_Chernarus",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
	case "mafia_car":
	{
		_return = 
		[
			["Jonzie_Quattroporte",150000],
			["Jonzie_30CSL",30000],
			["Jonzie_Viper",45000],
			["Jonzie_Datsun_Z432",50000],
			["Jonzie_STI",73000],
			["Jonzie_Escalade",40000],
			["Jonzie_Datsun_510",20000],
			["Jonzie_Ceed",7500],
			["Jonzie_Raptor",40000],
			["Jonzie_Galant",5000],
			["Jonzie_Corolla",3500],
			["Jonzie_Mini_Cooper",1000],
			["Jonzie_Mini_Cooper_R_spec",5000],
			["Jonzie_XB",30000],
			["Jonzie_VE",30000],
			["Jonzie_Ute",30000]
		];
	};	
};

_return;
