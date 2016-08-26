/*
close vault

cgbankvault is the variable name
*/

if ( cgbankvault animationPhase "d_o_Anim" == 1 ) then {
	["Die Tresor Tür wird geschlossen...", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_o_Anim",0];
	["Die Tresor Tür geschlossen.", false] spawn domsg;
} else {
	["Der Tresor ist schon geschlossen!", false] spawn domsg;
};