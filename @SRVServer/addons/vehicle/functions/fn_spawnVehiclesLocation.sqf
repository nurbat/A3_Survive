if (count SRVVehicle_vehiclesLocation > 0) then
{
	{
		_numToSpawn = _x select 0;
		_name = _x select 1;
		_classNames = _x select 2;
		_damage = _x select 3;
		_rearm = _x select 4;
		_persist = _x select 5;
		_positions = _x select 6;

		_spawnedVehicles = _name Call SRVVehicle_fnc_getVehicleTracker;
		_debugLoaded = _spawnedVehicles select 1;
		while { _spawnedVehicles select 1 < _numToSpawn } do
		{
			_vehicleClassName =	_classNames select (floor (random (count _classNames)));
			_position = _positions select (floor (random (count _positions)));
			_positionReal = [_position, 0, SRVVehicle_locationRadiusSpawn, 5, 0 , 1 , 0 , SRVVehicle_blacklistedPositions] call BIS_fnc_findSafePos;

 			[_name, _vehicleClassName, _damage, _rearm, _positionReal, _persist] call SRVVehicle_fnc_createVehicle; 

			SRVVehicle_blacklistedPositions append _positionReal;
			_spawnedVehicles = (_name Call SRVVehicle_fnc_setVehicleTracker);
		};
		_debugCreate = (_spawnedVehicles select 1) - _debugLoaded;
		if(SRVVehicle_DebugLevel > 1) then { diag_log format["[SRV-Vehicle] %1: %2 - %3 Created", _name, _debugLoaded, _debugCreate]; };	
	} forEach SRVVehicle_vehiclesLocation;
};