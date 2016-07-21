/*
Charge phone to 3 for free
*/
["Lass mich das für dich aufladen!", false] spawn domsg;
if(life_battery > 34) exitWith {["Bereits genug aufgeladen.", false] spawn domsg; };
uiSleep 3;
["Set",35] call fnc_battery;
playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
["Aufgeladen, Danke - Komm wieder!", false] spawn domsg;
