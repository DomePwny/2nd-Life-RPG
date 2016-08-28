#include <macro.h>
/*
	File: fn_initPayChecks.sqf
	Author: ScarsoLP
  
    Version: Altis Life V3.1.4.8

    Created: 15th September 2015
    Last Modified: 11th April 2016

	Description:
	Changes The Player(s) paycheck depending on what rank/level they are in the Police/NHS/Donator. 
    Also changes the palyer(s) paycheck depending on what licenses they have.
*/

/* Changes The Paycheck Depending On Levels */

switch (playerSide) do
{
	case west:
	{
		switch(__GETC__(life_coplevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;};
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 200;}; 
			case 3: {life_paycheck = life_paycheck + 400;}; 
			case 4: {life_paycheck = life_paycheck + 600;}; 
			case 5: {life_paycheck = life_paycheck + 800;}; 
			case 6: {life_paycheck = life_paycheck + 1000;}; 
			case 7: {life_paycheck = life_paycheck + 1250;};
			case 8: {life_paycheck = life_paycheck + 1250;};
			case 9: {life_paycheck = life_paycheck + 1250;};
			case 10: {life_paycheck = life_paycheck + 1250;};
		};
	};

	case independent:
	{
		switch(__GETC__(life_mediclevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 0;}; 
			case 3: {life_paycheck = life_paycheck + 0;};
			case 4: {life_paycheck = life_paycheck + 0;};
			case 5: {life_paycheck = life_paycheck + 0;};
		};
	};
};

/*
// Changes The Paycheck Depending On Licenses 



if(license_civ_cAir) then
{
	life_paycheck = life_paycheck + 2500;
};



if(license_civ_mAir) then
{
	life_paycheck = life_paycheck + 2500;
};



if(license_civ_rebel) then
{
	life_paycheck = life_paycheck + 2500;
};
*/