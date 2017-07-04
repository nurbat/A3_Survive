waitUntil { !(isNil { Call SRVDB_fnc_loaded }) };
if(SRVVehicle_cfg_DebugLevel > 0) then { diag_log format["====[VEHICLE LOADING]===="]; };

private _vehicleLoaded = Call SRVVehicle_fnc_load;
{
	private _var_uid 		= _x select 0;
	private _var_owner 		= _x select 1;
	private _var_class 		= _x select 2;
	private _var_isLocked 	= _x select 3;
	private _var_fuel 		= _x select 4;
	private _var_damage 	= _x select 5;
	private _var_hitPoints 	= _x select 6;
	private _var_position 	= _x select 7;
	private _var_direction 	= _x select 8;
	private _var_cargo 		= _x select 9;
	private _var_ammo 		= _x select 10;

	//CREATE
	private _vehicleObject = [_var_class, _var_position] Call SRVVehicle_fnc_createObject;
	[_vehicleObject, _var_owner, _var_uid] Call SRVVehicle_fnc_setPernament;

	//CONFIG
	_vehicleObject lock _var_isLocked;
	_vehicleObject setDamage _var_damage;
	_vehicleObject setFuel _var_fuel;

	//REARM
	[_vehicleObject, _var_ammo] Call SRVTools_fnc_setVehicleAmmo;
	[_vehicleObject, _var_cargo] Call SRVTools_fnc_setVehicleCargo;
	[_vehicleObject, _var_hitPoints] Call SRVTools_fnc_setPointsDamage;
	
	//COUNT CALCULATE
	_vehicleObject Call SRVVehicle_fnc_vehicleTracked;

	
} forEach _vehicleLoaded;

Call SRVVehicle_fnc_createRandom;
Call SRVVehicle_fnc_createLocation;
Call SRVVehicle_fnc_createRoad;

//CREATE MARKERS
Call SRVVehicle_fnc_debugMarker;

{
	if(SRVVehicle_cfg_DebugLevel > 0) then { diag_log format["[SRV-Vehicle] Type:%1 Count:%2", _x, SRVVehicle_var_trackedValue select _forEachIndex]; };	
} forEach SRVVehicle_var_trackedType;