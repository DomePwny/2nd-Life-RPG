if(!life_taxi) exitwith {};
_unit = _this;

_dMarker = createMarkerLocal [format["%1_marker",_unit],visiblePosition _unit];
_dMarker setMarkerTypeLocal "hd_warning";
_dMarker setMarkerTextLocal format["%1 ruft ein Taxi!", _unit getVariable["realname",name _unit]];
_dMarker setMarkerColorLocal "ColorYellow";
playSound "ringing";
["Jemand hat ein Taxi gerufen! Schau auf deine Karte."] spawn domsg;
_skip = false;
_somecounter = 1;
while{true} do {
	if (typeOf(vehicle player) != "cl3_suv_taxi") exitwith { _skip = true; ["Du warst nicht am Funk! Anruf verpasst"] spawn domsg;  };
	if (player distance _unit < 10) exitwith { ["Du bist bei deinem Kunden, warte bis er eingestiegen ist."] spawn domsg; };
	if (vehicle _unit != _unit) exitwith { 
		_skip = true;
		if (player distance _unit < 500) then {
			["You got paid for being near a person who needed a taxi!"] spawn domsg;
			["It appears they were picked up by someone else! +$1000"] spawn domsg;
				["cash","add",1000] call life_fnc_handleCash;
		};
	};
	if(!life_taxi) exitwith {};
	if(_somecounter > 600) exitwith {};
	_dMarker setMarkerPosLocal (visiblePosition _unit);
	_somecounter = _somecounter + 1;
	sleep 1;
};

theirTotal = _somecounter * 5;
_somecounter = 1;

while{true} do {
	if(_skip || !life_taxi) exitwith {};
	_dMarker setMarkerPosLocal (visiblePosition _unit);
	if(vehicle _unit != _unit) exitwith {
		_crew = crew (vehicle player);
		{
			if(_x == _unit) then
			{
				_loc = (getPos _unit);
				["cash","add",theirTotal] call life_fnc_handleCash;
				[format["A person requesting a taxi got in your vehicle - you got paid %1 !",theirTotal], false] spawn domsg; 
				deleteMarkerLocal format["%1_marker",_unit];
			};
		} foreach _crew;
		_goal = (getPos _unit);
		_total = round(_loc distance _goal);
		_amount = round(1.7 * _total);
		["cash","add",_amount] call life_fnc_handleCash;
		["bank","take",_amount] remoteExecCall ["life_fnc_handlecash",_unit];
		[format["Du bekommst %1$ für eine Strecke von %2!",_amount,_total], false] spawn domsg; 
	};
};