/*
open vault

cgbankvault is the variable name
*/

if (cgbankvault animationPhase "d_o_Anim" == 0 && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["Tresor Tür wird geöffnet...", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_o_Anim",1];
	["Tresor Tür geöffnet.", false] spawn domsg;
} else {
	["Der Tresor scheint abgeschlossen zu sein oder er ist schon offen.", false] spawn domsg;
};