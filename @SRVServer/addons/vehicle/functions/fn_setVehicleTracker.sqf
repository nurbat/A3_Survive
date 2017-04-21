_tracker = _this;
_return = [];
{
    _VehicleUID = _x;
	if(DebugLevel > 1) then { diag_log format["[SRV-Vehicle] TRACKER SET: %1", _VehicleUID]; };	
    if((_VehicleUID select 0) isEqualTo _tracker) then
    {
        _VehicleUID set [1, (_x select 1) + 1];
        _x = _VehicleUID;
        _return = _VehicleUID;
    };

} forEach spawnedVehicleTracker;

if !(count _return > 0) then 
{
    spawnedVehicleTracker pushBack [_tracker, 0];
    _return = [_tracker, 0];
};
_return