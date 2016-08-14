/*         
	file: fn_robShops.sqf
	Author: MrKraken
	Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
	Description:
	Executes the rob shob action!
	Idea developed by PEpwnzya v2.0
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_alarm"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name

if !(alive _robber) exitWith {};

_alarm = false;
_rip = true;
_kassa = 700 + round(random 550); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 

_chance = random(100); //calling a random number between 0-100. 
if(_chance >= 20) then 
{
	hint "Der Kassierer hat heimlich die Polizei informiert!";
	[[1,format["ALARM! - Tankstelle: %1 wird ausgeraubt!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; 
	_alarm = true;
};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nähe (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
    while{true} do
    {
        _shop switchMove "AmovPercMstpSsurWnonDnon";
		sleep  0.95;
        _cP = _cP + 0.009;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nahe (5m) (%1%2)...",round(_cP * 100),"%"];
        if(_cP >= 1) exitWith {};
        if(_robber distance _shop > 5) exitWith { };
        if!(alive _robber) exitWith {};
		if(life_istazed) exitwith {};
		if(_alarm) then
		{
			_Pos = position player; // by ehno: get player pos
			_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
			"Marker200" setMarkerColor "ColorRed";
			"Marker200" setMarkerText "!ACHTUNG! Tankstellenraub !ACHTUNG!";
			"Marker200" setMarkerType "mil_warning";
		};
    }; // the loop continues til the progressbar is full, distance is exceeded or robber dies. 
	
    if(life_istazed) exitwith {
		hint "Der Raub ist fehlgeschlagen du wurdest getazert!";
		5 cutText ["","PLAIN"];
		[[1,format["Tankstelle %1: Der Täter wurde erfolgreich gestellt!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		deleteMarker "Marker200"; // by ehno delete maker
		_rip = false;
	};
	if!(alive _robber) exitWith { 
		_rip = false;
		5 cutText ["","PLAIN"];
		[[1,format["Tankstelle %1: Der Täter ist gestorben!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		deleteMarker "Marker200";
	};
    
	if(_robber distance _shop > 5) exitWith {
		hint "Du warst zu weit weg! - Der Kassierer hat sein Geld in Sicherheit gebracht.";
		[[1,format["Tankstelle %1: Der Täter ist geflohen!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		5 cutText ["","PLAIN"];
		_rip = false;
		deleteMarker "Marker200";
	};
	
	if(vehicle player != _robber) exitWith {hint "Raus aus dem Fahrzeug, du Pussy!!"};
    5 cutText ["","PLAIN"];
	deleteMarker "Marker200";
    titleText[format["Du hast %1 geklaut, nichts wie weg hier, die Cops sind auf dem Weg!",[_kassa] call life_fnc_numberText],"PLAIN"];
    doofi_b4r5 = doofi_b4r5 + _kassa; 
    _rip = false;
    life_use_atm = false;
    sleep (30 + random(60)); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery. 
    life_use_atm = true; // Robber can not use the ATM at this point.
    if!(alive _robber) exitWith {};
    [[1,format["112 - Tankstelle: %1 wurde gerade ausgeraubt. Kasseninhalt: $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[1,format["NEWS: Tankstelle: %1 wurde gerade ausgeraubt. Kasseninhalt: $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    //[[getPlayerUID _robber,name _robber,"100"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; 
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP;