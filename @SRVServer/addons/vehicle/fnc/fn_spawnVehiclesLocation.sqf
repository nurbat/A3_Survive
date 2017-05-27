{
	private _numToSpawn = _x select 0;
	private _name = _x select 1;
	private _classNames = _x select 2;
	private _damage = _x select 3;
	private _rearm = _x select 4;
	private _persist = _x select 5;
	private _positions = _x select 6;

	private _spawnedVehicles = _name Call SRVVehicle_fnc_getVehicleTracker;
	private _debugLoaded = _spawnedVehicles select 1;
	while { _spawnedVehicles select 1 <= _numToSpawn } do
	{
		try
		{
			private _positionReal = [selectRandom _positions, 0, SRVVehicle_cfg_locationRadiusSpawn, 5, 0 , 1 , 0 , SRVVehicle_blacklistedPositions] call BIS_fnc_findSafePos;
			if(surfaceIsWater _positionReal) throw false;
			_positionReal = _positionReal + [0];
			if(_persist) then { [_name, selectRandom _classNames, _positionReal, random 360] call SRVVehicle_fnc_createPersistentVehicle; }
			else { [selectRandom _classNames, _positionReal] Call SRVVehicle_fnc_createNonPersistentVehicle; };
			SRVVehicle_blacklistedPositions append _positionReal;

			//SETTINGS UP
			{
				if (typeName _damage isEqualTo "ARRAY") then
				{
					private _damageMin = (_damage select 0) / 100;
					private _damageMax = (_damage select 1) / 100;
					private _damageDiff = _damageMin - _damageMax;
					private _damageChance = random _damageDiff;
					private _damage = _damageChance + _damageMin;
					_vehObject setHitIndex [_forEachIndex, _damage];
				} else { _vehObject setHitIndex [_forEachIndex, _damage / 100]; };
			} forEach ((getAllHitPointsDamage _vehObject) select 0);
			_vehObject setFuel ((_rearm select 0) / 100);
			_vehObject setVehicleAmmoDef ((_rearm select 1) / 100);
			//END SETTINGS
			
			_spawnedVehicles = (_name Call SRVVehicle_fnc_setVehicleTracker);
		} catch { };
	};
	_debugCreate = (_spawnedVehicles select 1) - _debugLoaded;
} forEach SRVVehicle_cfg_Location;