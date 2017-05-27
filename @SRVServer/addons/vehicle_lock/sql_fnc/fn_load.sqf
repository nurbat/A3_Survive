_fetchstr = "SELECT * FROM vehicle_lock";
if(SRVVehicleLock_DebugLevel > 1) then { diag_log format["[SRV-VEHICLE-LOCK] %1", _fetchstr]; };
_fetch = [_fetchstr, 2] call SRVDB_fnc_async;
_fetch;