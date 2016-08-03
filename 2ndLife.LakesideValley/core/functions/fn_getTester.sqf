/*
	fn_getTester.sqf
	Pennyworth	
*/

if(life_requestingTestDrive) exitWith {["Du hast bereits eine Testfahrt beantragt, warte...", false] spawn domsg};
if!(isNull objectParent player) exitWith {["Verlasse das Fahrzeug und versuche es erneut!", false] spawn domsg};
if(life_onTestDrive) exitWith {["Du bist bereits auf Probefahrt.", false] spawn domsg};

disableSerialization;

_display = findDisplay 2700;
_salesmanList = _display displayCtrl 2701;
_salesman = _salesmanList lbData (lbCurSel _salesmanList);

if(_salesman isEqualTo "") then {
	[] spawn life_fnc_testDrive;
 } else {
	_salesman = call compile _salesman;
	if(player isEqualTo _salesman) exitWith {["Du kannst nicht alleine auf Testfahrt!", false] spawn domsg};
	[] spawn {
		waitUntil {closeDialog 0; (isNull findDisplay 2700 && isNull findDisplay 17500)};
	};
	life_requestingTestDrive = true;
	life_testDriveRequest = nil;

	[format ["Du hast eine Testfahrt anfrage an %1 gestellt. Wenn nicht innerhalb von 30 Sek. geantwortet wird beantrage eine neue!",name _salesman], false] spawn domsg;
	[_salesman,player] remoteExec ["life_fnc_requestTestDrive",_salesman];
	_time = time;
	waitUntil {sleep 1; (!isNil "life_testDriveRequest" || (time - _time) > 30)};

	life_requestingTestDrive = false;
	
	if(isNil "life_testDriveRequest") exitWith {["Keine reaktion!", false] spawn domsg};
	if!(life_testDriveRequest) exitWith {[format ["Deine Testfahrt mit %1 wurde abgelehnt, er scheint auf Testfahrt zu sein.",_salesman],false]; life_testDriveRequest = nil};
	if(life_testDriveRequest) then {
		if!(isNull objectParent player) exitWith {
			["Verlasse das Fahrzeug und versuche es erneut!", false] spawn domsg;
			life_testDriveRequest = nil;
		};
		[false,_salesman] spawn life_fnc_testDrive;
	};
};
