#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["2ndLife_sndlife",nil,25],
			["TRYK_SUITS_BLK_F","TRYK Black Suit",1350],
			["TRYK_SUITS_BR_F","TRYK Brown Suit",1350],
			["2ndLife_DerBeste1",nil,50],
			["2ndLife_EA1",nil,50],
			["2ndLife_Herz1",nil,50],
			["2ndLife_KFC1",nil,50],
			["2ndLife_Mario1",nil,50],
			["2ndLife_Pika1",nil,50],
			["2ndLife_Condom1",nil,50],
			["2ndLife_Fuckyou1",nil,50]
		];
		if(__GETC__(life_adminlevel) > 0) then {
			_ret pushBack ["U_C_Scientist",nil,5];
		};
		_ret;
	};
	
	//Hats
	case 1:
	{
		[
			["Gorb_Santa_White",nil,112],
			["Gorb_Santa_Tan",nil,112],
			["Gorb_Santa_Black",nil,112],
			["Gorb_Reindeer",nil,112],
			["Gorb_Snowman",nil,112],
			["Gorb_Antler",nil,112],
			["Gorb_Elf",nil,112],
			["Gorb_SantaHat",nil,112],
			["Gorb_SantaHat_Green",nil,112],
			["Gorb_Penguin",nil,112],
			["Gorb_Gingerbread1",nil,112],
			["Gorb_KnittedHat1",nil,112],
			["Gorb_KnittedHat2",nil,112],
			["Gorb_KnittedHat3",nil,112],
			["Gorb_KnittedHat4",nil,112],
			["Gorb_ElfMask1",nil,112],
			["Gorb_ElfMask2",nil,112],
			["Gorb_ElfMask3",nil,112],
			["Gorb_PuddingHat",nil,112],
			["Gorb_FestiveHat1",nil,112],
			["Gorb_FestiveHat2",nil,112],
			["Gorb_FestiveHat3",nil,112],
			["Gorb_FestiveHat4",nil,112],
			["Gorb_FestiveHat5",nil,112],
			["Gorb_FestiveHat6",nil,112],
			["Gorb_FestiveHat7",nil,112],
			["Gorb_FestiveHat8",nil,112],
			["Gorb_PlaidHat1",nil,112],
			["Gorb_PlaidHat2",nil,112],
			["Gorb_PlaidHat3",nil,112],
			["Gorb_PlaidHat4",nil,112],
			["Gorb_TurkeyMask1",nil,112],
			["Gorb_TurkeyMask2",nil,112],
			["Gorb_TurkeyMask3",nil,112],
			["Gorb_UglyMrsClaus1",nil,112],
			["Gorb_UglyMrsClaus2",nil,112],
			["Gorb_UglyMrsClaus3",nil,112],
			["Gorb_AngryGingerbread1",nil,112],
			["Gorb_AngryGingerbread2",nil,112],
			["Gorb_AngryGingerbread3",nil,112],
			["Gorb_PuddingMask1",nil,112],
			["Gorb_PuddingMask2",nil,112],
			["Gorb_RoughSantaClaus1",nil,112],
			["Gorb_RoughSantaClaus2",nil,112],
			["Gorb_RoughSantaClaus3",nil,112],
			["Gorb_AngryGingerbreadSwirl1",nil,112],
			["Gorb_AngryGingerbreadSwirl2",nil,112],
			["Gorb_CoolElfMask1",nil,112],
			["Gorb_CoolElfMask2",nil,112],
			["Gorb_CoolElfMask3",nil,112],
			["Gorb_TreeMask1",nil,112],
			["Gorb_TreeMask2",nil,112],
			["Gorb_TreeMask3",nil,112],
			["Gorb_TreeMask4",nil,112],
			["Gorb_TreeMask5",nil,112],
			["Gorb_TreeMask6",nil,112],
			["Gorb_MrsClaus1",nil,112],
			["Gorb_MrsClaus2",nil,112],
			["Gorb_MrsClaus3",nil,112],
			["Gorb_HolidayBaseballHat1",nil,112],
			["Gorb_HolidayBaseballHat2",nil,112],
			["Gorb_HolidayBaseballHat3",nil,112],
			["Gorb_HolidayBaseballHat4",nil,112],
			["Gorb_HolidayBaseballHat5",nil,112],
			["Gorb_HolidayBaseballHat6",nil,112],
			["Gorb_HolidayBaseballHat7",nil,112],
			["Gorb_HolidayBaseballHat8",nil,112],

			["H_ShrekMask",nil,112],
			["H_MickeyMask",nil,112],
			["H_UltronMask",nil,112],
			["H_PatriotMask",nil,112],
			["H_AntmanMask",nil,112],
			["H_BobaMask",nil,112],
			["H_AugustusMask",nil,112],
			["H_RAAMMask",nil,112],
			["H_HulkMask",nil,112],
			["H_VenomMask",nil,112],
			["H_SpongebobMask",nil,112],
			["H_SquidwardMask",nil,112],
			["H_JasonMask",nil,112],
			["H_DeadpoolMask",nil,112],
			["H_GingerbreadMask",nil,112],
			["H_KermitMask",nil,112],
			["H_SpidermanMask",nil,112],
			["H_StarFoxMask",nil,112],
			["H_BatmanMask",nil,112],
			["H_ScarecrowMask",nil,112],
			["H_GuyFawkesMask",nil,112],
			["H_WashingtonMask",nil,112],
			["H_LincolnMask",nil,112],
			["H_GrantMask",nil,112],
			["H_NixonMask",nil,112],
			["H_ClintonMask",nil,112],
			["H_BushMask",nil,112],
			["H_ObamaMask",nil,112],
			["H_FranklinMask",nil,112],

			["H_StrawHat",nil,112],
			["H_StrawHat_dark",nil,112],
			["Masque_Alien1",nil,1110],
			["Masque_Anonymous",nil,1120],
			["Masque_Chains",nil,1110],
			["Payday_GeneralO",nil,1110],
			["Casque_Moto",nil,1110],
			["Masque_Clinton",nil,1112],
			["Masque_speedRunner",nil,1110],
			["Masque_Unic",nil,1110],
			["Masque_Aubrey",nil,1110],
			["Masque_Bonnie",nil,1110],
			["Masque_Bush",nil,1112],
			["Masque_Mempo",nil,1120],
			["Masque_Lincoln",nil,1120],
			["Masque_Wolfv2",nil,1110],
			["Masque_archNemesis",nil,1110],
			["Masque_Arnold",nil,1110],
			["Masque_Chuck",nil,1112],
			["Masque_Clover",nil,1120],
			["Masque_Fish",nil,1112],
			["Masque_Hockey",nil,1112],
			["Masque_Metalhead",nil,1120],
			["Masque_Religieuse",nil,1110],
			["Masque_Smiley",nil,1120],
			["Masque_Santa",nil,1110],
			["Masque_Momie",nil,1110],
			["Masque_Optimiste",nil,1110],
			["Masque_forceAlpha",nil,1120],
			["Masque_GdG",nil,1110],
			["Masque_Gombo",nil,1110],
			["Masque_Lion",nil,1110],
			["Masque_Orc",nil,1110],
			["Masque_Mark",nil,1110],
			["Masque_Macrilleuse",nil,1112],
			["Masque_Hoxton",nil,1112],
			["Masque_Incendiaire",nil,1112],
			["Masque_Dallas",nil,1110],

			["ALE_H_NewEra_Monster",nil,110],
			["ALE_H_NewEra_Rouge",nil,110],
			["ALE_H_NewEra_Superman",nil,112],
			["ALE_H_NewEra_Cyan",nil,110],
			["ALE_H_NewEra_Black",nil,110],
			["ALE_H_NewEra_Lakers",nil,120],
			["ALE_H_NewEra_Redsox",nil,120],
			
			["ALE_H_Calot",nil,12],
			["ALE_H_Cowboy_White",nil,12],
			["ALE_H_Cowboy_Black",nil,12],
			["ALE_H_Cowboy_Brown",nil,12],

			["kio_vfv_mask","Anon", 100],
			["Kio_Capital_Hat","Top Hat w/Monacle", 100],
			["a3l_hardhat","Hard Hat", 20],
			["Kio_Afro_Hat","Brown Afro", 20],
			["H_Beret_blk","Black Beret", 20],
			["H_Booniehat_khk",nil, 40],
			["H_Booniehat_oli",nil, 40],
			["H_Booniehat_tan",nil, 40],
			["Kio_No1_Hat","#1 Hat", 20],
			["Kio_Pirate_Hat","Pirate Hat", 100],
			["Kio_Santa_Hat","Santa Hat", 20],
			["Kio_Spinning_Hat","Spinning Hat", 20],
			["Kio_Hat","Cute Warm Hat", 20],

			["TRYK_H_woolhat_WH",nil,150],
			["TRYK_H_woolhat_tan",nil,150],
			["TRYK_H_woolhat_CW",nil,150],
			["TRYK_H_woolhat_cu",nil,150],
			["TRYK_H_woolhat_br",nil,150],
			["TRYK_H_woolhat",nil,150],
			["TRYK_r_cap_tan_Glasses",nil,150],
			["TRYK_r_cap_od_Glasses",nil,150],
			["TRYK_r_cap_blk_Glasses",nil,150],
			["TRYK_R_CAP_OD_US",nil,150],
			["TRYK_R_CAP_TAN",nil,150],
			["TRYK_R_CAP_BLK",nil,150],
			["TRYK_H_pakol2",nil,150],
			["TRYK_H_headsetcap",nil,150],
			["TRYK_H_headsetcap_od",nil,150],
			["TRYK_H_headsetcap_blk",nil,150],
			["TRYK_H_headsetcap_blk_Glasses",nil,150],
			["TRYK_H_headsetcap_Glasses",nil,150],
			["TRYK_H_LHS_HEL_G",nil,150],
			["TRYK_H_Bandana_wig_g",nil,150],
			["TRYK_H_Bandana_wig",nil,150],
			["TRYK_H_Bandana_H",nil,150],
			["TRYK_Kio_Balaclava",nil,150],
			["TRYK_H_wig",nil,150],
			["cowboyhat","Cowboyhat",12],
			["santahat","Santa hat",12],
			["turban","Turban",12],
			["H_Cap_tan",nil,12],
			["H_Cap_blk",nil,12],
			["H_Cap_blk_CMMG",nil,12],
			["H_Cap_brn_SPECOPS",nil,12],
			["H_Cap_tan_specops_US",nil,12],
			["H_Cap_khaki_specops_UK",nil,12],
			["H_Cap_grn",nil,12],
			["H_Cap_grn_BI",nil,12],
			["H_Cap_blk_Raven",nil,12],
			["H_Cap_blk_ION",nil,12]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			//beards
			["SFG_Tac_smallBeardB",nil,2],
			["SFG_Tac_smallBeardD",nil,2],
			["SFG_Tac_smallBeardG",nil,2],
			["SFG_Tac_smallBeardO",nil,2],
			["SFG_Tac_BeardB",nil,2],
			["SFG_Tac_BeardD",nil,2],
			["SFG_Tac_BeardG",nil,2],
			["SFG_Tac_BeardO",nil,2],
			["SFG_Tac_chinlessbB",nil,2],
			["SFG_Tac_chinlessbD",nil,2],
			["SFG_Tac_chinlessbG",nil,2],
			["SFG_Tac_chinlessbO",nil,2],
			["SFG_Tac_moustacheB",nil,2],
			["SFG_Tac_moustacheD",nil,2],
			["SFG_Tac_moustacheG",nil,2],
			["SFG_Tac_moustacheO",nil,2],
			["SFG_Tac_ChopsB",nil,2],
			["SFG_Tac_ChopsD",nil,2],
			["SFG_Tac_ChopsG",nil,2],
			["SFG_Tac_ChopsO",nil,2],
			//bears end
			["G_Lady_Blue","Damenbrille",10],
			["Payday_Cagoule",nil,2],
			["Masque_Solitaire",nil,2],
			["G_Spectacles",nil,2],
			["G_Spectacles_Tinted",nil,2],
			["G_Goggles_VR",nil,2],

			["TRYK_Beard_BK",nil,15],
			["TRYK_Beard",nil,15],
			["TRYK_Beard_BW",nil,15],
			["TRYK_Beard_Gr",nil,15],
			["TRYK_Beard_BK2",nil,15],
			["TRYK_Beard2",nil,15],
			["TRYK_Beard_BW2",nil,15],
			["TRYK_Beard_Gr2",nil,15],
			["TRYK_Beard_BK3",nil,15],
			["TRYK_Beard3",nil,15],
			["TRYK_Beard_BW3",nil,15],
			["TRYK_Beard_Gr3",nil,15],
			["TRYK_Beard_BK4",nil,15],
			["TRYK_Beard4",nil,15],
			["TRYK_Beard_BW4",nil,15],
			["TRYK_Beard_Gr4",nil,15],

			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Aviator",nil,10],
			["G_Lady_Mirror",nil,15],
			["G_Lady_Dark",nil,15],
			["G_Lady_Blue",nil,15],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["2ndLife_CivLow_Vest1",nil,1250],
			["2ndLife_CivLow_Vest2",nil,1250],
			["2ndLife_CivLow_Vest3",nil,1250],
			["2ndLife_CivLow_Vest4",nil,1250],
			["2ndLife_CivLow_Vest5",nil,1250]
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
