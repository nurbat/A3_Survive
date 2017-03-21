_insertstr = format["deletePlayer:%1", _this];
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1", _insertstr]; };
[0, _insertstr] call SRVServer_db_query;