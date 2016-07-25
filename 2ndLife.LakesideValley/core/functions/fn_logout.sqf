private["_introCam"];
[8] call SOCK_fnc_updatePartial;
missionNamespace setVariable [(format["logout_validate_id_%1",getPlayerUID player]),true];
publicVariableServer (format["logout_validate_id_%1",getPlayerUID player]);

disableSerialization;
player allowDamage false;
disableUserInput true;
showChat false;
hintSilent "";

1 fadeSound 0;
1 fadeMusic 0;
1 fadeRadio 0;
1 fadeSpeech 0;
life_revealObjects = false;
[] spawn life_fnc_hudUpdate;

_introCam = "camera" camCreate (player modelToWorldVisual [-5,0,1.85]);
_introCam cameraEffect ["internal","back"];
_introCam camSetFov 2.000;
_introCam camSetTarget vehicle player;
_introCam camSetRelPos [0,-1,1.85];

_introCam camCommit 0;
waitUntil {camCommitted _introCam};

_introCam camSetFov 2;
_introCam camSetRelPos [0,-5,1.85];
_introCam camCommit 1;
8 cutFadeOut 3;
waitUntil {camCommitted _introCam};

_introCam camSetFov 9;
_introCam camSetRelPos [0,-5,1050.85];
_introCam camCommit 1.5;
waitUntil {camCommitted _introCam};


cutText ["","BLACK",1]; //Fade the screen to black, in prep for the outro.
sleep 0.2; //Wait for the fade.
sleep 0.25;

0 fadeSound 1;
0 fadeMusic 1;
0 fadeRadio 1;
0 fadeSpeech 1;

[player] remoteExec ["TON_fnc_cleanupRequest",2];

showChat true;
disableUserInput false;

["Logout",true,false] spawn BIS_fnc_endMission;

_introCam cameraEffect ["terminate","back"];
camDestroy _introCam;
if (!isNull ((findDisplay 0) displayCtrl 825)) exitWith {};

//First of all disable the new ShowCases :P
for "_i" from 1020 to 1022 do {
	with uiNamespace do {
		_ctrl = findDisplay 0 displayCtrl _i;
		if (!isNull _ctrl) then {
			_ctrl ctrlShow false;
		};
	};
};

private _Header = (finddisplay 0) ctrlCreate ["RscPicture", 821];
_Header ctrlSetPosition [0.2875,-0.32,0.45,0.6];
_Header ctrlSetText format["%1icons\logo.paa",MISSION_ROOT];
_Header ctrlCommit 0;

private _Main = (finddisplay 0) ctrlCreate ["RscStructuredText", 822];   
_Main ctrlSetPosition [-0.0375,0.16,1.075,0.701];  
_Main ctrlSetTextColor [1,1,1,1];  
_Main ctrlSetBackgroundColor [0,0,0,0.9];  
_Main ctrlCommit 0;

private _Footer = (finddisplay 0) ctrlCreate ["RscStructuredText", 823];   
_Footer ctrlSetPosition [-0.0375,0.86,1.075,0.06];;  
_Footer ctrlSetTextColor [1,1,1,1];  
_Footer ctrlSetBackgroundColor [0,0,0,0.9];
_Footer ctrlSetStructuredText parseText "<t size='1.2' align='left'><a href='http://2nd-life-rpg.de/'>2nd Life - RPG Webseite</a><t/> <t size='1.2' align='right'><a href='94.250.223.9:15107'>2nd Life - RPG TeamSpeak</a><t/>";
_Footer ctrlCommit 0;

private _Bottom = (finddisplay 0) ctrlCreate ["RscStructuredText", 824];
_Bottom ctrlSetPosition [-0.0375,0.92,1.075,0.08];
_Bottom ctrlSetTextColor [0,0,0,1];
_Bottom ctrlSetBackgroundColor [(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843]), (profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019]), (profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862]), (profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])];
_Bottom ctrlCommit 0;

private _Button = (finddisplay 0) ctrlCreate ["RscButton", 825];   
_Button ctrlSetPosition [-0.0375,0.92,1.075,0.08];  
_Button ctrlSetTextColor [1,1,1,1];
_Button ctrlSetText "Schließen";
_Button buttonSetAction "for '_i' from 821 to 825 step 1 do {ctrlDelete ((finddisplay 0) displayCtrl _i); }; for '_i' from 1020 to 1022 do {with uiNamespace do {_ctrl = findDisplay 0 displayCtrl _i; if (!isNull _ctrl) then {_ctrl ctrlShow true; }; }; };";
_Button ctrlSetBackgroundColor [0.4,0,0,1];   
_Button ctrlCommit 0;

private _text = format["<t size='2' align='center'>2nd Life - RPG<t/><br/><br/> <t size='1.4'>Das Team von 2nd Life - RPG bedankt sich für deinen Besuch und freut sich dich bald wieder zu sehen.<br/> <br/>Besuche auch unsere Webseite für Informationen und Updates: <a href='http://2nd-life-rpg.de'>2nd Life RPG</a><t/>"];
((findDisplay 0) displayCtrl 822) ctrlSetStructuredText parseText _text;