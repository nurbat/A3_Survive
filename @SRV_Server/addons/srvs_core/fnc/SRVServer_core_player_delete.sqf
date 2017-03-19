_insertstr = format["deletePlayer:%1", _this];
if(showDebug) then { diag_log format["[SRVS-CORE] %1", _insertstr]; };
[0, _insertstr] call SRVServer_db_query;