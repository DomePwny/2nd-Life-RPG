#include <macro.h>
/*

	File: fn_adminHeal.sqf
	Author: Marcel "Variatox" Koch
	Server: lakeside-reallife.de
	
	Description:
	Heilt den kompletten Spieler und ggf. das Fahrzeug.
*/

if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_Error";};
if(!(getPlayerUID player in LSRL_your_momy)) exitWith {closeDialog 0; [7,player] call LRLAC_fnc_busted;};


//player
player setDamage 0;
player setFatigue 0;
player setHitPointDamage ["HitNeck",0];player setHitPointDamage ["HitHead",0];player setHitPointDamage ["HitBody",0];
player setHitPointDamage ["HitChest",0];player setHitPointDamage ["HitDiaphragm",0];player setHitPointDamage ["HitArms",0];
player setHitPointDamage ["HitHands",0];player setHitPointDamage ["HitLegs",0];player setHitPointDamage ["HitPelvis",0];player setHitPointDamage ["HitAbdomen",0];

//Vehicle
(vehicle player) setDamage 0;

closeDialog 0;