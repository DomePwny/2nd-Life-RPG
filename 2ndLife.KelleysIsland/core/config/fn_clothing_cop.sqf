#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Polizei / Sheriff Kleidung"];


_ret = [];
switch (_filter) do
{
	case 0: 
	{
		if(__GETC__(life_coplevel) == 1) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
		};
		if(__GETC__(life_coplevel) == 2) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
		};
		if(__GETC__(life_coplevel) == 3) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50],
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
		};
		if(__GETC__(life_coplevel) == 4) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
		};
		if(__GETC__(life_coplevel) == 5) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
			_ret pushBack ["SecondLife_Marshal_uni",nil,50];
		};
		if(__GETC__(life_coplevel) == 6) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
			_ret pushBack ["SecondLife_Marshal_uni",nil,50];
		};
		if(__GETC__(life_coplevel) == 7) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
			_ret pushBack ["SecondLife_Marshal_uni",nil,50];
		};
		if(__GETC__(life_coplevel) == 8) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
			_ret pushBack ["SecondLife_Marshal_uni",nil,50];
		};
		if(__GETC__(life_coplevel) == 9) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
			_ret pushBack ["SecondLife_Marshal_uni",nil,50];
		};
		if(__GETC__(life_coplevel) == 10) then {
			_ret pushBack ["U_B_Wetsuit","Wet Suit",50];
			_ret pushBack ["SecondLife_Officer1_uni","Streifenuniform",50];
			_ret pushBack ["SecondLife_Marshal_uni",nil,50];
		};
	};

	case 1:
	{
		if(__GETC__(life_coplevel) == 1) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
		};
		if(__GETC__(life_coplevel) == 2) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
		};
		if(__GETC__(life_coplevel) == 3) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 4) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 5) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 6) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 7) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 8) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 9) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
		if(__GETC__(life_coplevel) == 10) then {
			_ret pushBack ["wing_helmet",nil,15];
			_ret pushBack ["TRYK_H_headsetcap_blk_Glasses","Police Cap",50];
			_ret pushBack ["TRYK_r_cap_blk_Glasses","Police Cap",50];
			_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Washedout","Sheriff Hut",50];
			_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut",50];
			_ret pushBack ["TRYK_H_woolhat","Marshal Cap",50];
			_ret pushBack ["TRYK_H_woolhat_WH","Marshal Cap",50];
		};
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,50],
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Aviator",nil,7],
			["G_Squares",nil,1],
			["G_Lady_Blue",nil,10],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5]
		];
	};

	case 3:
	{
		if(__GETC__(life_coplevel) == 1) then {
			_ret pushBack ["V_RebreatherB","Rebreather",20];
			//_ret pushBack ["2ndLife_PoliceLow_Vest4",nil,15];
			//_ret pushBack ["2ndLife_PoliceLow_Vest9",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest1",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest6",nil,15];
		};
		if(__GETC__(life_coplevel) == 2) then {
			_ret pushBack ["V_RebreatherB","Rebreather",20];
			//_ret pushBack ["2ndLife_PoliceLow_Vest3",nil,15];
			//_ret pushBack ["2ndLife_PoliceLow_Vest8",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest1",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest6",nil,15];
		};
		if(__GETC__(life_coplevel) == 3) then {
			_ret pushBack ["V_RebreatherB","Rebreather",20];
			//_ret pushBack ["2ndLife_PoliceLow_Vest5",nil,15];
			//_ret pushBack ["2ndLife_PoliceLow_Vest10",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest1",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest6",nil,15];
			_ret pushBack ["2ndLife_Marshal_Vest",nil,20];
		};
		if(__GETC__(life_coplevel) == 4) then {
			_ret pushBack ["V_RebreatherB","Rebreather",20];
			//_ret pushBack ["2ndLife_PoliceLow_Vest2",nil,15];
			//_ret pushBack ["2ndLife_PoliceLow_Vest7",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest1",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest6",nil,15];
			_ret pushBack ["2ndLife_Marshal_Vest",nil,20];
		};
		if(__GETC__(life_coplevel) == 5) then {
			_ret pushBack ["V_RebreatherB","Rebreather",20];
			_ret pushBack ["2ndLife_PoliceLow_Vest1",nil,15];
			_ret pushBack ["2ndLife_PoliceLow_Vest6",nil,15];
			_ret pushBack ["2ndLife_Marshal_Vest",nil,20];
		};
		if(__GETC__(life_coplevel) > 5) then {
			_ret pushBack ["V_RebreatherB","Rebreather",20];
			_ret pushBack ["2ndLife_Sheriff_Vest",nil,20];
			_ret pushBack ["2ndLife_Officer_Vest",nil,20];
			_ret pushBack ["2ndLife_Marshal_Vest",nil,20];
		};
	};
	
	case 4:
	{
		_ret =
		[
			["PwnyPolice",nil,80]
		];
	};
};

_ret;