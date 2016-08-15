private["_adacVehicle"];

player forceAddUniform "TRYK_HRP_USMC";

_adacVehicle = createVehicle ["ivory_tractor", position player, [], 0, "NONE"];
player action ["getInDriver", _adacVehicle];
	
while{maintenance_on} do {
	if(player distance _adacVehicle > 500 || deadPlayer) exitwith {};
};

_remaining = 30;

while {_remaining > 0} do {
	hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Your vehicle despawns in %1 seconds!",_remaining];
	uisleep 1;
	_remaining = _remaining - 1;
};

maintenance_on = false;
player allowdamage false;
sleep 0.05;
_newpos = getpos _adacVehicle;
_adacVehicle setVelocity [0, 0, 0];
deletevehicle _adacVehicle;
player setpos [_newpos select 0, _newpos select 1, 0];
sleep 0.05;
player allowdamage true;
["You have been laid off from your Job!", false] spawn domsg;