_fetchstr = "SELECT * FROM vehicle";
if(SRVVehicle_DebugLevel > 1) then { diag_log format["[SRV-VEHICLE] %1", _fetchstr]; };
_fetch = [_fetchstr, 2] call SRVDB_fnc_async;
_fetch;