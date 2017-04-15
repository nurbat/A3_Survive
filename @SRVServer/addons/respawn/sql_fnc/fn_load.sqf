//_fetchstr = format ["loadPlayer:%1", _this];
_fetchstr = format ["SELECT * FROM player WHERE uid = '%1'", _this];
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1", _fetchstr]; };
_fetch = [_fetchstr, 2] call SRVDB_fnc_async;
_fetch select 0;