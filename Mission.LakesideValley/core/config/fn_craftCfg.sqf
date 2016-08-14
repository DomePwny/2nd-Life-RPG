#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.


/*
=====================================

	T O   B E   C H A N G E D
	
	Muss man noch den
	Mod-Dateien anpassen.
	
	Nicht alle hier aufgelisten
	Rohstoffe haben wir
	auf dem Server!
	
=====================================
*/

switch(_craft) do
{
		/*case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["hlc_rifle_akm", ["life_inv_ironr",8,"life_inv_holz",6,"life_inv_schwarzpulver",6]],
				["hlc_30Rnd_762x39_b_ak", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["hlc_rifle_aks74u", ["life_inv_ironr",8,"life_inv_holz",6,"life_inv_schwarzpulver",6]],
				["hlc_rifle_ak12", ["life_inv_ironr",8,"life_inv_holz",6,"life_inv_schwarzpulver",6]],
				["hlc_rifle_aek971", ["life_inv_ironr",8,"life_inv_holz",6,"life_inv_schwarzpulver",6]],
				["hlc_30Rnd_545x39_B_AK", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["RH_ar10", ["life_inv_ironr",8,"life_inv_holz",6,"life_inv_schwarzpulver",6]],
				["RH_20Rnd_762x51_AR10", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["RH_M4sbr_b", ["life_inv_ironr",8,"life_inv_copperr",8,"life_inv_schwarzpulver",6]],
				["30Rnd_556x45_Stanag", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["A3L_CZ550", ["life_inv_holz",4,"life_inv_ironr",12,"life_inv_schwarzpulver",4]],
				["A3L_CZ550mag", ["life_inv_ironr",2,"life_inv_schwarzpulver",4]]
			];
	};
	
		case "visiere":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["optic_Hamr", ["life_inv_ironr",2,"life_inv_glass",4]],
				["optic_Yorris", ["life_inv_ironr",2,"life_inv_glass",4]],
				["A3L_RedDot", ["life_inv_ironr",2,"life_inv_glass",4]],
				["RH_Delft", ["life_inv_ironr",2,"life_inv_glass",4]],
				["A3L_CCO", ["life_inv_ironr",2,"life_inv_glass",4]],
				["A3L_CZ550Scope", ["life_inv_ironr",2,"life_inv_glass",4]],
				["hlc_optic_kobra", ["life_inv_ironr",2,"life_inv_glass",4]]
			];
	};*/

/*
	case "uniform":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["U_IG_Guerilla1_1", ["life_inv_goldbar",1]]
			];
	};

	case "backpack":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["B_Carryall_oli", ["life_inv_goldbar",1]]
			];
	};
*/
	case "item":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["life_inv_blastingcharge", ["life_inv_elektroteile",8,"life_inv_schwarzpulver",4,"life_inv_ironr",3]],
				["life_inv_bohrmaschine", ["life_inv_elektroteile",6,"life_inv_ironr",2,"life_inv_copperr",2]],
				["life_inv_nothammer", ["life_inv_ironr",1,"life_inv_holz",2,"life_inv_copperr",3]],
				["life_inv_brotteig", ["life_inv_mehl",3,"life_inv_water",1]]
		];
	};
};

_return;
