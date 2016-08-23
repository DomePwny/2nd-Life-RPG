#include <macro.h>
/*
	Master client initialization file
*/

// Run Some Client Stuff
[] execVM "scripts\bank.sqf";

player setVariable["tf_receivingDistanceMultiplicator", 10];
player setVariable["tf_sendingDistanceMultiplicator", 10];
deadPlayer = false;
godMode = false;

life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];

_timeStamp = diag_tickTime;

waitUntil {!isNull player && player == player}; //Wait till the player is ready
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";

[] call life_fnc_setupEVH;
waitUntil {(!isNil {clientGangLeader})};

A3L_Fnc_Request = player;
PublicvariableServer "A3L_Fnc_Request";
waitUntil {(!isNil {A3L_fnc_dreDeta8})};

["Warte auf Server...", false] spawn domsg;

waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	["DatenBank wurde nicht mitgeladen, bitte melde es einem Admin!", false] spawn domsg;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
["Server Bereit!", false] spawn domsg;

[] spawn life_fnc_escInterupt;

_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitwith {
	999999 cutText ["Task-Force-Radio ist nicht auf deinem Computer installiert.","BLACK FADED"];
	999999 cutFadeOut 99999999;
};

if (!(_TFenabled)) then {
	while {!([] call TFAR_fnc_isTeamSpeakPluginEnabled)} do {
		titleText ["Bitte aktiviere das TeamSpeak3 Plugin 'Task Force Arma3 Radio'  |  Einstellungen > Plugins - dort das Plugin aktivieren.", "BLACK"];
		sleep 2;
	};
};

A3L_TFEnabled = true;
A3L_onTsServer = "2nd Life RPG Arma 3 Life" == (call TFAR_fnc_getTeamSpeakServerName);
A3L_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
titleText ["= TFAR Erfolgreich Geladen ==","BLACK IN"];

[] spawn {

	while {true} do {
	
		_isadmin = false;
		if (!(isNil "life_adminlevel")) then {
			_adminlvl = life_adminlevel call BIS_fnc_parseNumber;
			
			if (_adminlvl > 0) then {
				_isadmin = true;
			};
		};
		
		if (!(_isadmin)) then {
			_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;
			if ((!(_TFenabled)) && (A3L_TFEnabled)) then {
				titleText ["Bitte aktiviere das TeamSpeak3 Plugin 'Task Force Arma3 Radio'  ||  Einstellungen > Plugins - dort das Plugin aktivieren.", "BLACK"];
				A3L_TFEnabled = false;
			};
			
			_onTsServer = "2nd Life RPG Arma 3 Life" == (call TFAR_fnc_getTeamSpeakServerName);
			if (!(_onTsServer)) then {
				titleText ["Bitte verbinde dich auf unseren TeamSpeak3 Server: 89.163.173.50:9987", "BLACK"];
				A3L_onTsServer = false;
			} else {
				if (!(A3L_onTsServer)) then {
					titleText ["Ts3 Server Checked. Willkommen!","BLACK IN"];
					A3L_onTsServer = true;
				};
			};
			
			_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
			if (!(_onChannel)) then {
				titleText ["Du befindest dich im falschen Channel!", "BLACK"];
				A3L_onChannel = false;
			} else {
				if (!(A3L_onChannel)) then {
					titleText ["Ts3 Channel Checked. Willkommen!","BLACK IN"];
					A3L_onChannel = true;
				};
			};
			
			if ((_TFenabled) && (!(A3L_TFEnabled))) then {
				titleText ["Plugin aktiviert, Willkommen!","BLACK IN"];
				A3L_TFEnabled = true;
			};
		};	
		sleep 7;	
	};
};

Second_Life_Version = getText (configFile >> "CfgPatches" >> "secondlife_client" >> "Modversion");
_secondlife_mods_version = Second_Life_Version;

if(_secondlife_mods_version != SecondLife_version) then {
	disableUserInput true;
	titleText ["***FALSCHE MODDATEIEN*** Bitte starte Arma 3 Sync und Update auf den aktuellen Stand.","BLACK_IN"];
	hint "***FALSCHE MODDATEIEN*** Bitte starte Arma 3 Sync und Update auf den aktuellen Stand."; 
	systemChat "***FALSCHE MODDATEIEN*** Bitte starte Arma 3 Sync und Update auf den aktuellen Stand.";
	sleep 5;
	disableUserInput false;sleep 0.5;
	["SecondLifeWrongModVersion",false,false] call BIS_fnc_endMission;
	sleep 10;
};

fnc_checkPhone = {

	_radios = player call TFAR_fnc_radiosList;

	if(count _radios > 0) then {
		if([(call TFAR_fnc_activeSwRadio),"2nd_lifetabletd"] call TFAR_fnc_isSameRadio) then {  

		} else {
			_myradio = call TFAR_fnc_ActiveSwRadio;
			player unassignitem _myradio;
			player removeitem _myradio;
			player additem "2nd_lifetabletd";
			player assignitem "2nd_lifetabletd";
		};
	} else {
		player additem "2nd_lifetabletd";
		player assignitem "2nd_lifetabletd";
	};

	call TFAR_fnc_HideHint;

};

fnc_resetCallSpawn = {
	player setvariable["PhoneCallNumber",0,true];
	player setvariable["PhoneID",0,true];
	player setVariable ["tf_unable_to_use_radio", true];
	sleep 5;
	callInProgress = false;
	myCallOwner = player;
	_mynumber = getPlayerUID player;
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;
};



switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};

	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
	
	case east:
	{
		//Initialize Mafia
		_handle = [] spawn life_fnc_initMafia;
		waitUntil {scriptDone _handle};
	};
};

[] execFSM "core\fsm\client.fsm";
waitUntil {!(isNull (findDisplay 46))};

//[] spawn life_fnc_fuelCheck;
[] spawn life_fnc_fuelConfig;
[] spawn life_fnc_initFuelAction; 

player addRating 99999999;

life_sidechat = true;
[player,life_sidechat,playerSide] remoteExecCall ["TON_fnc_managesc",2];
marker_on = false;
godMode = false;

//arrays for masked items
GoggleList = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","A3L_Balaclava","Payday_Cagoule","Masque_Chirurgical","Masque_Solitaire"];
publicVariable "GoogleList";		
HatList = ["kio_vfv_mask","cg_dinomask","cg_dinomask_p","cg_dinomask_r","cg_horsehead","cg_horsehead_2",
"cg_horsehead_blk","cg_horsehead_pnk","Masque_Alien1","Masque_Anonymous","Masque_Chains","Payday_GeneralO","Casque_Moto",
"Masque_Clinton","Masque_speedRunner","Masque_Unic","Masque_Aubrey","Masque_Bonnie","Masque_Bush","Masque_Mempo","Masque_Lincoln",
"Masque_Wolfv2","Masque_archNemesis","Masque_Arnold","Masque_Chuck","Masque_Clover","Masque_Fish","Masque_Hockey","Masque_Metalhead",
"Masque_Religieuse","Masque_Smiley","Masque_Santa","Masque_Momie","Masque_Optimiste","Masque_forceAlpha","Masque_GdG","Masque_Gombo",
"Masque_Lion","Masque_Orc","Masque_Mark","Masque_Macrilleuse","Masque_Hoxton","Masque_Incendiaire","Masque_Dallas","A3L_Legoman",
"jokermask","TRYK_Kio_Balaclava","A3L_Halloween_JigSaw","kio_skl_msk","kio_skl_msk_grn","kio_skl_msk_red","H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F","H_ShrekMask","H_MickeyMask","H_UltronMask","H_PatriotMask",
"H_AntmanMask","H_BobaMask","H_AugustusMask","H_RAAMMask","H_HulkMask","H_VenomMask","H_SpongebobMask","H_SquidwardMask",
"H_JasonMask","H_DeadpoolMask","H_GingerbreadMask","H_KermitMask","H_SpidermanMask","H_StarFoxMask","H_BatmanMask",
"H_ScarecrowMask","H_GuyFawkesMask","H_WashingtonMask","H_LincolnMask","H_GrantMask","H_NixonMask","H_ClintonMask","H_BushMask","H_ObamaMask",
"H_FranklinMask","Gorb_Santa_White","Gorb_Santa_Tan","Gorb_Santa_Black","Gorb_Reindeer","Gorb_Snowman","Gorb_Penguin","Gorb_Gingerbread1",
"Gorb_ElfMask1","Gorb_ElfMask2","Gorb_ElfMask3","Gorb_TurkeyMask1","Gorb_TurkeyMask2","Gorb_TurkeyMask3","Gorb_UglyMrsClaus1","Gorb_UglyMrsClaus2",
"Gorb_UglyMrsClaus3","Gorb_AngryGingerbread1","Gorb_AngryGingerbread2","Gorb_AngryGingerbread3","Gorb_PuddingMask1","Gorb_PuddingMask2",
"Gorb_RoughSantaClaus1","Gorb_RoughSantaClaus2","Gorb_RoughSantaClaus3","Gorb_AngryGingerbreadSwirl1","Gorb_AngryGingerbreadSwirl2",
"Gorb_CoolElfMask1","Gorb_CoolElfMask2","Gorb_CoolElfMask3","Gorb_TreeMask1","Gorb_TreeMask2","Gorb_TreeMask3","Gorb_TreeMask4","Gorb_TreeMask5",
"Gorb_TreeMask6","Gorb_MrsClaus1","Gorb_MrsClaus2","Gorb_MrsClaus3","kio_skl_msk_fire","kio_skl_msk_weed","kio_skl_msk_frost","kio_skl_msk_pun",
"kio_skl_msk_adc","kio_skl_msk_blood","kio_skl_msk_redranger","kio_skl_msk_UK","kio_skl_msk_US","kio_skl_msk_black","kio_skl_msk_can","kio_skl_msk_german",
"kio_skl_msk_GOW","kio_skl_msk_grey","kio_skl_msk_irish","kio_skl_msk_nirish","kio_skl_msk_o","kio_skl_msk_p","kio_skl_msk_scot","kio_skl_msk_fran"
];
publicVariable "HatList";


LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
//LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

player addEventHandler ["AnimStateChanged", {
	if (_this select 1 == "incapacitated") then {
		player setPosWorld getPosWorld player;
	};
}];

[] execVM "core\fn_addKey.sqf";

[getPlayerUID player] remoteExecCall ["TON_fnc_playerLogged", (call life_fnc_HCC)];

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.

if!(getRemoteSensorsDisabled)then
{
	disableRemoteSensors true;
};


[] spawn {
	life_canrob = false;
	sleep 600;
	life_canrob = true;	
};