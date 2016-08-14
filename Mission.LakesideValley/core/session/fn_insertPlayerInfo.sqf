/*
	File: fn_insertPlayerInfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Read the file name... Explains it.
*/
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
cutText[localize "STR_Session_QueryFail","BLACK FADED"];
0 cutFadeOut 9999999;

[[getPlayerUID player,profileName,doofi_b4r5,man_ey_b4nK,player],"DB_fnc_insertRequest",false,false] spawn life_fnc_MP;