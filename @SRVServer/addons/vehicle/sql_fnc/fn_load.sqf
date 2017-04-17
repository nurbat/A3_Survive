_fetchstr = "SELECT * FROM vehicle";
if(spawnDebug) then { diag_log format["[SRV-VEHICLE] %1", _fetchstr]; };
_fetch = [_fetchstr, 2] call SRVDB_fnc_async;
_fetch select 0;