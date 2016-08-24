/*
	File: fn_copLoadout.sqf
	
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default mafia gear.
player addUniform "2ndLife_sndlife1";

/* ITEMS */
player additem "2nd_lifetabletd";
player assignItem "2nd_lifetabletd";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
[] call life_fnc_saveGear;