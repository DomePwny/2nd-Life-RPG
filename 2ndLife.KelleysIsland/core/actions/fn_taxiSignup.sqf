if(life_taxi) exitwith { ["Du bist selber Taxifahrer!", false] spawn domsg; };
if(checked_taxi) exitwith { ["Du hast gerade erst ein Taxi gerufen, warte bitte kurz.", false] spawn domsg; };
checked_taxi = true;
player remoteExec ["life_fnc_taxi",civilian];
["Du hast ein Taxi gerufen!", false] spawn domsg;
sleep 300;
checked_taxi = false;