/*
	File: fn_useMDMA.sqf
	Description:
	Use MDMA
*/

#include <macro.h>
 

if (vehicle player != player) then 
{
player playMove "AmovPercMstpSnonWnonDnon_Scared2";
waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
};


"chromAberration" ppEffectAdjust [random 0.1,random 0.1,true];
"chromAberration" ppEffectCommit 4; 
life_redgull_effect = time;
[localize "Wow, was für ein guter Stoff!", false] spawn domsg;
player enableFatigue false;
waitUntil {deadPlayer OR ((time - life_redgull_effect) > (15 * 60))};
player enableFatigue true;

["Du hast kalte Hände - Dein Körper brauch mehr davon.", false] spawn domsg;
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;
