{
	private _countMax 		= _x select 0;
	private _idTag 			= _x select 1;
	private _classes 		= _x select 2;
	private _damage 		= _x select 3;
	private _fuel 			= (_x select 4) select 0;
	private _ammo 			= (_x select 4) select 1;
	private _isPernament 	= _x select 5;
	if(isNil "_isPernament") then { _isPernament = true; };
	
	//DEBUG
	private _countCreated = _idTag Call SRVVehicle_fnc_vehicleTracked;
	private _debugCreated = _countCreated;

	while { _countCreated != _countMax } do
	{
		private _newPosition = [SRVVehicle_cfg_RandomCenter, 25, SRVVehicle_cfg_RandomRadius, 5, 0 , 1 , 0] call BIS_fnc_findSafePos;
		if(count _newPosition == 2) then { _newPosition append [0]; };

		//CREATE VEHICLE
		private _vehicle = [selectRandom _classes, _newPosition] Call SRVVehicle_fnc_createObject;
		[_vehicle, _damage] Call SRVVehicle_fnc_setDamage;

		//REARM
		_vehicle setFuel (_fuel / 100);
		_vehicle setVehicleAmmoDef (_ammo / 100);
			
		//ADD SQL
		if(_isPernament) then { [_vehicle, _idTag] Call SRVVehicle_fnc_setPernament; }
		else { _vehicle setVariable["owner", _idTag, true]; };

		//TRACKED SET
		_vehicle Call SRVVehicle_fnc_vehicleTracked;
		SRVVehicle_var_vehicleCreated append [_vehicle];
		_countCreated = _countCreated + 1;
	};
	if(SRVVehicle_cfg_DebugLevel > 1) then { diag_log format["[SRV-Vehicle] Group['%1', LOAD %2, CREATE %3]", _idTag, _debugCreated, _countCreated - _debugCreated]; };
} forEach SRVVehicle_cfg_Random;