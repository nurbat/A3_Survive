_insertstr = format["createPlayer:%1:%2", _this select 0, _this select 1];
if(showDebug) then { diag_log format["[SRVS-CORE] %1", _insertstr]; };
[0, _insertstr] call SRVServer_db_query;