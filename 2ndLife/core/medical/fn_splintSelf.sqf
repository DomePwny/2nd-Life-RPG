/*
	Function to splint self by Koil
	fn_splintSelf.sqf
*/
private["_display","_curTarget"];

if(!life_action_inUse) then {
life_action_inUse = true;

if (isNull objectParent player) then 
{
	player switchMove "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";
	
	waitUntil{animationState player != "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";};
};
if(isPlayer player) then { 
	player setVariable ["fractureon",1,true]; 
}
else {
	_blah = "Target moved, procedure failed.";
	[format["%1", _blah], false] spawn domsg;
};


};
life_action_inUse = false;	
[false,"splint",1] call life_fnc_handleInv;