#include <macro.h>
/*
	std / hooker / prostitute
*/
if(life_std == 1) exitWith { ["Du bist bereits bereit für Sex", false] spawn domsg; };
life_std = 1;

["Du bist bereit um Sex zu haben für 10 Minuten.", false] spawn domsg;
uiSleep 600;

["Dein Kondom ist runtergefallen!", false] spawn domsg;
life_std = 0;