/*
	File: spawnAnimal
	Author: NerdsRPG
*/
if(im_hunting) exitwith {};
if (playerside == west OR playerside == independent) exitwith { ["VERPISS DICH DU TÖTEST KEINE TIERE!",false] spawn domsg; };
["Jage die Tiere - Benutze die Windows Taste um sie zu schlachten.",false] spawn domsg;
im_hunting = true;
private["_animal","_tempPos"];
_chances = 35 + (floor random 15);
huntarray = ["Sheep_random_F","Cock_random_F","Hen_random_F","Goat_random_F"];
if(player distance (getmarkerpos "hunting_area") > 300) exitwith { ["Du hast dich zu weit der Jagdzone entfernt.",false] spawn domsg; im_hunting = false; };
_grp = createGroup civilian;  
_LOScheck = false;
while {!_LOScheck} do {
_chancerr = (floor random 4);
	switch (_chancerr) do
	{
			case 4 : {
				_tempPos = [((getpos player) select 0) - _chances,((getpos player) select 1) + _chances,0];  
	        };
			case 3 : {
				_tempPos = [((getpos player) select 0) + _chances,((getpos player) select 1) + _chances,0];  
	        };
			case 2 : {
				_tempPos = [((getpos player) select 0) - _chances,((getpos player) select 1) - _chances,0];  
	        };
			case 1 : {
				_tempPos = [((getpos player) select 0) + _chances,((getpos player) select 1) - _chances,0];  
	        };
	        default {
	        	_tempPos = [((getpos player) select 0) + _chances,((getpos player) select 1) + _chances,0]; 
	        };
	};
	sleep 0.25;
	_LOScheck = lineIntersects [ eyePos player, _temppos, player];
};
_type = huntarray call bis_fnc_selectRandom;
myanimal = _type createUnit [_tempPos, _grp,"", 0.5, "private"];
sleep 900;
im_hunting = false;
["Deine Jagdzeit ist beendet melde dich neu an.",false] spawn domsg;