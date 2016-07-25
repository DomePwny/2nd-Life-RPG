tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;
tf_radio_channel_name = "TaskForceRadio";
tf_radio_channel_password = "sndliferpg";
enableSaving [false, false];

West setFriend [East, 1]; 
East setFriend [West, 1];
East setFriend [independent, 1];

[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";

if(isServer) then {
	_obj = [8546.45,6796.53,8] nearestObject 1005977; 
	_obj enableSimulationGlobal false;
	_obj hideObjectGlobal true;
};

if(!isDedicated && {!hasInterface}) then
{
	waitUntil {!isNull player};
	[] call compile PreprocessFileLineNumbers "\life_server\fn_initHC.sqf";
};
player setVariable["loaded", false, true];