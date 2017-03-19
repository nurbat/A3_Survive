_fetchstr = format ["loadPlayer:%1", _this];
if(showDebug) then { diag_log format["[SRVS-CORE] %1", _fetchstr]; };
_fetch = [_fetchstr, 2] call SRVServer_db_async;
_fetch select 0;