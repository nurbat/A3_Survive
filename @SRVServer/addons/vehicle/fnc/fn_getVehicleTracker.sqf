params["_tracker"];
{
    private _VehicleOWNER = _x;
    if((_VehicleOWNER select 0) isEqualTo _tracker) exitWith { _VehicleOWNER; };
} forEach SRVVehicle_spawnedVehicleTracker;
_tracker Call SRVVehicle_fnc_setVehicleTracker;