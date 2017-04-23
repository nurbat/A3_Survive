_tracker = _this;
{
    _VehicleUID = _x;
    if(SRVVehicle_DebugLevel > 0) then { diag_log format["[SRV-Vehicle] TRACKER GET: %1", _VehicleUID]; };	
    if((_VehicleUID select 0) isEqualTo _tracker) exitWith { _VehicleUID; };
} forEach SRVVehicle_spawnedVehicleTracker;

_tracker Call SRVVehicle_fnc_setVehicleTracker;