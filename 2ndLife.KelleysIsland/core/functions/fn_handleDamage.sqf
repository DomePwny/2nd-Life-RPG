if(deadPlayer) exitwith { false };
if(godMode) exitwith { false };

params ["_unit","_selectionName","_damage","_source","_projectile","_hitPartIndex"];

if(!isNull _source) then {

	_damage = _damage / 3;

	if(_source != _unit) then {

		if (vehicle _unit == _unit) then
		{
			_vehicle = vehicle _source;
		    if ( _vehicle isKindOf "Air" || _vehicle isKindOf "Car" || _vehicle isKindOf "Boat" ) then
		    {
				_speed = speed _vehicle;
				[] spawn life_fnc_forceRagdoll;
				if(_speed < 50) then { _damage = 0.1; }; 
				if(_speed < 25) then { _damage = 0; }; 
				if(_speed > 49) then { _damage = _speed / 100; };
		    };
		};

		_curWep = currentWeapon _source;
		if(_curWep in ["CG_CROSS","CG_BATON","CG_TELBAT","CG_BAT","CG_SHOVEL"]) exitwith {
			[_unit,_source] call life_fnc_blunthit;
			_damage = 0;
		};

		if(_curWep in ["cg_scythe","CG_PICKAXE","cg_hatchet","cg_machete"]) exitwith {
			[_unit,_source] call life_fnc_sharphit;
			_damage = 0;
		};

		if(_curWep in ["prpl_benelli_14_pgs_rail"]) exitwith {
			if(!life_isdowned && vehicle player == player) then {
				_dist = _source distance player;
				[_unit,_source,_dist] call life_fnc_downed;
			};
			_damage = 0;
		};

		if(_curWep in ["Taser_26"]) exitwith {
			if(!life_istazed && vehicle player == player) then {
				[_unit,_source] call life_fnc_tazed;
			};
			_damage = 0;	
		};
		if(_curWep in ["Trixie_CZ550","arifle_SDAR_F"]) exitwith {
			_damage = 0;	
		};
	} else {
		_damage = _damage / 8; 
		_isWater = surfaceIsWater (getPosASL player);
		if(_isWater) then { player setOxygenRemaining 1; _damage = 0.05; };		
	};
};

if( vehicle player != player && vehicle _source != _source && _source == _unit ) then { _damage = _damage / 5; };

["Remove",_damage,_source] call fnc_doHealth;

false