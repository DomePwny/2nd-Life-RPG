/*
Charge phone to 100
*/
if(cash_in_hand < 250) exitWith { ["Nicht genug Geld das kostet 250$.", false] spawn domsg; };
if(life_battery > 99) exitWith { ["Bereits aufgeladen.", false] spawn domsg; };
["Lass mich das aufladen für dich!", false] spawn domsg;
uiSleep 3;
["Set",100] call fnc_battery;
["cash","take",250] call life_fnc_handleCash;
playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
["Aufgeladen, Danke - Komm wieder!", false] spawn domsg;
