_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_index = -1;

{
_index = _index +1;
if(_x select 0 == _caller)then{
	life_taxiMarker set [_index,objNull];
	life_taxiMarker = life_taxiMarker - [objNull];
	};
}foreach life_taxiMarker;