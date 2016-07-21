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
ctrlSetText[3103,"Sert Kleidung"];
If (__GETC__(life_coplevel)  < 6) exitwith {["Dein Rang ist nicht hoch genug!", false] spawn domsg; closeDialog 0;};

_ret = [];
switch (_filter) do
{
	case 0: 
	{
		_ret =
		[
			["SecondLife_Sert6",nil,50],
			["SecondLife_Sert1",nil,50],
			["SecondLife_Sert2",nil,50],
			["SecondLife_Sert3",nil,50],
			["SecondLife_Sert4",nil,50],
			["SecondLife_Sert5",nil,50],
			["2ndLife_ASU_2",nil,50],
			["2ndLife_WING_3",nil,50]
		];
	};

	case 1:
	{
		_ret =
		[
			["wing_helmet",nil,5],
			["2ndLife_sert_H1",nil,5],
			["2ndLife_sert_H2",nil,5],
			["2ndLife_sert_H3",nil,5],
			["2ndLife_sert_H4",nil,5],
			["2ndLife_sert_H5",nil,5]
		];
	};
	
	case 2:
	{
		_ret = 
		[
			["TRYK_kio_balaclava_BLK",nil,5],
			["TRYK_kio_balaclavas",nil,5],
			["G_Bandanna_beast",nil,5],
			["G_Bandanna_blk",nil,5],
			["Mask_M40","Gas Mask",5]	
		];
	};

	case 3:
	{
		_ret =
		[
			["2ndLife_SertTeam_Vest",nil,20],
			["2ndLife_Sert_Vest1",nil,20],
			["2ndLife_Sert_Vest2",nil,20],
			["2ndLife_Sert_Vest3",nil,20],
			["2ndLife_Sert_Vest4",nil,20],
			["2ndLife_Sert_Vest5",nil,20]
		];
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Rucksack",80]
		];
	};
};

_ret;
