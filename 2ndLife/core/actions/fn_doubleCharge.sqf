/*
Charge phone to 200
*/
if(cash_in_hand < 450) exitWith { ["Nicht genug Bargeld, du brauchst 450$", false] spawn domsg; };

if(life_battery > 199) exitWith { ["Bereits genug aufgeladen.", false] spawn domsg; };

["Deine Batterie wird aufgeladen.", false] spawn domsg;
uiSleep 3;
["Set",200] call fnc_battery;

["cash","take",450] call life_fnc_handleCash;	



playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
["Batterie wurde erfolgreich aufgeladen.", false] spawn domsg;