if (count vehiclesRandom > 0) then
{
	{
		_numToSpawn = _x select 0;
		_name = _x select 1;
		_classNames = _x select 2;
		_damage = _x select 3;
		_rearm = _x select 4;
		_persist = _x select 5;

		_spawnedVehicles = _name Call SRVVehicle_fnc_getVehicleTracker;
		_debugLoaded = _spawnedVehicles select 1;
		while { (_spawnedVehicles select 1) < _numToSpawn } do
		{
			_vehicleClassName =	_classNames select (floor (random (count _classNames)));
			_positionReal = [[(spawnRadius select 0), (spawnRadius select 1)], 25, (spawnRadius select 2), 5, 0 , 1 , 0 , blacklistedPositions] call BIS_fnc_findSafePos;
			[_name, _vehicleClassName, _damage, _rearm, _positionReal, _persist] call SRVVehicle_fnc_createVehicle; 
			blacklistedPositions append _positionReal;
			_spawnedVehicles = (_name Call SRVVehicle_fnc_setVehicleTracker);
		};
		_debugCreate = (_spawnedVehicles select 1) - _debugLoaded;
		if(DebugLevel > 0) then { diag_log format["[SRV-Vehicle-%1] LOAD:%2 || CREATE:%3", _name, _debugLoaded, _debugCreate]; };	
	} forEach vehiclesRandom;
};