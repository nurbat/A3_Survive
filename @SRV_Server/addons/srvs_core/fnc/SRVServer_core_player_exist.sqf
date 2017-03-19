_check = [0, (format["hasAlivePlayer:%1", _this])] Call SRVServer_db_query;
if(showDebug) then { diag_log format["[SRVS-CORE] %1", _check]; };
(_check select 0) select 0;