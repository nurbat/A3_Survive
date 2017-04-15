//_check = [0, (format["hasAlivePlayer:%1", _this])] Call SRVDB_fnc_query;
_check = [0, (format["SELECT CASE WHEN EXISTS(SELECT uid FROM player WHERE uid = %1 AND damage < 1) THEN 'true' ELSE 'false' END", _this])] Call SRVDB_fnc_query;
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1 %2 %3", _this, _check]; };
(_check select 0) select 0 == "true";