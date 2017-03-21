_insertstr = format["createPlayer:%1:%2", _this select 0, _this select 1];
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1", _insertstr]; };
[0, _insertstr] call SRVServer_db_query;