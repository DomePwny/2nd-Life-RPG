#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"LVPD Dienstkleidung"];

_ret = [];
switch (_filter) do
{

	//Uniform
	
	case 0:
	{
		_ret pushBack ["fto_uni","Gefängniswärter",5];
		_ret pushBack ["Sheriff_rang1",nil,10];
		_ret pushBack ["Sheriff_rang2",nil,15];
		_ret pushBack ["Sheriff_rang3",nil,15];
		_ret pushBack ["Sheriff_rang4",nil,20];
		_ret pushBack ["Sheriff_rang5",nil,20];
		_ret pushBack ["Sheriff_rang6",nil,25];
		_ret pushBack ["Sheriff_rang7",nil,25];
		_ret pushBack ["Sheriff_rang8",nil,30];
		_ret pushBack ["Sheriff_rang9",nil,30];
		_ret pushBack ["Sheriff_rang10",nil,35];
		_ret pushBack ["Sheriff_rang11",nil,35];
		_ret pushBack ["Sheriff_rang12",nil,35];
		_ret pushBack ["lvpd_rang1",nil,10];
		_ret pushBack ["lvpd_rang2",nil,15];
		_ret pushBack ["lvpd_rang3",nil,15];
		_ret pushBack ["lvpd_rang4",nil,20];
		_ret pushBack ["lvpd_rang5",nil,20];
		_ret pushBack ["lvpd_rang6",nil,25];
		_ret pushBack ["lvpd_rang7",nil,25];
		_ret pushBack ["lvpd_rang8",nil,30];
		_ret pushBack ["lvpd_rang9",nil,30];
		_ret pushBack ["lvpd_rang10",nil,35];
		_ret pushBack ["lvpd_rang11",nil,35];
		_ret pushBack ["lvpd_rang12",nil,35];
		_ret pushBack ["A3L_PolicePilot","Pilotenkleidung (Allg.)",25];
		_ret pushBack ["U_CombatUniShirtMercB_A","Ausbilder",20];
		_ret pushBack ["A3L_Prisoner_Outfit","Gefängnisuniform",10];
		_ret pushBack ["A3L_MotorUniP","Motorradfahrer (Allg.)",25];
		_ret pushBack ["U_bombsuit","Bomben Anzug",50];
		_ret pushBack ["U_B_Wetsuit",nil,50];
	};
	
	//Huete
	case 1:
	{
		_ret pushBack ["H_Hat_Cap_Thai","Ausbilder Mütze",1];
		_ret pushBack ["H_PilotHelmetHeli_B","Pilot",5];
		_ret pushBack ["H_RacingHelmet_1_blue_F","Motorradhelm (blau)",10];
		_ret pushBack ["H_RacingHelmet_1_black_F","Motorradhelm (schwarz)",10];
		_ret pushBack ["ALE_H_Calot","Police Schiffchen",1];
		_ret pushBack ["do_sheriffhut","Sheriff Hut",1];
		_ret pushBack ["Campaign_Hat_Tan","Sheriff Hut Braun",1];
		_ret pushBack ["TRYK_H_PASGT_COYO","Einsatzhelm Sherrif",5];
		_ret pushBack ["AM_PatrolHat","LVPD Hut",1];
		_ret pushBack ["H_007_policecap","LVPD Hut 2",1];
		_ret pushBack ["TRYK_H_PASGT_BLK","Einsatzhelm LVPD",5];
		_ret pushBack ["H_Titan_Helmet","Bombenhelm klein",10];
		_ret pushBack ["H_Bombsuit_Helmet","Bombenhelm groß",15];
		_ret pushBack ["H_Beret_C","Beret (blau)",1];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["TRYK_US_ESS_Glasses","Einsatzbrille LVPD",5],
			["TRYK_US_ESS_Glasses_TAN","Einsatzbrille Sheriff",5],
			["G_Bandanna_tan","Mundtuch Braun",5],
			["G_Bandanna_oli","Mundtuch Grün",5],
			["G_Bandanna_aviator","Mundtuch Schwarz",5],
			["G_Shades_Black",nil,5],
			["Mask_M40","Gasmaske",5],
			["G_Shades_Blue",nil,5],
			["G_Sport_Blackred",nil,5],
			["G_Sport_Checkered",nil,5],
			["G_Sport_Blackyellow",nil,5],
			["G_Sport_BlackWhite",nil,5],
			["G_Aviator",nil,5],
			["G_Squares",nil,5],
			["G_Spectacles_Tinted",nil,5],
			["G_Sport_Red",nil,5],
			["G_Sport_Greenblack",nil,5],
			["G_Tactical_Clear",nil,5],
			["G_Tactical_Black",nil,5],
			["G_Lady_Mirror",nil,5],
			["G_Lady_Dark",nil,5],
			["G_Lady_Blue",nil,5],
			["G_Lowprofile",nil,5],
			["G_Combat",nil,5],
			["G_B_Diving",nil,5],
			["G_Balaclava_blk",nil,5],
			["G_Balaclava_combat",nil,5],
			["G_Balaclava_lowprofile",nil,5],
			["A3L_Balaclava",nil,5],
			["SFG_Tac_BeardD","Bart (Dunkel)",10],
			["SFG_Tac_BeardB","Bart (Blond)",10],
			["SFG_Tac_BeardG","Bart (Ginger)",10],
			["SFG_Tac_BeardO","Bart (Alt)",10],
			["SFG_Tac_ChopsD","Mutton Chops (Dunkel)",10],
			["SFG_Tac_ChopsG","Mutton Chops (Ginger)",10],
			["SFG_Tac_ChopsB","Mutton Chops (Blond)",10],
			["SFG_Tac_ChopsO","Mutton Chops (Alt)",10],
			["SFG_Tac_moustacheD","Moustache (Dunkel)",10],
			["SFG_Tac_moustacheG","Moustache (Ginger)",10],
			["SFG_Tac_moustacheB","Moustache (Blond)",10],
			["SFG_Tac_moustacheO","Moustache (Alt)",10],
			["SFG_Tac_chinlessbD","Chinless Beard (Dunkel)",10],
			["SFG_Tac_chinlessbG","Chinless Beard (Ginger)",10],
			["SFG_Tac_chinlessbB","Chinless Beard (Blond)",10],
			["SFG_Tac_chinlessbO","Chinless Beard (Alt)",10]
			
		];
	};
	
	//Westen
	case 3:
	{
	//	_ret pushBack ["do_polizeiguertel",nil,50];
	//	_ret pushBack ["do_polizeiguertelMen",nil,50];
		_ret pushBack ["A3L_policevest2","DOJ",100];
		
	//	_ret pushBack ["A3L_sheriffvest2","LVPD",100];
		_ret pushBack ["TRYK_V_Bulletproof","LVPD",200];
		_ret pushBack ["TRYK_V_tacv1_P_BK","Einsatzweste LVPD",200];
		
	//	_ret pushBack ["A3L_sheriffvest1","Sheriff",100];
		_ret pushBack ["TRYK_V_Bulletproof_BL","Sheriff",100];
		_ret pushBack ["TRYK_V_tacv1_SHERIFF_BK","Einsatzweste Sheriff",100];
		
	//	_ret pushBack ["V_Vest_light_Invisible","Deeskalationsweste",200]; //Bis Fix raus
		_ret pushBack ["V_Press_F","Presseweste",75];
		_ret pushBack ["V_RebreatherB",nil,75];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["TRYK_B_Carryall_blk",nil,100],
			["TRYK_B_Carryall_JSDF",nil,100],
			["TRYK_B_Alicepack",nil,100],
			["B_Carryall_oucamo",nil,100],
			["B_Carryall_cbr",nil,100],
			["B_Carryall_ocamo",nil,100],
			["B_Carryall_mcamo",nil,100],
			["B_Carryall_oli",nil,100],
			["B_Carryall_khk",nil,100],
			["ACE_TacticalLadder_Pack",nil,250]
		];
	};
};

_ret;
