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

			["KAEL_SUITS_BR_F12",nil,1350],
			["KAEL_SUITS_BLK_F",nil,1350],
			["KAEL_SUITS_BR_F",nil,1350],
			["KAEL_SUITS_BR_F3",nil,1350],
			["KAEL_SUITS_BR_F4",nil,1350],
			["KAEL_SUITS_BR_F5",nil,1350],
			["KAEL_SUITS_BR_F6",nil,1350],
			["KAEL_SUITS_BR_F7",nil,1350],
			["KAEL_SUITS_BR_F8",nil,1350],
			["KAEL_SUITS_BR_F9",nil,1350],
			["KAEL_SUITS_BR_F10",nil,1350],
			["KAEL_SUITS_BR_F11",nil,1350],
			["KAEL_SUITS_BR_F13",nil,1350],
			["KAEL_SUITS_BR_F14",nil,1350],
			["KAEL_SUITS_BR_F24",nil,1350],
			["KAEL_SUITS_BR_F25",nil,1350],
			["KAEL_SUITS_BR_F16",nil,1350],
			["KAEL_SUITS_BR_F17",nil,1350],
			["KAEL_SUITS_BR_F18",nil,1350],
			["KAEL_SUITS_BR_F19",nil,1350],
			["KAEL_SUITS_BR_F20",nil,1350],
			["KAEL_SUITS_BR_F21",nil,1350],
			["KAEL_SUITS_BR_F22",nil,1350],
			["KAEL_SUITS_BR_F23",nil,1350],
			["KAEL_SUITS_BR_F15",nil,1350],
			["KAEL_SUITS_BR_F26",nil,1350],
			["KAEL_SUITS_BR_F27",nil,1350],
			["KAEL_SUITS_BR_F28",nil,1350],
			["KAEL_SUITS_BR_F29",nil,1350],
			["KAEL_SUITS_BR_F30",nil,1350],
			["KAEL_SUITS_BR_F31",nil,1350],
			["KAEL_SUITS_BR_F32",nil,1350],
			["KAEL_SUITS_BR_F33",nil,1350],
			["KAEL_SUITS_BR_F34",nil,1350],
			["KAEL_SUITS_BR_F35",nil,1350]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_gangster_hat","Gangster",105],
			["ALE_H_Cowboy_Black",nil,105],
			["ALE_H_Cowboy_White",nil,105],
			["H_GuyFawkesMask",nil,105],
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