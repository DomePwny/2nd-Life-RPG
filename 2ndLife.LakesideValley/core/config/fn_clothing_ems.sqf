#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Kleidungsladen"];


_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_mediclevel) == 1) then 
		{
			_ret pushBack ["2ndLife_EMS1",nil,2];
		};
		if(__GETC__(life_mediclevel) == 2) then 
		{
			_ret pushBack ["2ndLife_EMS1",nil,2];
			_ret pushBack ["2ndLife_EMS2",nil,2];
			_ret pushBack ["2ndLife_EMS3",nil,2];
			_ret pushBack ["2ndLife_EMS4",nil,2];
			_ret pushBack ["2ndLife_EMSWING_4",nil,2];
		};
		if(__GETC__(life_mediclevel) == 3) then 
		{
			_ret pushBack ["2ndLife_EMS1",nil,2];
			_ret pushBack ["2ndLife_EMS2",nil,2];
			_ret pushBack ["2ndLife_EMS3",nil,2];
			_ret pushBack ["2ndLife_EMS4",nil,2];
			_ret pushBack ["2ndLife_EMS5",nil,2];
			_ret pushBack ["2ndLife_EMS6",nil,2];
			_ret pushBack ["2ndLife_EMSWING_4",nil,2];
		};
		if(__GETC__(life_mediclevel) == 4) then 
		{
			_ret pushBack ["2ndLife_EMS1",nil,2];
			_ret pushBack ["2ndLife_EMS2",nil,2];
			_ret pushBack ["2ndLife_EMS3",nil,2];
			_ret pushBack ["2ndLife_EMS4",nil,2];
			_ret pushBack ["2ndLife_EMS5",nil,2];
			_ret pushBack ["2ndLife_EMS6",nil,2];
			_ret pushBack ["2ndLife_EMS7",nil,2];
			_ret pushBack ["2ndLife_EMS8",nil,2];
			_ret pushBack ["2ndLife_EMSWING_4",nil,2];
		};
		if(__GETC__(life_mediclevel) == 5) then 
		{
			_ret pushBack ["2ndLife_EMS1",nil,2];
			_ret pushBack ["2ndLife_EMS2",nil,2];
			_ret pushBack ["2ndLife_EMS3",nil,2];
			_ret pushBack ["2ndLife_EMS4",nil,2];
			_ret pushBack ["2ndLife_EMS5",nil,2];
			_ret pushBack ["2ndLife_EMS6",nil,2];
			_ret pushBack ["2ndLife_EMS7",nil,2];
			_ret pushBack ["2ndLife_EMS8",nil,2];
			_ret pushBack ["2ndLife_EMS9",nil,2];
			_ret pushBack ["2ndLife_EMS10",nil,2];
			_ret pushBack ["2ndLife_EMS_1",nil,2];
			_ret pushBack ["2ndLife_EMSWING_4",nil,2];
		};
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_woolhat", nil, 2],
			["TRYK_H_woolhat_WH", nil, 2],
			["H_Beret_blk", nil, 2],
			["firehat", nil, 2],
			["ACE_helmet", nil, 2],
			["H_CrewHelmetHeli_B", nil, 2]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Diving",nil,50],
			["G_Bandanna_blk",nil,2],
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

			["A3L_FatHead",nil,2],
			["Payday_Cagoule",nil,2],
			["Masque_Chirurgical",nil,2],
			["Masque_Solitaire",nil,2],
			["G_Spectacles",nil,2],
			["G_Spectacles_Tinted",nil,2],
			["G_Goggles_VR",nil,2],


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
			["2ndLife_EMS_Vest",nil,5],
			["V_RebreatherB",nil,5]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["PwnyEMS",nil,5]
		];
	};
};
