params["_tracker"];
private _return = [];
{
    private _VehicleOWNER = _x;
    if((_VehicleOWNER select 0) isEqualTo _tracker) then
    {
        _VehicleOWNER set [1, (_x select 1) + 1];
        _x = _VehicleOWNER;
        _return = _VehicleOWNER;
    };

} forEach SRVVehicle_spawnedVehicleTracker;

if !(count _return > 0) then 
{
    SRVVehicle_spawnedVehicleTracker pushBack [_tracker, 1];
    _return = [_tracker, 1];
};
_return