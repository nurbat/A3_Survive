
//// Randomly select the vehicle type.
//_vehicleClassName =	_classNames select (floor (random (count _classNames)));

if (count vehiclesRandom > 0) then
{
	{
		_numToSpawn = _x select 0;
		_name = _x select 1;
		_classNames = _x select 2;
		_damage = _x select 3;
		_persist = _x select 4;

		_spawnedVehicle = [];
		while { count _spawnedVehicle < _numToSpawn } do
		{
			_vehicleClassName =	_classNames select (floor (random (count _classNames)));
			_positionReal = [[spawnRadius select 0, spawnRadius select 1], 25, spawnRadius select 2, 5, 0 , 1 , 0 , _blacklistedPositions] call BIS_fnc_findSafePos;
			[_name, _vehicleClassName, _damage, _positionReal, true] call SRVVehicle_fnc_createVehicle; 
			_blacklistedPositions append _positionReal;
		};
	} forEach vehiclesRandom;
};
//diag_log format["[SRV_Vehicle] Random load %1 create %2", ];