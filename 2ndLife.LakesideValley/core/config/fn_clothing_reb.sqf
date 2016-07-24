/*
	File: fn_clothing_reb.sqf
	
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mafia Kleidung"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[

			["I_FEM_AAF_long","Female Long",5000],
			["B_FEM_AAF_Rolled","Female Rolled",5000],
			["B_FEM_NATO_Rolled","Female Rolled 3",5000],


			["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,550],
			["TRYK_U_B_PCUHsW2",nil,550],
			["TRYK_U_B_PCUHsW6",nil,550],
			["TRYK_U_B_Denim_T_WH",nil,550],
			["TRYK_U_B_Denim_T_BK",nil,550],
			["TRYK_U_B_Denim_T_BG_WH",nil,550],
			["TRYK_U_B_Denim_T_BG_BK",nil,550],
			["TRYK_U_B_RED_T_BR",nil,550],
			["TRYK_U_B_RED_T_BG_BR",nil,550],
			["TRYK_T_camo_tan",nil,550],
			["TRYK_U_taki_BL",nil,550],
			["TRYK_U_taki_BLK",nil,550],
			["TRYK_U_taki_COY",nil,550],
			["TRYK_U_taki_wh",nil,550],
			["TRYK_U_taki_G_BL",nil,550],
			["TRYK_U_taki_G_BLK",nil,550],
			["TRYK_U_taki_G_COY",nil,550],
			["TRYK_U_taki_G_WH",nil,550],
			["TRYK_U_pad_j",nil,550],
			["TRYK_U_pad_j_blk",nil,550],
			["TRYK_U_denim_jersey_blu",nil,550],
			["TRYK_U_denim_jersey_blk",nil,550],
			["TRYK_U_denim_hood_nc",nil,550],
			["TRYK_U_denim_hood_mc",nil,550],
			["TRYK_U_denim_hood_blk",nil,550],
			["TRYK_U_denim_hood_3c",nil,550],

			["TRYK_T_TAN_PAD",nil,550],
			["TRYK_T_OD_PAD",nil,550],
			["TRYK_T_BLK_PAD",nil,550],
			["TRYK_U_hood_nc",nil,550],
			["TRYK_U_hood_mc",nil,550],
			["TRYK_hoodie_Wood",nil,550],
			["TRYK_hoodie_FR",nil,550],
			["TRYK_U_pad_hood_tan",nil,550],
			["TRYK_U_pad_hood_Cl",nil,550],
			["TRYK_U_pad_hood_odBK",nil,550],
			["TRYK_U_nohoodPcu_gry",nil,550],
			["TRYK_U_pad_hood_BKT2",nil,550],
			["TRYK_U_pad_hood_Blk",nil,550],
			["TRYK_U_pad_hood_Blod",nil,550],
			["TRYK_shirts_TAN_PAD_YEL",nil,550],
			["TRYK_shirts_OD_PAD_YEL",nil,550],
			["TRYK_shirts_BLK_PAD_YEL",nil,550],
			["TRYK_shirts_PAD_YEL",nil,550],
			["TRYK_shirts_TAN_PAD_RED2",nil,550],
			["TRYK_shirts_OD_PAD_RED2",nil,550],
			["TRYK_shirts_BLK_PAD_RED2",nil,550],
			["TRYK_shirts_TAN_PAD",nil,550],
			["TRYK_shirts_OD_PAD",nil,550],
			["TRYK_shirts_BLK_PAD",nil,550],
			["TRYK_shirts_TAN_PAD_BLU3",nil,550],
			["TRYK_shirts_OD_PAD_BLU3",nil,550],
			["TRYK_shirts_BLK_PAD_BLU3",nil,550],
			["TRYK_shirts_TAN_PAD_BLW",nil,550],
			["TRYK_shirts_OD_PAD_BLW",nil,550],
			["TRYK_shirts_BLK_PAD_BLW",nil,550],
			["TRYK_shirts_TAN_PAD_BL",nil,550],
			["TRYK_shirts_TAN_PAD_BK",nil,550],
			["TRYK_shirts_BLK_PAD_BK",nil,550],
			["TRYK_shirts_DENIM_WHB_Sleeve",nil,550],
			["TRYK_shirts_DENIM_WH_Sleeve",nil,550],
			["TRYK_shirts_DENIM_RED2_Sleeve",nil,550],
			["TRYK_shirts_DENIM_R_Sleeve",nil,550],
			["TRYK_shirts_DENIM_BWH_Sleeve",nil,550],
			["TRYK_shirts_DENIM_BL_Sleeve",nil,550],
			["TRYK_shirts_DENIM_BK_Sleeve",nil,550],
			["TRYK_shirts_DENIM_ylb_Sleeve",nil,550],
			["TRYK_shirts_DENIM_od_Sleeve",nil,550],
			["TRYK_shirts_DENIM_ylb",nil,550],
			["TRYK_shirts_DENIM_WHB",nil,550],
			["TRYK_shirts_DENIM_WH",nil,550],
			["TRYK_shirts_DENIM_RED2",nil,550],
			["TRYK_shirts_DENIM_R",nil,550],
			["TRYK_shirts_DENIM_od",nil,550],
			["TRYK_shirts_DENIM_BWH",nil,550],
			["TRYK_shirts_DENIM_BL",nil,550],
			["TRYK_U_B_wh_tan_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_wh_OD_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_BLK_tan_Rollup_CombatUniform",nil,500],
			["TRYK_U_B_BLK_OD_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,550],
			["TRYK_U_B_PCUODs",nil,550],
			["TRYK_U_B_Wood_PCUs",nil,550],
			["TRYK_U_B_Wood_PCUs_R",nil,550],
			["TRYK_U_B_UCP_PCUs",nil,550],
			["TRYK_U_B_UCP_PCUs_R",nil,550],
			["TRYK_U_B_GRY_PCUs",nil,550],
			["TRYK_U_B_GRY_PCUs_R",nil,550],
			["TRYK_U_B_PCUGs_gry",nil,550],
			["TRYK_U_B_PCUGs_BLK",nil,550],
			["TRYK_U_B_PCUGs_OD_R",nil,550],
			["TRYK_U_B_PCUGs_gry_R",nil,550],
			["TRYK_U_B_PCUGs_BLK_R",nil,550],
			["TRYK_U_B_PCUODHs",nil,550],
			["TRYK_U_B_PCUGHs",nil,550],
			["TRYK_U_B_PCUHs",nil,550],
			["TRYK_U_Bts_GRYGRY_PCUs",nil,550],
			["TRYK_U_Bts_PCUGs",nil,550],
			["TRYK_U_Bts_PCUs",nil,550],
			["TRYK_U_B_ODTANR_CombatUniformTshirt",nil,550],
			["TRYK_U_B_ODTAN_CombatUniform",nil,550],
			["TRYK_U_B_OD_OD_R_CombatUniform",nil,550],
			["TRYK_U_B_OD_OD_CombatUniform",nil,550],
			["TRYK_U_B_NATO_OCP_BLK_R_CombatUniform",nil,550],
			["TRYK_OVERALL_SAGE_BLKboots",nil,550],
			["TRYK_OVERALL_flesh",nil,550],
			["TRYK_OVERALL_SAGE_BLKboots_nk_blk",nil,550],
			["TRYK_OVERALL_nok_flesh",nil,550],
			["TRYK_HRP_USMC",nil,550],
			["TRYK_HRP_khk",nil,550],
			["TRYK_U_B_GRTANR_CombatUniformTshirt",nil,550],
			["TRYK_U_B_GRTAN_CombatUniform",nil,550],
			["TRYK_U_B_fleece_UCP",nil,550],
			["TRYK_U_B_fleece",nil,550],
			["TRYK_U_B_3CD_BLK_BDUTshirt2",nil,550],
			["TRYK_U_B_3CD_BLK_BDUTshirt",nil,550],
			["TRYK_U_B_BLK_TAN_1",nil,550],
			["TRYK_U_B_BLK_TAN_2",nil,550],
			["TRYK_U_B_ODTAN_Tshirt",nil,550],
			["TRYK_U_B_ODTAN",nil,550],
			["TRYK_U_B_OD_BLK",nil,550],
			["TRYK_U_B_OD_BLK_2",nil,550],
			["TRYK_U_B_BLK_OD",nil,550],
			["TRYK_U_B_BLK",nil,550],
			["TRYK_U_B_BLK_Tshirt",nil,550],
			["TRYK_U_B_BLKTAN",nil,550],
			["TRYK_U_B_BLKTAN_Tshirt",nil,550],
			["TRYK_U_B_C02_Tsirt",nil,550],
			["TRYK_U_B_BLTAN_T",nil,550],
			["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,550],
			["TRYK_U_B_BLKTAN_CombatUniform",nil,550],
			["TRYK_U_B_BLOD_T",nil,550],
			["TRYK_U_B_BLKBLK_R_CombatUniform",nil,550],
			["TRYK_U_B_PCUHsW3",nil,550],
			["TRYK_U_B_PCUHsW3nh",nil,550]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_Booniehat_AOR2",nil,105],
			["TRYK_H_Booniehat_MARPAT_WOOD",nil,105],
			["TRYK_H_Booniehat_AOR1",nil,105],
			["TRYK_H_Booniehat_JSDF",nil,105],
			["H_Bandanna_camo",nil,65],
			["jokermask","Joker Mask",500],
			["TRYK_Kio_Balaclava","Ghost Balaclava",500],
			["A3L_Halloween_JigSaw","JigSaw Mask",500],
			["kio_skl_msk","Black Skull Mask",500],
			["kio_skl_msk_grn","Green Skull Mask",500],
			["kio_skl_msk_red","Red Skull Mask",500],
			["kio_skl_msk_fire",nil,500],
			["kio_skl_msk_weed",nil,500],
			["kio_skl_msk_frost",nil,500],
			["kio_skl_msk_pun",nil,500],
			["kio_skl_msk_adc",nil,500],
			["kio_skl_msk_blood",nil,500],
			["kio_skl_msk_redranger",nil,500],
			["kio_skl_msk_UK",nil,500],
			["kio_skl_msk_US",nil,500],
			["kio_skl_msk_black",nil,500],
			["kio_skl_msk_can",nil,500],
			["kio_skl_msk_german",nil,500],
			["kio_skl_msk_GOW",nil,500],
			["kio_skl_msk_grey",nil,500],
			["kio_skl_msk_irish",nil,500],
			["kio_skl_msk_nirish",nil,500],
			["kio_skl_msk_o",nil,500],
			["kio_skl_msk_p",nil,500],
			["kio_skl_msk_scot",nil,500],
			["kio_skl_msk_fran",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Lady_Blue","Damenbrille",10],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,137],
			["G_Balaclava_combat",nil,137],
			["G_Balaclava_lowprofile",nil,137],
			["A3L_Balaclava",nil,137]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["2ndLife_Rebel_Vest1",nil,5000],
			["2ndLife_Rebel_Vest2",nil,5000],
			["2ndLife_Rebel_Vest3",nil,5000],
			["2ndLife_Rebel_Vest4",nil,5000],
			["2ndLife_Rebel_Vest5",nil,5000],
			["2ndLife_Rebel_Vest6",nil,5000],
			["2ndLife_Rebel_Vest7",nil,5000],
			
			["2ndLife_Civ_Vest1",nil,3000],
			["2ndLife_Civ_Vest2",nil,3000],
			["2ndLife_Civ_Vest3",nil,3000],
			["2ndLife_Civ_Vest4",nil,3000],
			["2ndLife_Civ_Vest5",nil,3000],
			["2ndLife_Civ_Vest6",nil,3000],
			["2ndLife_Civ_Vest7",nil,3000],
			["2ndLife_Civ_Vest8",nil,3000],
			["2ndLife_Civ_Vest9",nil,3000],
			["2ndLife_Civ_Vest10",nil,3000]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			// Farblich
			["Pwnyblau",nil,500],
			["Pwnybraun",nil,500],
			["Pwnygelb",nil,500],
			["Pwnylila",nil,500],
			["Pwnyorange",nil,500],
			["Pwnypink",nil,500],
			["Pwnyschwarz",nil,500],
			["Pwnyweis",nil,500],
			// Muster
			["Pwnypokemon",nil,550],
			["Pwnygraffiti",nil,550],
			["Pwnypony",nil,550],
			["Pwnyadler",nil,550],
			["Pwnybatman",nil,550],
			["Pwnybb",nil,550],
			["Pwnyclint",nil,550],
			["Pwnyfuture",nil,550],
			["Pwnygucci",nil,550],
			["Pwnykuerbis",nil,550],
			["Pwnytwitch",nil,550],
			["Pwnyvader",nil,550],
			["Pwnyweed",nil,550]
		];
	};
};