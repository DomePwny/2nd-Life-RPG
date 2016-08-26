/*
lockvault

cgbankvault is the variable name
*/

if (cgbankvault animationPhase "d_l_Anim" == 1 && cgbankvault animationPhase "d_o_Anim" == 1) then {
	["Du schließt den Tresor...", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_o_Anim",0];
	sleep 71;
	cgbankvault animate ["d_l_Anim",0];
	cgbankvault setVariable["hacked", nil, true];
	["Tresor geschlossen.", false] spawn domsg;
} else {
	["Der Tresor ist nicht offen!", false] spawn domsg;
};