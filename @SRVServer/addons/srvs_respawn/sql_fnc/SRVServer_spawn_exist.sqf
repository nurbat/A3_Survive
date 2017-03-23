_check = [0, (format["hasAlivePlayer:%1", _this])] Call SRVServer_db_query;
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1 %2", _this, _check]; };
(_check select 0) select 0;