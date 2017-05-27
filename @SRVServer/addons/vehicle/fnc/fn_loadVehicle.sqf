waitUntil { !(isNil { Call SRVDB_fnc_loaded }) };
if(SRVVehicle_cfg_DebugLevel > 0) then { diag_log format["====[VEHICLE LOADING]===="]; };

private _vehicleLoaded = Call SRVVehicle_fnc_load;
{
	private _SRVVehicle_var_uid 		= _x select 0;
	private _SRVVehicle_var_name 		= _x select 1;
	private _SRVVehicle_var_class 		= _x select 2;
	private _SRVVehicle_var_spawnedAt 	= _x select 3;
	private _SRVVehicle_var_isLocked 	= _x select 4;
	private _SRVVehicle_var_fuel 		= _x select 5;
	private _SRVVehicle_var_damage 		= _x select 6;
	private _SRVVehicle_var_hitPoints 	= _x select 7;
	private _SRVVehicle_var_position 	= _x select 8;
	private _SRVVehicle_var_direction 	= _x select 9;
	private _SRVVehicle_var_cargo 		= _x select 10;
	private _SRVVehicle_var_ammo 		= _x select 11;
	private _SRVVehicle_var_object 		= [_SRVVehicle_var_name, _SRVVehicle_var_class, _SRVVehicle_var_position, _SRVVehicle_var_direction, _SRVVehicle_var_uid] Call SRVVehicle_fnc_createPersistentVehicle;

	_SRVVehicle_var_object lock _SRVVehicle_var_isLocked;
	_SRVVehicle_var_object setDamage _SRVVehicle_var_damage;
	_SRVVehicle_var_object setFuel (_SRVVehicle_var_fuel);
	[_SRVVehicle_var_object, _SRVVehicle_var_ammo] Call SRVTools_fnc_setVehicleAmmo;
	[_SRVVehicle_var_object, _SRVVehicle_var_cargo] Call SRVTools_fnc_setVehicleCargo;
	[_SRVVehicle_var_object, _SRVVehicle_var_hitPoints] Call SRVTools_fnc_setPointsDamage;

	_SRVVehicle_var_name Call SRVVehicle_fnc_setVehicleTracker;
} forEach _vehicleLoaded;

Call SRVVehicle_fnc_spawnVehiclesLocation;
Call SRVVehicle_fnc_spawnVehiclesRoad;
Call SRVVehicle_fnc_spawnVehiclesRandom;

{
	if(SRVVehicle_cfg_DebugLevel > 0) then { diag_log format["[SRV-Vehicle] %1", _x]; };	
} forEach SRVVehicle_spawnedVehicleTracker;