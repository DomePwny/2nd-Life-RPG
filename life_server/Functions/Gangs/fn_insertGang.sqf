/*
	
	
	Description:
	Inserts the gang into the database.
*/

private ["_query","_queryResult","_gangMembers","_group"];
params [
	["_ownerID",objNull,[objNull]],
	["_uid","",[""]],
	["_gangName","",[""]]
];
_group = group _ownerID;

if(isNull _ownerID OR _uid isEqualTo "" OR _gangName isEqualTo "") exitWith {}; 

_ownerID = owner _ownerID;
_gangName = [_gangName] call DB_fnc_mresString;
_query = format["SELECT id FROM gangs WHERE name='%1' AND active='1'",_gangName];

_queryResult = [_query,2] call DB_fnc_asyncCall;


if(count _queryResult != 0) exitWith {
	[1,"There is already a gang created with that name please pick another name."] remoteExecCall ["life_fnc_broadcast", _ownerID];
	["life_action_gangInUse",nil,missionNamespace] remoteExecCall ["life_fnc_netSetVar",_ownerID];
};

_query = format["SELECT id FROM gangs WHERE members LIKE '%2%1%2' AND active='1'",_uid,"%"];

_queryResult = [_query,2] call DB_fnc_asyncCall;

if(count _queryResult != 0) exitWith {
	[1,"You are currently already active in a gang, please leave the gang first."] remoteExecCall ["life_fnc_broadcast", _ownerID];
	["life_action_gangInUse",nil,missionNamespace] remoteExecCall ["life_fnc_netSetVar", _ownerID];
};

_query = format["SELECT id, active FROM gangs WHERE name='%1' AND active='0'",_gangName];

_queryResult = [_query,2] call DB_fnc_asyncCall;
_gangMembers = [[_uid]] call DB_fnc_mresArray;

if(count _queryResult != 0) then {
_query = format["UPDATE gangs SET active='1', owner='%1',members='%2' WHERE id='%3'",_uid,_gangMembers,(_queryResult select 0)];
} else {
_query = format["INSERT INTO gangs (owner, name, members) VALUES('%1','%2','%3')",_uid,_gangName,_gangMembers];
};

_queryResult = [_query,1] call DB_fnc_asyncCall;

_group setVariable["gang_name",_gangName,true];
_group setVariable["gang_owner",_uid,true];
_group setVariable["gang_bank",0,true];
_group setVariable["gang_maxMembers",8,true];
_group setVariable["gang_members",[_uid],true];
[_group] remoteExec ["life_fnc_gangCreated",_ownerID];


uiSleep 0.35;
_query = format["SELECT id FROM gangs WHERE owner='%1' AND active='1'",_uid];

_queryResult = [_query,2] call DB_fnc_asyncCall;

_group setVariable["gang_id",(_queryResult select 0),true];