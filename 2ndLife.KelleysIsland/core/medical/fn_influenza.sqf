/*
Influenza Function
*/
private["_display","_curTarget"];
if (isNull objectParent player) then 
{
	closeDialog 0;
	player switchMove "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";
	waitUntil{animationState player != "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";};
	player switchMove "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";
	waitUntil{animationState player != "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";};
};
	 _koildebiiii = player getVariable ["diseaseon", 1];
	if(_koildebiiii == 6) then {
	player setVariable ["diseaseon",1,true]; 
	} else {
	[player,player] spawn life_fnc_onPlayerKilled;
	};
	[false,"tabletten",1] call life_fnc_handleInv;

