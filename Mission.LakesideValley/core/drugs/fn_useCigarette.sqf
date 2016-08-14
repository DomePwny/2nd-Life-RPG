/*
	File: fn_useCigarette.sqf
	@Deo	
	Description:
	Use Cigarette
*/

#include <macro.h>
private["_smoke"];

[[0,format["%1 genießt eine schöne Rax Zigarette.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP;

/*_smoke = "SmokeShell" createVehicleLocal position player;
if (vehicle player != player) then
{
    _smoke attachTo [vehicle player, [-0.6,-1,0]];
} 
else 
{
    _smoke attachTo [player, [0,-0.1,1.5]];
};
*/